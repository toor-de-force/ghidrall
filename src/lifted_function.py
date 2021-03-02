from llvmlite import ir
import xml.etree.ElementTree as et
from src import graph

int32 = ir.IntType(32)
int64 = ir.IntType(64)
int1 = ir.IntType(1)
int8 = ir.IntType(8)
void_type = ir.VoidType()


class LiftedFunction:
    """Holds the relevant data for a function"""

    def __init__(self, name, pdgl, xml, lifter):
        """Create the function signature"""
        self.name = name
        self.xml = xml
        self.pdgl = pdgl
        self.address = self.xml.find('.//signature').get('addr')
        self.lifter = lifter
        self.module = lifter.module
        self.return_type = self.get_function_return()
        self.args = self.get_function_args()
        self.ir_func = None
        self.graph = None
        self.local_vars = None
        self.stack_first = None
        self.stack_address_to_var = None
        self.stack = None
        self.temps = {}

    def get_function_return(self):
        """Get the function return type"""
        xml_return_type = self.xml.find('.//typeref')
        return_meta_type = int(xml_return_type.get("metatype"))
        return_type_name = xml_return_type.get("name")
        if return_meta_type == 10:
            func_return = void_type
        elif return_type_name == "undefined8":
            func_return = int64
        else:
            func_return = ir.IntType(8 * int(xml_return_type.get('size')))
        return func_return

    def get_function_args(self):
        """Get the function arguments"""
        args = {}
        xml_args = self.xml.find('.//params').findall('mapsym')
        for arg in xml_args:
            name = arg.find('symbol').get("name")
            if name == "argv" and self.name == 'main':
                args[name] = ir.PointerType(ir.PointerType(ir.IntType(8)))
            else:
                i_type = ir.IntType(8 * int(arg.find('typeref').get("size")))
                if arg.find("typeref").get("metatype") == "2":
                    args[name] = ir.PointerType(ir.PointerType(i_type))
                else:
                    args[name] = i_type
        return args

    def create_function_signature(self):
        """Initialize the function object"""
        func_type = ir.FunctionType(self.return_type, list(self.args.values()))
        ir_func = ir.Function(self.module, func_type, self.name)
        for i in range(len(ir_func.args)):
            ir_func.args[i].name = list(self.args.keys())[i]
        self.ir_func = ir_func

    def build_cfg(self):
        self.graph = graph.Graph(self)
        self.local_vars = self.graph.local_vars
        self.stack_first = self.graph.stack_first
        self.stack_address_to_var = self.graph.stack_address_to_var
        self.stack = self.graph.stack
        self.temps = {}

    def populate_cfg(self):
        for block in self.graph.blocks.values():
            block.populate()


class InstrumentedFunction:
    def __init__(self, ir_func, return_type):
        """Create the function signature"""
        self.return_type = return_type
        self.ir_func = ir_func


