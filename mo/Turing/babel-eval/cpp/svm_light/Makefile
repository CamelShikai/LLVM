all: svm_learn
	./svm_learn train.dat model

svm_learn: svm_classify.c  svm_common.c  svm_hideo.c  svm_learn.c  svm_learn_main.c
	gcc -c -g -pg *.c -O3
	gcc -pg svm_learn_main.o svm_learn.o svm_common.o svm_hideo.o -o svm_learn -L. -lm

