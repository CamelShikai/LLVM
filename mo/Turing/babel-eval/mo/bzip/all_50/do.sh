#cp ../blocksort.cil.c blocksort_b.c
cp ../bzip2.cil.c bzip2_b.c
#cp ../huffman.cil.c huffman_b.c
#cp ../compress.cil.c compress_b.c
#cp ../decompress.cil.c decompress_b.c
cp ../babel.pl .
rm bzip2
make
#diff mcf.out mcf.out.stand
./test.sh
