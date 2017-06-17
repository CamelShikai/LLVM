# LLVM
PSU thesis project
Author:Yan Wang

tricky parts:
1.In pass, when replacing instructions, pay attention to folloing references or it may prompt segment fault due to invalid pointer address
2.Need to consider branch instruction is conditional or not in order to setcondition predicate
3.When doing experiment with bzip2,pay attention to not use printf in TM.c source code, or it will yield wrong result can't pass cmp instruction
4.check turinglog.ext for evidence for having ran Turing Machine