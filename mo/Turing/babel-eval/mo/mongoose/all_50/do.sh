cp ../mongoose.cil.c mongoose_b.c
cp ../babel.pl .
rm a.out
make
#diff mcf.out mcf.out.stand
./test.sh
