from llvmlite import ir
import xml.etree.ElementTree as et
from .function import Function

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand"]
int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


def lift_binary(decompile_info, filename, lifting_options):
    """Initiates a Lifter object with a decompiled binary and lifts"""
    ir.global_context.identified_types = {}
    lifter = Lifter(decompile_info, filename, lifting_options)
    return lifter.module


class Lifter:
    """Decompiler class for interfacing with Radare2 and pulling decompilation information in XML"""

    def __init__(self, decompiler, filename, lifting_options):
        self.filename = filename
        self.module = ir.Module(name=filename)
        self.options = lifting_options
        self.module.data_layout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
        self.module.triple = "x86_64-pc-linux-gnu"
        self.decompile_info = decompiler.functions_pdg
        self.global_vars = self.fish_globals(decompiler.pdgd)
        self.instrumentation = {}
        self.function_names = list(self.decompile_info.keys())
        self.functions_ir, self.functions_xml, self.functions_args, self.ret_types = self.create_function_signatures()
        self.function_address = self.store_function_addresses()
        self.populate_functions()

    def fish_globals(self, pdgd):
        """Find globals as identified by r2 in r2-internal-scope"""
        global_vars = {}
        global_size = {}
        global_names = [symbol.get("name") for symbol in
                        et.fromstring(pdgd).findall(".//scope[@name='radare2-internal']/symbollist/mapsym/symbol")]
        for key, pdgl in self.decompile_info.items():
            xml = et.fromstring(pdgl)
            for symbol in xml.find('block_graph').findall('.//input') + xml.find('block_graph').findall('.//output'):
                name = symbol.find("symbol").text.strip("_")
                meta = symbol.find("metatype").text
                size = symbol.find("size").text
                sym_id = symbol.find("id").text
                if name in global_names:
                    size = int(size) * 8
                    if name in global_size:
                        if size != global_size[name]:
                            raise Exception("Global size (" + str(size) + ") is not consistent across binary: " + str(global_size[name]))
                    else:
                        global_size[name] = size
                elif "obj" in name:
                    size = int(size) * 8
                    global_size[name] = size
                else:
                    pass
        for name, size in global_size.items():
            global_type = ir.IntType(size)
            glob = ir.GlobalVariable(self.module, global_type, name)
            glob.initializer = global_type(0)
            global_vars[name] = glob
        return global_vars

    def create_function_signatures(self):
        """"Create the function signatures before building instructions and basic blocks so function calls resolve"""
        all_ir, all_xml, all_args, return_types = {}, {}, {}, {}
        for function in self.function_names:
            function_pdg = self.decompile_info[function]
            function_xml = et.fromstring(function_pdg)
            xml_args = function_xml.find('params').findall('mapsym')
            xml_return_type = function_xml.find('typeref')
            return_meta_type = int(xml_return_type.get("metatype"))
            return_types[function] = xml_return_type.get("name")
            if return_meta_type == 10:
                return_types[function] = "void"
                func_return = void_type
            elif return_types[function] == "undefined8":
                func_return = ir.IntType(64)
            else:
                func_return = ir.IntType(8 * int(xml_return_type.get('size')))
            args = {}
            for mapsym in xml_args:
                name = mapsym.find('symbol').get("name")
                if name == "argv" and function == 'main':
                    args[name] = ir.PointerType(ir.PointerType(ir.IntType(8)))
                else:
                    i_type = ir.IntType(8 * int(mapsym.find('typeref').get("size")))
                    if mapsym.find("typeref").get("metatype") == "2":
                        args[name] = ir.PointerType(ir.PointerType(i_type))
                    else:
                        args[name] = i_type
            func_type = ir.FunctionType(func_return, list(args.values()))
            ir_func = ir.Function(self.module, func_type, function)
            for i in range(len(ir_func.args)):
                ir_func.args[i].name = list(args.keys())[i]
            all_xml[function] = function_xml
            all_ir[function] = ir_func
            all_args[function] = args
        return all_ir, all_xml, all_args, return_types

    def populate_functions(self):
        """"Given a function signature, build basic blocks and instructions"""
        funcs = []
        for function in self.function_names:
            funcs.append(Function(function,
                                  self.functions_ir[function],
                                  self.functions_xml[function],
                                  self.functions_args[function],
                                  self.ret_types[function], self))
        for func in funcs:
            func.populate_cfg()

    def store_function_addresses(self):
        address = {}
        for function, xml in self.functions_xml.items():
            address[xml.find("signature").get("addr")] = self.functions_ir[function]
        return address
