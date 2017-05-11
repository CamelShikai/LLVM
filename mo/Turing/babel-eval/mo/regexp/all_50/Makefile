all:
	#gplc implicit.c  mcf.c  mcfutil.c  output.c  pbeampp.c  pbla.c  pflowup.c  psimplex.c  pstart.c  readmin.c  treeup.c babel.pl babel.c -o mcf -C -O2 
	gplc regsub.c regexp_b.c  regerror.c  try_b.c babel_50.pl -C "-I. -O3 -g" -o try
	#gplc regsub.c regexp.c  regerror.c  try.c babel_pro.pl -C "-I. -O3" -o try
#	env LOCALSZ=256000 
	./try <tests

clean:
	rm *.o

