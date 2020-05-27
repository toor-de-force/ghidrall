import llvmlite.binding as llvm

llvm.initialize()
llvm.initialize_native_target()
llvm.initialize_native_asmprinter()


def compile_ir(module):
    engine = create_execution_engine()
    mod = llvm.parse_assembly(str(module))
    engine.add_module(mod)
    engine.finalize_object()
    engine.run_static_constructors()
    return mod


def create_execution_engine():
    target = llvm.Target.from_default_triple()
    target_machine = target.create_target_machine()
    backing_mod = llvm.parse_assembly("")
    engine = llvm.create_mcjit_compiler(backing_mod, target_machine)
    return engine
