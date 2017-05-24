SO_PREFIX = /home/sk/Tech_Folder/Research/llvm_release_build/lib
TMC_PREFIX = /home/sk/Tech_Folder/Research/mo/Turing
DEPS = $(SO_PREFIX)/LLVMTmObfuscator.so
CFLAGS=-Wall -Winline -O2 -g $(BIGFILES)

all: exe

#hello.o: hello.c $(DEPS)
#	clang -emit-llvm -S -c hello.c -o hello.ll
#	opt -load $(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < hello.ll > hello_ob.ll
#	llc -filetype obj -o hello.o hello_ob.ll

#tbecalled.o: tobecalled.c
#	clang -emit-llvm -S -c tobecalled.c -o tobecalled.ll
#	opt -load $(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < tobecalled.ll > tobecalled_ob.ll
#	llc -filetype obj -o tobecalled.o tobecalled_ob.ll

tm.o: $(TMC_PREFIX)/TM.c
	clang -emit-llvm  -S -c $(TMC_PREFIX)/TM.c -o tm.ll
	llc -filetype obj -o tm.o tm.ll
# bzip2.o: bzip2.c
# 	clang -emit-llvm -S -c bzip2.c -o bzip2.ll
# 	$(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < bzip2.ll > bzip2_ob.ll
# 	llc -filetype obj -o bzip2.o bzip2_ob.ll

# testbi: hello.o tm.o tobecalled.o
# 	gcc tm.o tobecalled.o hello.o -o testbi

# linkmethod: hello.c $(TMC_PREFIX)/TM.c tobecalled.c
# 	clang -emit-llvm -S -c hello.c -o hello.ll
# 	clang -emit-llvm -S -c tobecalled.c -o tobecalled.ll
# 	clang -emit-llvm  -S -c $(TMC_PREFIX)/TM.c -o tm.ll
# 	llvm-link -S hello.ll tobecalled.ll tm.ll -o comp.ll
# 	opt -load $(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < comp.ll > final.ll

# 	gcc testbi.o -o testbi

slre.o: slre.c
	clang -emit-llvm -S -c slre.c -o slre.ll
	opt -load $(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < slre.ll > slre_ob.ll
	llc -filetype obj slre_ob.ll -o slre.o

ob_unit_test.o: unit_test.c
	clang -emit-llvm -S -c unit_test.c -o unit_test.ll
	opt -load $(SO_PREFIX)/LLVMTmObfuscator.so -S -TmObfuscator < unit_test.ll > unit_test_ob.ll
	llc -filetype obj unit_test_ob.ll -o ob_unit_test.o

exe: tm.o slre.o ob_unit_test.o
	gcc tm.o slre.o ob_unit_test.o -g -o test
	
test:
	./test

clean:
	rm -f *.o
	rm -f *.ll
	rm test
