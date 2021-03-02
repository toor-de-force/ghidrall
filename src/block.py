from llvmlite import ir
from src.operation import Operation

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()

BRANCHES = ["BRANCH", "CBRANCH", "BRANCHIND", "RETURN"]


class Block:
    """"Holds the relevant data for a basic block"""
    def __init__(self, xml, lifted_function):
        self.xml = xml
        self.id = self.xml.find("label").get("id")
        self.address = self.xml.find("label").get("address")
        self.lifted_function = lifted_function
        self.ir_block = self.lifted_function.ir_func.append_basic_block(self.id)
        self.builder = ir.IRBuilder(self.ir_block)
        self.goto = None
        self.goto_address = None
        self.fall_thru = None
        self.fall_thru_address = None
        self.block_is_switch = False
        self.ops = []

    def connect(self, blocks):
        branches = self.xml.find("out_branches").findall("target")
        if len(branches) == 1:
            try:
                self.goto = self.fall_thru = blocks[branches[0].get("id")]
                self.goto_address = self.fall_thru_address = self.goto.address
            except KeyError:
                print("Branch failed for block " + self.id)
                exit(1)
        elif len(branches) == 2:
            self.goto = blocks[branches[0].get("id")]
            self.goto_address = branches[0].get("address")
            self.fall_thru = blocks[branches[1].get("id")]
            self.fall_thru_address = branches[1].get("address")
        elif len(branches) == 0:
            pass
        else:
            self.block_is_switch = True

    def populate(self):
        branched = False
        for op in self.xml.findall(".//op"):
            name = op.find("opname").text
            output = op.find("output")
            inputs = op.findall(".//input")
            try:
                self.ops.append(Operation.get_op_from_name(name, output, inputs, self))
            except Exception as e:
                print(f"Failure in lifting function {self.lifted_function.name} in block {self.id}")
                print(f"Error: {e}")
                print(self.lifted_function.module)
                raise e
            if name in BRANCHES:
                branched = True
        if not branched:
            self.builder.branch(self.fall_thru.ir_block)  # Sometimes branching is implicit

