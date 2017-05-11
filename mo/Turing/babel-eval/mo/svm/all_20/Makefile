all:
	gplc svm_common_b.c  svm_hideo.c  svm_learn_b.c  svm_learn_main.c babel.pl  -C "-O3 -L. -lm -Wno-format-security -Wno-int-to-pointer-cast -Wno-pointer-to-int-cast" -o svm

clean:
	rm *.o
