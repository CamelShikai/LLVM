cp ../svm_common.cil.c svm_common_b.c
cp ../babel.pl .
make
./svm train.dat model
