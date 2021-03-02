from llvmlite import ir
import xml.etree.ElementTree as et
import lxml.etree as etree

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()

GENERAL_INT = ["INT_EQUAL", "INT_NOTEQUAL", "INT_LESS", "INT_LESSEQUAL", "INT_SLESS", "INT_SLESSEQUAL", "INT_ADD",
               "INT_SUB", "INT_MULT", "INT_DIV", "INT_REM", "INT_SDIV", "INT_SREM", "INT_CARRY", "INT_SCARRY",
               "INT_SBORROW", "INT_2COMP", "INT_LEFT", "INT_RIGHT", "INT_SRIGHT", "INT_ZEXT", "INT_SEXT",
               "INT_NEGATE", "INT_XOR", "INT_AND", "INT_OR"]
GENERAL_DATA = ["COPY", "LOAD", "STORE"]
GENERAL_BOOL = ["BOOL_XOR", "BOOL_AND", "BOOL_OR", "BOOL_NEGATE"]
GENERAL_FLOW = ["CALL", "CALLIND", "BRANCH", "CBRANCH", "BRANCHIND", "RETURN"]
GENERAL_OTHER = ["PTRADD", "PTRSUB", "CAST", "SUBPIECE", "PIECE"]


class Operation(object):
    @staticmethod
    def get_op_from_name(opname, output, inputs, block):
        if opname in GENERAL_INT:
            return GeneralInteger(opname, output, inputs, block)
        elif opname in GENERAL_DATA:
            return GeneralData(opname, output, inputs, block)
        elif opname in GENERAL_FLOW:
            return GeneralFlow(opname, output, inputs, block)
        elif opname in GENERAL_BOOL:
            return GeneralBool(opname, output, inputs, block)
        elif opname in GENERAL_OTHER:
            return GeneralOther(opname, output, inputs, block)
        else:
            print("Unexpected opname!")
            raise ValueError(opname)

    def __init__(self, opname, output, inputs, block):
        self.opname = opname
        self.output_xml = output
        self.inputs_xml = inputs
        self.block = block
        self.builder = block.builder
        self.lifted_function = self.block.lifted_function
        self.output, self.output_is_unique = self.fetch_output()
        self.inputs = self.fetch_inputs()

    def fetch_output(self):
        is_unique = False
        if self.output_xml is None:
            return None, is_unique
        if isinstance(self.output_xml, list):
            raise Exception("There should not be more than one output")
        name = self.output_xml.find("symbol").text
        if name[0] == '_' or name[0] == '>':
            name = name[1:]
        smaller = False
        if self.output_xml.find("symbol").get("size") is not None:
            if self.output_xml.find("symbol").get("size") != "0" and self.output_xml.find("symbol").get(
                    "offset") != "0":
                name = name.split('.')[0]
            elif self.output_xml.find("symbol").get("size") != "0" and self.output_xml.find("symbol").get("offset") == "0":
                smaller = True
                smaller_size = int(self.output_xml.find("symbol").get("size")) * 8
            else:
                raise Exception("Unexpected partial symbol access")
        size = int(self.output_xml.find("size").text) * 8
        space = self.output_xml.find("space").text
        offset = self.output_xml.find("offset").text
        # local variable
        if name in self.lifted_function.local_vars:
            if smaller:
                arg = self.builder.trunc(self.lifted_function.local_vars[name], ir.IntType(smaller_size))
                return arg, is_unique
            return self.lifted_function.local_vars[name], is_unique
        elif space == "unique" or "unique" in name:
            is_unique = True
            return name, is_unique
        # register
        reg_name = "register" + offset
        if reg_name in self.lifted_function.local_vars:
            return self.lifted_function.local_vars[reg_name], is_unique
        # constant
        else:
            return None, is_unique

    def fetch_inputs(self):
        args = []
        for input_xml in self.inputs_xml:
            smaller = False
            name = input_xml.find("symbol").text
            if ')' in name:
                name = name.split(')')[1]
            if name[0] == '_' or name[0] == '>':
                name = name[1:]
            if input_xml.find("symbol").get("size") is not None:
                if input_xml.find("symbol").get("size") != "0" and input_xml.find("symbol").get("offset") != "0":
                    name = name.split('.')[0]
                elif input_xml.find("symbol").get("size") != "0" and input_xml.find("symbol").get("offset") == "0":
                    smaller = True
                    smaller_size = int(input_xml.find("symbol").get("size")) * 8
                else:
                    raise Exception("Unexpected partial symbol access")
            size = int(input_xml.find("size").text) * 8
            space = input_xml.find("space").text
            offset = input_xml.find("offset").text
            sym_type = input_xml.find("type").text
            reg_name = "register" + offset
            # local variable
            if name in self.lifted_function.lifter.global_dict:
                arg = self.lifted_function.lifter.global_dict[name]
            elif name in self.lifted_function.local_vars:
                # TODO: Handle pointers to pointers in general
                if name == "argv":
                    arg = self.lifted_function.local_vars[name]
                else:
                    if isinstance(self.lifted_function.local_vars[name].type, ir.PointerType):
                        arg = self.builder.load(self.lifted_function.local_vars[name])
                    else:
                        arg = self.lifted_function.local_vars[name]
                    expected_size = ir.IntType(size)
                    if isinstance(arg.type, ir.IntType):
                        if arg.type.width > size:
                            arg = self.builder.trunc(arg, expected_size)
                        elif arg.type.width < size:
                            arg = self.builder.zext(arg, expected_size)
            # register
            elif reg_name in self.lifted_function.local_vars and space == "register":
                arg = self.builder.load(self.lifted_function.local_vars[reg_name])
                expected_size = ir.IntType(size)
                if arg.type.width > size:
                    arg = self.builder.trunc(arg, expected_size)
                elif arg.type.width < size:
                    arg = self.builder.zext(arg, expected_size)
            # constant
            elif space == "const":
                if "U" in name:
                    name = name.split('U')[0]
                if "0x" in name:
                    arg = ir.Constant(ir.IntType(size), int(name, 16))
                else:
                    arg = ir.Constant(ir.IntType(size), int(name))
            elif space == "unique":
                try:
                    arg = self.lifted_function.temps[name]
                except KeyError:
                    print(f"{name} not lifted, skipping instruction")
                    arg = None
            # function calls
            elif name in self.lifted_function.lifter.functions:
                arg = self.lifted_function.lifter.functions[name]
            # branch target
            elif sym_type == "code":
                # We can't trust the branching, when we see a branch, cbranch, branchindirect we just take the out branches
                arg = None
            elif name[0] == '*' and space == "ram":  # function address, potentially
                # Gotta go read from r2 ram space
                r = self.lifted_function.lifter.decompiler.r_backup
                r.cmd('s ' + name[1:])
                read = r.cmd('p8 3')
                address = "0x" + read[4:6] + read[2:4] + read[0:2]
                arg = ir.Constant(ir.IntType(size), int(address,16))
            elif space == "stack":
                value = int(name, 16)
                arg = ir.Constant(ir.IntType(size), value)
            else:
                arg = None
            if smaller:
                arg = self.builder.trunc(arg, ir.IntType(smaller_size))
            args.append(arg)
        return args

    def store_result(self, result):
        if self.output_is_unique:
            self.lifted_function.temps[self.output] = result
        elif self.output is None:
            # output is being thrown away
            pass
        else:
            if self.output in self.lifted_function.temps:
                self.output = self.lifted_function.temps[self.output]
            assert (isinstance(self.output.type, ir.PointerType))
            if isinstance(result.type, ir.PointerType):
                self.builder.store(result, self.output)
            else:
                if result.type.width < self.output.type.pointee.width:
                    result = self.builder.zext(result, self.output.type.pointee)
                elif result.type.width > self.output.type.pointee.width:
                    result = self.builder.trunc(result, self.output.type.pointee)
                self.builder.store(result, self.output)


class GeneralInteger(Operation):
    INT_UNARY = ["INT_2COMP", "INT_NEGATE", "INT_SEXT", "INT_ZEXT"]
    INT_COMPARISONS = {"INT_EQUAL": "==", "INT_NOTEQUAL": "!=", "INT_LESS": "<", "INT_LESSEQUAL": "<="}
    INT_S_COMPARISONS = {"INT_SLESS": "<", "INT_SLESSEQUAL": "<="}
    INT_CARRIES = ["INT_CARRY", "INT_SCARRY", "INT_SBORROW"]
    INT_OUTPUT_SIZE_ONE = list(INT_COMPARISONS.keys()) + list(INT_S_COMPARISONS.keys()) + INT_CARRIES
    INT_ALL_SAME_TYPE = ["INT_ADD", "INT_SUB", "INT_MULT", "INT_DIV", "INT_REM", "INT_SDIV", "INT_SREM", "INT_LEFT",
                         "INT_RIGHT", "INT_SRIGHT", "INT_XOR", "INT_AND", "INT_OR"]

    def __init__(self, opname, output, inputs, block):
        super().__init__(opname, output, inputs, block)
        if opname in GeneralInteger.INT_UNARY:
            if len(self.inputs) != 1:
                raise ValueError(self.inputs)
            value = self.inputs[0]
            if isinstance(value.type, ir.PointerType):
                value = self.block.builder.load(value)
            if opname in ["INT_2COMP", "INT_NEGATE"]:
                result = self.builder_factory()(value)
            else:
                if self.output_is_unique:
                    target_type = ir.PointerType(ir.IntType(int(self.output_xml.find("size").text)*8))
                else:
                    target_type = self.output.type
                if isinstance(target_type, ir.PointerType):
                    target_type = target_type.pointee
                result = self.builder_factory()(value, target_type)
        elif opname in GeneralInteger.INT_OUTPUT_SIZE_ONE:
            if len(self.inputs) != 2:
                raise ValueError(self.inputs)
            lhs, rhs = self.inputs
            lhs, rhs = self.verify_binary_input(lhs, rhs)
            if isinstance(lhs.type, ir.PointerType):
                lhs = self.block.builder.load(lhs)
            if isinstance(rhs.type, ir.PointerType):
                rhs = self.block.builder.load(rhs)
            if opname in GeneralInteger.INT_COMPARISONS:
                result = self.block.builder.icmp_unsigned(GeneralInteger.INT_COMPARISONS[opname], lhs, rhs)
            elif opname in GeneralInteger.INT_S_COMPARISONS:
                result = self.block.builder.icmp_signed(GeneralInteger.INT_S_COMPARISONS[opname], lhs, rhs)
            else:
                result = self.builder_factory()(lhs, rhs)
        elif opname in GeneralInteger.INT_ALL_SAME_TYPE:
            if len(self.inputs) != 2:
                raise ValueError(self.inputs)
            lhs, rhs = self.inputs
            lhs, rhs = self.verify_binary_input(lhs, rhs)
            if isinstance(lhs.type, ir.PointerType):
                lhs = self.block.builder.load(lhs)
            if isinstance(rhs.type, ir.PointerType):
                rhs = self.block.builder.load(rhs)
            result = self.builder_factory()(lhs, rhs)
        else:
            raise ValueError(opname)
        self.store_result(result)

    def verify_binary_input(self, lhs, rhs):
        if isinstance(lhs.type, ir.PointerType):
            lhs = self.builder.load(lhs)
        if isinstance(rhs.type, ir.PointerType):
            rhs = self.builder.load(rhs)
        assert(isinstance(lhs.type, ir.IntType))
        assert(isinstance(rhs.type, ir.IntType))
        if lhs.type.width < rhs.type.width:
            lhs = self.builder.zext(lhs, rhs.type)
        if lhs.type.width > rhs.type.width:
            rhs = self.builder.zext(rhs, lhs.type)
        return lhs, rhs

    def builder_factory(self):
        # Get the function when we need it, since builders are block specific
        if self.opname == "INT_ADD":
            return self.builder.add
        elif self.opname == "INT_SUB":
            return self.builder.sub
        elif self.opname == "INT_MULT":
            return self.builder.mul
        elif self.opname == "INT_DIV":
            return self.builder.div
        elif self.opname == "INT_REM":
            return self.builder.urem
        elif self.opname == "INT_SDIV":
            return self.builder.sdiv
        elif self.opname == "INT_SREM":
            return self.builder.srem
        elif self.opname == "INT_ZEXT":
            return self.builder.zext
        elif self.opname == "INT_SEXT":
            return self.builder.sext
        elif self.opname == "INT_CARRY":
            # TODO: INT_CARRY
            raise ValueError(self.opname)
        elif self.opname == "INT_SCARRY":
            # TODO: INT_SCARRY
            raise ValueError(self.opname)
        elif self.opname == "INT_SBORROW":
            # TODO: INT_SBORROW
            raise ValueError(self.opname)
        elif self.opname == "INT_2COMP":
            return self.builder.neg
        elif self.opname == "INT_NEGATE":
            return self.builder.not_
        elif self.opname == "INT_XOR":
            return self.builder.xor
        elif self.opname == "INT_AND":
            return self.builder.and_
        elif self.opname == "INT_OR":
            return self.builder.or_
        elif self.opname == "INT_LEFT":
            return self.builder.shl
        elif self.opname == "INT_RIGHT":
            return self.builder.lshr
        elif self.opname == "INT_SRIGHT":
            return self.builder.ashr
        else:
            raise ValueError(self.opname)


class GeneralData(Operation):
    def __init__(self, opname, output, inputs, block):
        super().__init__(opname, output, inputs, block)
        if opname == "COPY":
            if len(self.inputs) != 1:
                raise Exception("Copy operation expects only 1 input")
            if isinstance(self.inputs[0].type, ir.PointerType):
                if isinstance(self.inputs[0].type.pointee, ir.ArrayType):
                    pass
                else:
                    self.inputs[0] = self.builder.load(self.inputs[0])
            self.store_result(self.inputs[0])
        elif opname == "LOAD":
            if len(self.inputs) != 2:
                raise Exception("Load operation expects only 2 inputs")
            self.store_result(self.builder.load(self.inputs[1]))
        elif opname == "STORE":
            if len(self.inputs) != 3:
                raise Exception("Load operation expects only 3 inputs")
            self.output_xml = self.inputs_xml[1]
            self.output, is_unique = self.fetch_output()
            self.store_result(self.inputs[2])
        else:
            raise Exception(f"Unexpected opname: {opname}")


class GeneralFlow(Operation):
    def __init__(self, opname, output, inputs, block):
        super().__init__(opname, output, inputs, block)
        if opname == "CALL":
            if len(self.inputs) > 1:
                args = self.inputs[1:]
            else:
                args = []
            if self.inputs[0].ir_func is not None:
                # verify args types match
                for idx, arg in enumerate(args):
                    target_type = self.inputs[0].ir_func.args[idx].type
                    if isinstance(target_type, ir.PointerType) and isinstance(arg.type, ir.IntType):
                        assert(target_type != arg.type)
                        args[idx] = self.builder.inttoptr(arg, target_type)
                    elif isinstance(target_type, ir.PointerType) and isinstance(arg.type, ir.PointerType):
                        if target_type != arg.type:
                            args[idx] = self.builder.bitcast(arg, target_type)
                        else:
                            args[idx] = arg
                    elif isinstance(target_type, ir.IntType) and isinstance(arg.type, ir.PointerType):
                        args[idx] = self.builder.ptrtoint(arg, target_type)
                    else:
                        assert (isinstance(target_type, ir.IntType))
                        assert (isinstance(arg.type, ir.IntType))
                        if arg.type != target_type:
                            if isinstance(arg.type, ir.IntType):
                                if arg.type.width < target_type.width:
                                    args[idx] = self.builder.zext(arg, target_type)
                                else:
                                    args[idx] = self.builder.trunc(arg, target_type)
                            else:
                                raise Exception(
                                    f"Argument type mismatch: {arg.type} != {self.inputs[0].ir_func.args[idx].type}")
                        else:
                            continue
                if self.inputs[0].return_type == void_type:
                    self.builder.call(self.inputs[0].ir_func, args)
                else:
                    result = self.builder.call(self.inputs[0].ir_func, args)
                    self.store_result(result)
        elif opname == "CALLIND":
            # Indirect call only supports no arguments currently
            if len(self.inputs) == 1:
                indirect_call = self.inputs[0]
                if isinstance(indirect_call.type, ir.PointerType):
                    indirect_call = self.builder.ptrtoint(indirect_call, int64)
                self.builder.call(self.lifted_function.lifter.functions["ghidrall.indirect.call"].ir_func, [indirect_call])
        elif opname == "BRANCH":
            if len(self.inputs) != 1:
                raise Exception("BRANCH operation expects only 1 inputs")  # even though we ignore the value
            blocks = self.lifted_function.graph.blocks
            out_branch_id = self.block.xml.find("out_branches").find("target").get("id")
            self.builder.branch(blocks[out_branch_id].ir_block)
        elif opname == "BRANCHIND":
            # Implement this as a switch based on block id
            if len(self.inputs) != 1:
                raise Exception("Indirect branch only has 1 input")
            outs = [target.get("id") for target in self.block.xml.find("out_branches").findall("target")]
            blocks = self.lifted_function.graph.blocks
            switch = self.builder.switch(value=self.inputs[0], default=blocks[outs[0]].ir_block)
            for block_id in outs:
                switch.add_case(ir.Constant(ir.IntType(8), int(block_id)), blocks[block_id].ir_block)
        elif opname == "CBRANCH":
            if len(self.inputs) != 2:
                raise Exception("CBRANCH operation expects only 2 inputs")  # even though we ignore the second
            blocks = self.lifted_function.graph.blocks
            true_branch_id = format(int(self.block.xml.find("out_branches").find("true_branch").get("id")), 'x')
            false_branch_id = format(int(self.block.xml.find("out_branches").find("false_branch").get("id")), 'x')
            conditional = self.inputs[1]
            if conditional.type != int1:
                conditional = self.builder.trunc(conditional, int1)
            self.builder.cbranch(conditional, blocks[true_branch_id].ir_block, blocks[false_branch_id].ir_block)
        elif opname == "RETURN":
            if self.lifted_function.return_type == void_type:
                self.builder.ret_void()
            else:
                if len(self.inputs) != 2:
                    raise Exception("Return should only return 1 value of 2 inputs")
                self.builder.ret(self.inputs[1])
        else:
            raise ValueError(opname)


class GeneralBool(Operation):
    def __init__(self, opname, output, inputs, block):
        super().__init__(opname, output, inputs, block)
        if opname in ["BOOL_OR", "BOOL_AND", "BOOL_XOR"]:
            if len(self.inputs) != 2:
                raise Exception("Copy operation expects only 2 input")
            lhs, rhs = self.inputs
            result = self.builder_factory()(lhs, rhs)

        elif opname == "BOOL_NEGATE":
            if len(self.inputs) != 1:
                raise Exception("Copy operation expects only 1 input")
            value = self.inputs[0]
            result = self.builder_factory()(value)
        else:
            raise ValueError(self.opname)
        self.store_result(result)

    def builder_factory(self):
        # Get the function when we need it, since builders are block specific
        if self.opname == "BOOL_OR":
            return self.builder.or_
        elif self.opname == "BOOL_AND":
            return self.builder.and_
        elif self.opname == "BOOL_XOR":
            return self.builder.xor
        elif self.opname == "BOOL_NEGATE":
            return self.builder.neg
        else:
            raise ValueError(self.opname)


class GeneralOther(Operation):
    def __init__(self, opname, output, inputs, block):
        super().__init__(opname, output, inputs, block)
        try:
            if opname == "PTRADD":
                """ input0		Varnode containing pointer to an array.
                    input1		Varnode containing integer index.
                    input2	(constant)	Constant varnode indicating element size.
                    output		Varnode result containing pointer to indexed array entry."""
                if len(self.inputs) != 3:
                    raise Exception("ptradd operation expects only 3 inputs")
                ptr = self.inputs[0]
                index = self.inputs[1]
                assert isinstance(index.type, ir.IntType)
                assert isinstance(ptr.type, ir.PointerType)
                new_ptr = self.builder.gep(ptr, [index], inbounds=True)
                assert isinstance(new_ptr.type, ir.PointerType)
                self.store_result(new_ptr)
            elif opname == "CAST":
                if len(self.inputs) != 1:
                    raise Exception("Cast operation expects only 1 input")
                value = self.inputs[0]
                if isinstance(value.type, ir.IntType):
                    size = int(self.output_xml.find("size").text) * 8
                    metatype = int(self.output_xml.find("metatype").text)
                    if metatype == 2:
                        # We're dealing with a pointer
                        value = self.builder.inttoptr(value, ir.PointerType(ir.IntType(size)))
                    else:
                        target_type = ir.IntType(size)
                        if value.type.width < target_type.width:
                            value = self.builder.zext(value, target_type)
                        elif value.type.width > target_type.width:
                            value = self.builder.trunc(value, target_type)
                elif isinstance(value.type, ir.PointerType):
                    size = int(self.output_xml.find("size").text) * 8
                    metatype = int(self.output_xml.find("metatype").text)
                    if metatype == 7:  # We're converting a pointer to an int
                        value = self.builder.ptrtoint(value, ir.IntType(size))
                    else:
                        raise Exception(f"Unexpected cast: ptr to something other than an integer {metatype}")
                elif isinstance(value.type, ir.ArrayType):
                    size = int(self.output_xml.find("size").text) * 8
                    metatype = int(self.output_xml.find("metatype").text)
                    if metatype == 7 or metatype == 8:  # We're converting a pointer to an int
                        value = self.builder.ptrtoint(value, ir.IntType(size))
                    else:
                        raise Exception(f"Unexpected cast: ptr to something other than an integer {metatype}")
                else:
                    raise Exception(f"Unimplemented cast: {value.type}")
                if self.output_is_unique:
                    self.lifted_function.temps[self.output] = value
                else:
                    self.store_result(value)
            elif opname == "SUBPIECE":
                trunc = self.inputs[1]
                value = self.inputs[0]
                if trunc != ir.Constant(int32, 0):
                    raise Exception("Unexpected truncation size")
                else:
                    if self.output_is_unique:
                        target_type = ir.IntType(int(self.output_xml.find("size").text)*8)
                        if value.type != target_type:
                            value = self.builder.trunc(value, target_type)
                    else:
                        if value.type != self.output.type.pointee:
                            value = self.builder.trunc(value, self.output.type.pointee)
                    self.store_result(value)
            elif opname == "PTRSUB":
                if self.inputs[0] is not None and self.inputs[1] is not None:
                    if self.lifted_function.lifter.options["locals"] == "single_struct":
                        symbol = self.inputs_xml[0].find("symbol").text
                        if symbol in self.lifted_function.stack_address_to_var:
                            self.store_result(self.lifted_function.stack_address_to_var[symbol])
                        else:
                            raise Exception("Did not recover stack value")
                    elif self.lifted_function.lifter.options["locals"] == "byte_addressable":
                        addr = int(self.inputs_xml[0].find("symbol").text, 16)
                        name = self.inputs_xml[0].find("symbol").text
                        space = self.inputs_xml[1].find("space").text
                        size = int(self.inputs_xml[1].find("size").text) * 8
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
                            offset = ir.Constant(ir.IntType(size), addr - self.lifted_function.stack_first)
                        else:
                            offset = self.inputs[1]
                        tmp = self.builder.gep(self.lifted_function.stack, [int32(0), offset], inbounds=True)
                        self.store_result(tmp)
                    else:
                        raise Exception("PTRSUB won't work in no_option local mode")
            elif opname == "PIECE":
                """
                Parameters	Description
                input0		Varnode containing most significant data to merge.
                input1		Varnode containing least significant data to merge.
                output		Varnode to contain resulting concatenation.
                Semantic statement	
                Cannot (currently) be explicitly coded
                This is a concatenation operator that understands the endianess of the data. 
                The size of input0 and input1 must add up to the size of output. 
                The data from the inputs is concatenated in such a way that, 
                if the inputs and output are considered integers, 
                the first input makes up the most significant part of the output.
                """
                if len(self.inputs) != 2:
                    raise Exception("PIECE expects two inputs")
                if self.output_is_unique:
                    target_size = int(self.output_xml.find("size").text) * 8
                else:
                    assert(isinstance(self.output.type, ir.PointerType))
                    assert(isinstance(self.output.type.pointee, ir.IntType))
                    target_size = self.output.type.pointee.width
                lhs, rhs = self.inputs
                assert(isinstance(lhs.type, ir.IntType))
                assert(isinstance(rhs.type, ir.IntType))
                lhs_size, rhs_size = lhs.type.width, rhs.type.width
                if lhs_size + rhs_size != target_size:
                    raise Exception("PIECE inputs width do not sum to target width")
                # left shift lhs to target_size
                lhs_extended = self.builder.zext(lhs, ir.IntType(target_size))
                lhs_shifted = self.builder.shl(lhs_extended, ir.Constant(ir.IntType(target_size), rhs_size))
                # extend rhs to target_size
                rhs_extended = self.builder.zext(rhs, ir.IntType(target_size))
                # bitwise and lhs and rhs
                result = self.builder.and_(lhs_shifted, rhs_extended)
                self.store_result(result)
            else:
                raise Exception(f"Unexpected opname: {opname}")
        except:
            pass
