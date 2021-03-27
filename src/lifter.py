from llvmlite import ir
import xml.etree.ElementTree as et
from src import lifted_function

instrumented = ["sym.nd",
                "sym.path_start",
                "sym.path_goal",
                "sym.path_nongoal",
                "sym.example_constrain_arg_int__int",
                "sym.example_constrain_ret_int",
                "sym.example_counter",
                "sym.imp.operator_new_unsigned_long",
                "ghidrall.indirect.call",
                "sym.imp.strcmp",
                "sym.imp.strcpy",
                "sym.imp.strncpy"]

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


def lift_binary(decompile_info, filename, lifting_options,flagforarch):
    """Initiates a Lifter object with a decompiled binary and lifts"""
    ir.global_context.identified_types = {}
    lifter = Lifter(decompile_info, filename, lifting_options, flagforarch)
    return lifter.module


class Lifter:
    """Decompiler class for interfacing with Rizin and pulling decompilation information in XML"""

    def __init__(self, decompiler, filename, lifting_options,flagforarch):
        self.filename = filename
        self.decompiler = decompiler
        self.options = lifting_options
        self.module = self.setup_module(flagforarch)
        self.verifier_error = None
        self.nd = None
        self.active_functions_list = [name for name, status in decompiler.active_functions_dict.items() if status == "active"]
        self.inactive_functions_list = [name for name, status in decompiler.active_functions_dict.items() if status == "inactive"]
        self.functions = self.create_functions(decompiler)
        self.addresses_to_funcs = self.get_addresses()
        self.global_dict = self.get_globals(decompiler.global_pdgd, decompiler.functions_pdgd)
        self.build_functions()
        self.define_indirect_call()
        self.populate_functions()

    def setup_module(self,flagforarch):
        m64 = "e-m:e-p:32:32-f64:32:64-f80:32-n8:16:32-S128"
        m32 = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
        module = ir.Module(self.filename)
        module.data_layout = m64 if flagforarch==64 else m32
        module.triple = "x86_64-pc-linux-gnu" if flagforarch==64 else "i386-pc-linux-gnu"
        return module

    def create_functions(self, decompiler):
        function_names = decompiler.active_functions_dict
        function_pdgls = decompiler.functions_pdgl
        funcs = {}
        for name, status in function_names.items():
            if name in instrumented and name not in self.inactive_functions_list:
                ir_func, return_type = self.build_instrumented_functions(name)
                funcs[name] = lifted_function.InstrumentedFunction(ir_func, return_type)
            else:
                pdgl = function_pdgls[name]
                if pdgl is None:
                    continue  # Function was optimized out
                xml = et.fromstring(pdgl)
                funcs[name] = lifted_function.LiftedFunction(name, pdgl, xml, self)
        return funcs

    def build_functions(self):
        for name, func in self.functions.items():
            if name not in instrumented and name not in self.inactive_functions_list:
                func.create_function_signature()
                func.build_cfg()

    def populate_functions(self):
        for name, func in self.functions.items():
            if name not in instrumented and name not in self.inactive_functions_list:
                func.populate_cfg()

    def build_instrumented_functions(self, name):
        if name == "sym.nd":
            if self.nd is None:
                args = []
                func_type = ir.FunctionType(int32, args)
                self.nd = ir.Function(self.module, func_type, name="nd")
                return self.nd, int32
            else:
                return self.nd, void_type
        elif name == "sym.path_start":
            args = []
            func_type = ir.FunctionType(void_type, args)
            return ir.Function(self.module, func_type, name="sym.path_start"), void_type
        elif name == "sym.path_goal":
            if self.options["nongoal"]:
                args = []
                func_type = ir.FunctionType(void_type, args)
                return ir.Function(self.module, func_type, name="sym.path_goal"), void_type
            else:
                if self.verifier_error is None:
                    args = []
                    func_type = ir.FunctionType(void_type, args)
                    self.verifier_error = ir.Function(self.module, func_type, name="verifier.error")
                args = []
                func_type = ir.FunctionType(void_type, args)
                ir_func = ir.Function(self.module, func_type, name="sym.path_goal")
                entry_block = ir_func.append_basic_block("entry")
                entry_builder = ir.IRBuilder(entry_block)
                entry_builder.call(self.verifier_error, [])
                entry_builder.ret_void()
                return ir_func, void_type
        elif name == "sym.path_nongoal":
            if self.options["nongoal"]:
                if self.verifier_error is None:
                    args = []
                    func_type = ir.FunctionType(void_type, args)
                    self.verifier_error = ir.Function(self.module, func_type, name="verifier.error")
                args = []
                func_type = ir.FunctionType(void_type, args)
                ir_func = ir.Function(self.module, func_type, name="sym.path_nongoal")
                entry_block = ir_func.append_basic_block("entry")
                entry_builder = ir.IRBuilder(entry_block)
                entry_builder.call(self.verifier_error, [])
                entry_builder.ret_void()
                return ir_func, void_type
            else:
                args = []
                func_type = ir.FunctionType(void_type, args)
                return ir.Function(self.module, func_type, name="sym.path_nongoal"), void_type
        elif name == "sym.example_constrain_arg_int__int":
            if self.verifier_error is None:
                args = []
                func_type = ir.FunctionType(void_type, args)
                self.verifier_error = ir.Function(self.module, func_type, name="verifier.error")
            args = (int32, int32)
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(self.module, func_type, name="sym.example_constrain_arg_int__int")
            entry_block = ir_func.append_basic_block(name="entry")
            error_block = ir_func.append_basic_block(name="error")
            exit_block = ir_func.append_basic_block(name="exit")
            entry_builder = ir.IRBuilder(entry_block)
            error_builder = ir.IRBuilder(error_block)
            exit_builder = ir.IRBuilder(exit_block)
            a, b = ir_func.args
            result = entry_builder.icmp_signed("==", a, b)
            entry_builder.cbranch(result, exit_block, error_block)
            error_builder.call(self.verifier_error, [])
            error_builder.branch(exit_block)
            exit_builder.ret_void()
            return ir_func, void_type
        elif name == "sym.example_constrain_ret_int":
            if self.verifier_error is None:
                args = []
                func_type = ir.FunctionType(void_type, args)
                self.verifier_error = ir.Function(self.module, func_type, name="verifier.error")
            args = [int32]
            func_type = ir.FunctionType(int32, args)
            ir_func = ir.Function(self.module, func_type, name="sym.example_constrain_ret_int")
            entry_block = ir_func.append_basic_block(name="entry")
            error_block = ir_func.append_basic_block(name="error")
            exit_block = ir_func.append_basic_block(name="exit")
            entry_builder = ir.IRBuilder(entry_block)
            error_builder = ir.IRBuilder(error_block)
            exit_builder = ir.IRBuilder(exit_block)
            a = ir_func.args[0]
            b = entry_builder.alloca(int32)
            if self.nd is None:
                args = []
                func_type = ir.FunctionType(int32, args)
                self.nd = ir.Function(self.module, func_type, name="nd")
            val = entry_builder.call(self.nd, [])
            entry_builder.store(val, b)
            b = entry_builder.load(b)
            result = entry_builder.icmp_signed("==", a, b)
            entry_builder.cbranch(result, exit_block, error_block)
            error_builder.call(self.verifier_error, [])
            error_builder.branch(exit_block)
            exit_builder.ret(b)
            return ir_func, int32
        elif name == "sym.example_counter":
            global_counter = ir.GlobalVariable(self.module, int32, "ctr")
            global_counter.initializer = ir.Constant(int32, 0)
            args = []
            func_type = ir.FunctionType(int32, args)
            ir_func = ir.Function(self.module, func_type, name="sym.example_counter")
            entry_block = ir_func.append_basic_block(name="entry")
            entry_builder = ir.IRBuilder(entry_block)
            ctr = entry_builder.load(global_counter)
            increment = entry_builder.add(ctr, ir.Constant(int32, 1))
            entry_builder.store(increment, global_counter)
            entry_builder.ret(increment)
            return ir_func, int32
        elif name == "sym.imp.operator_new_unsigned_long":
            args = [int32]
            func_type = ir.FunctionType(int64, args)
            ir_func = ir.Function(self.module, func_type, name="sym.imp.operator_new_unsigned_long")
            entry_block = ir_func.append_basic_block(name="entry")
            entry_builder = ir.IRBuilder(entry_block)
            value = ir_func.args[0]
            return_value = entry_builder.zext(value, int64)
            entry_builder.ret(return_value)
            return ir_func, int64
        elif name == "ghidrall.indirect.call":
            # Currently we only support indirect calls with no arguments
            args = [int64]
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(self.module, func_type, name="ghidrall.indirect.call")
            return ir_func, void_type
        elif name == "sym.imp.strcmp":
            pi8 = ir.PointerType(ir.IntType(8))
            args = [pi8, pi8]
            func_type = ir.FunctionType(int1, args)
            ir_func = ir.Function(self.module, func_type, name="sym.imp.strcmp")
            return ir_func, int1
        elif name == "sym.imp.strcpy":
            pi64 = ir.PointerType(ir.IntType(64))
            args = [pi64, int64]
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(self.module, func_type, name="sym.imp.strcpy")
            return ir_func, void_type
        elif name == "sym.imp.strncpy":
            pi64 = ir.PointerType(ir.IntType(64))
            args = [pi64, int64, int64, pi64]
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(self.module, func_type, name="sym.imp.strncpy")
            return ir_func, void_type
        else:
            raise Exception(f"Function not instrumented: {name}")

    def get_globals(self, pdgd, function_pdgds):
        """Find globals as identified by rizin in rizin-internal-scope"""
        glbls = {}
        for mapsym in et.fromstring(pdgd).findall(".//scope[@name='rizin-internal']/symbollist/mapsym"):
            if mapsym.find("function") is not None:
                continue  # We don't want to recover function addresses
            glbl = self.get_global(mapsym, glbls)
            if glbl is not None:
                glbls[glbl.name] = glbl
        for func, pdgd in function_pdgds.items():
            try:
                xml = et.fromstring(pdgd)
            except:
                new_pdgd = pdgd.split("<stringmanage>")[0] + "</save_state>"
                xml = et.fromstring(new_pdgd)
            for mapsym in xml.findall(".//scope[@name='rizin-internal']/symbollist/mapsym"):
                if mapsym.find("function") is not None:
                    continue  # We don't want to recover function addresses
                glbl = self.get_global(mapsym, glbls)
                if glbl is not None:
                    glbls[glbl.name] = glbl
        return glbls

    def get_global(self, mapsym, glbls):
        symbol = mapsym.find('symbol').get('name').replace('str.', '')  # String globals have the prefix 'str.'
        address = "0x{:08x}".format(int(mapsym.find('addr').get('offset'), 16))
        type_sym = mapsym.find('symbol').find('type')
        if type_sym is not None:  # We have type information
            metatype = type_sym.get('metatype')
            if metatype == 'array':
                array_size = int(type_sym.get('arraysize'))
                type_ref = type_sym.find('typeref').get('name')
                if type_ref == 'char':
                    # This is a string. Name becomes offset
                    size = int8
                    string = str(symbol + '\0').encode("utf8")
                    c_string = ir.Constant(ir.ArrayType(size, len(string)), bytearray(string))
                    if address in glbls:
                        return None
                    global_var = ir.GlobalVariable(self.module, c_string.type, name=address)
                    global_var.initializer = c_string
                else:
                    raise Exception(f"Unexpected array type {type_ref} for global {symbol}")
            else:
                raise Exception(f"Unexpected global metatype: {metatype} for global: {symbol}")

        else:  # No type information recovered, assume int32
            if symbol in glbls:
                if "operation" in symbol:
                    print(symbol)
                    exit(1)
                return None
            global_var = ir.GlobalVariable(self.module, int32, name=symbol)
            global_var.initializer = ir.Constant(int32, 0)
        return global_var

    def get_addresses(self):
        addresses = {}
        for name, func in self.functions.items():
            if name in self.decompiler.function_to_address_map:
                addresses[self.decompiler.function_to_address_map[name]] = func
        return addresses

    def define_indirect_call(self):
        if "ghidrall.indirect.call" in self.functions:
            ir_func = self.functions["ghidrall.indirect.call"].ir_func
            entry_block = ir_func.append_basic_block(name="entry")
            entry_builder = ir.IRBuilder(entry_block)
            exit_block = ir_func.append_basic_block(name="exit")
            exit_builder = ir.IRBuilder(exit_block)
            value = ir_func.args[0]
            switch = entry_builder.switch(value=value, default=exit_block)
            for name, func in self.addresses_to_funcs.items():
                if func.ir_func is not None:
                    current_block = ir_func.append_basic_block(name=name)
                    current_builder = ir.IRBuilder(current_block)
                    switch.add_case(ir.Constant(int64, int(name, 16)), current_block)
                    current_builder.call(func.ir_func, [])
                    current_builder.branch(exit_block)
            exit_builder.ret_void()
