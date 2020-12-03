import llvmlite.binding as llvm


# Optimization pass to eliminate extra storage artifacts from lifting
def optimize(module):
    pmb = llvm.create_pass_manager_builder()
    mpm = llvm.create_module_pass_manager()
    pmb.opt_level(1)
    pmb.populate(mpm)
    mpm.run(module)
