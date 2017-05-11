#cp ../mcfutil.cil.c mcfutil_b.c
#cp ../pbeampp.cil.c pbeampp_b.c
cp ../implicit.cil.c implicit_b.c
#cp ../output.cil.c output_b.c
cp ../babel.pl .
make
./mcf inp.in
#diff mcf.out mcf.out.stand
