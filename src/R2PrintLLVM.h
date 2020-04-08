/* radare - LGPL - Copyright 2019 - thestr4ng3r */

#ifndef R2GHIDRA_R2PRINTLLVM_H
#define R2GHIDRA_R2PRINTLLVM_H

#include "printLLVM.hh"

class R2PrintLLVM : public PrintLLVM
{
	protected:
		void pushUnnamedLocation(const Address &addr, const Varnode *vn,const PcodeOp *op) override;

	public:
		explicit R2PrintLLVM(Architecture *g, const string &nm = "llvm-language");

};

class R2PrintLLVMCapability : public PrintLanguageCapability
{
	private:
		static R2PrintLLVMCapability inst;
        R2PrintLLVMCapability();

	public:
		PrintLanguage *buildLanguage(Architecture *glb) override;
};

#endif //R2GHIDRA_R2PRINTLLVM_H
