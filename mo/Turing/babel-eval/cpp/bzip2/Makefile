all: bzip2
	./bzip2 -1  < sample1.ref > sample1.rb2
	mv gmon.out gmon.sum
	./bzip2 -2  < sample2.ref > sample2.rb2
	gprof -s bzip2 gmon.out gmon.sum
	./bzip2 -3  < sample3.ref > sample3.rb2
	gprof -s bzip2 gmon.out gmon.sum
	./bzip2 -d  < sample1.bz2 > sample1.tst
	gprof -s bzip2 gmon.out gmon.sum
	./bzip2 -d  < sample2.bz2 > sample2.tst
	gprof -s bzip2 gmon.out gmon.sum
	./bzip2 -ds < sample3.bz2 > sample3.tst
	gprof -s bzip2 gmon.out gmon.sum

bzip2:
	gcc *.c -pg -g -D_FILE_OFFSET_BITS=64 -o bzip2 -O3

