from llvmlite import ir
from src import block

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


class Graph:
    """"The control flow graph of the function"""""

    def __init__(self, lifted_function):
        """Create the control flow graph"""
        self.lifted_function = lifted_function
        self.ir_func = self.lifted_function.ir_func
        self.xml = self.lifted_function.xml
        self.stack = None
        self.stack_first = None
        self.stack_address_to_var = {}
        self.local_vars = {}
        self.blocks = self.create_blocks()

    def create_blocks(self):
        blocks = {}
        # Create the remaining blocks
        for index, xml in enumerate(self.xml.findall(".//block")):
            current_block = block.Block(xml, self.lifted_function)
            if index == 0:
                self.recover_locals(current_block)
            blocks[current_block.id] = current_block
        for current_block in blocks.values():
            current_block.connect(blocks)
        return blocks

    def recover_locals(self, current_block: block.Block):
        builder = current_block.builder
        """"Recover stack variables based on decided structure from lifting options. Also recovers register types"""
        if self.lifted_function.lifter.options["locals"] == "no_option":
            for local in self.xml.find(".//locals").findall('mapsym'):
                name = local.find("symbol").get("name")
                size = int(local.find("typeref").get("size")) * 8
                metatype = local.find("typeref").get("metatype")
                if metatype == "2":
                    self.local_vars[name] = builder.alloca(ir.PointerType(ir.IntType(size)), name=name)
                else:
                    self.local_vars[name] = builder.alloca(ir.IntType(size), name=name)
        elif self.lifted_function.lifter.options["locals"] == "single_struct":
            ranges = self.xml.find(".//local_ranges").findall("range")
            if len(ranges) == 1 and ranges[0].get("name") == "stack":
                context = ir.global_context
                local_struct = context.get_identified_type("local_struct." + self.lifted_function.name)
                local_struct.packed = False
                self.stack_first = int(ranges[0].get("first"), 16)
                stack_last = int(ranges[0].get("last"), 16)
                stack_word_size = int(ranges[0].get("size")) * 8
                space_size = stack_last - self.stack_first
                stack_range = []
                first = True
                for local in self.xml.find(".//locals").findall('mapsym'):
                    metatype = local.find("typeref").get("metatype")
                    if metatype == "2":
                        name = local.find("symbol").get("name")
                        size = int(local.find("typeref").get("size")) * 8
                        self.local_vars[name] = builder.alloca(ir.PointerType(ir.IntType(size)), name=name)
                    else:
                        if local.find("entries").find("entry").get("space") == "stack":
                            address = local.find("entries").find("entry").get("offset")
                            offset = int(local.find("entries").find("entry").get("offset"), 16) - self.stack_first
                            name = local.find("symbol").get("name")
                            size_byte = int(local.find("typeref").get("size"))
                            size = size_byte * 8
                            if first:
                                stack_range.append(["padding", 0, offset - 1, "padding"])
                                first = False
                            else:
                                last_index = stack_range[-1][2] + 1
                                if offset != last_index:
                                    stack_range.append(["padding", last_index, offset - 1, "padding"])
                            stack_range.append([name, offset, offset + size_byte - 1, address])
                        else:
                            name = local.find("symbol").get("name")
                            size = int(local.find("typeref").get("size")) * 8
                            self.local_vars[name] = builder.alloca(ir.IntType(size), name=name)
                stack_range_values = [ir.IntType((last_index - first_index + 1) * 8) for name, first_index, last_index, address
                                      in stack_range]
                local_struct.set_body(*stack_range_values)
                index = 0
                struct = builder.alloca(local_struct)
                for name, first_index, last_index, address in stack_range:
                    self.local_vars[name] = builder.gep(struct, [int32(0), int32(index)], inbounds=True, name=name)
                    self.stack_address_to_var[address] = self.local_vars[name]
                    index += 1
            else:
                raise Exception("Multiple local ranges or local range not in stack space")
        elif self.lifted_function.lifter.options["locals"] == "byte_addressable":
            ranges = self.xml.find(".//local_ranges").findall("range")
            if len(ranges) == 1 and ranges[0].get("name") == "stack":
                self.stack_first = int(ranges[0].get("first"), 16)
                stack_last = int(ranges[0].get("last"), 16)
                stack_word_size = int(ranges[0].get("size")) * 8
                space_size = stack_last - self.stack_first
                stack = builder.alloca(ir.ArrayType(ir.IntType(8), space_size), name="stack")
                for local in self.xml.find(".//locals").findall('mapsym'):
                    metatype = local.find("typeref").get("metatype")
                    if metatype == "2":
                        name = local.find("symbol").get("name")
                        size = int(local.find("typeref").get("size")) * 8
                        self.local_vars[name] = builder.alloca(ir.PointerType(ir.IntType(size)), name=name)
                    else:
                        if local.find("entries").find("entry").get("space") == "stack":
                            offset = int(local.find("entries").find("entry").get("offset"), 16) - self.stack_first
                            name = local.find("symbol").get("name")
                            size = int(local.find("typeref").get("size")) * 8
                            temp = builder.gep(stack, [int32(0), int32(offset)])
                            self.local_vars[name] = builder.bitcast(temp, ir.PointerType(ir.IntType(size)), name=name)
                        else:
                            name = local.find("symbol").get("name")
                            size = int(local.find("typeref").get("size")) * 8
                            local_id = name
                            self.local_vars[local_id] = builder.alloca(ir.IntType(size), name=name)
                self.stack = stack
            else:
                raise Exception("Multiple local ranges or local range not in stack space")
        else:
            raise Exception("Not a local representation option")
        # Find registers
        register_sizes = {}
        for op in self.xml.findall(".//input") + self.xml.findall(".//output"):
            if op.find("space").text == "register" and "*" in op.find("symbol").text:
                size = int(op.find("size").text) * 8
                name = "register" + op.find("offset").text
                if name not in register_sizes:
                    register_sizes[name] = size
                else:
                    if register_sizes[name] < size:
                        register_sizes[name] = size
        for name, size in register_sizes.items():
            self.local_vars[name] = builder.alloca(ir.IntType(size), name=name)
        # Find parameters
        for arg in self.lifted_function.ir_func.args:
            self.local_vars[arg.name] = arg

