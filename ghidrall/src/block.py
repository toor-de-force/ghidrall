from llvmlite import ir
import xml.etree.ElementTree as et

instrumentation_list = ["sym.path_start", "sym.path_goal", "sym.path_nongoal", "sym.imp.rand"]
int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


class GhidrallBlock:
    """"Holds the relevant data for a basic block"""

    def __init__(self, xml, function):
        """"Initialize function variables, recover locals, and build the CFG"""
        self.id = xml.find("label").get("id")
        self.address = xml.find("label").get("address")
        self.function = function
        self.xml_out = xml.find("out_branches")
        self.xml_in = xml.find("in_branches")
        self.ops = xml.find("ops").findall("op")
        self.ir_block = self.function.ir_func.append_basic_block(self.id)
        self.goto = None
        self.fall_thru = None

    def connect(self, blocks):
        branches = self.xml_out.findall("target")
        if len(branches) == 1:
            self.goto = blocks[branches[0].get("id")]
            self.fall_thru = blocks[branches[0].get("id")]
        elif len(branches) == 2:
            fall_thru_true = self.xml_out.find("fallthru")
            if self.xml_out.find("fallthru") is not None:
                if fall_thru_true.text == "true":
                    self.goto = blocks[branches[0].get("id")]
                    self.fall_thru = blocks[branches[1].get("id")]
                else:
                    self.goto = blocks[branches[1].get("id")]
                    self.fall_thru = blocks[branches[0].get("id")]
            else:
                raise Exception("There should be a fallthru branch")
        elif len(branches) == 0:
            pass
        else:
            raise Exception("Should not be that many out branches")
