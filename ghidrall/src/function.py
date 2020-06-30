from llvmlite import ir
import xml.etree.ElementTree as et
from .block import GhidrallBlock

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand"]
int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


class Function:
    """"Holds the relevant data for a function"""

    def __init__(self, function_name, ir_func, xml, args, return_type, lifter):
        """"Initialize function variables, recover locals, and build the CFG"""
        self.name = function_name
        self.ir_func = ir_func
        self.xml = xml
        self.args = args
        self.return_type = return_type
        self.lifter = lifter
        self.options = lifter.options
        self.temps = {}
        self.entry_block, self.locals, self.entry_builder = self.recover_locals()
        self.current_builder = self.entry_builder
        self.blocks = self.build_cfg()

    def recover_locals(self):
        """"Recover stack variables based on decided structure from lifting options. Also recovers register types"""
        local_vars = {}
        entry_block = self.ir_func.append_basic_block("entry")
        entry_builder = ir.IRBuilder(entry_block)
        if self.options['locals'] == "no_option":
            for local in self.xml.find("locals").findall('mapsym'):
                name = local.find("symbol").get("name")
                size = int(local.find("typeref").get("size")) * 8
                local_vars[name] = entry_builder.alloca(ir.IntType(size), name=name)
        # Recover register types
        register_vars = {}
        pdg = et.tostring(self.xml, encoding="unicode").splitlines()
        i = 0
        for line in pdg:
            if "register0x" in line:
                symbol = line.split('<symbol>')[1].split('</symbol>')[0]
                type_line = pdg[i + 1]
                size_line = pdg[i + 3]
                size = int(size_line.split('<size>')[1].split('</size>')[0])
                size *= 8
                if symbol not in list(register_vars.keys()):
                    register_vars[symbol] = size
                elif size > register_vars[symbol]:
                    register_vars[symbol] = size
            i += 1
        for symbol, size in register_vars.items():
            local_vars[symbol] = entry_builder.alloca(ir.IntType(size), name=symbol)
        return entry_block, local_vars, entry_builder

    def build_cfg(self):
        blocks = {}
        for xml_block in self.xml.findall('.//block'):
            current_block = GhidrallBlock(xml_block, self)
            blocks[current_block.id] = current_block
        for name, block in blocks.items():
            block.connect(blocks)
        return blocks

    def populate_cfg(self):
        self.entry_builder.branch(list(self.blocks.values())[0].ir_block)
        for block in list(self.blocks.values()):
            branched = False
            self.current_builder = ir.IRBuilder(block.ir_block)
            builder = self.current_builder
            for op in block.ops:
                opname = op.find("opname").text
                op_inputs = op.find("inputs").findall("input")
                op_output = op.find("output")
                if opname == "COPY":
                    self.store_output(op_output, self.fetch_input(op_inputs[0]))
                elif opname == "LOAD":
                    raise Exception("Not implemented: " + opname)
                elif opname == "STORE":
                    raise Exception("Not implemented: " + opname)
                elif opname == "BRANCH":
                    builder.branch(block.fall_thru.ir_block)
                    branched = True
                elif opname == "CBRANCH":
                    conditional = self.fetch_input(op_inputs[1])
                    if conditional.type != int1:
                        conditional = builder.trunc(conditional, int1)
                    builder.cbranch(conditional, block.goto.ir_block, block.fall_thru.ir_block)
                    branched = True
                elif opname == "BRANCHIND":
                    raise Exception("Not implemented: " + opname)
                elif opname == "CALL":
                    call_target = op_inputs[0].find("symbol").text
                    if call_target in instrumentation_list:
                        func_call = self.instrument(call_target)
                        if func_call is not None:
                            result = builder.call(func_call, [])
                        else:
                            result = None
                    else:
                        args = [self.fetch_input(arg) for arg in op_inputs[1:]]
                        if len(args) == 0:
                            result = builder.call(self.lifter.functions_ir[call_target], args=[])
                        else:
                            final_args = []
                            for arg, target_arg in zip(args, self.lifter.functions_ir[call_target].args):
                                final_args.append(self.arg_type_check(arg, target_arg))
                            result = builder.call(self.lifter.functions_ir[call_target], args=final_args)
                    if op_output is not None and result is not None:
                        print(self.lifter.module)
                        self.store_output(op_output, result)
                elif opname == "CALLIND":
                    call_target = op_inputs[0].find("symbol").text
                    func_type = ir.FunctionType(ir.VoidType(), [])
                    ir_func = ir.Function(self.lifter.module, func_type, call_target)
                    builder.call(ir_func, [])
                elif opname == "CALLOTHER":
                    raise Exception("Not implemented: " + opname)
                elif opname == "RETURN":
                    if self.return_type == "void":
                        builder.ret_void()
                    else:
                        return_value = self.fetch_input(op_inputs[1])
                        builder.ret(return_value)
                        branched = True
                elif opname == "INT_EQUAL":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_unsigned('==', lhs, rhs))
                elif opname == "INT_NOTEQUAL":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_unsigned('!=', lhs, rhs))
                elif opname == "INT_SLESS":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_signed('<', lhs, rhs))
                elif opname == "INT_SLESSEQUAL":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_signed('<=', lhs, rhs))
                elif opname == "INT_LESS":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_unsigned('<', lhs, rhs))
                elif opname == "INT_LESSEQUAL":
                    lhs, rhs = self.int_comp_type_check(self.fetch_input(op_inputs[0]), self.fetch_input(op_inputs[1]))
                    self.store_output(op_output, builder.icmp_unsigned('<=', lhs, rhs))
                elif opname == "INT_ZEXT":
                    arg, target = self.fetch_input(op_inputs[0]), self.fetch_input(op_output)
                    self.store_output(op_output, builder.zext(arg, target.type))
                elif opname == "INT_SEXT":
                    arg, target = self.fetch_input(op_inputs[0]), self.fetch_input(op_output)
                    self.store_output(op_output, builder.sext(arg, target.type))
                elif opname == "INT_ADD":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.add(lhs, rhs))
                elif opname == "INT_SUB":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.sub(lhs, rhs))
                # elif opname == "INT_CARRY":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "INT_SCARRY":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "INT_SBORROW":
                #     raise Exception("Not implemented: " + opname)
                elif opname == "INT_2COMP":
                    argument = self.fetch_input(op_inputs[0])
                    self.store_output(op_output, builder.neg(argument))
                elif opname == "INT_XOR":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.xor(lhs, rhs))
                elif opname == "INT_AND":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.and_(lhs, rhs))
                elif opname == "INT_OR":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.or_(lhs, rhs))
                elif opname == "INT_LEFT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                         self.fetch_input(op_inputs[1]),
                                                         self.fetch_input(op_output))
                    self.store_output(op_output, builder.shl(arg, shift))
                elif opname == "INT_RIGHT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                         self.fetch_input(op_inputs[1]),
                                                         self.fetch_input(op_output))
                    self.store_output(op_output, builder.lshr(arg, shift))
                elif opname == "INT_SRIGHT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                           self.fetch_input(op_inputs[1]),
                                                           self.fetch_input(op_output))
                    self.store_output(op_output, builder.ashr(arg, shift))
                elif opname == "INT_MULT":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.mul(lhs, rhs))
                elif opname == "INT_DIV":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.udiv(lhs, rhs))
                elif opname == "INT_SDIV":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.sdiv(lhs, rhs))
                elif opname == "INT_REM":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.urem(lhs, rhs))
                elif opname == "INT_SREM":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.fetch_input(op_output))
                    self.store_output(op_output, builder.srem(lhs, rhs))
                elif opname == "BOOL_NEGATE":
                    argument = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    self.store_output(op_output, builder.not_(argument))
                elif opname == "BOOL_XOR":
                    lhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    rhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    self.store_output(op_output, builder.xor(lhs, rhs))                    
                elif opname == "BOOL_AND":
                    lhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    rhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    self.store_output(op_output, builder.and_(lhs, rhs))
                elif opname == "BOOL_OR":
                    lhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    rhs = self.bool_type_check(self.fetch_input(op_inputs[0]))
                    self.store_output(op_output, builder.xor(lhs, rhs))
                # elif opname == "FLOAT_EQUAL":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_NOTEQUAL":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_LESS":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_LESSEQUAL":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_NAN":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_ADD":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_DIV":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_MULT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_SUB":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_NEG":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_ABS":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_SQRT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_INT2FLOAT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_FLOAT2FLOAT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_TRUNC":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_CEIL":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_FLOOR":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "FLOAT_ROUND":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "MULTIEQUAL":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "INDIRECT":
                #     raise Exception("Not implemented: " + opname)
                elif opname == "PIECE":
                    raise Exception("Not implemented: " + opname)
                elif opname == "SUBPIECE":
                    offset = op_inputs[1].find("symbol").text
                    size = int(op_output.find("size").text)*8
                    if offset != "0":
                        raise Exception("Unexpected truncation size")
                    else:
                        result = builder.trunc(self.fetch_input(op_inputs[0]), ir.IntType(size))
                        self.store_output(op_output, result)
                elif opname == "CAST":
                    self.store_output(op_output, self.arg_type_check(self.fetch_input(op_inputs[0]),
                                                                     self.get_type(op_output)))
                elif opname == "PTRADD":
                    raise Exception("Not implemented: " + opname)
                elif opname == "PTRADD":
                    raise Exception("Not implemented: " + opname)
                elif opname == "PTRSUB":
                    raise Exception("Not implemented: " + opname)
                # elif opname == "SEGMENTOP":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "CPOOLREF":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "NEW":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "INSERT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "EXTRACT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "POPCOUNT":
                #     raise Exception("Not implemented: " + opname)
                # elif opname == "MAX":
                #     raise Exception("Not implemented: " + opname)
                else:
                    raise Exception("Not expected: " + opname)
            if not branched:
                if block.fall_thru is not None:
                    builder.branch(block.fall_thru.ir_block)

    def instrument(self, call_target):
        """Instrumentation features for test cases based on Pharos queries to convert to Seahorn"""
        lifter = self.lifter
        module = lifter.module
        if call_target in lifter.instrumentation:
            return lifter.instrumentation[call_target]
        if call_target == "sym.path_start":
            ir_func = None
        elif call_target == "sym.path_goal":
            args = []
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(module, func_type, "verifier.error")
            lifter.instrumentation[call_target] = ir_func
        elif call_target == "sym.path_nongoal":
            args = []
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(module, func_type, "verifier.error")
            lifter.instrumentation[call_target] = ir_func
        elif call_target == "sym.imp.rand":
            args = []
            func_type = ir.FunctionType(int8, args)
            ir_func = ir.Function(module, func_type, "nd")
            lifter.instrumentation[call_target] = ir_func
        else:
            raise Exception("Not excepted instrumentation function")
        return ir_func

    @staticmethod
    def format_label(label):
        """Helper function for formatting hexidecimal addresses"""
        if label[:2] == '0x':
            label = label[2:]
        new_label = '0x' + label.zfill(8)
        return new_label

    def fetch_input(self, arg):
        builder = self.current_builder
        name = arg.find("symbol").text
        metatype = int(arg.find("metatype").text)
        size = int(arg.find("size").text)*8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        if sym_id is not None:
            if sym_id in self.lifter.global_vars:
                return builder.load(self.lifter.global_vars[sym_id])
            elif sym_id in self.locals:
                return builder.load(self.locals[sym_id])
            elif sym_id in self.temps:
                return self.temps[sym_id]
        if name in self.lifter.global_vars:
            return builder.load(self.lifter.global_vars[name])
        elif name in self.locals:
            return builder.load(self.locals[name])
        elif name in self.temps:
            return self.temps[name]
        elif name in self.args:
            for arg in self.ir_func.args:
                if arg.name == name:
                    return arg
        elif space == "const":
            if "U" in name:
                try:
                    val = int(name.split('U')[0])
                except ValueError:
                    val = int(name.split('U')[0], 16)
            elif "0x" in name:
                val = int(name, 16)
            elif "false" in name:
                val = 0
            elif "true" in name:
                val = 1
            else:
                val = int(name)
            return ir.Constant(ir.IntType(size), val)
        elif space == "unique":
            return self.temps[name]

    def arg_type_check(self, arg, target_arg):
        if arg.type != target_arg.type:
            if target_arg.type.is_pointer:
                if arg.type.is_pointer:
                    return self.current_builder.bitcast(arg, target_arg.type)
                else:
                    return self.current_builder.inttoptr(arg, target_arg.type)
            else:
                if arg.type.is_pointer:
                    return self.current_builder.ptrtoint(arg, target_arg.type)
                else:
                    assert isinstance(arg.type, ir.IntType)
                    assert isinstance(target_arg.type, ir.IntType)
                    if arg.type.width < target_arg.type.width:
                        return self.current_builder.zext(arg, target_arg.type)
                    else:
                        return self.current_builder.trunc(arg, target_arg.type)
        else:
            return arg

    def store_output(self, arg, result):
        builder = self.current_builder
        name = arg.find("symbol").text
        metatype = int(arg.find("metatype").text)
        size = int(arg.find("size").text) * 8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        if sym_id is not None:
            if sym_id in self.lifter.global_vars:
                location = self.lifter.global_vars[sym_id]
            elif sym_id in self.locals:
                location = self.locals[sym_id]
            else:
                self.temps[sym_id] = result
                return
        else:
            if name in self.lifter.global_vars:
                location = self.lifter.global_vars[name]
            elif name in self.locals:
                location = self.locals[name]
            else:
                self.temps[name] = result
                return
        result = self.storage_check(result, location)
        builder.store(result, location)

    def int_comp_type_check(self, lhs, rhs):
        """Ghidra should guarantee these are the same size, but we need to verify. Output is always ir.IntType(1)"""
        assert isinstance(lhs.type, ir.IntType)
        assert isinstance(rhs.type, ir.IntType)
        if lhs.type.width == rhs.type.width:
            return lhs, rhs
        elif lhs.type.width > rhs.type.width:
            return lhs, self.current_builder.zext(rhs, lhs.type)
        else:
            return self.current_builder.zext(lhs, rhs.type), rhs

    def int_math_type_check(self, lhs, rhs, target):
        """"Ensure that both inputs are the same size as the output storage location"""
        assert isinstance(lhs.type, ir.IntType)
        assert isinstance(rhs.type, ir.IntType)
        assert isinstance(target.type, ir.IntType)
        if lhs.type.width < target.type.width:
            lhs = self.current_builder.zext(lhs, target.type)
        elif lhs.type.width > target.type.width:
            lhs = self.current_builder.trunc(lhs, target.type)
        if rhs.type.width < target.type.width:
            rhs = self.current_builder.zext(rhs, target.type)
        elif lhs.type.width > target.type.width:
            rhs = self.current_builder.trunc(rhs, target.type)
        return lhs, rhs

    def int_shift_type_check(self, arg, shift, target):
        """arg must match target size. Shift must simply be a constant IntType"""
        assert isinstance(arg.type, ir.IntType)
        assert isinstance(shift.type, ir.IntType)
        assert isinstance(target.type, ir.IntType)
        if arg.type.width < target.type.width:
            arg = self.current_builder.zext(arg, target.type)
        elif arg.type.width > target.type.width:
            arg = self.current_builder.trunc(arg, target.type)
        return arg, shift

    def bool_type_check(self, param):
        """All boolean values are allocated one byte based on Ghidra properties"""
        assert isinstance(param.type, ir.IntType)
        if param.type.width > 8:
            return self.current_builder.trunc(param, int8)
        elif param.type.width < 8:
            return self.current_builder.zext(param, int8)
        return param

    def storage_check(self, result, location):
        """Ensure result type matches location type"""
        assert isinstance(result.type, ir.IntType)
        assert isinstance(location.type.pointee, ir.IntType)
        if result.type.width < location.type.pointee.width:
            result = self.current_builder.zext(result, location.type.pointee)
        else:
            result = self.current_builder.trunc(result, location.type.pointee)
        return result

    def get_type(self, arg):
        builder = self.current_builder
        name = arg.find("symbol").text
        metatype = int(arg.find("metatype").text)
        size = int(arg.find("size").text) * 8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        return ir.Constant(ir.IntType(size), 0)

