from llvmlite import ir
import xml.etree.ElementTree as et
from .block import GhidrallBlock

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand",
                        "sym.example_constrain_ret_int", "sym.example_constrain_arg_int__int"]
int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()

class Function:
    """"Holds the relevant data for a function"""

    def __init__(self, function_name, ir_func, xml, args, return_type, lifter):
        """"Initialize function variables, recover locals, and 32 the CFG"""
        self.name = function_name
        self.ir_func = ir_func
        self.xml = xml
        self.param_args = args
        self.args = {}
        self.return_type = return_type
        self.lifter = lifter
        self.options = lifter.options
        self.temps, self.ptrs = {}, {}
        self.stack = None
        self.stack_first = None
        self.stack_last = None
        self.stack_word_size = None
        self.entry_block, self.locals, self.entry_builder = self.recover_locals()
        self.current_builder, self.current_block = self.entry_builder, self.entry_block
        self.blocks = self.build_cfg()

    def recover_locals(self):
        """"Recover stack variables based on decided structure from lifting options. Also recovers register types"""
        if self.options["cgc"] and "cgc" in self.name:
            return None, None, None
        local_vars = {}
        entry_block = self.ir_func.append_basic_block("entry")
        entry_builder = ir.IRBuilder(entry_block)
        if self.options['locals'] == "no_option":
            for local in self.xml.find("locals").findall('mapsym'):
                name = local.find("symbol").get("name")
                size = int(local.find("typeref").get("size")) * 8
                metatype = local.find("typeref").get("metatype")
                local_id = name
                local_vars[local_id] = entry_builder.alloca(ir.IntType(size), name=name)
        elif self.options['locals'] == 'byte_addressable':
            ranges = self.xml.find("local_ranges").findall("range")
            if len(ranges) == 1 and ranges[0].get("name") == "stack":
                self.stack_first = int(ranges[0].get("first"), 16)
                self.stack_last = int(ranges[0].get("last"), 16)
                self.stack_word_size = int(ranges[0].get("size")) * 8
                space_size = self.stack_last - self.stack_first
                self.stack = entry_builder.alloca(ir.ArrayType(ir.IntType(8), space_size), name="stack")
                for local in self.xml.find("locals").findall('mapsym'):
                    if local.find("entries").find("entry").get("space") == "stack":
                        offset = int(local.find("entries").find("entry").get("offset"), 16) - self.stack_first
                        name = local.find("symbol").get("name")
                        size = int(local.find("typeref").get("size")) * 8
                        temp = entry_builder.gep(self.stack, [int32(0), int32(offset)])
                        local_vars[name] = entry_builder.bitcast(temp, ir.PointerType(ir.IntType(size)), name=name)
                    else:
                        name = local.find("symbol").get("name")
                        size = int(local.find("typeref").get("size")) * 8
                        local_id = name
                        local_vars[local_id] = entry_builder.alloca(ir.IntType(size), name=name)
            else:
                raise Exception("Multiple local ranges or local range not in stack space")
        elif self.options['locals'] == 'single_struct':
            ranges = self.xml.find("local_ranges").findall("range")
            if len(ranges) == 1 and ranges[0].get("name") == "stack":
                local_context = ir.global_context
                local_struct = local_context.get_identified_type("local_struct." + self.lifter.filename + "." + self.name)
                local_struct.packed = False
                self.stack_first = int(ranges[0].get("first"), 16)
                self.stack_last = int(ranges[0].get("last"), 16)
                self.stack_word_size = int(ranges[0].get("size")) * 8
                space_size = self.stack_last - self.stack_first
                stack_range = []
                first = True
                for local in self.xml.find("locals").findall('mapsym'):
                    if local.find("entries").find("entry").get("space") == "stack":
                        offset = int(local.find("entries").find("entry").get("offset"), 16) - self.stack_first
                        name = local.find("symbol").get("name")
                        size_byte = int(local.find("typeref").get("size"))
                        size = size_byte * 8
                        if first:
                            stack_range.append(["padding", 0, offset - 1])
                            first = False
                        else:
                            last_index = stack_range[-1][2] + 1
                            if offset != last_index:
                                stack_range.append(["padding", last_index, offset - 1])
                        stack_range.append([name, offset, offset + size_byte - 1])
                    else:
                        name = local.find("symbol").get("name")
                        size = int(local.find("typeref").get("size")) * 8
                        local_id = name
                        local_vars[local_id] = entry_builder.alloca(ir.IntType(size), name=name)
                stack_range_values = [ir.IntType((last_index - first_index + 1) * 8) for name, first_index, last_index in stack_range]
                local_struct.set_body(*stack_range_values)
                index = 0
                struct = entry_builder.alloca(local_struct)
                for name, first_index, last_index in stack_range:
                    local_vars[name] = entry_builder.gep(struct, [int32(0), int32(index)], inbounds=True, name=name)
                    index += 1
            else:
                raise Exception("Multiple local ranges or local range not in stack space")
        # Recover register types
        register_vars, ptr_register_vars = {}, {}
        pdg = et.tostring(self.xml, encoding="unicode").splitlines()
        i = 0
        for line in pdg:
            if "register0x" in line:
                symbol = line.split('<symbol>')[1].split('</symbol>')[0]
                meta_type_line = int(pdg[i + 2].split('<metatype>')[1].split('</metatype>')[0])
                size_line = pdg[i + 3]
                size = int(size_line.split('<size>')[1].split('</size>')[0], 16)
                size *= 8
                if meta_type_line == 2:
                    if symbol not in list(ptr_register_vars.keys()):
                        ptr_register_vars[symbol] = size
                    elif size > ptr_register_vars[symbol]:
                        ptr_register_vars[symbol] = size
                else:
                    if symbol not in list(register_vars.keys()):
                        register_vars[symbol] = size
                    elif size > register_vars[symbol]:
                        register_vars[symbol] = size
            i += 1
        for symbol, size in register_vars.items():
            local_vars[symbol] = entry_builder.alloca(ir.IntType(size), name=symbol)
        for symbol, size in ptr_register_vars.items():
            self.ptrs[symbol] = entry_builder.alloca(ir.PointerType(ir.IntType(size)), name=symbol)
        for symbol, arg in self.param_args.items():
            self.args[symbol] = entry_builder.alloca(arg)
        i = 0
        for symbol, arg in self.args.items():
            entry_builder.store(self.ir_func.args[i], self.args[symbol])
            i += 1
        return entry_block, local_vars, entry_builder

    def build_cfg(self):
        if self.options["cgc"] and "cgc" in self.name:
            return []
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
            self.current_block = block
            builder = self.current_builder
            for op in block.ops:
                opname = op.find("opname").text
                op_inputs = op.find("inputs").findall("input")
                op_output = op.find("output")
                if opname == "COPY":
                    self.store_output(op_output, self.fetch_input(op_inputs[0]))
                elif opname == "LOAD":
                    ptr = self.fetch_input(op_inputs[1])
                    if ptr.type.is_pointer:
                        self.store_output(op_output, builder.load(ptr))
                    else:
                        self.store_output(op_output, ptr)
                elif opname == "STORE":
                    val = self.fetch_input(op_inputs[2])
                    self.store_output(op_inputs[1], val)
                elif opname == "BRANCH":
                    builder.branch(block.fall_thru.ir_block)
                    branched = True
                elif opname == "CBRANCH":
                    conditional = self.fetch_input(op_inputs[1])
                    target_location = op_inputs[0].find("symbol").text.split(".")[-1]
                    outs = self.current_block.xml_out.findall("target")
                    out1 = outs[0].get("address")
                    out2 = outs[1].get("address")
                    swap = True
                    if target_location == out1:
                        target = outs[0].get("id")
                    elif target_location == out2:
                        target = outs[1].get("id")
                    else:
                        target_location = hex(int(target_location, 16) + 1)
                        if target_location == out1:
                            target = outs[0].get("id")
                        elif target_location == out2:
                            target = outs[1].get("id")
                        else:
                            # increment block number to figure out fallthru, fix cbranch target to other case
                            fallthru_id = format(int(self.current_block.id, 16) + 1, 'x')
                            swap = False
                            if fallthru_id in self.blocks:
                                if fallthru_id == outs[0].get("id"):
                                    fallthru = self.blocks[fallthru_id].ir_block
                                    goto = self.blocks[outs[1].get("id")].ir_block
                                elif fallthru_id == outs[1].get("id"):
                                    fallthru = self.blocks[fallthru_id].ir_block
                                    goto = self.blocks[outs[0].get("id")].ir_block
                                else:
                                    raise Exception("Can't recover broken block branch")
                            else:
                                raise Exception("Branch fallthru mismatch: " + target_location)
                    if conditional.type != int1:
                        conditional = builder.trunc(conditional, int1)
                    if swap:
                        if target in self.blocks:
                            goto = self.blocks[target].ir_block
                            if out1 == target_location:
                                fallthru = self.blocks[outs[1].get("id")].ir_block
                            elif out2 == target_location:
                                fallthru = self.blocks[outs[0].get("id")].ir_block
                            else:
                                raise Exception("Mismatch block label: " + target_location)
                        else:
                            raise Exception("Cannot trust conditional branch targets")
                    if block.xml_out.find("fallthru").text == "true" and swap:
                        tmp = fallthru
                        fallthru = goto
                        goto = tmp
                    builder.cbranch(conditional, goto, fallthru)
                    branched = True
                elif opname == "BRANCHIND":
                    outs = self.current_block.xml_out.findall("target")
                    switch = builder.switch(value=self.fetch_input(op_inputs[0]), default=self.blocks[outs[0].get("id")].ir_block)
                    added = []
                    for i, out in enumerate(outs):
                        if outs[i].get("id") not in added:
                            switch.add_case(ir.Constant(ir.IntType(8), int(outs[i].get("id"))), self.blocks[outs[i].get("id")].ir_block)
                        added.append(outs[i].get("id"))
                elif opname == "CALL":
                    call_target = op_inputs[0].find("symbol").text
                    if call_target in instrumentation_list and "example" not in call_target:
                        func_call = self.instrument(call_target)
                        if func_call is not None:
                            result = builder.call(func_call, [])
                        else:
                            result = None
                    else:
                        args = [self.fetch_input(arg) for arg in op_inputs[1:]]
                        if call_target in self.lifter.functions_ir:
                            if len(args) == 0:
                                result = builder.call(self.lifter.functions_ir[call_target], args=[])
                            else:
                                final_args = []
                                for arg, target_arg in zip(args, self.lifter.functions_ir[call_target].args):
                                    final_args.append(self.arg_type_check(arg, target_arg))
                                result = builder.call(self.lifter.functions_ir[call_target], args=final_args)
                        else:
                            # Function wasn't recovered
                            if op_output is None:
                                return_type = void_type
                            else:
                                return_type = ir.IntType(int(op_output.find("size").text) * 8)
                            args_ty = [arg.type for arg in args]
                            fnty = ir.FunctionType(return_type, args_ty)
                            func = ir.Function(self.lifter.module, fnty, name=call_target)
                            self.lifter.functions_ir[call_target] = func
                            result = None
                            if op_output is None:
                                builder.call(func, args)
                                self.lifter.ret_types[call_target] = "void"
                            else:
                                result = builder.call(func, args)
                                self.store_output(op_output, result)
                                self.lifter.ret_types[call_target] = "not void"
                    if op_output is not None and result is not None:
                        if call_target in instrumentation_list:
                            if call_target == "sym.imp.rand":
                                self.store_output(op_output, result)
                            else:
                                raise Exception("NO here: " + call_target)
                        elif self.lifter.ret_types[call_target] != "void":
                            self.store_output(op_output, result)
                        else:
                            pass
                elif opname == "CALLIND":
                    if op_inputs[0] not in self.lifter.functions_ir:
                        # We have a system call, let's generate an empty function header
                        if op_output is None:
                            return_type = void_type
                        else:
                            return_type = ir.IntType(int(op_output.find("size").text) * 8)
                        args_ty = []
                        fnty = ir.FunctionType(return_type, args_ty)
                        func = ir.Function(self.lifter.module, fnty, name=op_inputs[0].find("symbol").text)
                        self.lifter.functions_ir[op_inputs[0]] = func
                        builder.call(func, [])
                    else:
                        # Actual Indirect Call
                        func_type = ir.FunctionType(void_type, [int32])
                        ir_func = ir.Function(self.lifter.module, func_type, "special")
                        new_entry = ir_func.append_basic_block("entry")
                        new_entry_builder = ir.IRBuilder(new_entry)
                        cmp_blocks = []
                        i = 0
                        for address, func_ptr in self.lifter.function_address.items():
                            if not func_ptr.args and func_ptr.name != "main":
                                cmp_block = ir_func.append_basic_block("cmp." + str(i))
                                i += 1
                                cmp_blocks.append(cmp_block)
                        switch_blocks = []
                        i = 0
                        for address, func_ptr in self.lifter.function_address.items():
                            if not func_ptr.args and func_ptr.name != "main":
                                switch_block = ir_func.append_basic_block(str(i))
                                i += 1
                                switch_blocks.append(switch_block)
                        end = ir_func.append_basic_block("end")
                        end_builder = ir.IRBuilder(end)
                        new_entry_builder.branch(cmp_blocks[0])
                        j = 0
                        for address, func_ptr in self.lifter.function_address.items():
                            if not func_ptr.args and func_ptr.name != "main":
                                cmp_block = cmp_blocks[j]
                                cmp_builder = ir.IRBuilder(cmp_block)
                                check = cmp_builder.icmp_unsigned("==", ir.Constant(int32, int(address, 16)), ir_func.args[0])
                                if j < len(cmp_blocks) - 1:
                                    cmp_builder.cbranch(check, switch_blocks[j], cmp_blocks[j+1])
                                else:
                                    cmp_builder.cbranch(check, switch_blocks[j], end)
                                switch_block = switch_blocks[j]
                                switch_builder = ir.IRBuilder(switch_block)
                                switch_builder.call(func_ptr, [])
                                switch_builder.branch(end)
                                j += 1
                        end_builder.ret_void()
                        builder.call(ir_func, [self.fetch_input(op_inputs[0])])
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
                    arg, target = self.int_ext_type_check(self.fetch_input(op_inputs[0]), self.get_type(op_output), op_inputs[0].find("size").text)
                    self.store_output(op_output, builder.zext(arg, target))
                elif opname == "INT_SEXT":
                    arg, target = self.int_ext_type_check(self.fetch_input(op_inputs[0]), self.get_type(op_output), op_inputs[0].find("size").text)
                    self.store_output(op_output, builder.sext(arg, target))
                elif opname == "INT_ADD":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.add(lhs, rhs))
                elif opname == "INT_SUB":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
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
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.xor(lhs, rhs))
                elif opname == "INT_AND":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.and_(lhs, rhs))
                elif opname == "INT_OR":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.or_(lhs, rhs))
                elif opname == "INT_LEFT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                           self.fetch_input(op_inputs[1]),
                                                           self.get_type(op_output))
                    self.store_output(op_output, builder.shl(arg, shift))
                elif opname == "INT_RIGHT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                           self.fetch_input(op_inputs[1]),
                                                           self.get_type(op_output))
                    self.store_output(op_output, builder.lshr(arg, shift))
                elif opname == "INT_SRIGHT":
                    arg, shift = self.int_shift_type_check(self.fetch_input(op_inputs[0]),
                                                           self.fetch_input(op_inputs[1]),
                                                           self.get_type(op_output))
                    self.store_output(op_output, builder.ashr(arg, shift))
                elif opname == "INT_MULT":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.mul(lhs, rhs))
                elif opname == "INT_DIV":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.udiv(lhs, rhs))
                elif opname == "INT_SDIV":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.sdiv(lhs, rhs))
                elif opname == "INT_REM":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
                    self.store_output(op_output, builder.urem(lhs, rhs))
                elif opname == "INT_SREM":
                    lhs, rhs = self.int_math_type_check(self.fetch_input(op_inputs[0]),
                                                        self.fetch_input(op_inputs[1]),
                                                        self.get_type(op_output))
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
                    size = int(op_output.find("size").text) * 8
                    if offset != "0":
                        raise Exception("Unexpected truncation size")
                    else:
                        result = builder.trunc(self.fetch_input(op_inputs[0]), ir.IntType(size))
                        self.store_output(op_output, result)
                elif opname == "CAST":
                    self.store_output(op_output, self.arg_type_check(self.fetch_input(op_inputs[0]),
                                                                     self.get_type(op_output)))
                elif opname == "PTRADD":
                    self.op_ptr_add(op_inputs[0], op_inputs[1], op_inputs[2], op_output)
                elif opname == "PTRSUB":
                    if op_inputs[1].find("symbol").text in self.lifter.function_address:
                        # We are dealing with a function array
                        name = op_output.find("symbol").text.split("[")[0]
                        offset = int(op_output.find("symbol").get("offset")) * 8
                        size = int(op_output.find("symbol").get("size")) * 8
                        output_array = builder.gep(self.locals[name], [ir.Constant(ir.IntType(32), offset)])
                        location = builder.bitcast(output_array, ir.PointerType(ir.IntType(size)))
                        builder.store(ir.Constant(ir.IntType(32), int(op_inputs[1].find("symbol").text, 16)), location)
                    elif op_inputs[0].find("space").text == "stack" and self.options["locals"] == "byte_addressable":
                        addr = int(op_inputs[0].find("symbol").text, 16)
                        name = op_inputs[1].find("symbol").text
                        space = op_inputs[1].find("space").text
                        size = int(op_inputs[1].find("size").text) * 8
                        if space == "const":
                            if "U" in name:
                                try:
                                    val = int(name.split('U')[0])
                                except ValueError:
                                    val = int(name.split('U')[0], 16)
                            elif "0x" in name:
                                val = int(name, 16)
                            else:
                                val = int(name)
                            offset = ir.Constant(ir.IntType(size), addr - self.stack_first)
                        else:
                            offset = self.fetch_input(op_inputs[1])
                        tmp = builder.gep(self.stack, [int32(0), offset], inbounds=True)
                        self.store_output(op_output, tmp)
                    elif op_inputs[0].find("space").text == "ram":
                        name = op_inputs[1].find("symbol").text
                        if name in self.lifter.global_addrs:
                            self.store_output(op_output, self.lifter.global_addrs[name])
                        else:
                            # Ad hoc declare a global
                            size = int(op_output.find("size").text) * 8
                            global_type = ir.IntType(size)
                            glob = ir.GlobalVariable(self.lifter.module, global_type, name)
                            self.lifter.global_vars[name] = glob
                            self.lifter.global_addrs[name] = glob
                            self.store_output(op_output, glob)
                    else:
                        raise Exception("PTRSUB not in stack space, global, or not in byte_addressable mode")
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
        nongoal = self.options.get("nongoal", False)
        if call_target in lifter.instrumentation:
            return lifter.instrumentation[call_target]
        if call_target == "sym.path_start":
            ir_func = None
        elif call_target == "sym.path_goal":
            if not nongoal:
                args = []
                func_type = ir.FunctionType(void_type, args)
                ir_func = ir.Function(module, func_type, "verifier.error")
                lifter.instrumentation[call_target] = ir_func
            else:
                ir_func = None
        elif call_target == "sym.path_nongoal":
            if nongoal:
                args = []
                func_type = ir.FunctionType(void_type, args)
                ir_func = ir.Function(module, func_type, "verifier.error")
                lifter.instrumentation[call_target] = ir_func
            else:
                ir_func = None
        elif call_target == "sym.imp.rand":
            args = []
            func_type = ir.FunctionType(int32, args)
            ir_func = ir.Function(module, func_type, "nd")
            lifter.instrumentation[call_target] = ir_func
        elif call_target == "sym.example_constrain_ret_int":
            args = int32
            func_type = ir.FunctionType(int32, args)
            ir_func = ir.Function(module, func_type, "sym.example_constrain_ret_int")
            entry_block = ir_func.append_basic_block(name="entry")
            error_block = ir_func.append_basic_block(name="error")
            exit_block = ir_func.append_basic_block(name="exit")
            entry_builder = ir.IRBuilder(entry_block)
            error_builder = ir.IRBuilder(error_block)
            exit_builder = ir.IRBuilder(exit_block)
            a = ir_func.args
            b = entry_builder.alloca(int32)
            nd = self.instrument("sym.imp.rand")
            val = entry_builder.call(nd, [])
            entry_builder.store(val, b)
            result = entry_builder.icmp_signed("==", a, b)
            entry_builder.cbranch(result, exit_block, error_block)
            verifier_error = self.instrument("sym.path_nongoal" if nongoal else "sym.path_goal")
            error_builder.call(verifier_error, [])
            error_builder.branch(exit_block)
            exit_builder.ret(b)
            lifter.instrumentation[call_target] = ir_func
        elif call_target == "sym.example_constrain_arg_int__int":
            args = (int32, int32)
            func_type = ir.FunctionType(void_type, args)
            ir_func = ir.Function(module, func_type, "sym.example_constrain_arg_int__int")
            entry_block = ir_func.append_basic_block(name="entry")
            error_block = ir_func.append_basic_block(name="error")
            exit_block = ir_func.append_basic_block(name="exit")
            entry_builder = ir.IRBuilder(entry_block)
            error_builder = ir.IRBuilder(error_block)
            exit_builder = ir.IRBuilder(exit_block)
            a, b = ir_func.args
            result = entry_builder.icmp_signed("==", a, b)
            entry_builder.cbranch(result, exit_block, error_block)
            verifier_error = self.instrument("sym.path_nongoal" if nongoal else "sym.path_goal")
            error_builder.call(verifier_error, [])
            error_builder.branch(exit_block)
            exit_builder.ret_void()
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
        name = arg.find("symbol").text.strip("_.")
        if ")" in name:
            name = name.split(")")[-1]
        if "[" in name:
            name = name.split("[")[0]
        symbol_offset = int(arg.find("offset").text, 16) * 8
        symbol_size = int(arg.find("size").text, 16) * 8
        metatype = int(arg.find("metatype").text)
        size = int(arg.find("size").text) * 8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        if name in self.ptrs and metatype == 2:
            return self.ptrs[name]
        if space == "const":
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
        if space == "unique" and name not in self.locals:
            return self.temps[name]
        val = None
        if name in self.lifter.global_vars:
            loc = self.lifter.global_vars[name]
        elif name in self.locals:
            loc = self.locals[name]
        elif name in self.temps:
            return self.temps[name]
        elif name in self.args:
            loc = self.args[name]
        else:
            raise Exception("Unexpected argument: " + name)
        if loc is not None:
            if name in self.args:
                return builder.load(loc)
            elif name in self.lifter.global_vars:
                return builder.load(loc)
            elif name in self.locals:
                return builder.load(loc)
            elif symbol_size != 0 or symbol_offset != 0:
                tmp = builder.gep(loc, [ir.Constant(ir.IntType(32), symbol_offset)])
                return builder.load(builder.bitcast(tmp, ir.PointerType(ir.IntType(symbol_size))))
            else:
                return builder.load(loc)
        else:
            raise Exception("No input varnode found")

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
        name = arg.find("symbol").text.strip("_.")
        metatype = int(arg.find("metatype").text)
        symbol_offset = int(arg.find("symbol").get("offset", "0")) * 8
        symbol_size = int(arg.find("symbol").get("size", "0")) * 8
        size = int(arg.find("size").text) * 8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        if name in self.ptrs and metatype == 2:
            location = self.ptrs[name]
        # elif sym_id is not None:
        #     if sym_id in self.lifter.global_vars:
        #         location = self.lifter.global_vars[sym_id]
        #     elif sym_id in self.locals:
        #         location = self.locals[sym_id]
        #     else:
        #         self.temps[sym_id] = result
        #         return
        else:
            if name in self.lifter.global_vars:
                location = self.lifter.global_vars[name]
            elif name in self.locals:
                location = self.locals[name]
            elif space == "unique":
                self.temps[name] = result
                return
            elif name in self.args:
                location = self.args[name]
            else:
                self.temps[name] = result
                return
        if symbol_size != 0 or symbol_offset != 0:
            if name in self.args:
                raise Exception("Check")
            else:
                tmp = builder.gep(location, [ir.Constant(ir.IntType(symbol_size), symbol_offset)])
                location = builder.bitcast(tmp, ir.PointerType(ir.IntType(symbol_size)))
        result, location = self.storage_check(result, location)
        builder.store(result, location)

    def int_comp_type_check(self, lhs, rhs):
        """Ghidra should guarantee these are the same size, but we need to verify. Output is always ir.IntType(1)"""
        while isinstance(lhs.type, ir.PointerType):
            lhs = self.current_builder.load(lhs)
        while isinstance(rhs.type, ir.PointerType):
            rhs = self.current_builder.load(rhs)
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

        if isinstance(target.type, ir.PointerType):
            target = ir.IntType(target.type.pointee.width)
        else:
            target = target.type
        assert isinstance(lhs.type, ir.IntType)
        assert isinstance(rhs.type, ir.IntType)
        assert isinstance(target, ir.IntType)
        if lhs.type.width < target.width:
            lhs = self.current_builder.zext(lhs, target)
        elif lhs.type.width > target.width:
            lhs = self.current_builder.trunc(lhs, target)
        if rhs.type.width < target.width:
            rhs = self.current_builder.zext(rhs, target)
        elif rhs.type.width > target.width:
            rhs = self.current_builder.trunc(rhs, target)
        return lhs, rhs

    def int_shift_type_check(self, arg, shift, target):
        """arg must match target size. Shift must simply be a constant IntType"""
        if isinstance(target.type, ir.PointerType):
            target = ir.IntType(target.type.pointee.width)
        else:
            target = target.type
        assert isinstance(arg.type, ir.IntType)
        assert isinstance(shift.type, ir.IntType)
        assert isinstance(target, ir.IntType)
        if arg.type.width < target.width:
            arg = self.current_builder.zext(arg, target)
        elif arg.type.width > target.width:
            arg = self.current_builder.trunc(arg, target)
        if shift.type.width < target.width:
            shift = self.current_builder.zext(shift, target)
        elif shift.type.width > target.width:
            shift = self.current_builder.trunc(arg, target)
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
        if isinstance(result.type, ir.PointerType):
            if isinstance(location.type.pointee, ir.PointerType):
                return result, self.current_builder.bitcast(location, ir.PointerType(result.type))
            if result.type != location.type.pointee:
                return result, self.current_builder.bitcast(location,  ir.PointerType(result.type))
            return result, location
        assert isinstance(result.type, ir.IntType)
        if result.type != location.type.pointee:
            location = self.current_builder.bitcast(location, ir.PointerType(result.type))
        if result.type.width < location.type.pointee.width:
            result = self.current_builder.zext(result, location.type.pointee)
        else:
            result = self.current_builder.trunc(result, location.type.pointee)
        return result, location

    def get_type(self, arg):
        builder = self.current_builder
        name = arg.find("symbol").text.strip("_.")
        metatype = int(arg.find("metatype").text)
        size = int(arg.find("size").text) * 8
        space = arg.find("space").text
        offset = arg.find("offset").text
        sym_id = arg.find("id").text
        # if sym_id is not None:
        #     if sym_id in self.lifter.global_vars:
        #         return builder.load(self.lifter.global_vars[sym_id])
        #     elif sym_id in self.locals:
        #         return builder.load(self.locals[sym_id])
        #     elif sym_id in self.temps:
        #         return self.temps[sym_id]
        #     elif sym_id in self.args:
        #         return self.args[sym_id]
        #     else:
        #         pass
        if name in self.lifter.global_vars:
            return self.lifter.global_vars[name]
        elif name in self.locals:
            return self.locals[name]
        elif name in self.temps:
            return self.temps[name]
        elif name in self.args:
            return self.args[name]
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
            return ir.Constant(ir.IntType(size), 0)
        else:
            raise Exception("Not found!")

    def op_ptr_add(self, in0, in1, in2, out):
        """ input0		Varnode containing pointer to an array.
            input1		Varnode containing integer index.
            input2	(constant)	Constant varnode indicating element size.
            output		Varnode result containing pointer to indexed array entry."""
        if in0.find("symbol").text in self.locals:
            ptr = self.locals[in0.find("symbol").text]
        else:
            ptr = self.fetch_input(in0)
        index = self.fetch_input(in1)
        assert isinstance(index.type, ir.IntType)
        assert isinstance(ptr.type, ir.PointerType)
        shift = ir.Constant(ir.IntType(index.type.width), 8 * int(in2.find("symbol").text))
        adjusted = self.current_builder.mul(index, shift)
        new_ptr = self.current_builder.gep(ptr, [adjusted], inbounds=True)
        assert isinstance(new_ptr.type, ir.PointerType)
        if new_ptr.type.pointee != shift.type:
            new_ptr = self.current_builder.bitcast(new_ptr, ir.PointerType(shift.type))
        self.store_output(out, new_ptr)

    def int_ext_type_check(self, inv, outv, in_type):
        in_type = ir.IntType(int(in_type) * 8)
        if inv.type != in_type:
            if inv.type.width < in_type.width:
                inv = self.current_builder.zext(inv, in_type)
            else:
                inv = self.current_builder.trunc(inv, in_type)
        if isinstance(outv.type, ir.PointerType):
            return inv, ir.IntType(outv.type.pointee.width)
        return inv, outv
