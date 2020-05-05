import llvmlite.binding as llvm
import sys
import traceback

def verify(module):
    try:
        module_ref = llvm.parse_assembly(str(module))
        module_bc = llvm.parse_bitcode(module_ref.as_bitcode())
        module_bc.verify()
    except RuntimeError:
        traceback.print_exc()
        print(module)
        sys.exit()
    return module_bc
