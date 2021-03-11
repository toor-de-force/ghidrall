all: bof.cex.ll

bof.exe: bof.c
	clang -fno-stack-protector bof.c -o bof.exe

bof.exe.ll: bof.exe
	(cd .. ; \
	python3 ghidrall.py examples/bof.exe \
	    -f main,sym.foo,sym.imp.strcpy,sym.my_strcpy \
	    -l byte_addressable -o examples/bof.exe.ll )

bof.cex.ll: bof.exe.ll
	sea yama  -y bof.yaml fpf bof.exe.ll --bound=50 --cex=bof.cex.ll
