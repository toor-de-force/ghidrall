/* radare - LGPL - Copyright 2019 - thestr4ng3r */

#include "R2PrintLLVM.h"

#include <varnode.hh>
#include <architecture.hh>

// Constructing this registers the capability
R2PrintLLVMCapability R2PrintLLVMCapability::inst;

R2PrintLLVMCapability::R2PrintLLVMCapability(void)
{
	name = "r2-llvm-language";
	isdefault = false;
}

PrintLanguage *R2PrintLLVMCapability::buildLanguage(Architecture *glb)
{
	return new R2PrintLLVM(glb, name);
}

R2PrintLLVM::R2PrintLLVM(Architecture *g, const string &nm)
	: PrintLLVM(g, nm)
{
}

void R2PrintLLVM::pushUnnamedLocation(const Address &addr, const Varnode *vn, const PcodeOp *op)
{
    PrintLLVM::pushUnnamedLocation(addr,vn, op);
}