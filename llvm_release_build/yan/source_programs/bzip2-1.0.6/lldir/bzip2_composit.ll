; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.zzzz = type { i8*, %struct.zzzz* }
%struct.UInt64 = type { [8 x i8] }
%struct.tapes = type { %struct.tapes*, %struct.tapes*, i8 }
%struct.transition = type { i8, i8, i8, i8, i32 }
%struct.list = type { %struct.transition*, %struct.list* }
%struct.tm = type { i8*, i8*, i8*, i8, i8, i8, %struct.list* }

@zSuffix = global [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c".bz\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c".tbz2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c".tbz\00", align 1
@unzSuffix = global [4 x i8*] [i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0)], align 16
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [5 x i8] c".tar\00", align 1
@outputHandleJustInCase = common global %struct._IO_FILE* null, align 8
@smallMode = common global i8 0, align 1
@keepInputFiles = common global i8 0, align 1
@forceOverwrite = common global i8 0, align 1
@noisy = common global i8 0, align 1
@verbosity = common global i32 0, align 4
@blockSize100k = common global i32 0, align 4
@testFailsExist = common global i8 0, align 1
@unzFailsExist = common global i8 0, align 1
@numFileNames = common global i32 0, align 4
@numFilesProcessed = common global i32 0, align 4
@workFactor = common global i32 0, align 4
@deleteOutputOnInterrupt = common global i8 0, align 1
@exitValue = common global i32 0, align 4
@inName = common global [1034 x i8] zeroinitializer, align 16
@outName = common global [1034 x i8] zeroinitializer, align 16
@progNameReally = common global [1034 x i8] zeroinitializer, align 16
@progName = common global i8* null, align 8
@longestFileName = common global i32 0, align 4
@srcMode = common global i32 0, align 4
@opMode = common global i32 0, align 4
@tmpName = common global [1034 x i8] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"BZIP2\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"BZIP\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"unzip\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"UNZIP\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"z2cat\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Z2CAT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"zcat\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"ZCAT\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"%s: Bad flag `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"--stdout\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--decompress\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"--compress\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"--test\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"--small\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"--license\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--exponential\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"--repetitive-best\00", align 1
@.str.29 = private unnamed_addr constant [18 x i8] c"--repetitive-fast\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"--fast\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--best\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"--verbose\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"%s: -c and -t cannot be used together.\0A\00", align 1
@.str.35 = private unnamed_addr constant [113 x i8] c"\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.94 = private unnamed_addr constant [18 x i8] c"testf: bad modes\0A\00", align 1
@.str.54 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"%s: There are no files matching `%s'.\0A\00", align 1
@.str.95 = private unnamed_addr constant [30 x i8] c"%s: Can't open input %s: %s.\0A\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"%s: Input file %s is a directory.\0A\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.82 = private unnamed_addr constant [51 x i8] c"%s: I won't read compressed data from a terminal.\0A\00", align 1
@.str.65 = private unnamed_addr constant [34 x i8] c"%s: For help, type: `%s --help'.\0A\00", align 1
@.str.66 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.83 = private unnamed_addr constant [34 x i8] c"%s: Can't open input file %s:%s.\0A\00", align 1
@.str.96 = private unnamed_addr constant [19 x i8] c"testf: bad srcMode\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"  %s: \00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.98 = private unnamed_addr constant [21 x i8] c"test:bzReadGetUnused\00", align 1
@.str.89 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"%s: %s: \00", align 1
@.str.100 = private unnamed_addr constant [36 x i8] c"data integrity (CRC) error in data\0A\00", align 1
@.str.101 = private unnamed_addr constant [24 x i8] c"file ends unexpectedly\0A\00", align 1
@.str.102 = private unnamed_addr constant [46 x i8] c"bad magic number (file not created by bzip2)\0A\00", align 1
@.str.103 = private unnamed_addr constant [36 x i8] c"trailing garbage after EOF ignored\0A\00", align 1
@.str.104 = private unnamed_addr constant [22 x i8] c"test:unexpected error\00", align 1
@.str.48 = private unnamed_addr constant [38 x i8] c"\0A%s: couldn't allocate enough memory\0A\00", align 1
@.str.39 = private unnamed_addr constant [44 x i8] c"%s: Deleting output file %s, if it exists.\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"%s: WARNING: deletion of output file (apparently) failed.\0A\00", align 1
@.str.41 = private unnamed_addr constant [49 x i8] c"%s: WARNING: deletion of output file suppressed\0A\00", align 1
@.str.42 = private unnamed_addr constant [56 x i8] c"%s:    since input file no longer exists.  Output file\0A\00", align 1
@.str.43 = private unnamed_addr constant [32 x i8] c"%s:    `%s' may be incomplete.\0A\00", align 1
@.str.44 = private unnamed_addr constant [61 x i8] c"%s:    I suggest doing an integrity test (bzip2 -tv) of it.\0A\00", align 1
@.str.45 = private unnamed_addr constant [110 x i8] c"%s: WARNING: some files have not been processed:\0A%s:    %d specified on command line, %d not processed yet.\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [36 x i8] c"\09Input file = %s, output file = %s\0A\00", align 1
@.str.78 = private unnamed_addr constant [65 x i8] c"\0A%s: I/O or other error, bailing out.  Possible reason follows.\0A\00", align 1
@.str.77 = private unnamed_addr constant [236 x i8] c"bzip2: I'm not configured correctly for this platform!\0A\09I require Int32, Int16 and Char to have sizes\0A\09of 4, 2 and 1 bytes to run properly, and they don't.\0A\09Probably you can fix this by defining them correctly,\0A\09and recompiling.  Bye!\0A\00", align 1
@.str.72 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.71 = private unnamed_addr constant [109 x i8] c"\0A%s: PANIC -- internal consistency error:\0A\09%s\0A\09This is a BUG.  Please report it to me at:\0A\09jseward@bzip.org\0A\00", align 1
@.str.79 = private unnamed_addr constant [23 x i8] c"uncompress: bad modes\0A\00", align 1
@.str.55 = private unnamed_addr constant [9 x i8] c"(stdout)\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c".out\00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"%s: Can't open input file %s: %s.\0A\00", align 1
@.str.60 = private unnamed_addr constant [41 x i8] c"%s: Input file %s is not a normal file.\0A\00", align 1
@.str.81 = private unnamed_addr constant [50 x i8] c"%s: Can't guess original name for %s -- using %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [36 x i8] c"%s: Output file %s already exists.\0A\00", align 1
@.str.63 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.62 = private unnamed_addr constant [40 x i8] c"%s: Input file %s has %d other link%s.\0A\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.67 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.68 = private unnamed_addr constant [38 x i8] c"%s: Can't create output file %s: %s.\0A\00", align 1
@.str.84 = private unnamed_addr constant [24 x i8] c"uncompress: bad srcMode\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@.str.86 = private unnamed_addr constant [19 x i8] c"not a bzip2 file.\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"%s: %s is not a bzip2 file.\0A\00", align 1
@fileMetaInfo = internal global %struct.stat zeroinitializer, align 8
@.str.88 = private unnamed_addr constant [27 x i8] c"decompress:bzReadGetUnused\00", align 1
@.str.90 = private unnamed_addr constant [45 x i8] c"\0A%s: %s: trailing garbage after EOF ignored\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"decompress:unexpected error\00", align 1
@.str.93 = private unnamed_addr constant [95 x i8] c"\0A%s: Compressed file ends unexpectedly;\0A\09perhaps it is corrupted?  *Possible* reason follows.\0A\00", align 1
@.str.46 = private unnamed_addr constant [241 x i8] c"\0AIt is possible that the compressed file(s) have become corrupted.\0AYou can use the -tvv option to test integrity of such files.\0A\0AYou can use the `bzip2recover' program to attempt to recover\0Adata from undamaged sections of corrupted files.\0A\0A\00", align 1
@.str.92 = private unnamed_addr constant [47 x i8] c"\0A%s: Data integrity error when decompressing.\0A\00", align 1
@.str.53 = private unnamed_addr constant [21 x i8] c"compress: bad modes\0A\00", align 1
@.str.58 = private unnamed_addr constant [42 x i8] c"%s: Input file %s already has %s suffix.\0A\00", align 1
@.str.64 = private unnamed_addr constant [50 x i8] c"%s: I won't write compressed data to a terminal.\0A\00", align 1
@.str.69 = private unnamed_addr constant [22 x i8] c"compress: bad srcMode\00", align 1
@.str.73 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.74 = private unnamed_addr constant [22 x i8] c" no data compressed.\0A\00", align 1
@.str.75 = private unnamed_addr constant [57 x i8] c"%6.3f:1, %6.3f bits/byte, %5.2f%% saved, %s in, %s out.\0A\00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"compress:unexpected error\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"\0A%s: Control-C or similar caught, quitting.\0A\00", align 1
@.str.51 = private unnamed_addr constant [49 x i8] c"%s: %s is redundant in versions 0.9.5 and above\0A\00", align 1
@.str.50 = private unnamed_addr constant [1230 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A\0A   usage: %s [flags and input files in any order]\0A\0A   -h --help           print this message\0A   -d --decompress     force decompression\0A   -z --compress       force compression\0A   -k --keep           keep (don't delete) input files\0A   -f --force          overwrite existing output files\0A   -t --test           test compressed file integrity\0A   -c --stdout         output to standard out\0A   -q --quiet          suppress noncritical error messages\0A   -v --verbose        be verbose (a 2nd -v gives more)\0A   -L --license        display software version & license\0A   -V --version        display software version & license\0A   -s --small          use less memory (at most 2500k)\0A   -1 .. -9            set block size to 100k .. 900k\0A   --fast              alias for -1\0A   --best              alias for -9\0A\0A   If invoked as `bzip2', default action is to compress.\0A              as `bunzip2',  default action is to decompress.\0A              as `bzcat', default action is to decompress to stdout.\0A\0A   If no file names are given, bzip2 compresses or decompresses\0A   from standard input to standard output.  You can combine\0A   short flags, so `-v -4' means the same as -v4 or -4v, &c.\0A\0A\00", align 1
@.str.49 = private unnamed_addr constant [531 x i8] c"bzip2, a block-sorting file compressor.  Version %s.\0A   \0A   Copyright (C) 1996-2010 by Julian Seward.\0A   \0A   This program is free software; you can redistribute it and/or modify\0A   it under the terms set out in the LICENSE file, which is included\0A   in the bzip2-1.0.6 source distribution.\0A   \0A   This program is distributed in the hope that it will be useful,\0A   but WITHOUT ANY WARRANTY; without even the implied warranty of\0A   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A   LICENSE file for more details.\0A   \0A\00", align 1
@.str.47 = private unnamed_addr constant [120 x i8] c"bzip2: file name\0A`%s'\0Ais suspiciously (more than %d chars) long.\0ATry using a reasonable file name instead.  Sorry! :-)\0A\00", align 1
@.str.36 = private unnamed_addr constant [869 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst compressing.\0A\0A   Possible causes are (most likely first):\0A   (1) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (2) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (3) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (1) and (2).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (1)\0A   or (2), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@.str.37 = private unnamed_addr constant [996 x i8] c"\0A%s: Caught a SIGSEGV or SIGBUS whilst decompressing.\0A\0A   Possible causes are (most likely first):\0A   (1) The compressed data is corrupted, and bzip2's usual checks\0A       failed to detect this.  Try bzip2 -tvv my_file.bz2.\0A   (2) This computer has unreliable memory or cache hardware\0A       (a surprisingly common problem; try a different machine.)\0A   (3) A bug in the compiler used to create this executable\0A       (unlikely, if you didn't compile bzip2 yourself.)\0A   (4) A real bug in bzip2 -- I hope this should never be the case.\0A   The user's manual, Section 4.3, has more info on (2) and (3).\0A   \0A   If you suspect this is a bug in bzip2, or are unsure about (2)\0A   or (3), feel free to report it to me at: jseward@bzip.org.\0A   Section 4.3 of the user's manual describes the info a useful\0A   bug report should have.  If the manual is available on your\0A   system, please try and read it before mailing me.  If you don't\0A   have the manual or can't be bothered to read it, mail me anyway.\0A\0A\00", align 1
@print_transition.s1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@print_transition.s2 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.105 = private unnamed_addr constant [14 x i8] c"NULL Transfer\00", align 1
@.str.1.106 = private unnamed_addr constant [58 x i8] c"current:%c tape:%c new state:%c new tape:%c direction %s\0A\00", align 1
@.str.2.107 = private unnamed_addr constant [60 x i8] c"0*0*R:0.1.R:1*2.R:1.1.R:2*3*L:2.2.R:3*3*L:3.4*L:4*h*-:4.4.L\00", align 1
@.str.3.108 = private unnamed_addr constant [96 x i8] c"0*0*R:0.1*R:1*2*R:1.1.R:2*3*L:2.2.R:3*h.-:3.4*L:4*h*-:4.5.L:5*6*L:5.5.L:6*h.-:6.7.L:7*0*R:7.7.L\00", align 1
@.str.4.109 = private unnamed_addr constant [204 x i8] c"0*1*R:0.2*R:1*E*R:1.2*R:2*3*R:2.2.R:3*F*L:3.4*R:4*5*R:4.4.R:5*6.L:5.5.R:6*7*L:6.6.L:7*9.L:7.8.L:8*3.R:8.8.L:9*A*L:9.9.L:A*C*R:A.B.L:B*0*R:B.B.L:C*C*R:C.D*R:D*h*-:D.D*R:E*h*-:E.E*R:F*G*L:F.F*L:G*h*-:G.G*L\00", align 1
@.str.5.110 = private unnamed_addr constant [480 x i8] c"0*0*R:0.1.L:1*2*L:1.2*L:2*3.L:2.3.L:3*4*R:3.4*R:4*3.R:4.5.R:5*6*R:5.h.-:6*7*R:6.6.R:7*7*R:7.8*R:8*O*L:8.9.L:9*9*L:9.A.L:A*B*R:A.d.L:B*h*-:B.C.R:C*C*R:C.D.L:D*E.L:D.h.-:E*F*L:E.h.-:F*G*L:F.J.L:G*G*L:G.H.L:H*I.R:H.H.L:I*C*R:I.I.R:J*K*L:J.J.L:K*K*L:K.M.L:M*N*R:M.M.L:N*h*-:N.h*-:O*O.L:O.P.R:P*h*-:P.Q*L:Q*h*-:Q.S.L:S*Y*R:S.T.L:T*f*L:T.T.L:U*V.L:U.U.L:V*W*R:V.W*R:W*X*R:W.W.R:X*X*R:X.6*R:Y*h*-:Y.Z*R:Z*a*R:Z.h.-:a*b*L:a.a*R:b*b*L:b.c.L:c*h*-:c.c.L:d*e*R:d.d.L:e*h*-:e.6*R:f*f*L:f.U.L\00", align 1
@.str.6.111 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.7.112 = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@.str.8.113 = private unnamed_addr constant [84 x i8] c"Error! Input contains some invalid characters that don't match the input alphabet!\0A\00", align 1
@.str.9.114 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10.115 = private unnamed_addr constant [23 x i8] c"Turing Machine Reject\0A\00", align 1
@.str.11.116 = private unnamed_addr constant [85 x i8] c"function parsetm\0Ainput_alpha:%s\0Ainput:%s\0Atape_alpha:%s\0Astart:%c\0Aaccept:%c\0Areject:%c\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.zzzz*, align 8
  %10 = alloca %struct.zzzz*, align 8
  %11 = alloca i8, align 1
  %12 = alloca %struct.zzzz*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 0, i8* @smallMode, align 1
  store i8 0, i8* @keepInputFiles, align 1
  store i8 0, i8* @forceOverwrite, align 1
  store i8 1, i8* @noisy, align 1
  store i32 0, i32* @verbosity, align 4
  store i32 9, i32* @blockSize100k, align 4
  store i8 0, i8* @testFailsExist, align 1
  store i8 0, i8* @unzFailsExist, align 1
  store i32 0, i32* @numFileNames, align 4
  store i32 0, i32* @numFilesProcessed, align 4
  store i32 30, i32* @workFactor, align 4
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  store i32 0, i32* @exitValue, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %13 = call void (i32)* @signal(i32 11, void (i32)* @mySIGSEGVorSIGBUScatcher) #8
  %14 = call void (i32)* @signal(i32 7, void (i32)* @mySIGSEGVorSIGBUScatcher) #8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i32 0, i32 0), i8* %17)
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i64 0, i64 0), i8** @progName, align 8
  store i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @progNameReally, i64 0, i64 0), i8** %8, align 8
  br label %18

; <label>:18:                                     ; preds = %32, %2
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 47
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %23
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  store i8* %30, i8** @progName, align 8
  br label %31

; <label>:31:                                     ; preds = %28, %23
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %8, align 8
  br label %18

; <label>:35:                                     ; preds = %18
  store %struct.zzzz* null, %struct.zzzz** %9, align 8
  call void @addFlagsFromEnvVar(%struct.zzzz** %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  call void @addFlagsFromEnvVar(%struct.zzzz** %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  store i32 1, i32* %6, align 4
  br label %36

; <label>:36:                                     ; preds = %49, %35
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %4, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp sle i32 %37, %39
  br i1 %40, label %41, label %52

; <label>:41:                                     ; preds = %36
  %42 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8*, i8** %43, i64 %45
  %47 = load i8*, i8** %46, align 8
  %48 = call %struct.zzzz* @snocString(%struct.zzzz* %42, i8* %47)
  store %struct.zzzz* %48, %struct.zzzz** %9, align 8
  br label %49

; <label>:49:                                     ; preds = %41
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %36

; <label>:52:                                     ; preds = %36
  store i32 7, i32* @longestFileName, align 4
  store i32 0, i32* @numFileNames, align 4
  store i8 1, i8* %11, align 1
  %53 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %53, %struct.zzzz** %10, align 8
  br label %54

; <label>:54:                                     ; preds = %94, %52
  %55 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %56 = icmp ne %struct.zzzz* %55, null
  br i1 %56, label %57, label %98

; <label>:57:                                     ; preds = %54
  %58 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %59 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %57
  store i8 0, i8* %11, align 1
  br label %94

; <label>:64:                                     ; preds = %57
  %65 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %66 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %77

; <label>:72:                                     ; preds = %64
  %73 = load i8, i8* %11, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %72
  br label %94

; <label>:77:                                     ; preds = %72, %64
  %78 = load i32, i32* @numFileNames, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* @numFileNames, align 4
  %80 = load i32, i32* @longestFileName, align 4
  %81 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %82 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strlen(i8* %83) #9
  %85 = trunc i64 %84 to i32
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %77
  %88 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %89 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = call i64 @strlen(i8* %90) #9
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* @longestFileName, align 4
  br label %93

; <label>:93:                                     ; preds = %87, %77
  br label %94

; <label>:94:                                     ; preds = %93, %76, %63
  %95 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %96 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %95, i32 0, i32 1
  %97 = load %struct.zzzz*, %struct.zzzz** %96, align 8
  store %struct.zzzz* %97, %struct.zzzz** %10, align 8
  br label %54

; <label>:98:                                     ; preds = %54
  %99 = load i32, i32* @numFileNames, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %98
  store i32 1, i32* @srcMode, align 4
  br label %103

; <label>:102:                                    ; preds = %98
  store i32 3, i32* @srcMode, align 4
  br label %103

; <label>:103:                                    ; preds = %102, %101
  store i32 1, i32* @opMode, align 4
  %104 = load i8*, i8** @progName, align 8
  %105 = call i8* @strstr(i8* %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0)) #9
  %106 = icmp ne i8* %105, null
  br i1 %106, label %111, label %107

; <label>:107:                                    ; preds = %103
  %108 = load i8*, i8** @progName, align 8
  %109 = call i8* @strstr(i8* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0)) #9
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %107, %103
  store i32 2, i32* @opMode, align 4
  br label %112

; <label>:112:                                    ; preds = %111, %107
  %113 = load i8*, i8** @progName, align 8
  %114 = call i8* @strstr(i8* %113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #9
  %115 = icmp ne i8* %114, null
  br i1 %115, label %128, label %116

; <label>:116:                                    ; preds = %112
  %117 = load i8*, i8** @progName, align 8
  %118 = call i8* @strstr(i8* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0)) #9
  %119 = icmp ne i8* %118, null
  br i1 %119, label %128, label %120

; <label>:120:                                    ; preds = %116
  %121 = load i8*, i8** @progName, align 8
  %122 = call i8* @strstr(i8* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0)) #9
  %123 = icmp ne i8* %122, null
  br i1 %123, label %128, label %124

; <label>:124:                                    ; preds = %120
  %125 = load i8*, i8** @progName, align 8
  %126 = call i8* @strstr(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i32 0, i32 0)) #9
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %133

; <label>:128:                                    ; preds = %124, %120, %116, %112
  store i32 2, i32* @opMode, align 4
  %129 = load i32, i32* @numFileNames, align 4
  %130 = icmp eq i32 %129, 0
  %131 = zext i1 %130 to i64
  %132 = select i1 %130, i32 1, i32 2
  store i32 %132, i32* @srcMode, align 4
  br label %133

; <label>:133:                                    ; preds = %128, %124
  %134 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %134, %struct.zzzz** %10, align 8
  br label %135

; <label>:135:                                    ; preds = %218, %133
  %136 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %137 = icmp ne %struct.zzzz* %136, null
  br i1 %137, label %138, label %222

; <label>:138:                                    ; preds = %135
  %139 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %140 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @strcmp(i8* %141, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

; <label>:144:                                    ; preds = %138
  br label %222

; <label>:145:                                    ; preds = %138
  %146 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %147 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 0
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp eq i32 %151, 45
  br i1 %152, label %153, label %217

; <label>:153:                                    ; preds = %145
  %154 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %155 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 1
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 45
  br i1 %160, label %161, label %217

; <label>:161:                                    ; preds = %153
  store i32 1, i32* %7, align 4
  br label %162

; <label>:162:                                    ; preds = %213, %161
  %163 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %164 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %7, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %216

; <label>:172:                                    ; preds = %162
  %173 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %174 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  switch i32 %180, label %204 [
    i32 99, label %181
    i32 100, label %182
    i32 122, label %183
    i32 102, label %184
    i32 116, label %185
    i32 107, label %186
    i32 115, label %187
    i32 113, label %188
    i32 49, label %189
    i32 50, label %190
    i32 51, label %191
    i32 52, label %192
    i32 53, label %193
    i32 54, label %194
    i32 55, label %195
    i32 56, label %196
    i32 57, label %197
    i32 86, label %198
    i32 76, label %198
    i32 118, label %199
    i32 104, label %202
  ]

; <label>:181:                                    ; preds = %172
  store i32 2, i32* @srcMode, align 4
  br label %212

; <label>:182:                                    ; preds = %172
  store i32 2, i32* @opMode, align 4
  br label %212

; <label>:183:                                    ; preds = %172
  store i32 1, i32* @opMode, align 4
  br label %212

; <label>:184:                                    ; preds = %172
  store i8 1, i8* @forceOverwrite, align 1
  br label %212

; <label>:185:                                    ; preds = %172
  store i32 3, i32* @opMode, align 4
  br label %212

; <label>:186:                                    ; preds = %172
  store i8 1, i8* @keepInputFiles, align 1
  br label %212

; <label>:187:                                    ; preds = %172
  store i8 1, i8* @smallMode, align 1
  br label %212

; <label>:188:                                    ; preds = %172
  store i8 0, i8* @noisy, align 1
  br label %212

; <label>:189:                                    ; preds = %172
  store i32 1, i32* @blockSize100k, align 4
  br label %212

; <label>:190:                                    ; preds = %172
  store i32 2, i32* @blockSize100k, align 4
  br label %212

; <label>:191:                                    ; preds = %172
  store i32 3, i32* @blockSize100k, align 4
  br label %212

; <label>:192:                                    ; preds = %172
  store i32 4, i32* @blockSize100k, align 4
  br label %212

; <label>:193:                                    ; preds = %172
  store i32 5, i32* @blockSize100k, align 4
  br label %212

; <label>:194:                                    ; preds = %172
  store i32 6, i32* @blockSize100k, align 4
  br label %212

; <label>:195:                                    ; preds = %172
  store i32 7, i32* @blockSize100k, align 4
  br label %212

; <label>:196:                                    ; preds = %172
  store i32 8, i32* @blockSize100k, align 4
  br label %212

; <label>:197:                                    ; preds = %172
  store i32 9, i32* @blockSize100k, align 4
  br label %212

; <label>:198:                                    ; preds = %172, %172
  call void @license()
  br label %212

; <label>:199:                                    ; preds = %172
  %200 = load i32, i32* @verbosity, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* @verbosity, align 4
  br label %212

; <label>:202:                                    ; preds = %172
  %203 = load i8*, i8** @progName, align 8
  call void @usage(i8* %203)
  call void @exit(i32 0) #10
  unreachable

; <label>:204:                                    ; preds = %172
  %205 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %206 = load i8*, i8** @progName, align 8
  %207 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %208 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %207, i32 0, i32 0
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %205, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %206, i8* %209)
  %211 = load i8*, i8** @progName, align 8
  call void @usage(i8* %211)
  call void @exit(i32 1) #10
  unreachable

; <label>:212:                                    ; preds = %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181
  br label %213

; <label>:213:                                    ; preds = %212
  %214 = load i32, i32* %7, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %7, align 4
  br label %162

; <label>:216:                                    ; preds = %162
  br label %217

; <label>:217:                                    ; preds = %216, %153, %145
  br label %218

; <label>:218:                                    ; preds = %217
  %219 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %220 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %219, i32 0, i32 1
  %221 = load %struct.zzzz*, %struct.zzzz** %220, align 8
  store %struct.zzzz* %221, %struct.zzzz** %10, align 8
  br label %135

; <label>:222:                                    ; preds = %144, %135
  %223 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %223, %struct.zzzz** %10, align 8
  br label %224

; <label>:224:                                    ; preds = %394, %222
  %225 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %226 = icmp ne %struct.zzzz* %225, null
  br i1 %226, label %227, label %398

; <label>:227:                                    ; preds = %224
  %228 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %229 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %228, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @strcmp(i8* %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %233, label %234

; <label>:233:                                    ; preds = %227
  br label %398

; <label>:234:                                    ; preds = %227
  %235 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %236 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = call i32 @strcmp(i8* %237, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #9
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %241

; <label>:240:                                    ; preds = %234
  store i32 2, i32* @srcMode, align 4
  br label %393

; <label>:241:                                    ; preds = %234
  %242 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %243 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %242, i32 0, i32 0
  %244 = load i8*, i8** %243, align 8
  %245 = call i32 @strcmp(i8* %244, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0)) #9
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %248

; <label>:247:                                    ; preds = %241
  store i32 2, i32* @opMode, align 4
  br label %392

; <label>:248:                                    ; preds = %241
  %249 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %250 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = call i32 @strcmp(i8* %251, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)) #9
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %255

; <label>:254:                                    ; preds = %248
  store i32 1, i32* @opMode, align 4
  br label %391

; <label>:255:                                    ; preds = %248
  %256 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %257 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = call i32 @strcmp(i8* %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0)) #9
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %261, label %262

; <label>:261:                                    ; preds = %255
  store i8 1, i8* @forceOverwrite, align 1
  br label %390

; <label>:262:                                    ; preds = %255
  %263 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %264 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %263, i32 0, i32 0
  %265 = load i8*, i8** %264, align 8
  %266 = call i32 @strcmp(i8* %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0)) #9
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %269

; <label>:268:                                    ; preds = %262
  store i32 3, i32* @opMode, align 4
  br label %389

; <label>:269:                                    ; preds = %262
  %270 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %271 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i32 0, i32 0)) #9
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

; <label>:275:                                    ; preds = %269
  store i8 1, i8* @keepInputFiles, align 1
  br label %388

; <label>:276:                                    ; preds = %269
  %277 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %278 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = call i32 @strcmp(i8* %279, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #9
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %283

; <label>:282:                                    ; preds = %276
  store i8 1, i8* @smallMode, align 1
  br label %387

; <label>:283:                                    ; preds = %276
  %284 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %285 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %284, i32 0, i32 0
  %286 = load i8*, i8** %285, align 8
  %287 = call i32 @strcmp(i8* %286, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i32 0, i32 0)) #9
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %289, label %290

; <label>:289:                                    ; preds = %283
  store i8 0, i8* @noisy, align 1
  br label %386

; <label>:290:                                    ; preds = %283
  %291 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %292 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @strcmp(i8* %293, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i32 0, i32 0)) #9
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %297

; <label>:296:                                    ; preds = %290
  call void @license()
  br label %385

; <label>:297:                                    ; preds = %290
  %298 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %299 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %298, i32 0, i32 0
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @strcmp(i8* %300, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0)) #9
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

; <label>:303:                                    ; preds = %297
  call void @license()
  br label %384

; <label>:304:                                    ; preds = %297
  %305 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %306 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %305, i32 0, i32 0
  %307 = load i8*, i8** %306, align 8
  %308 = call i32 @strcmp(i8* %307, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i32 0, i32 0)) #9
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %310, label %311

; <label>:310:                                    ; preds = %304
  store i32 1, i32* @workFactor, align 4
  br label %383

; <label>:311:                                    ; preds = %304
  %312 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %313 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = call i32 @strcmp(i8* %314, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0)) #9
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %321

; <label>:317:                                    ; preds = %311
  %318 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %319 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %318, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  call void @redundant(i8* %320)
  br label %382

; <label>:321:                                    ; preds = %311
  %322 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %323 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @strcmp(i8* %324, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.29, i32 0, i32 0)) #9
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %331

; <label>:327:                                    ; preds = %321
  %328 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %329 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  call void @redundant(i8* %330)
  br label %381

; <label>:331:                                    ; preds = %321
  %332 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %333 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 8
  %335 = call i32 @strcmp(i8* %334, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0)) #9
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %338

; <label>:337:                                    ; preds = %331
  store i32 1, i32* @blockSize100k, align 4
  br label %380

; <label>:338:                                    ; preds = %331
  %339 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %340 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = call i32 @strcmp(i8* %341, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0)) #9
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %338
  store i32 9, i32* @blockSize100k, align 4
  br label %379

; <label>:345:                                    ; preds = %338
  %346 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %347 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %346, i32 0, i32 0
  %348 = load i8*, i8** %347, align 8
  %349 = call i32 @strcmp(i8* %348, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0)) #9
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

; <label>:351:                                    ; preds = %345
  %352 = load i32, i32* @verbosity, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* @verbosity, align 4
  br label %378

; <label>:354:                                    ; preds = %345
  %355 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %356 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %355, i32 0, i32 0
  %357 = load i8*, i8** %356, align 8
  %358 = call i32 @strcmp(i8* %357, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0)) #9
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %362

; <label>:360:                                    ; preds = %354
  %361 = load i8*, i8** @progName, align 8
  call void @usage(i8* %361)
  call void @exit(i32 0) #10
  unreachable

; <label>:362:                                    ; preds = %354
  %363 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %364 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = call i32 @strncmp(i8* %365, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i64 2) #9
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %376

; <label>:368:                                    ; preds = %362
  %369 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %370 = load i8*, i8** @progName, align 8
  %371 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %372 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %371, i32 0, i32 0
  %373 = load i8*, i8** %372, align 8
  %374 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %369, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i32 0, i32 0), i8* %370, i8* %373)
  %375 = load i8*, i8** @progName, align 8
  call void @usage(i8* %375)
  call void @exit(i32 1) #10
  unreachable

; <label>:376:                                    ; preds = %362
  br label %377

; <label>:377:                                    ; preds = %376
  br label %378

; <label>:378:                                    ; preds = %377, %351
  br label %379

; <label>:379:                                    ; preds = %378, %344
  br label %380

; <label>:380:                                    ; preds = %379, %337
  br label %381

; <label>:381:                                    ; preds = %380, %327
  br label %382

; <label>:382:                                    ; preds = %381, %317
  br label %383

; <label>:383:                                    ; preds = %382, %310
  br label %384

; <label>:384:                                    ; preds = %383, %303
  br label %385

; <label>:385:                                    ; preds = %384, %296
  br label %386

; <label>:386:                                    ; preds = %385, %289
  br label %387

; <label>:387:                                    ; preds = %386, %282
  br label %388

; <label>:388:                                    ; preds = %387, %275
  br label %389

; <label>:389:                                    ; preds = %388, %268
  br label %390

; <label>:390:                                    ; preds = %389, %261
  br label %391

; <label>:391:                                    ; preds = %390, %254
  br label %392

; <label>:392:                                    ; preds = %391, %247
  br label %393

; <label>:393:                                    ; preds = %392, %240
  br label %394

; <label>:394:                                    ; preds = %393
  %395 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %396 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %395, i32 0, i32 1
  %397 = load %struct.zzzz*, %struct.zzzz** %396, align 8
  store %struct.zzzz* %397, %struct.zzzz** %10, align 8
  br label %224

; <label>:398:                                    ; preds = %233, %224
  %399 = load i32, i32* @verbosity, align 4
  %400 = icmp sgt i32 %399, 4
  br i1 %400, label %401, label %402

; <label>:401:                                    ; preds = %398
  store i32 4, i32* @verbosity, align 4
  br label %402

; <label>:402:                                    ; preds = %401, %398
  %403 = load i32, i32* @opMode, align 4
  %404 = icmp eq i32 %403, 1
  br i1 %404, label %405, label %413

; <label>:405:                                    ; preds = %402
  %406 = load i8, i8* @smallMode, align 1
  %407 = zext i8 %406 to i32
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %413

; <label>:409:                                    ; preds = %405
  %410 = load i32, i32* @blockSize100k, align 4
  %411 = icmp sgt i32 %410, 2
  br i1 %411, label %412, label %413

; <label>:412:                                    ; preds = %409
  store i32 2, i32* @blockSize100k, align 4
  br label %413

; <label>:413:                                    ; preds = %412, %409, %405, %402
  %414 = load i32, i32* @opMode, align 4
  %415 = icmp eq i32 %414, 3
  br i1 %415, label %416, label %423

; <label>:416:                                    ; preds = %413
  %417 = load i32, i32* @srcMode, align 4
  %418 = icmp eq i32 %417, 2
  br i1 %418, label %419, label %423

; <label>:419:                                    ; preds = %416
  %420 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %421 = load i8*, i8** @progName, align 8
  %422 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %420, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i32 0, i32 0), i8* %421)
  call void @exit(i32 1) #10
  unreachable

; <label>:423:                                    ; preds = %416, %413
  %424 = load i32, i32* @srcMode, align 4
  %425 = icmp eq i32 %424, 2
  br i1 %425, label %426, label %430

; <label>:426:                                    ; preds = %423
  %427 = load i32, i32* @numFileNames, align 4
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %429, label %430

; <label>:429:                                    ; preds = %426
  store i32 1, i32* @srcMode, align 4
  br label %430

; <label>:430:                                    ; preds = %429, %426, %423
  %431 = load i32, i32* @opMode, align 4
  %432 = icmp ne i32 %431, 1
  br i1 %432, label %433, label %434

; <label>:433:                                    ; preds = %430
  store i32 0, i32* @blockSize100k, align 4
  br label %434

; <label>:434:                                    ; preds = %433, %430
  %435 = load i32, i32* @srcMode, align 4
  %436 = icmp eq i32 %435, 3
  br i1 %436, label %437, label %441

; <label>:437:                                    ; preds = %434
  %438 = call void (i32)* @signal(i32 2, void (i32)* @mySignalCatcher) #8
  %439 = call void (i32)* @signal(i32 15, void (i32)* @mySignalCatcher) #8
  %440 = call void (i32)* @signal(i32 1, void (i32)* @mySignalCatcher) #8
  br label %441

; <label>:441:                                    ; preds = %437, %434
  %442 = load i32, i32* @opMode, align 4
  %443 = icmp eq i32 %442, 1
  br i1 %443, label %444, label %485

; <label>:444:                                    ; preds = %441
  %445 = load i32, i32* @srcMode, align 4
  %446 = icmp eq i32 %445, 1
  br i1 %446, label %447, label %448

; <label>:447:                                    ; preds = %444
  call void @compress(i8* null)
  br label %484

; <label>:448:                                    ; preds = %444
  store i8 1, i8* %11, align 1
  %449 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %449, %struct.zzzz** %10, align 8
  br label %450

; <label>:450:                                    ; preds = %479, %448
  %451 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %452 = icmp ne %struct.zzzz* %451, null
  br i1 %452, label %453, label %483

; <label>:453:                                    ; preds = %450
  %454 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %455 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %454, i32 0, i32 0
  %456 = load i8*, i8** %455, align 8
  %457 = call i32 @strcmp(i8* %456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %458 = icmp eq i32 %457, 0
  br i1 %458, label %459, label %460

; <label>:459:                                    ; preds = %453
  store i8 0, i8* %11, align 1
  br label %479

; <label>:460:                                    ; preds = %453
  %461 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %462 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %461, i32 0, i32 0
  %463 = load i8*, i8** %462, align 8
  %464 = getelementptr inbounds i8, i8* %463, i64 0
  %465 = load i8, i8* %464, align 1
  %466 = sext i8 %465 to i32
  %467 = icmp eq i32 %466, 45
  br i1 %467, label %468, label %473

; <label>:468:                                    ; preds = %460
  %469 = load i8, i8* %11, align 1
  %470 = zext i8 %469 to i32
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %472, label %473

; <label>:472:                                    ; preds = %468
  br label %479

; <label>:473:                                    ; preds = %468, %460
  %474 = load i32, i32* @numFilesProcessed, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* @numFilesProcessed, align 4
  %476 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %477 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %476, i32 0, i32 0
  %478 = load i8*, i8** %477, align 8
  call void @compress(i8* %478)
  br label %479

; <label>:479:                                    ; preds = %473, %472, %459
  %480 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %481 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %480, i32 0, i32 1
  %482 = load %struct.zzzz*, %struct.zzzz** %481, align 8
  store %struct.zzzz* %482, %struct.zzzz** %10, align 8
  br label %450

; <label>:483:                                    ; preds = %450
  br label %484

; <label>:484:                                    ; preds = %483, %447
  br label %588

; <label>:485:                                    ; preds = %441
  %486 = load i32, i32* @opMode, align 4
  %487 = icmp eq i32 %486, 2
  br i1 %487, label %488, label %534

; <label>:488:                                    ; preds = %485
  store i8 0, i8* @unzFailsExist, align 1
  %489 = load i32, i32* @srcMode, align 4
  %490 = icmp eq i32 %489, 1
  br i1 %490, label %491, label %492

; <label>:491:                                    ; preds = %488
  call void @uncompress(i8* null)
  br label %528

; <label>:492:                                    ; preds = %488
  store i8 1, i8* %11, align 1
  %493 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %493, %struct.zzzz** %10, align 8
  br label %494

; <label>:494:                                    ; preds = %523, %492
  %495 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %496 = icmp ne %struct.zzzz* %495, null
  br i1 %496, label %497, label %527

; <label>:497:                                    ; preds = %494
  %498 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %499 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %498, i32 0, i32 0
  %500 = load i8*, i8** %499, align 8
  %501 = call i32 @strcmp(i8* %500, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %503, label %504

; <label>:503:                                    ; preds = %497
  store i8 0, i8* %11, align 1
  br label %523

; <label>:504:                                    ; preds = %497
  %505 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %506 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %505, i32 0, i32 0
  %507 = load i8*, i8** %506, align 8
  %508 = getelementptr inbounds i8, i8* %507, i64 0
  %509 = load i8, i8* %508, align 1
  %510 = sext i8 %509 to i32
  %511 = icmp eq i32 %510, 45
  br i1 %511, label %512, label %517

; <label>:512:                                    ; preds = %504
  %513 = load i8, i8* %11, align 1
  %514 = zext i8 %513 to i32
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %517

; <label>:516:                                    ; preds = %512
  br label %523

; <label>:517:                                    ; preds = %512, %504
  %518 = load i32, i32* @numFilesProcessed, align 4
  %519 = add nsw i32 %518, 1
  store i32 %519, i32* @numFilesProcessed, align 4
  %520 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %521 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %520, i32 0, i32 0
  %522 = load i8*, i8** %521, align 8
  call void @uncompress(i8* %522)
  br label %523

; <label>:523:                                    ; preds = %517, %516, %503
  %524 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %525 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %524, i32 0, i32 1
  %526 = load %struct.zzzz*, %struct.zzzz** %525, align 8
  store %struct.zzzz* %526, %struct.zzzz** %10, align 8
  br label %494

; <label>:527:                                    ; preds = %494
  br label %528

; <label>:528:                                    ; preds = %527, %491
  %529 = load i8, i8* @unzFailsExist, align 1
  %530 = icmp ne i8 %529, 0
  br i1 %530, label %531, label %533

; <label>:531:                                    ; preds = %528
  call void @setExit(i32 2)
  %532 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %532) #10
  unreachable

; <label>:533:                                    ; preds = %528
  br label %587

; <label>:534:                                    ; preds = %485
  store i8 0, i8* @testFailsExist, align 1
  %535 = load i32, i32* @srcMode, align 4
  %536 = icmp eq i32 %535, 1
  br i1 %536, label %537, label %538

; <label>:537:                                    ; preds = %534
  call void @testf(i8* null)
  br label %574

; <label>:538:                                    ; preds = %534
  store i8 1, i8* %11, align 1
  %539 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %539, %struct.zzzz** %10, align 8
  br label %540

; <label>:540:                                    ; preds = %569, %538
  %541 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %542 = icmp ne %struct.zzzz* %541, null
  br i1 %542, label %543, label %573

; <label>:543:                                    ; preds = %540
  %544 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %545 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %544, i32 0, i32 0
  %546 = load i8*, i8** %545, align 8
  %547 = call i32 @strcmp(i8* %546, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0)) #9
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %550

; <label>:549:                                    ; preds = %543
  store i8 0, i8* %11, align 1
  br label %569

; <label>:550:                                    ; preds = %543
  %551 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %552 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %551, i32 0, i32 0
  %553 = load i8*, i8** %552, align 8
  %554 = getelementptr inbounds i8, i8* %553, i64 0
  %555 = load i8, i8* %554, align 1
  %556 = sext i8 %555 to i32
  %557 = icmp eq i32 %556, 45
  br i1 %557, label %558, label %563

; <label>:558:                                    ; preds = %550
  %559 = load i8, i8* %11, align 1
  %560 = zext i8 %559 to i32
  %561 = icmp ne i32 %560, 0
  br i1 %561, label %562, label %563

; <label>:562:                                    ; preds = %558
  br label %569

; <label>:563:                                    ; preds = %558, %550
  %564 = load i32, i32* @numFilesProcessed, align 4
  %565 = add nsw i32 %564, 1
  store i32 %565, i32* @numFilesProcessed, align 4
  %566 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %567 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %566, i32 0, i32 0
  %568 = load i8*, i8** %567, align 8
  call void @testf(i8* %568)
  br label %569

; <label>:569:                                    ; preds = %563, %562, %549
  %570 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %571 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %570, i32 0, i32 1
  %572 = load %struct.zzzz*, %struct.zzzz** %571, align 8
  store %struct.zzzz* %572, %struct.zzzz** %10, align 8
  br label %540

; <label>:573:                                    ; preds = %540
  br label %574

; <label>:574:                                    ; preds = %573, %537
  %575 = load i8, i8* @testFailsExist, align 1
  %576 = zext i8 %575 to i32
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %578, label %586

; <label>:578:                                    ; preds = %574
  %579 = load i8, i8* @noisy, align 1
  %580 = zext i8 %579 to i32
  %581 = icmp ne i32 %580, 0
  br i1 %581, label %582, label %586

; <label>:582:                                    ; preds = %578
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %584 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %583, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.35, i32 0, i32 0))
  call void @setExit(i32 2)
  %585 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %585) #10
  unreachable

; <label>:586:                                    ; preds = %578, %574
  br label %587

; <label>:587:                                    ; preds = %586, %533
  br label %588

; <label>:588:                                    ; preds = %587, %484
  %589 = load %struct.zzzz*, %struct.zzzz** %9, align 8
  store %struct.zzzz* %589, %struct.zzzz** %10, align 8
  br label %590

; <label>:590:                                    ; preds = %605, %588
  %591 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %592 = icmp ne %struct.zzzz* %591, null
  br i1 %592, label %593, label %609

; <label>:593:                                    ; preds = %590
  %594 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %595 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %594, i32 0, i32 1
  %596 = load %struct.zzzz*, %struct.zzzz** %595, align 8
  store %struct.zzzz* %596, %struct.zzzz** %12, align 8
  %597 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %598 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %597, i32 0, i32 0
  %599 = load i8*, i8** %598, align 8
  %600 = icmp ne i8* %599, null
  br i1 %600, label %601, label %605

; <label>:601:                                    ; preds = %593
  %602 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %603 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %602, i32 0, i32 0
  %604 = load i8*, i8** %603, align 8
  call void @free(i8* %604) #8
  br label %605

; <label>:605:                                    ; preds = %601, %593
  %606 = load %struct.zzzz*, %struct.zzzz** %10, align 8
  %607 = bitcast %struct.zzzz* %606 to i8*
  call void @free(i8* %607) #8
  %608 = load %struct.zzzz*, %struct.zzzz** %12, align 8
  store %struct.zzzz* %608, %struct.zzzz** %10, align 8
  br label %590

; <label>:609:                                    ; preds = %590
  %610 = load i32, i32* @exitValue, align 4
  ret i32 %610
}

; Function Attrs: noinline nounwind uwtable
define internal void @mySIGSEGVorSIGBUScatcher(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @opMode, align 4
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = load i8*, i8** @progName, align 8
  %8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([869 x i8], [869 x i8]* @.str.36, i32 0, i32 0), i8* %7)
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = load i8*, i8** @progName, align 8
  %12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([996 x i8], [996 x i8]* @.str.37, i32 0, i32 0), i8* %11)
  br label %13

; <label>:13:                                     ; preds = %9, %5
  call void @showFileNames()
  %14 = load i32, i32* @opMode, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  call void @cleanUpAndFail(i32 3) #11
  unreachable

; <label>:17:                                     ; preds = %13
  call void @cadvise()
  call void @cleanUpAndFail(i32 2) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @copyFileName(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = call i64 @strlen(i8* %5) #9
  %7 = icmp ugt i64 %6, 1024
  br i1 %7, label %8, label %13

; <label>:8:                                      ; preds = %2
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([120 x i8], [120 x i8]* @.str.47, i32 0, i32 0), i8* %10, i32 1024)
  call void @setExit(i32 1)
  %12 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %12) #10
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @strncpy(i8* %14, i8* %15, i64 1024) #8
  %17 = load i8*, i8** %3, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1024
  store i8 0, i8* %18, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @addFlagsFromEnvVar(%struct.zzzz**, i8*) #0 {
  %3 = alloca %struct.zzzz**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.zzzz** %0, %struct.zzzz*** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i8* @getenv(i8* %10) #8
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %14, label %111

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %16

; <label>:16:                                     ; preds = %14, %109
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %16
  br label %110

; <label>:25:                                     ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %30

; <label>:30:                                     ; preds = %43, %25
  %31 = call i16** @__ctype_b_loc() #12
  %32 = load i16*, i16** %31, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i16, i16* %32, i64 %37
  %39 = load i16, i16* %38, align 2
  %40 = zext i16 %39 to i32
  %41 = and i32 %40, 8192
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %30
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  br label %30

; <label>:46:                                     ; preds = %30
  br label %47

; <label>:47:                                     ; preds = %73, %46
  %48 = load i8*, i8** %9, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

; <label>:55:                                     ; preds = %47
  %56 = call i16** @__ctype_b_loc() #12
  %57 = load i16*, i16** %56, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %57, i64 %64
  %66 = load i16, i16* %65, align 2
  %67 = zext i16 %66 to i32
  %68 = and i32 %67, 8192
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

; <label>:71:                                     ; preds = %55, %47
  %72 = phi i1 [ false, %47 ], [ %70, %55 ]
  br i1 %72, label %73, label %76

; <label>:73:                                     ; preds = %71
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %47

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %5, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %109

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp sgt i32 %81, 1024
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %79
  store i32 1024, i32* %7, align 4
  br label %84

; <label>:84:                                     ; preds = %83, %79
  store i32 0, i32* %6, align 4
  br label %85

; <label>:85:                                     ; preds = %98, %84
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %85
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i64 0, i64 %96
  store i8 %94, i8* %97, align 1
  br label %98

; <label>:98:                                     ; preds = %89
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %85

; <label>:101:                                    ; preds = %85
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [1034 x i8], [1034 x i8]* @tmpName, i64 0, i64 %103
  store i8 0, i8* %104, align 1
  %105 = load %struct.zzzz**, %struct.zzzz*** %3, align 8
  %106 = load %struct.zzzz*, %struct.zzzz** %105, align 8
  %107 = call %struct.zzzz* @snocString(%struct.zzzz* %106, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @tmpName, i32 0, i32 0))
  %108 = load %struct.zzzz**, %struct.zzzz*** %3, align 8
  store %struct.zzzz* %107, %struct.zzzz** %108, align 8
  br label %109

; <label>:109:                                    ; preds = %101, %76
  br label %16

; <label>:110:                                    ; preds = %24
  br label %111

; <label>:111:                                    ; preds = %110, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.zzzz* @snocString(%struct.zzzz*, i8*) #0 {
  %3 = alloca %struct.zzzz*, align 8
  %4 = alloca %struct.zzzz*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zzzz*, align 8
  %7 = alloca %struct.zzzz*, align 8
  store %struct.zzzz* %0, %struct.zzzz** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.zzzz*, %struct.zzzz** %4, align 8
  %9 = icmp eq %struct.zzzz* %8, null
  br i1 %9, label %10, label %25

; <label>:10:                                     ; preds = %2
  %11 = call %struct.zzzz* @mkCell()
  store %struct.zzzz* %11, %struct.zzzz** %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strlen(i8* %12) #9
  %14 = add i64 5, %13
  %15 = trunc i64 %14 to i32
  %16 = call i8* @myMalloc(i32 %15)
  %17 = load %struct.zzzz*, %struct.zzzz** %6, align 8
  %18 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load %struct.zzzz*, %struct.zzzz** %6, align 8
  %20 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = call i8* @strcpy(i8* %21, i8* %22) #8
  %24 = load %struct.zzzz*, %struct.zzzz** %6, align 8
  store %struct.zzzz* %24, %struct.zzzz** %3, align 8
  br label %45

; <label>:25:                                     ; preds = %2
  %26 = load %struct.zzzz*, %struct.zzzz** %4, align 8
  store %struct.zzzz* %26, %struct.zzzz** %7, align 8
  br label %27

; <label>:27:                                     ; preds = %32, %25
  %28 = load %struct.zzzz*, %struct.zzzz** %7, align 8
  %29 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %28, i32 0, i32 1
  %30 = load %struct.zzzz*, %struct.zzzz** %29, align 8
  %31 = icmp ne %struct.zzzz* %30, null
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %27
  %33 = load %struct.zzzz*, %struct.zzzz** %7, align 8
  %34 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %33, i32 0, i32 1
  %35 = load %struct.zzzz*, %struct.zzzz** %34, align 8
  store %struct.zzzz* %35, %struct.zzzz** %7, align 8
  br label %27

; <label>:36:                                     ; preds = %27
  %37 = load %struct.zzzz*, %struct.zzzz** %7, align 8
  %38 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %37, i32 0, i32 1
  %39 = load %struct.zzzz*, %struct.zzzz** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call %struct.zzzz* @snocString(%struct.zzzz* %39, i8* %40)
  %42 = load %struct.zzzz*, %struct.zzzz** %7, align 8
  %43 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %42, i32 0, i32 1
  store %struct.zzzz* %41, %struct.zzzz** %43, align 8
  %44 = load %struct.zzzz*, %struct.zzzz** %4, align 8
  store %struct.zzzz* %44, %struct.zzzz** %3, align 8
  br label %45

; <label>:45:                                     ; preds = %36, %10
  %46 = load %struct.zzzz*, %struct.zzzz** %3, align 8
  ret %struct.zzzz* %46
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @license() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i8* @BZ2_bzlibVersion()
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([531 x i8], [531 x i8]* @.str.49, i32 0, i32 0), i8* %2)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @usage(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i8* @BZ2_bzlibVersion()
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([1230 x i8], [1230 x i8]* @.str.50, i32 0, i32 0), i8* %4, i8* %5)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define internal void @redundant(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progName, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.51, i32 0, i32 0), i8* %4, i8* %5)
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind uwtable
define internal void @mySignalCatcher(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progName, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.52, i32 0, i32 0), i8* %4)
  call void @cleanUpAndFail(i32 1) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @compress(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %9 = load i8*, i8** %2, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %1
  %12 = load i32, i32* @srcMode, align 4
  %13 = icmp ne i32 %12, 1
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.53, i32 0, i32 0)) #11
  unreachable

; <label>:15:                                     ; preds = %11, %1
  %16 = load i32, i32* @srcMode, align 4
  switch i32 %16, label %24 [
    i32 1, label %17
    i32 3, label %18
    i32 2, label %22
  ]

; <label>:17:                                     ; preds = %15
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0))
  br label %24

; <label>:18:                                     ; preds = %15
  %19 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %19)
  %20 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %20)
  %21 = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0)) #8
  br label %24

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %23)
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0))
  br label %24

; <label>:24:                                     ; preds = %15, %22, %18, %17
  %25 = load i32, i32* @srcMode, align 4
  %26 = icmp ne i32 %25, 1
  br i1 %26, label %27, label %39

; <label>:27:                                     ; preds = %24
  %28 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* @noisy, align 1
  %33 = icmp ne i8 %32, 0
  br i1 %33, label %34, label %38

; <label>:34:                                     ; preds = %31
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %36 = load i8*, i8** @progName, align 8
  %37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %36, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %38

; <label>:38:                                     ; preds = %34, %31
  call void @setExit(i32 1)
  br label %264

; <label>:39:                                     ; preds = %27, %24
  %40 = load i32, i32* @srcMode, align 4
  %41 = icmp ne i32 %40, 1
  br i1 %41, label %42, label %52

; <label>:42:                                     ; preds = %39
  %43 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %44 = icmp ne i8 %43, 0
  br i1 %44, label %52, label %45

; <label>:45:                                     ; preds = %42
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %47 = load i8*, i8** @progName, align 8
  %48 = call i32* @__errno_location() #12
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @strerror(i32 %49) #8
  %51 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0), i8* %47, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %50)
  call void @setExit(i32 1)
  br label %264

; <label>:52:                                     ; preds = %42, %39
  store i32 0, i32* %6, align 4
  br label %53

; <label>:53:                                     ; preds = %76, %52
  %54 = load i32, i32* %6, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %79

; <label>:56:                                     ; preds = %53
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %58
  %60 = load i8*, i8** %59, align 8
  %61 = call zeroext i8 @hasSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %60)
  %62 = icmp ne i8 %61, 0
  br i1 %62, label %63, label %75

; <label>:63:                                     ; preds = %56
  %64 = load i8, i8* @noisy, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %68 = load i8*, i8** @progName, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %67, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.58, i32 0, i32 0), i8* %68, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %72)
  br label %74

; <label>:74:                                     ; preds = %66, %63
  call void @setExit(i32 1)
  br label %264

; <label>:75:                                     ; preds = %56
  br label %76

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %53

; <label>:79:                                     ; preds = %53
  %80 = load i32, i32* @srcMode, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %85, label %82

; <label>:82:                                     ; preds = %79
  %83 = load i32, i32* @srcMode, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %96

; <label>:85:                                     ; preds = %82, %79
  %86 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %7) #8
  %87 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = and i32 %88, 61440
  %90 = icmp eq i32 %89, 16384
  br i1 %90, label %91, label %95

; <label>:91:                                     ; preds = %85
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = load i8*, i8** @progName, align 8
  %94 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %93, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @setExit(i32 1)
  br label %264

; <label>:95:                                     ; preds = %85
  br label %96

; <label>:96:                                     ; preds = %95, %82
  %97 = load i32, i32* @srcMode, align 4
  %98 = icmp eq i32 %97, 3
  br i1 %98, label %99, label %114

; <label>:99:                                     ; preds = %96
  %100 = load i8, i8* @forceOverwrite, align 1
  %101 = icmp ne i8 %100, 0
  br i1 %101, label %114, label %102

; <label>:102:                                    ; preds = %99
  %103 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

; <label>:106:                                    ; preds = %102
  %107 = load i8, i8* @noisy, align 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %109, label %113

; <label>:109:                                    ; preds = %106
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %111 = load i8*, i8** @progName, align 8
  %112 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %110, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i8* %111, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %113

; <label>:113:                                    ; preds = %109, %106
  call void @setExit(i32 1)
  br label %264

; <label>:114:                                    ; preds = %102, %99, %96
  %115 = load i32, i32* @srcMode, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %131

; <label>:117:                                    ; preds = %114
  %118 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  %119 = zext i8 %118 to i32
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

; <label>:121:                                    ; preds = %117
  %122 = load i8, i8* @forceOverwrite, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %124, label %126

; <label>:124:                                    ; preds = %121
  %125 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #8
  br label %130

; <label>:126:                                    ; preds = %121
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = load i8*, i8** @progName, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i8* %128, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  call void @setExit(i32 1)
  br label %264

; <label>:130:                                    ; preds = %124
  br label %131

; <label>:131:                                    ; preds = %130, %117, %114
  %132 = load i32, i32* @srcMode, align 4
  %133 = icmp eq i32 %132, 3
  br i1 %133, label %134, label %149

; <label>:134:                                    ; preds = %131
  %135 = load i8, i8* @forceOverwrite, align 1
  %136 = icmp ne i8 %135, 0
  br i1 %136, label %149, label %137

; <label>:137:                                    ; preds = %134
  %138 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  store i32 %138, i32* %5, align 4
  %139 = icmp sgt i32 %138, 0
  br i1 %139, label %140, label %149

; <label>:140:                                    ; preds = %137
  %141 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %142 = load i8*, i8** @progName, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i32, i32* %5, align 4
  %145 = icmp sgt i32 %144, 1
  %146 = zext i1 %145 to i64
  %147 = select i1 %145, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)
  %148 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %141, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i32 0, i32 0), i8* %142, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %143, i8* %147)
  call void @setExit(i32 1)
  br label %264

; <label>:149:                                    ; preds = %137, %134, %131
  %150 = load i32, i32* @srcMode, align 4
  %151 = icmp eq i32 %150, 3
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %149
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %153

; <label>:153:                                    ; preds = %152, %149
  %154 = load i32, i32* @srcMode, align 4
  switch i32 %154, label %238 [
    i32 1, label %155
    i32 2, label %171
    i32 3, label %203
  ]

; <label>:155:                                    ; preds = %153
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %156, %struct._IO_FILE** %3, align 8
  %157 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %157, %struct._IO_FILE** %4, align 8
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %159 = call i32 @fileno(%struct._IO_FILE* %158) #8
  %160 = call i32 @isatty(i32 %159) #8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

; <label>:162:                                    ; preds = %155
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %164 = load i8*, i8** @progName, align 8
  %165 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i32 0, i32 0), i8* %164)
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %167 = load i8*, i8** @progName, align 8
  %168 = load i8*, i8** @progName, align 8
  %169 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %167, i8* %168)
  call void @setExit(i32 1)
  br label %264

; <label>:170:                                    ; preds = %155
  br label %239

; <label>:171:                                    ; preds = %153
  %172 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %172, %struct._IO_FILE** %3, align 8
  %173 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %173, %struct._IO_FILE** %4, align 8
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %175 = call i32 @fileno(%struct._IO_FILE* %174) #8
  %176 = call i32 @isatty(i32 %175) #8
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %192

; <label>:178:                                    ; preds = %171
  %179 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %180 = load i8*, i8** @progName, align 8
  %181 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %179, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.64, i32 0, i32 0), i8* %180)
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %183 = load i8*, i8** @progName, align 8
  %184 = load i8*, i8** @progName, align 8
  %185 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %183, i8* %184)
  %186 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %187 = icmp ne %struct._IO_FILE* %186, null
  br i1 %187, label %188, label %191

; <label>:188:                                    ; preds = %178
  %189 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %190 = call i32 @fclose(%struct._IO_FILE* %189)
  br label %191

; <label>:191:                                    ; preds = %188, %178
  call void @setExit(i32 1)
  br label %264

; <label>:192:                                    ; preds = %171
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %194 = icmp eq %struct._IO_FILE* %193, null
  br i1 %194, label %195, label %202

; <label>:195:                                    ; preds = %192
  %196 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %197 = load i8*, i8** @progName, align 8
  %198 = call i32* @__errno_location() #12
  %199 = load i32, i32* %198, align 4
  %200 = call i8* @strerror(i32 %199) #8
  %201 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %196, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0), i8* %197, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %200)
  call void @setExit(i32 1)
  br label %264

; <label>:202:                                    ; preds = %192
  br label %239

; <label>:203:                                    ; preds = %153
  %204 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %204, %struct._IO_FILE** %3, align 8
  %205 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0))
  store %struct._IO_FILE* %205, %struct._IO_FILE** %4, align 8
  %206 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %207 = icmp eq %struct._IO_FILE* %206, null
  br i1 %207, label %208, label %221

; <label>:208:                                    ; preds = %203
  %209 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %210 = load i8*, i8** @progName, align 8
  %211 = call i32* @__errno_location() #12
  %212 = load i32, i32* %211, align 4
  %213 = call i8* @strerror(i32 %212) #8
  %214 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %209, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), i8* %210, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %213)
  %215 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %216 = icmp ne %struct._IO_FILE* %215, null
  br i1 %216, label %217, label %220

; <label>:217:                                    ; preds = %208
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %219 = call i32 @fclose(%struct._IO_FILE* %218)
  br label %220

; <label>:220:                                    ; preds = %217, %208
  call void @setExit(i32 1)
  br label %264

; <label>:221:                                    ; preds = %203
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %223 = icmp eq %struct._IO_FILE* %222, null
  br i1 %223, label %224, label %237

; <label>:224:                                    ; preds = %221
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %226 = load i8*, i8** @progName, align 8
  %227 = call i32* @__errno_location() #12
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @strerror(i32 %228) #8
  %230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0), i8* %226, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %229)
  %231 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %232 = icmp ne %struct._IO_FILE* %231, null
  br i1 %232, label %233, label %236

; <label>:233:                                    ; preds = %224
  %234 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %235 = call i32 @fclose(%struct._IO_FILE* %234)
  br label %236

; <label>:236:                                    ; preds = %233, %224
  call void @setExit(i32 1)
  br label %264

; <label>:237:                                    ; preds = %221
  br label %239

; <label>:238:                                    ; preds = %153
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.69, i32 0, i32 0)) #11
  unreachable

; <label>:239:                                    ; preds = %237, %202, %170
  %240 = load i32, i32* @verbosity, align 4
  %241 = icmp sge i32 %240, 1
  br i1 %241, label %242, label %247

; <label>:242:                                    ; preds = %239
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %244 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %243, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %246 = call i32 @fflush(%struct._IO_FILE* %245)
  br label %247

; <label>:247:                                    ; preds = %242, %239
  %248 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %248, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 1, i8* @deleteOutputOnInterrupt, align 1
  %249 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @compressStream(%struct._IO_FILE* %249, %struct._IO_FILE* %250)
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %251 = load i32, i32* @srcMode, align 4
  %252 = icmp eq i32 %251, 3
  br i1 %252, label %253, label %263

; <label>:253:                                    ; preds = %247
  call void @applySavedTimeInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %254 = load i8, i8* @keepInputFiles, align 1
  %255 = icmp ne i8 %254, 0
  br i1 %255, label %262, label %256

; <label>:256:                                    ; preds = %253
  %257 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #8
  store i32 %257, i32* %8, align 4
  %258 = load i32, i32* %8, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %261

; <label>:260:                                    ; preds = %256
  call void @ioError() #11
  unreachable

; <label>:261:                                    ; preds = %256
  br label %262

; <label>:262:                                    ; preds = %261, %253
  br label %263

; <label>:263:                                    ; preds = %262, %247
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  br label %264

; <label>:264:                                    ; preds = %263, %236, %220, %195, %191, %162, %140, %126, %113, %91, %74, %45, %38
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @uncompress(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.stat, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %12 = load i8*, i8** %2, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %18

; <label>:14:                                     ; preds = %1
  %15 = load i32, i32* @srcMode, align 4
  %16 = icmp ne i32 %15, 1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14
  call void @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.79, i32 0, i32 0)) #11
  unreachable

; <label>:18:                                     ; preds = %14, %1
  store i8 0, i8* %8, align 1
  %19 = load i32, i32* @srcMode, align 4
  switch i32 %19, label %47 [
    i32 1, label %20
    i32 3, label %21
    i32 2, label %45
  ]

; <label>:20:                                     ; preds = %18
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0))
  br label %47

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %22)
  %23 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %23)
  store i32 0, i32* %6, align 4
  br label %24

; <label>:24:                                     ; preds = %40, %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %43

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i8*], [4 x i8*]* @zSuffix, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [4 x i8*], [4 x i8*]* @unzSuffix, i64 0, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = call zeroext i8 @mapSuffix(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %31, i8* %35)
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %27
  br label %48

; <label>:39:                                     ; preds = %27
  br label %40

; <label>:40:                                     ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %24

; <label>:43:                                     ; preds = %24
  store i8 1, i8* %8, align 1
  %44 = call i8* @strcat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0)) #8
  br label %47

; <label>:45:                                     ; preds = %18
  %46 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %46)
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.55, i32 0, i32 0))
  br label %47

; <label>:47:                                     ; preds = %18, %45, %43, %20
  br label %48

; <label>:48:                                     ; preds = %47, %38
  %49 = load i32, i32* @srcMode, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %48
  %52 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %53 = zext i8 %52 to i32
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

; <label>:55:                                     ; preds = %51
  %56 = load i8, i8* @noisy, align 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %58, label %62

; <label>:58:                                     ; preds = %55
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %60 = load i8*, i8** @progName, align 8
  %61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %60, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %62

; <label>:62:                                     ; preds = %58, %55
  call void @setExit(i32 1)
  br label %294

; <label>:63:                                     ; preds = %51, %48
  %64 = load i32, i32* @srcMode, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %76

; <label>:66:                                     ; preds = %63
  %67 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %68 = icmp ne i8 %67, 0
  br i1 %68, label %76, label %69

; <label>:69:                                     ; preds = %66
  %70 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %71 = load i8*, i8** @progName, align 8
  %72 = call i32* @__errno_location() #12
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @strerror(i32 %73) #8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0), i8* %71, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %74)
  call void @setExit(i32 1)
  br label %294

; <label>:76:                                     ; preds = %66, %63
  %77 = load i32, i32* @srcMode, align 4
  %78 = icmp eq i32 %77, 3
  br i1 %78, label %82, label %79

; <label>:79:                                     ; preds = %76
  %80 = load i32, i32* @srcMode, align 4
  %81 = icmp eq i32 %80, 2
  br i1 %81, label %82, label %93

; <label>:82:                                     ; preds = %79, %76
  %83 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %9) #8
  %84 = getelementptr inbounds %struct.stat, %struct.stat* %9, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 61440
  %87 = icmp eq i32 %86, 16384
  br i1 %87, label %88, label %92

; <label>:88:                                     ; preds = %82
  %89 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %90 = load i8*, i8** @progName, align 8
  %91 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %89, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %90, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @setExit(i32 1)
  br label %294

; <label>:92:                                     ; preds = %82
  br label %93

; <label>:93:                                     ; preds = %92, %79
  %94 = load i32, i32* @srcMode, align 4
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %111

; <label>:96:                                     ; preds = %93
  %97 = load i8, i8* @forceOverwrite, align 1
  %98 = icmp ne i8 %97, 0
  br i1 %98, label %111, label %99

; <label>:99:                                     ; preds = %96
  %100 = call zeroext i8 @notAStandardFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %101 = zext i8 %100 to i32
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

; <label>:103:                                    ; preds = %99
  %104 = load i8, i8* @noisy, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %106, label %110

; <label>:106:                                    ; preds = %103
  %107 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %108 = load i8*, i8** @progName, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %107, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.60, i32 0, i32 0), i8* %108, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %110

; <label>:110:                                    ; preds = %106, %103
  call void @setExit(i32 1)
  br label %294

; <label>:111:                                    ; preds = %99, %96, %93
  %112 = load i8, i8* %8, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %114, label %122

; <label>:114:                                    ; preds = %111
  %115 = load i8, i8* @noisy, align 1
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %117, label %121

; <label>:117:                                    ; preds = %114
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %119 = load i8*, i8** @progName, align 8
  %120 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %118, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.81, i32 0, i32 0), i8* %119, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  br label %121

; <label>:121:                                    ; preds = %117, %114
  br label %122

; <label>:122:                                    ; preds = %121, %111
  %123 = load i32, i32* @srcMode, align 4
  %124 = icmp eq i32 %123, 3
  br i1 %124, label %125, label %139

; <label>:125:                                    ; preds = %122
  %126 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  %127 = zext i8 %126 to i32
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

; <label>:129:                                    ; preds = %125
  %130 = load i8, i8* @forceOverwrite, align 1
  %131 = icmp ne i8 %130, 0
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %129
  %133 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #8
  br label %138

; <label>:134:                                    ; preds = %129
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %136 = load i8*, i8** @progName, align 8
  %137 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.61, i32 0, i32 0), i8* %136, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  call void @setExit(i32 1)
  br label %294

; <label>:138:                                    ; preds = %132
  br label %139

; <label>:139:                                    ; preds = %138, %125, %122
  %140 = load i32, i32* @srcMode, align 4
  %141 = icmp eq i32 %140, 3
  br i1 %141, label %142, label %157

; <label>:142:                                    ; preds = %139
  %143 = load i8, i8* @forceOverwrite, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %157, label %145

; <label>:145:                                    ; preds = %142
  %146 = call i32 @countHardLinks(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  store i32 %146, i32* %5, align 4
  %147 = icmp sgt i32 %146, 0
  br i1 %147, label %148, label %157

; <label>:148:                                    ; preds = %145
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %150 = load i8*, i8** @progName, align 8
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp sgt i32 %152, 1
  %154 = zext i1 %153 to i64
  %155 = select i1 %153, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0)
  %156 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %149, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.62, i32 0, i32 0), i8* %150, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i32 %151, i8* %155)
  call void @setExit(i32 1)
  br label %294

; <label>:157:                                    ; preds = %145, %142, %139
  %158 = load i32, i32* @srcMode, align 4
  %159 = icmp eq i32 %158, 3
  br i1 %159, label %160, label %161

; <label>:160:                                    ; preds = %157
  call void @saveInputFileMetaInfo(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %161

; <label>:161:                                    ; preds = %160, %157
  %162 = load i32, i32* @srcMode, align 4
  switch i32 %162, label %233 [
    i32 1, label %163
    i32 2, label %179
    i32 3, label %198
  ]

; <label>:163:                                    ; preds = %161
  %164 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %164, %struct._IO_FILE** %3, align 8
  %165 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %165, %struct._IO_FILE** %4, align 8
  %166 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %167 = call i32 @fileno(%struct._IO_FILE* %166) #8
  %168 = call i32 @isatty(i32 %167) #8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

; <label>:170:                                    ; preds = %163
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load i8*, i8** @progName, align 8
  %173 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i32 0, i32 0), i8* %172)
  %174 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %175 = load i8*, i8** @progName, align 8
  %176 = load i8*, i8** @progName, align 8
  %177 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %174, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %175, i8* %176)
  call void @setExit(i32 1)
  br label %294

; <label>:178:                                    ; preds = %163
  br label %234

; <label>:179:                                    ; preds = %161
  %180 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %180, %struct._IO_FILE** %3, align 8
  %181 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  store %struct._IO_FILE* %181, %struct._IO_FILE** %4, align 8
  %182 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %183 = icmp eq %struct._IO_FILE* %182, null
  br i1 %183, label %184, label %197

; <label>:184:                                    ; preds = %179
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %186 = load i8*, i8** @progName, align 8
  %187 = call i32* @__errno_location() #12
  %188 = load i32, i32* %187, align 4
  %189 = call i8* @strerror(i32 %188) #8
  %190 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %185, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i32 0, i32 0), i8* %186, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %189)
  %191 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %192 = icmp ne %struct._IO_FILE* %191, null
  br i1 %192, label %193, label %196

; <label>:193:                                    ; preds = %184
  %194 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %195 = call i32 @fclose(%struct._IO_FILE* %194)
  br label %196

; <label>:196:                                    ; preds = %193, %184
  call void @setExit(i32 1)
  br label %294

; <label>:197:                                    ; preds = %179
  br label %234

; <label>:198:                                    ; preds = %161
  %199 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %199, %struct._IO_FILE** %3, align 8
  %200 = call %struct._IO_FILE* @fopen_output_safely(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.67, i32 0, i32 0))
  store %struct._IO_FILE* %200, %struct._IO_FILE** %4, align 8
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %202 = icmp eq %struct._IO_FILE* %201, null
  br i1 %202, label %203, label %216

; <label>:203:                                    ; preds = %198
  %204 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %205 = load i8*, i8** @progName, align 8
  %206 = call i32* @__errno_location() #12
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @strerror(i32 %207) #8
  %209 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %204, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.68, i32 0, i32 0), i8* %205, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* %208)
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %211 = icmp ne %struct._IO_FILE* %210, null
  br i1 %211, label %212, label %215

; <label>:212:                                    ; preds = %203
  %213 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %214 = call i32 @fclose(%struct._IO_FILE* %213)
  br label %215

; <label>:215:                                    ; preds = %212, %203
  call void @setExit(i32 1)
  br label %294

; <label>:216:                                    ; preds = %198
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %218 = icmp eq %struct._IO_FILE* %217, null
  br i1 %218, label %219, label %232

; <label>:219:                                    ; preds = %216
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %221 = load i8*, i8** @progName, align 8
  %222 = call i32* @__errno_location() #12
  %223 = load i32, i32* %222, align 4
  %224 = call i8* @strerror(i32 %223) #8
  %225 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %220, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0), i8* %221, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %224)
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %227 = icmp ne %struct._IO_FILE* %226, null
  br i1 %227, label %228, label %231

; <label>:228:                                    ; preds = %219
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %230 = call i32 @fclose(%struct._IO_FILE* %229)
  br label %231

; <label>:231:                                    ; preds = %228, %219
  call void @setExit(i32 1)
  br label %294

; <label>:232:                                    ; preds = %216
  br label %234

; <label>:233:                                    ; preds = %161
  call void @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.84, i32 0, i32 0)) #11
  unreachable

; <label>:234:                                    ; preds = %232, %197, %178
  %235 = load i32, i32* @verbosity, align 4
  %236 = icmp sge i32 %235, 1
  br i1 %236, label %237, label %242

; <label>:237:                                    ; preds = %234
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %238, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %240 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %241 = call i32 @fflush(%struct._IO_FILE* %240)
  br label %242

; <label>:242:                                    ; preds = %237, %234
  %243 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %243, %struct._IO_FILE** @outputHandleJustInCase, align 8
  store i8 1, i8* @deleteOutputOnInterrupt, align 1
  %244 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %245 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %246 = call zeroext i8 @uncompressStream(%struct._IO_FILE* %244, %struct._IO_FILE* %245)
  store i8 %246, i8* %7, align 1
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %247 = load i8, i8* %7, align 1
  %248 = icmp ne i8 %247, 0
  br i1 %248, label %249, label %263

; <label>:249:                                    ; preds = %242
  %250 = load i32, i32* @srcMode, align 4
  %251 = icmp eq i32 %250, 3
  br i1 %251, label %252, label %262

; <label>:252:                                    ; preds = %249
  call void @applySavedTimeInfoToOutputFile(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %253 = load i8, i8* @keepInputFiles, align 1
  %254 = icmp ne i8 %253, 0
  br i1 %254, label %261, label %255

; <label>:255:                                    ; preds = %252
  %256 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0)) #8
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

; <label>:259:                                    ; preds = %255
  call void @ioError() #11
  unreachable

; <label>:260:                                    ; preds = %255
  br label %261

; <label>:261:                                    ; preds = %260, %252
  br label %262

; <label>:262:                                    ; preds = %261, %249
  br label %273

; <label>:263:                                    ; preds = %242
  store i8 1, i8* @unzFailsExist, align 1
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %264 = load i32, i32* @srcMode, align 4
  %265 = icmp eq i32 %264, 3
  br i1 %265, label %266, label %272

; <label>:266:                                    ; preds = %263
  %267 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #8
  store i32 %267, i32* %11, align 4
  %268 = load i32, i32* %11, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %271

; <label>:270:                                    ; preds = %266
  call void @ioError() #11
  unreachable

; <label>:271:                                    ; preds = %266
  br label %272

; <label>:272:                                    ; preds = %271, %263
  br label %273

; <label>:273:                                    ; preds = %272, %262
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %274 = load i8, i8* %7, align 1
  %275 = icmp ne i8 %274, 0
  br i1 %275, label %276, label %283

; <label>:276:                                    ; preds = %273
  %277 = load i32, i32* @verbosity, align 4
  %278 = icmp sge i32 %277, 1
  br i1 %278, label %279, label %282

; <label>:279:                                    ; preds = %276
  %280 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %280, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0))
  br label %282

; <label>:282:                                    ; preds = %279, %276
  br label %294

; <label>:283:                                    ; preds = %273
  call void @setExit(i32 2)
  %284 = load i32, i32* @verbosity, align 4
  %285 = icmp sge i32 %284, 1
  br i1 %285, label %286, label %289

; <label>:286:                                    ; preds = %283
  %287 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %288 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %287, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.86, i32 0, i32 0))
  br label %293

; <label>:289:                                    ; preds = %283
  %290 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %291 = load i8*, i8** @progName, align 8
  %292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %290, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i32 0, i32 0), i8* %291, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %293

; <label>:293:                                    ; preds = %289, %286
  br label %294

; <label>:294:                                    ; preds = %62, %69, %88, %110, %134, %148, %170, %196, %215, %231, %293, %282
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @setExit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @exitValue, align 4
  %5 = icmp sgt i32 %3, %4
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* %2, align 4
  store i32 %7, i32* @exitValue, align 4
  br label %8

; <label>:8:                                      ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @testf(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  store i8 0, i8* @deleteOutputOnInterrupt, align 1
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %12

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* @srcMode, align 4
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  call void @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.94, i32 0, i32 0)) #11
  unreachable

; <label>:12:                                     ; preds = %8, %1
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %13 = load i32, i32* @srcMode, align 4
  switch i32 %13, label %19 [
    i32 1, label %14
    i32 3, label %15
    i32 2, label %17
  ]

; <label>:14:                                     ; preds = %12
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0))
  br label %19

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %16)
  br label %19

; <label>:17:                                     ; preds = %12
  %18 = load i8*, i8** %2, align 8
  call void @copyFileName(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %18)
  br label %19

; <label>:19:                                     ; preds = %12, %17, %15, %14
  %20 = load i32, i32* @srcMode, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %34

; <label>:22:                                     ; preds = %19
  %23 = call zeroext i8 @containsDubiousChars(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

; <label>:26:                                     ; preds = %22
  %27 = load i8, i8* @noisy, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %33

; <label>:29:                                     ; preds = %26
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %31 = load i8*, i8** @progName, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.56, i32 0, i32 0), i8* %31, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %29, %26
  call void @setExit(i32 1)
  br label %115

; <label>:34:                                     ; preds = %22, %19
  %35 = load i32, i32* @srcMode, align 4
  %36 = icmp ne i32 %35, 1
  br i1 %36, label %37, label %47

; <label>:37:                                     ; preds = %34
  %38 = call zeroext i8 @fileExists(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %47, label %40

; <label>:40:                                     ; preds = %37
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i8*, i8** @progName, align 8
  %43 = call i32* @__errno_location() #12
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @strerror(i32 %44) #8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.95, i32 0, i32 0), i8* %42, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %45)
  call void @setExit(i32 1)
  br label %115

; <label>:47:                                     ; preds = %37, %34
  %48 = load i32, i32* @srcMode, align 4
  %49 = icmp ne i32 %48, 1
  br i1 %49, label %50, label %61

; <label>:50:                                     ; preds = %47
  %51 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %5) #8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, 61440
  %55 = icmp eq i32 %54, 16384
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %50
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %58 = load i8*, i8** @progName, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %57, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i32 0, i32 0), i8* %58, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @setExit(i32 1)
  br label %115

; <label>:60:                                     ; preds = %50
  br label %61

; <label>:61:                                     ; preds = %60, %47
  %62 = load i32, i32* @srcMode, align 4
  switch i32 %62, label %90 [
    i32 1, label %63
    i32 2, label %78
    i32 3, label %78
  ]

; <label>:63:                                     ; preds = %61
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %65 = call i32 @fileno(%struct._IO_FILE* %64) #8
  %66 = call i32 @isatty(i32 %65) #8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

; <label>:68:                                     ; preds = %63
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %70 = load i8*, i8** @progName, align 8
  %71 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %69, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.82, i32 0, i32 0), i8* %70)
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %73 = load i8*, i8** @progName, align 8
  %74 = load i8*, i8** @progName, align 8
  %75 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %72, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.65, i32 0, i32 0), i8* %73, i8* %74)
  call void @setExit(i32 1)
  br label %115

; <label>:76:                                     ; preds = %63
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %77, %struct._IO_FILE** %3, align 8
  br label %91

; <label>:78:                                     ; preds = %61, %61
  %79 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %79, %struct._IO_FILE** %3, align 8
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %81 = icmp eq %struct._IO_FILE* %80, null
  br i1 %81, label %82, label %89

; <label>:82:                                     ; preds = %78
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %84 = load i8*, i8** @progName, align 8
  %85 = call i32* @__errno_location() #12
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @strerror(i32 %86) #8
  %88 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.83, i32 0, i32 0), i8* %84, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* %87)
  call void @setExit(i32 1)
  br label %115

; <label>:89:                                     ; preds = %78
  br label %91

; <label>:90:                                     ; preds = %61
  call void @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.96, i32 0, i32 0)) #11
  unreachable

; <label>:91:                                     ; preds = %89, %76
  %92 = load i32, i32* @verbosity, align 4
  %93 = icmp sge i32 %92, 1
  br i1 %93, label %94, label %99

; <label>:94:                                     ; preds = %91
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %96 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  call void @pad(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %98 = call i32 @fflush(%struct._IO_FILE* %97)
  br label %99

; <label>:99:                                     ; preds = %94, %91
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %101 = call zeroext i8 @testStream(%struct._IO_FILE* %100)
  store i8 %101, i8* %4, align 1
  %102 = load i8, i8* %4, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

; <label>:105:                                    ; preds = %99
  %106 = load i32, i32* @verbosity, align 4
  %107 = icmp sge i32 %106, 1
  br i1 %107, label %108, label %111

; <label>:108:                                    ; preds = %105
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %110 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %109, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.97, i32 0, i32 0))
  br label %111

; <label>:111:                                    ; preds = %108, %105, %99
  %112 = load i8, i8* %4, align 1
  %113 = icmp ne i8 %112, 0
  br i1 %113, label %115, label %114

; <label>:114:                                    ; preds = %111
  store i8 1, i8* @testFailsExist, align 1
  br label %115

; <label>:115:                                    ; preds = %33, %40, %56, %68, %82, %114, %111
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @panic(i8*) #5 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i8*, i8** @progName, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.71, i32 0, i32 0), i8* %4, i8* %5)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 3) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @containsDubiousChars(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i8 0
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @fileExists(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct._IO_FILE* @fopen(i8* %5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.66, i32 0, i32 0))
  store %struct._IO_FILE* %6, %struct._IO_FILE** %3, align 8
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %8 = icmp ne %struct._IO_FILE* %7, null
  %9 = zext i1 %8 to i32
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %4, align 1
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %12 = icmp ne %struct._IO_FILE* %11, null
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %1
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %15 = call i32 @fclose(%struct._IO_FILE* %14)
  br label %16

; <label>:16:                                     ; preds = %13, %1
  %17 = load i8, i8* %4, align 1
  ret i8 %17
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #6

; Function Attrs: nounwind
declare i8* @strerror(i32) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #1

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @isatty(i32) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @pad(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #9
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* @longestFileName, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  br label %25

; <label>:10:                                     ; preds = %1
  store i32 1, i32* %3, align 4
  br label %11

; <label>:11:                                     ; preds = %22, %10
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @longestFileName, align 4
  %14 = load i8*, i8** %2, align 8
  %15 = call i64 @strlen(i8* %14) #9
  %16 = trunc i64 %15 to i32
  %17 = sub nsw i32 %13, %16
  %18 = icmp sle i32 %12, %17
  br i1 %18, label %19, label %25

; <label>:19:                                     ; preds = %11
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.72, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %11

; <label>:25:                                     ; preds = %9, %11
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @testStream(%struct._IO_FILE*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca [5000 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %17 = call i32 @ferror(%struct._IO_FILE* %16) #8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %1
  br label %121

; <label>:20:                                     ; preds = %1
  br label %21

; <label>:21:                                     ; preds = %20, %90
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = load i32, i32* @verbosity, align 4
  %24 = load i8, i8* @smallMode, align 1
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds [5000 x i8], [5000 x i8]* %12, i32 0, i32 0
  %27 = load i32, i32* %13, align 4
  %28 = call i8* @BZ2_bzReadOpen(i32* %5, %struct._IO_FILE* %22, i32 %23, i32 %25, i8* %26, i32 %27)
  store i8* %28, i8** %4, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31, %21
  br label %109

; <label>:35:                                     ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %38

; <label>:38:                                     ; preds = %48, %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %4, align 8
  %43 = getelementptr inbounds [5000 x i8], [5000 x i8]* %11, i32 0, i32 0
  %44 = call i32 @BZ2_bzRead(i32* %5, i8* %42, i8* %43, i32 5000)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, -5
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %41
  br label %109

; <label>:48:                                     ; preds = %41
  br label %38

; <label>:49:                                     ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 4
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  br label %109

; <label>:53:                                     ; preds = %49
  %54 = load i8*, i8** %4, align 8
  call void @BZ2_bzReadGetUnused(i32* %5, i8* %54, i8** %14, i32* %13)
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0)) #11
  unreachable

; <label>:58:                                     ; preds = %53
  %59 = load i8*, i8** %14, align 8
  store i8* %59, i8** %15, align 8
  store i32 0, i32* %10, align 4
  br label %60

; <label>:60:                                     ; preds = %73, %58
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %76

; <label>:64:                                     ; preds = %60
  %65 = load i8*, i8** %15, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [5000 x i8], [5000 x i8]* %12, i64 0, i64 %71
  store i8 %69, i8* %72, align 1
  br label %73

; <label>:73:                                     ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %10, align 4
  br label %60

; <label>:76:                                     ; preds = %60
  %77 = load i8*, i8** %4, align 8
  call void @BZ2_bzReadClose(i32* %5, i8* %77)
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %76
  call void @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.98, i32 0, i32 0)) #11
  unreachable

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %13, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

; <label>:84:                                     ; preds = %81
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %86 = call zeroext i8 @myfeof(%struct._IO_FILE* %85)
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %84
  br label %91

; <label>:90:                                     ; preds = %84, %81
  br label %21

; <label>:91:                                     ; preds = %89
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %93 = call i32 @ferror(%struct._IO_FILE* %92) #8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

; <label>:95:                                     ; preds = %91
  br label %121

; <label>:96:                                     ; preds = %91
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %98 = call i32 @fclose(%struct._IO_FILE* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %102

; <label>:101:                                    ; preds = %96
  br label %121

; <label>:102:                                    ; preds = %96
  %103 = load i32, i32* @verbosity, align 4
  %104 = icmp sge i32 %103, 2
  br i1 %104, label %105, label %108

; <label>:105:                                    ; preds = %102
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %107 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %106, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0))
  br label %108

; <label>:108:                                    ; preds = %105, %102
  store i8 1, i8* %2, align 1
  br label %150

; <label>:109:                                    ; preds = %52, %47, %34
  %110 = load i8*, i8** %4, align 8
  call void @BZ2_bzReadClose(i32* %6, i8* %110)
  %111 = load i32, i32* @verbosity, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %117

; <label>:113:                                    ; preds = %109
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %115 = load i8*, i8** @progName, align 8
  %116 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0), i8* %115, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %117

; <label>:117:                                    ; preds = %113, %109
  %118 = load i32, i32* %5, align 4
  switch i32 %118, label %149 [
    i32 -9, label %119
    i32 -6, label %120
    i32 -4, label %122
    i32 -3, label %125
    i32 -7, label %126
    i32 -5, label %129
  ]

; <label>:119:                                    ; preds = %117
  call void @configError() #11
  unreachable

; <label>:120:                                    ; preds = %117
  br label %121

; <label>:121:                                    ; preds = %120, %101, %95, %19
  call void @ioError() #11
  unreachable

; <label>:122:                                    ; preds = %117
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %124 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.100, i32 0, i32 0))
  store i8 0, i8* %2, align 1
  br label %150

; <label>:125:                                    ; preds = %117
  call void @outOfMemory() #11
  unreachable

; <label>:126:                                    ; preds = %117
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %128 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %127, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.101, i32 0, i32 0))
  store i8 0, i8* %2, align 1
  br label %150

; <label>:129:                                    ; preds = %117
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %132 = icmp ne %struct._IO_FILE* %130, %131
  br i1 %132, label %133, label %136

; <label>:133:                                    ; preds = %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %135 = call i32 @fclose(%struct._IO_FILE* %134)
  br label %136

; <label>:136:                                    ; preds = %133, %129
  %137 = load i32, i32* %9, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %136
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %141 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %140, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.102, i32 0, i32 0))
  store i8 0, i8* %2, align 1
  br label %150

; <label>:142:                                    ; preds = %136
  %143 = load i8, i8* @noisy, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %148

; <label>:145:                                    ; preds = %142
  %146 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %146, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.103, i32 0, i32 0))
  br label %148

; <label>:148:                                    ; preds = %145, %142
  store i8 1, i8* %2, align 1
  br label %150

; <label>:149:                                    ; preds = %117
  call void @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.104, i32 0, i32 0)) #11
  unreachable

; <label>:150:                                    ; preds = %148, %139, %126, %122, %108
  %151 = load i8, i8* %2, align 1
  ret i8 %151
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #1

declare i8* @BZ2_bzReadOpen(i32*, %struct._IO_FILE*, i32, i32, i8*, i32) #4

declare i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #4

declare void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #4

declare void @BZ2_bzReadClose(i32*, i8*) #4

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @myfeof(%struct._IO_FILE*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %6 = call i32 @fgetc(%struct._IO_FILE* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i8 1, i8* %2, align 1
  br label %14

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %13 = call i32 @ungetc(i32 %11, %struct._IO_FILE* %12)
  store i8 0, i8* %2, align 1
  br label %14

; <label>:14:                                     ; preds = %10, %9
  %15 = load i8, i8* %2, align 1
  ret i8 %15
}

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @configError() #5 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.77, i32 0, i32 0))
  call void @setExit(i32 3)
  %3 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %3) #10
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @ioError() #5 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.78, i32 0, i32 0), i8* %2)
  %4 = load i8*, i8** @progName, align 8
  call void @perror(i8* %4)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @outOfMemory() #5 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.48, i32 0, i32 0), i8* %2)
  call void @showFileNames()
  call void @cleanUpAndFail(i32 1) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @showFileNames() #0 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @cleanUpAndFail(i32) #5 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @srcMode, align 4
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %54

; <label>:7:                                      ; preds = %1
  %8 = load i32, i32* @opMode, align 4
  %9 = icmp ne i32 %8, 3
  br i1 %9, label %10, label %54

; <label>:10:                                     ; preds = %7
  %11 = load i8, i8* @deleteOutputOnInterrupt, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %54

; <label>:14:                                     ; preds = %10
  %15 = call i32 @stat(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0), %struct.stat* %4) #8
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

; <label>:18:                                     ; preds = %14
  %19 = load i8, i8* @noisy, align 1
  %20 = icmp ne i8 %19, 0
  br i1 %20, label %21, label %25

; <label>:21:                                     ; preds = %18
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %23 = load i8*, i8** @progName, align 8
  %24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.39, i32 0, i32 0), i8* %23, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %21, %18
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %27 = icmp ne %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %25
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %30 = call i32 @fclose(%struct._IO_FILE* %29)
  br label %31

; <label>:31:                                     ; preds = %28, %25
  %32 = call i32 @remove(i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0)) #8
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

; <label>:35:                                     ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %37 = load i8*, i8** @progName, align 8
  %38 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i32 0, i32 0), i8* %37)
  br label %39

; <label>:39:                                     ; preds = %35, %31
  br label %53

; <label>:40:                                     ; preds = %14
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %42 = load i8*, i8** @progName, align 8
  %43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.41, i32 0, i32 0), i8* %42)
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = load i8*, i8** @progName, align 8
  %46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.42, i32 0, i32 0), i8* %45)
  %47 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %48 = load i8*, i8** @progName, align 8
  %49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.43, i32 0, i32 0), i8* %48, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @outName, i32 0, i32 0))
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %51 = load i8*, i8** @progName, align 8
  %52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.44, i32 0, i32 0), i8* %51)
  br label %53

; <label>:53:                                     ; preds = %40, %39
  br label %54

; <label>:54:                                     ; preds = %53, %10, %7, %1
  %55 = load i8, i8* @noisy, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %74

; <label>:58:                                     ; preds = %54
  %59 = load i32, i32* @numFileNames, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %74

; <label>:61:                                     ; preds = %58
  %62 = load i32, i32* @numFilesProcessed, align 4
  %63 = load i32, i32* @numFileNames, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %74

; <label>:65:                                     ; preds = %61
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %67 = load i8*, i8** @progName, align 8
  %68 = load i8*, i8** @progName, align 8
  %69 = load i32, i32* @numFileNames, align 4
  %70 = load i32, i32* @numFileNames, align 4
  %71 = load i32, i32* @numFilesProcessed, align 4
  %72 = sub nsw i32 %70, %71
  %73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %66, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.45, i32 0, i32 0), i8* %67, i8* %68, i32 %69, i32 %72)
  br label %74

; <label>:74:                                     ; preds = %65, %61, %58, %54
  %75 = load i32, i32* %2, align 4
  call void @setExit(i32 %75)
  %76 = load i32, i32* @exitValue, align 4
  call void @exit(i32 %76) #10
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i32 @remove(i8*) #1

declare void @perror(i8*) #4

declare i32 @fgetc(%struct._IO_FILE*) #4

declare i32 @ungetc(i32, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @mapSuffix(i8*, i8*, i8*) #0 {
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call zeroext i8 @hasSuffix(i8* %8, i8* %9)
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %13, label %12

; <label>:12:                                     ; preds = %3
  store i8 0, i8* %4, align 1
  br label %24

; <label>:13:                                     ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i64 @strlen(i8* %15) #9
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strlen(i8* %17) #9
  %19 = sub i64 %16, %18
  %20 = getelementptr inbounds i8, i8* %14, i64 %19
  store i8 0, i8* %20, align 1
  %21 = load i8*, i8** %5, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = call i8* @strcat(i8* %21, i8* %22) #8
  store i8 1, i8* %4, align 1
  br label %24

; <label>:24:                                     ; preds = %13, %12
  %25 = load i8, i8* %4, align 1
  ret i8 %25
}

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @notAStandardFile(i8*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @lstat(i8* %6, %struct.stat* %5) #8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  store i8 1, i8* %2, align 1
  br label %18

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, 61440
  %15 = icmp eq i32 %14, 32768
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %11
  store i8 0, i8* %2, align 1
  br label %18

; <label>:17:                                     ; preds = %11
  store i8 1, i8* %2, align 1
  br label %18

; <label>:18:                                     ; preds = %17, %16, %10
  %19 = load i8, i8* %2, align 1
  ret i8 %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @countHardLinks(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.stat, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i32 @lstat(i8* %6, %struct.stat* %5) #8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %5, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %11, %10
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal void @saveInputFileMetaInfo(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i32 @stat(i8* %4, %struct.stat* @fileMetaInfo) #8
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  call void @ioError() #11
  unreachable

; <label>:9:                                      ; preds = %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct._IO_FILE* @fopen_output_safely(i8*, i8*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, i32, ...) @open(i8* %8, i32 193, i32 384)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store %struct._IO_FILE* null, %struct._IO_FILE** %3, align 8
  br label %24

; <label>:13:                                     ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct._IO_FILE* @fdopen(i32 %14, i8* %15) #8
  store %struct._IO_FILE* %16, %struct._IO_FILE** %6, align 8
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %18 = icmp eq %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %22

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @close(i32 %20)
  br label %22

; <label>:22:                                     ; preds = %19, %13
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  store %struct._IO_FILE* %23, %struct._IO_FILE** %3, align 8
  br label %24

; <label>:24:                                     ; preds = %22, %12
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  ret %struct._IO_FILE* %25
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @uncompressStream(%struct._IO_FILE*, %struct._IO_FILE*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca %struct._IO_FILE*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5000 x i8], align 16
  %14 = alloca [5000 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct._IO_FILE* %0, %struct._IO_FILE** %4, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %20 = call i32 @ferror(%struct._IO_FILE* %19) #8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %2
  br label %213

; <label>:23:                                     ; preds = %2
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %25 = call i32 @ferror(%struct._IO_FILE* %24) #8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  br label %213

; <label>:28:                                     ; preds = %23
  br label %29

; <label>:29:                                     ; preds = %28, %118
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %31 = load i32, i32* @verbosity, align 4
  %32 = load i8, i8* @smallMode, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i32 0, i32 0
  %35 = load i32, i32* %15, align 4
  %36 = call i8* @BZ2_bzReadOpen(i32* %7, %struct._IO_FILE* %30, i32 %31, i32 %33, i8* %34, i32 %35)
  store i8* %36, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %42, label %39

; <label>:39:                                     ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %39, %29
  br label %208

; <label>:43:                                     ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

; <label>:46:                                     ; preds = %76, %43
  %47 = load i32, i32* %7, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %77

; <label>:49:                                     ; preds = %46
  %50 = load i8*, i8** %6, align 8
  %51 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %52 = call i32 @BZ2_bzRead(i32* %7, i8* %50, i8* %51, i32 5000)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp eq i32 %53, -5
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %49
  br label %172

; <label>:56:                                     ; preds = %49
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %62, label %59

; <label>:59:                                     ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 4
  br i1 %61, label %62, label %71

; <label>:62:                                     ; preds = %59, %56
  %63 = load i32, i32* %10, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %62
  %66 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %70 = call i64 @fwrite(i8* %66, i64 1, i64 %68, %struct._IO_FILE* %69)
  br label %71

; <label>:71:                                     ; preds = %65, %62, %59
  %72 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %73 = call i32 @ferror(%struct._IO_FILE* %72) #8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %71
  br label %213

; <label>:76:                                     ; preds = %71
  br label %46

; <label>:77:                                     ; preds = %46
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 4
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %77
  br label %208

; <label>:81:                                     ; preds = %77
  %82 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadGetUnused(i32* %7, i8* %82, i8** %16, i32* %15)
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

; <label>:85:                                     ; preds = %81
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0)) #11
  unreachable

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %16, align 8
  store i8* %87, i8** %17, align 8
  store i32 0, i32* %12, align 4
  br label %88

; <label>:88:                                     ; preds = %101, %86
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %104

; <label>:92:                                     ; preds = %88
  %93 = load i8*, i8** %17, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [5000 x i8], [5000 x i8]* %14, i64 0, i64 %99
  store i8 %97, i8* %100, align 1
  br label %101

; <label>:101:                                    ; preds = %92
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %88

; <label>:104:                                    ; preds = %88
  %105 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadClose(i32* %7, i8* %105)
  %106 = load i32, i32* %7, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %104
  call void @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.88, i32 0, i32 0)) #11
  unreachable

; <label>:109:                                    ; preds = %104
  %110 = load i32, i32* %15, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %118

; <label>:112:                                    ; preds = %109
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %114 = call zeroext i8 @myfeof(%struct._IO_FILE* %113)
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %112
  br label %119

; <label>:118:                                    ; preds = %112, %109
  br label %29

; <label>:119:                                    ; preds = %117
  br label %120

; <label>:120:                                    ; preds = %206, %119
  %121 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %122 = call i32 @ferror(%struct._IO_FILE* %121) #8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %120
  br label %213

; <label>:125:                                    ; preds = %120
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %128 = icmp ne %struct._IO_FILE* %126, %127
  br i1 %128, label %129, label %137

; <label>:129:                                    ; preds = %125
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %131 = call i32 @fileno(%struct._IO_FILE* %130) #8
  store i32 %131, i32* %18, align 4
  %132 = load i32, i32* %18, align 4
  %133 = icmp slt i32 %132, 0
  br i1 %133, label %134, label %135

; <label>:134:                                    ; preds = %129
  br label %213

; <label>:135:                                    ; preds = %129
  %136 = load i32, i32* %18, align 4
  call void @applySavedFileAttrToOutputFile(i32 %136)
  br label %137

; <label>:137:                                    ; preds = %135, %125
  %138 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %139 = call i32 @fclose(%struct._IO_FILE* %138)
  store i32 %139, i32* %9, align 4
  %140 = load i32, i32* %9, align 4
  %141 = icmp eq i32 %140, -1
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %137
  br label %213

; <label>:143:                                    ; preds = %137
  %144 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %145 = call i32 @ferror(%struct._IO_FILE* %144) #8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

; <label>:147:                                    ; preds = %143
  br label %213

; <label>:148:                                    ; preds = %143
  %149 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %150 = call i32 @fflush(%struct._IO_FILE* %149)
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %9, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

; <label>:153:                                    ; preds = %148
  br label %213

; <label>:154:                                    ; preds = %148
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %156 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %157 = icmp ne %struct._IO_FILE* %155, %156
  br i1 %157, label %158, label %165

; <label>:158:                                    ; preds = %154
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %160 = call i32 @fclose(%struct._IO_FILE* %159)
  store i32 %160, i32* %9, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %161 = load i32, i32* %9, align 4
  %162 = icmp eq i32 %161, -1
  br i1 %162, label %163, label %164

; <label>:163:                                    ; preds = %158
  br label %213

; <label>:164:                                    ; preds = %158
  br label %165

; <label>:165:                                    ; preds = %164, %154
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %166 = load i32, i32* @verbosity, align 4
  %167 = icmp sge i32 %166, 2
  br i1 %167, label %168, label %171

; <label>:168:                                    ; preds = %165
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %170 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %169, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.89, i32 0, i32 0))
  br label %171

; <label>:171:                                    ; preds = %168, %165
  store i8 1, i8* %3, align 1
  br label %244

; <label>:172:                                    ; preds = %55
  %173 = load i8, i8* @forceOverwrite, align 1
  %174 = icmp ne i8 %173, 0
  br i1 %174, label %175, label %207

; <label>:175:                                    ; preds = %172
  %176 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  call void @rewind(%struct._IO_FILE* %176)
  br label %177

; <label>:177:                                    ; preds = %175, %205
  %178 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %179 = call zeroext i8 @myfeof(%struct._IO_FILE* %178)
  %180 = icmp ne i8 %179, 0
  br i1 %180, label %181, label %182

; <label>:181:                                    ; preds = %177
  br label %206

; <label>:182:                                    ; preds = %177
  %183 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %184 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %185 = call i64 @fread(i8* %183, i64 1, i64 5000, %struct._IO_FILE* %184)
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %10, align 4
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %188 = call i32 @ferror(%struct._IO_FILE* %187) #8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

; <label>:190:                                    ; preds = %182
  br label %213

; <label>:191:                                    ; preds = %182
  %192 = load i32, i32* %10, align 4
  %193 = icmp sgt i32 %192, 0
  br i1 %193, label %194, label %200

; <label>:194:                                    ; preds = %191
  %195 = getelementptr inbounds [5000 x i8], [5000 x i8]* %13, i32 0, i32 0
  %196 = load i32, i32* %10, align 4
  %197 = sext i32 %196 to i64
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %199 = call i64 @fwrite(i8* %195, i64 1, i64 %197, %struct._IO_FILE* %198)
  br label %200

; <label>:200:                                    ; preds = %194, %191
  %201 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %202 = call i32 @ferror(%struct._IO_FILE* %201) #8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

; <label>:204:                                    ; preds = %200
  br label %213

; <label>:205:                                    ; preds = %200
  br label %177

; <label>:206:                                    ; preds = %181
  br label %120

; <label>:207:                                    ; preds = %172
  br label %208

; <label>:208:                                    ; preds = %207, %80, %42
  %209 = load i8*, i8** %6, align 8
  call void @BZ2_bzReadClose(i32* %8, i8* %209)
  %210 = load i32, i32* %7, align 4
  switch i32 %210, label %243 [
    i32 -9, label %211
    i32 -6, label %212
    i32 -4, label %214
    i32 -3, label %215
    i32 -7, label %216
    i32 -5, label %217
  ]

; <label>:211:                                    ; preds = %208
  call void @configError() #11
  unreachable

; <label>:212:                                    ; preds = %208
  br label %213

; <label>:213:                                    ; preds = %212, %204, %190, %163, %153, %147, %142, %134, %124, %75, %27, %22
  call void @ioError() #11
  unreachable

; <label>:214:                                    ; preds = %208
  call void @crcError() #11
  unreachable

; <label>:215:                                    ; preds = %208
  call void @outOfMemory() #11
  unreachable

; <label>:216:                                    ; preds = %208
  call void @compressedStreamEOF() #11
  unreachable

; <label>:217:                                    ; preds = %208
  %218 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %220 = icmp ne %struct._IO_FILE* %218, %219
  br i1 %220, label %221, label %224

; <label>:221:                                    ; preds = %217
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %223 = call i32 @fclose(%struct._IO_FILE* %222)
  br label %224

; <label>:224:                                    ; preds = %221, %217
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %226 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %227 = icmp ne %struct._IO_FILE* %225, %226
  br i1 %227, label %228, label %231

; <label>:228:                                    ; preds = %224
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %5, align 8
  %230 = call i32 @fclose(%struct._IO_FILE* %229)
  br label %231

; <label>:231:                                    ; preds = %228, %224
  %232 = load i32, i32* %11, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %235

; <label>:234:                                    ; preds = %231
  store i8 0, i8* %3, align 1
  br label %244

; <label>:235:                                    ; preds = %231
  %236 = load i8, i8* @noisy, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %242

; <label>:238:                                    ; preds = %235
  %239 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %240 = load i8*, i8** @progName, align 8
  %241 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %239, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.90, i32 0, i32 0), i8* %240, i8* getelementptr inbounds ([1034 x i8], [1034 x i8]* @inName, i32 0, i32 0))
  br label %242

; <label>:242:                                    ; preds = %238, %235
  store i8 1, i8* %3, align 1
  br label %244

; <label>:243:                                    ; preds = %208
  call void @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.91, i32 0, i32 0)) #11
  unreachable

; <label>:244:                                    ; preds = %242, %234, %171
  %245 = load i8, i8* %3, align 1
  ret i8 %245
}

; Function Attrs: noinline nounwind uwtable
define internal void @applySavedTimeInfoToOutputFile(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 11, i32 0), align 8
  %6 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  store i64 %5, i64* %6, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 12, i32 0), align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i64 %7, i64* %8, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @utime(i8* %9, %struct.timespec* %4) #8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  call void @ioError() #11
  unreachable

; <label>:14:                                     ; preds = %1
  ret void
}

; Function Attrs: nounwind
declare i32 @utime(i8*, %struct.timespec*) #1

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @applySavedFileAttrToOutputFile(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 3), align 8
  %6 = call i32 @fchmod(i32 %4, i32 %5) #8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @ioError() #11
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 4), align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.stat, %struct.stat* @fileMetaInfo, i32 0, i32 5), align 8
  %14 = call i32 @fchown(i32 %11, i32 %12, i32 %13) #8
  ret void
}

declare void @rewind(%struct._IO_FILE*) #4

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #4

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @crcError() #5 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = load i8*, i8** @progName, align 8
  %3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.92, i32 0, i32 0), i8* %2)
  call void @showFileNames()
  call void @cadvise()
  call void @cleanUpAndFail(i32 2) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define internal void @compressedStreamEOF() #5 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %8

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = load i8*, i8** @progName, align 8
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.93, i32 0, i32 0), i8* %5)
  %7 = load i8*, i8** @progName, align 8
  call void @perror(i8* %7)
  call void @showFileNames()
  call void @cadvise()
  br label %8

; <label>:8:                                      ; preds = %3, %0
  call void @cleanUpAndFail(i32 2) #11
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cadvise() #0 {
  %1 = load i8, i8* @noisy, align 1
  %2 = icmp ne i8 %1, 0
  br i1 %2, label %3, label %6

; <label>:3:                                      ; preds = %0
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([241 x i8], [241 x i8]* @.str.46, i32 0, i32 0))
  br label %6

; <label>:6:                                      ; preds = %3, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @fchmod(i32, i32) #1

; Function Attrs: nounwind
declare i32 @fchown(i32, i32, i32) #1

declare i32 @open(i8*, i32, ...) #4

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #1

declare i32 @close(i32) #4

; Function Attrs: nounwind
declare i32 @lstat(i8*, %struct.stat*) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @hasSuffix(i8*, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i64 @strlen(i8* %8) #9
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @strlen(i8* %11) #9
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %2
  store i8 0, i8* %3, align 1
  br label %32

; <label>:18:                                     ; preds = %2
  %19 = load i8*, i8** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 0, %24
  %26 = getelementptr inbounds i8, i8* %22, i64 %25
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* %26, i8* %27) #9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %18
  store i8 1, i8* %3, align 1
  br label %32

; <label>:31:                                     ; preds = %18
  store i8 0, i8* %3, align 1
  br label %32

; <label>:32:                                     ; preds = %31, %30, %17
  %33 = load i8, i8* %3, align 1
  ret i8 %33
}

; Function Attrs: noinline nounwind uwtable
define internal void @compressStream(%struct._IO_FILE*, %struct._IO_FILE*) #0 {
  %3 = alloca %struct._IO_FILE*, align 8
  %4 = alloca %struct._IO_FILE*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [5000 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [32 x i8], align 16
  %17 = alloca [32 x i8], align 16
  %18 = alloca %struct.UInt64, align 1
  %19 = alloca %struct.UInt64, align 1
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %3, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %4, align 8
  store i8* null, i8** %5, align 8
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %23 = call i32 @ferror(%struct._IO_FILE* %22) #8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %2
  br label %163

; <label>:26:                                     ; preds = %2
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %28 = call i32 @ferror(%struct._IO_FILE* %27) #8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %26
  br label %163

; <label>:31:                                     ; preds = %26
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = load i32, i32* @blockSize100k, align 4
  %34 = load i32, i32* @verbosity, align 4
  %35 = load i32, i32* @workFactor, align 4
  %36 = call i8* @BZ2_bzWriteOpen(i32* %12, %struct._IO_FILE* %32, i32 %33, i32 %34, i32 %35)
  store i8* %36, i8** %5, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %31
  br label %157

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* @verbosity, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %40
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.73, i32 0, i32 0))
  br label %46

; <label>:46:                                     ; preds = %43, %40
  br label %47

; <label>:47:                                     ; preds = %46, %72
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %49 = call zeroext i8 @myfeof(%struct._IO_FILE* %48)
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  br label %73

; <label>:52:                                     ; preds = %47
  %53 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0
  %54 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %55 = call i64 @fread(i8* %53, i64 1, i64 5000, %struct._IO_FILE* %54)
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %7, align 4
  %57 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %58 = call i32 @ferror(%struct._IO_FILE* %57) #8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %52
  br label %163

; <label>:61:                                     ; preds = %52
  %62 = load i32, i32* %7, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %68

; <label>:64:                                     ; preds = %61
  %65 = load i8*, i8** %5, align 8
  %66 = getelementptr inbounds [5000 x i8], [5000 x i8]* %6, i32 0, i32 0
  %67 = load i32, i32* %7, align 4
  call void @BZ2_bzWrite(i32* %12, i8* %65, i8* %66, i32 %67)
  br label %68

; <label>:68:                                     ; preds = %64, %61
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %68
  br label %157

; <label>:72:                                     ; preds = %68
  br label %47

; <label>:73:                                     ; preds = %51
  %74 = load i8*, i8** %5, align 8
  call void @BZ2_bzWriteClose64(i32* %12, i8* %74, i32 0, i32* %8, i32* %9, i32* %10, i32* %11)
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

; <label>:77:                                     ; preds = %73
  br label %157

; <label>:78:                                     ; preds = %73
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %80 = call i32 @ferror(%struct._IO_FILE* %79) #8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %78
  br label %163

; <label>:83:                                     ; preds = %78
  %84 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %85 = call i32 @fflush(%struct._IO_FILE* %84)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %83
  br label %163

; <label>:89:                                     ; preds = %83
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %91 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %92 = icmp ne %struct._IO_FILE* %90, %91
  br i1 %92, label %93, label %107

; <label>:93:                                     ; preds = %89
  %94 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %95 = call i32 @fileno(%struct._IO_FILE* %94) #8
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %93
  br label %163

; <label>:99:                                     ; preds = %93
  %100 = load i32, i32* %15, align 4
  call void @applySavedFileAttrToOutputFile(i32 %100)
  %101 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %102 = call i32 @fclose(%struct._IO_FILE* %101)
  store i32 %102, i32* %14, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %103 = load i32, i32* %14, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %99
  br label %163

; <label>:106:                                    ; preds = %99
  br label %107

; <label>:107:                                    ; preds = %106, %89
  store %struct._IO_FILE* null, %struct._IO_FILE** @outputHandleJustInCase, align 8
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %109 = call i32 @ferror(%struct._IO_FILE* %108) #8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %107
  br label %163

; <label>:112:                                    ; preds = %107
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %3, align 8
  %114 = call i32 @fclose(%struct._IO_FILE* %113)
  store i32 %114, i32* %14, align 4
  %115 = load i32, i32* %14, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %118

; <label>:117:                                    ; preds = %112
  br label %163

; <label>:118:                                    ; preds = %112
  %119 = load i32, i32* @verbosity, align 4
  %120 = icmp sge i32 %119, 1
  br i1 %120, label %121, label %156

; <label>:121:                                    ; preds = %118
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %130

; <label>:124:                                    ; preds = %121
  %125 = load i32, i32* %9, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %130

; <label>:127:                                    ; preds = %124
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.74, i32 0, i32 0))
  br label %155

; <label>:130:                                    ; preds = %124, %121
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %9, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %18, i32 %131, i32 %132)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  call void @uInt64_from_UInt32s(%struct.UInt64* %19, i32 %133, i32 %134)
  %135 = call double @uInt64_to_double(%struct.UInt64* %18)
  store double %135, double* %20, align 8
  %136 = call double @uInt64_to_double(%struct.UInt64* %19)
  store double %136, double* %21, align 8
  %137 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  call void @uInt64_toAscii(i8* %137, %struct.UInt64* %18)
  %138 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  call void @uInt64_toAscii(i8* %138, %struct.UInt64* %19)
  %139 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %140 = load double, double* %20, align 8
  %141 = load double, double* %21, align 8
  %142 = fdiv double %140, %141
  %143 = load double, double* %21, align 8
  %144 = fmul double 8.000000e+00, %143
  %145 = load double, double* %20, align 8
  %146 = fdiv double %144, %145
  %147 = load double, double* %21, align 8
  %148 = load double, double* %20, align 8
  %149 = fdiv double %147, %148
  %150 = fsub double 1.000000e+00, %149
  %151 = fmul double 1.000000e+02, %150
  %152 = getelementptr inbounds [32 x i8], [32 x i8]* %16, i32 0, i32 0
  %153 = getelementptr inbounds [32 x i8], [32 x i8]* %17, i32 0, i32 0
  %154 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %139, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.75, i32 0, i32 0), double %142, double %146, double %151, i8* %152, i8* %153)
  br label %155

; <label>:155:                                    ; preds = %130, %127
  br label %156

; <label>:156:                                    ; preds = %155, %118
  ret void

; <label>:157:                                    ; preds = %77, %71, %39
  %158 = load i8*, i8** %5, align 8
  call void @BZ2_bzWriteClose64(i32* %13, i8* %158, i32 1, i32* %8, i32* %9, i32* %10, i32* %11)
  %159 = load i32, i32* %12, align 4
  switch i32 %159, label %164 [
    i32 -9, label %160
    i32 -3, label %161
    i32 -6, label %162
  ]

; <label>:160:                                    ; preds = %157
  call void @configError() #11
  unreachable

; <label>:161:                                    ; preds = %157
  call void @outOfMemory() #11
  unreachable

; <label>:162:                                    ; preds = %157
  br label %163

; <label>:163:                                    ; preds = %162, %117, %111, %105, %98, %88, %82, %60, %30, %25
  call void @ioError() #11
  unreachable

; <label>:164:                                    ; preds = %157
  call void @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i32 0, i32 0)) #11
  unreachable
}

declare i8* @BZ2_bzWriteOpen(i32*, %struct._IO_FILE*, i32, i32, i32) #4

declare void @BZ2_bzWrite(i32*, i8*, i8*, i32) #4

declare void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #4

; Function Attrs: noinline nounwind uwtable
define internal void @uInt64_from_UInt32s(%struct.UInt64*, i32, i32) #0 {
  %4 = alloca %struct.UInt64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = lshr i32 %7, 24
  %9 = and i32 %8, 255
  %10 = trunc i32 %9 to i8
  %11 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 7
  store i8 %10, i8* %13, align 1
  %14 = load i32, i32* %6, align 4
  %15 = lshr i32 %14, 16
  %16 = and i32 %15, 255
  %17 = trunc i32 %16 to i8
  %18 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %19 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %18, i32 0, i32 0
  %20 = getelementptr inbounds [8 x i8], [8 x i8]* %19, i64 0, i64 6
  store i8 %17, i8* %20, align 1
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 255
  %24 = trunc i32 %23 to i8
  %25 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %26 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %25, i32 0, i32 0
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %26, i64 0, i64 5
  store i8 %24, i8* %27, align 1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %32 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %31, i32 0, i32 0
  %33 = getelementptr inbounds [8 x i8], [8 x i8]* %32, i64 0, i64 4
  store i8 %30, i8* %33, align 1
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 24
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %39 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %38, i32 0, i32 0
  %40 = getelementptr inbounds [8 x i8], [8 x i8]* %39, i64 0, i64 3
  store i8 %37, i8* %40, align 1
  %41 = load i32, i32* %5, align 4
  %42 = lshr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  %45 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %46 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %45, i32 0, i32 0
  %47 = getelementptr inbounds [8 x i8], [8 x i8]* %46, i64 0, i64 2
  store i8 %44, i8* %47, align 1
  %48 = load i32, i32* %5, align 4
  %49 = lshr i32 %48, 8
  %50 = and i32 %49, 255
  %51 = trunc i32 %50 to i8
  %52 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %53 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %52, i32 0, i32 0
  %54 = getelementptr inbounds [8 x i8], [8 x i8]* %53, i64 0, i64 1
  store i8 %51, i8* %54, align 1
  %55 = load i32, i32* %5, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %59 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %58, i32 0, i32 0
  %60 = getelementptr inbounds [8 x i8], [8 x i8]* %59, i64 0, i64 0
  store i8 %57, i8* %60, align 1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal double @uInt64_to_double(%struct.UInt64*) #0 {
  %2 = alloca %struct.UInt64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.UInt64* %0, %struct.UInt64** %2, align 8
  store double 1.000000e+00, double* %4, align 8
  store double 0.000000e+00, double* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %23, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %26

; <label>:9:                                      ; preds = %6
  %10 = load double, double* %4, align 8
  %11 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %12 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %11, i32 0, i32 0
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [8 x i8], [8 x i8]* %12, i64 0, i64 %14
  %16 = load i8, i8* %15, align 1
  %17 = uitofp i8 %16 to double
  %18 = fmul double %10, %17
  %19 = load double, double* %5, align 8
  %20 = fadd double %19, %18
  store double %20, double* %5, align 8
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 2.560000e+02
  store double %22, double* %4, align 8
  br label %23

; <label>:23:                                     ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %6

; <label>:26:                                     ; preds = %6
  %27 = load double, double* %5, align 8
  ret double %27
}

; Function Attrs: noinline nounwind uwtable
define internal void @uInt64_toAscii(i8*, %struct.UInt64*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.UInt64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct.UInt64, align 1
  store i8* %0, i8** %3, align 8
  store %struct.UInt64* %1, %struct.UInt64** %4, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.UInt64*, %struct.UInt64** %4, align 8
  %11 = bitcast %struct.UInt64* %9 to i8*
  %12 = bitcast %struct.UInt64* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %11, i8* %12, i64 8, i32 1, i1 false)
  br label %13

; <label>:13:                                     ; preds = %23, %2
  %14 = call i32 @uInt64_qrm10(%struct.UInt64* %9)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, 48
  %17 = trunc i32 %16 to i8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %19
  store i8 %17, i8* %20, align 1
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %8, align 4
  br label %23

; <label>:23:                                     ; preds = %13
  %24 = call zeroext i8 @uInt64_isZero(%struct.UInt64* %9)
  %25 = icmp ne i8 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %13, label %27

; <label>:27:                                     ; preds = %23
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 0, i8* %31, align 1
  store i32 0, i32* %5, align 4
  br label %32

; <label>:32:                                     ; preds = %48, %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  store i8 %43, i8* %47, align 1
  br label %48

; <label>:48:                                     ; preds = %36
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %32

; <label>:51:                                     ; preds = %32
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #7

; Function Attrs: noinline nounwind uwtable
define internal i32 @uInt64_qrm10(%struct.UInt64*) #0 {
  %2 = alloca %struct.UInt64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 7, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %30, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %33

; <label>:9:                                      ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = mul i32 %10, 256
  %12 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %13 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %12, i32 0, i32 0
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], [8 x i8]* %13, i64 0, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = add i32 %11, %18
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = udiv i32 %20, 10
  %22 = trunc i32 %21 to i8
  %23 = load %struct.UInt64*, %struct.UInt64** %2, align 8
  %24 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %24, i64 0, i64 %26
  store i8 %22, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = urem i32 %28, 10
  store i32 %29, i32* %3, align 4
  br label %30

; <label>:30:                                     ; preds = %9
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %5, align 4
  br label %6

; <label>:33:                                     ; preds = %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @uInt64_isZero(%struct.UInt64*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.UInt64*, align 8
  %4 = alloca i32, align 4
  store %struct.UInt64* %0, %struct.UInt64** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %19, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %22

; <label>:8:                                      ; preds = %5
  %9 = load %struct.UInt64*, %struct.UInt64** %3, align 8
  %10 = getelementptr inbounds %struct.UInt64, %struct.UInt64* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [8 x i8], [8 x i8]* %10, i64 0, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %8
  store i8 0, i8* %2, align 1
  br label %23

; <label>:18:                                     ; preds = %8
  br label %19

; <label>:19:                                     ; preds = %18
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %4, align 4
  br label %5

; <label>:22:                                     ; preds = %5
  store i8 1, i8* %2, align 1
  br label %23

; <label>:23:                                     ; preds = %22, %17
  %24 = load i8, i8* %2, align 1
  ret i8 %24
}

declare i8* @BZ2_bzlibVersion() #4

; Function Attrs: noinline nounwind uwtable
define internal %struct.zzzz* @mkCell() #0 {
  %1 = alloca %struct.zzzz*, align 8
  %2 = call i8* @myMalloc(i32 16)
  %3 = bitcast i8* %2 to %struct.zzzz*
  store %struct.zzzz* %3, %struct.zzzz** %1, align 8
  %4 = load %struct.zzzz*, %struct.zzzz** %1, align 8
  %5 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %4, i32 0, i32 0
  store i8* null, i8** %5, align 8
  %6 = load %struct.zzzz*, %struct.zzzz** %1, align 8
  %7 = getelementptr inbounds %struct.zzzz, %struct.zzzz* %6, i32 0, i32 1
  store %struct.zzzz* null, %struct.zzzz** %7, align 8
  %8 = load %struct.zzzz*, %struct.zzzz** %1, align 8
  ret %struct.zzzz* %8
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @myMalloc(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = call noalias i8* @malloc(i64 %5) #8
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @outOfMemory() #11
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8
  ret i8* %11
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind
declare i8* @getenv(i8*) #1

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #6

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define %struct.tapes* @insert_tape(%struct.tapes*, i32, i8 signext) #0 {
  %4 = alloca %struct.tapes*, align 8
  %5 = alloca %struct.tapes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.tapes*, align 8
  %9 = alloca %struct.tapes*, align 8
  store %struct.tapes* %0, %struct.tapes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %10 = load %struct.tapes*, %struct.tapes** %5, align 8
  store %struct.tapes* %10, %struct.tapes** %8, align 8
  %11 = call noalias i8* @calloc(i64 1, i64 24) #8
  %12 = bitcast i8* %11 to %struct.tapes*
  store %struct.tapes* %12, %struct.tapes** %9, align 8
  %13 = load i8, i8* %7, align 1
  %14 = load %struct.tapes*, %struct.tapes** %9, align 8
  %15 = getelementptr inbounds %struct.tapes, %struct.tapes* %14, i32 0, i32 2
  store i8 %13, i8* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

; <label>:18:                                     ; preds = %3
  br label %19

; <label>:19:                                     ; preds = %24, %18
  %20 = load %struct.tapes*, %struct.tapes** %5, align 8
  %21 = getelementptr inbounds %struct.tapes, %struct.tapes* %20, i32 0, i32 0
  %22 = load %struct.tapes*, %struct.tapes** %21, align 8
  %23 = icmp ne %struct.tapes* %22, null
  br i1 %23, label %24, label %28

; <label>:24:                                     ; preds = %19
  %25 = load %struct.tapes*, %struct.tapes** %5, align 8
  %26 = getelementptr inbounds %struct.tapes, %struct.tapes* %25, i32 0, i32 0
  %27 = load %struct.tapes*, %struct.tapes** %26, align 8
  store %struct.tapes* %27, %struct.tapes** %5, align 8
  br label %19

; <label>:28:                                     ; preds = %19
  %29 = load %struct.tapes*, %struct.tapes** %5, align 8
  %30 = load %struct.tapes*, %struct.tapes** %9, align 8
  %31 = getelementptr inbounds %struct.tapes, %struct.tapes* %30, i32 0, i32 1
  store %struct.tapes* %29, %struct.tapes** %31, align 8
  %32 = load %struct.tapes*, %struct.tapes** %9, align 8
  %33 = getelementptr inbounds %struct.tapes, %struct.tapes* %32, i32 0, i32 0
  store %struct.tapes* null, %struct.tapes** %33, align 8
  %34 = load %struct.tapes*, %struct.tapes** %9, align 8
  %35 = load %struct.tapes*, %struct.tapes** %5, align 8
  %36 = getelementptr inbounds %struct.tapes, %struct.tapes* %35, i32 0, i32 0
  store %struct.tapes* %34, %struct.tapes** %36, align 8
  %37 = load %struct.tapes*, %struct.tapes** %9, align 8
  store %struct.tapes* %37, %struct.tapes** %4, align 8
  br label %61

; <label>:38:                                     ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %61

; <label>:41:                                     ; preds = %38
  br label %42

; <label>:42:                                     ; preds = %47, %41
  %43 = load %struct.tapes*, %struct.tapes** %5, align 8
  %44 = getelementptr inbounds %struct.tapes, %struct.tapes* %43, i32 0, i32 1
  %45 = load %struct.tapes*, %struct.tapes** %44, align 8
  %46 = icmp ne %struct.tapes* %45, null
  br i1 %46, label %47, label %51

; <label>:47:                                     ; preds = %42
  %48 = load %struct.tapes*, %struct.tapes** %5, align 8
  %49 = getelementptr inbounds %struct.tapes, %struct.tapes* %48, i32 0, i32 1
  %50 = load %struct.tapes*, %struct.tapes** %49, align 8
  store %struct.tapes* %50, %struct.tapes** %5, align 8
  br label %42

; <label>:51:                                     ; preds = %42
  %52 = load %struct.tapes*, %struct.tapes** %5, align 8
  %53 = load %struct.tapes*, %struct.tapes** %9, align 8
  %54 = getelementptr inbounds %struct.tapes, %struct.tapes* %53, i32 0, i32 0
  store %struct.tapes* %52, %struct.tapes** %54, align 8
  %55 = load %struct.tapes*, %struct.tapes** %9, align 8
  %56 = getelementptr inbounds %struct.tapes, %struct.tapes* %55, i32 0, i32 1
  store %struct.tapes* null, %struct.tapes** %56, align 8
  %57 = load %struct.tapes*, %struct.tapes** %9, align 8
  %58 = load %struct.tapes*, %struct.tapes** %5, align 8
  %59 = getelementptr inbounds %struct.tapes, %struct.tapes* %58, i32 0, i32 1
  store %struct.tapes* %57, %struct.tapes** %59, align 8
  %60 = load %struct.tapes*, %struct.tapes** %8, align 8
  store %struct.tapes* %60, %struct.tapes** %4, align 8
  br label %61

; <label>:61:                                     ; preds = %51, %38, %28
  %62 = load %struct.tapes*, %struct.tapes** %4, align 8
  ret %struct.tapes* %62
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) #1

; Function Attrs: noinline nounwind uwtable
define %struct.tapes* @create_tape(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tapes*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  %5 = call noalias i8* @calloc(i64 1, i64 24) #8
  %6 = bitcast i8* %5 to %struct.tapes*
  store %struct.tapes* %6, %struct.tapes** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = load %struct.tapes*, %struct.tapes** %4, align 8
  %11 = getelementptr inbounds %struct.tapes, %struct.tapes* %10, i32 0, i32 2
  store i8 %9, i8* %11, align 8
  br label %12

; <label>:12:                                     ; preds = %21, %1
  %13 = load i8*, i8** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %12
  br label %31

; <label>:21:                                     ; preds = %12
  %22 = load %struct.tapes*, %struct.tapes** %4, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = call %struct.tapes* @insert_tape(%struct.tapes* %22, i32 1, i8 signext %27)
  store %struct.tapes* %28, %struct.tapes** %4, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %12

; <label>:31:                                     ; preds = %20
  %32 = load %struct.tapes*, %struct.tapes** %4, align 8
  ret %struct.tapes* %32
}

; Function Attrs: noinline nounwind uwtable
define %struct.transition* @get_transition(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.transition*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = call noalias i8* @calloc(i64 1, i64 8) #8
  %6 = bitcast i8* %5 to %struct.transition*
  store %struct.transition* %6, %struct.transition** %3, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = load %struct.transition*, %struct.transition** %3, align 8
  %11 = getelementptr inbounds %struct.transition, %struct.transition* %10, i32 0, i32 0
  store i8 %9, i8* %11, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = load %struct.transition*, %struct.transition** %3, align 8
  %16 = getelementptr inbounds %struct.transition, %struct.transition* %15, i32 0, i32 1
  store i8 %14, i8* %16, align 1
  %17 = load i8*, i8** %2, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 2
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.transition*, %struct.transition** %3, align 8
  %21 = getelementptr inbounds %struct.transition, %struct.transition* %20, i32 0, i32 2
  store i8 %19, i8* %21, align 2
  %22 = load i8*, i8** %2, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 3
  %24 = load i8, i8* %23, align 1
  %25 = load %struct.transition*, %struct.transition** %3, align 8
  %26 = getelementptr inbounds %struct.transition, %struct.transition* %25, i32 0, i32 3
  store i8 %24, i8* %26, align 1
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 82
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.transition*, %struct.transition** %3, align 8
  %36 = getelementptr inbounds %struct.transition, %struct.transition* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.transition*, %struct.transition** %3, align 8
  ret %struct.transition* %37
}

; Function Attrs: noinline nounwind uwtable
define %struct.list* @insert_list(%struct.list*, i8*) #0 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = call noalias i8* @calloc(i64 1, i64 16) #8
  %8 = bitcast i8* %7 to %struct.list*
  store %struct.list* %8, %struct.list** %5, align 8
  %9 = load %struct.list*, %struct.list** %3, align 8
  store %struct.list* %9, %struct.list** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %15, %2
  %11 = load %struct.list*, %struct.list** %3, align 8
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  %14 = icmp ne %struct.list* %13, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %10
  %16 = load %struct.list*, %struct.list** %3, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  store %struct.list* %18, %struct.list** %3, align 8
  br label %10

; <label>:19:                                     ; preds = %10
  %20 = load i8*, i8** %4, align 8
  %21 = call %struct.transition* @get_transition(i8* %20)
  %22 = load %struct.list*, %struct.list** %5, align 8
  %23 = getelementptr inbounds %struct.list, %struct.list* %22, i32 0, i32 0
  store %struct.transition* %21, %struct.transition** %23, align 8
  %24 = load %struct.list*, %struct.list** %5, align 8
  %25 = getelementptr inbounds %struct.list, %struct.list* %24, i32 0, i32 1
  store %struct.list* null, %struct.list** %25, align 8
  %26 = load %struct.list*, %struct.list** %5, align 8
  %27 = load %struct.list*, %struct.list** %3, align 8
  %28 = getelementptr inbounds %struct.list, %struct.list* %27, i32 0, i32 1
  store %struct.list* %26, %struct.list** %28, align 8
  %29 = load %struct.list*, %struct.list** %6, align 8
  ret %struct.list* %29
}

; Function Attrs: noinline nounwind uwtable
define %struct.list* @insert_list_transition(%struct.list*, %struct.transition*) #0 {
  %3 = alloca %struct.list*, align 8
  %4 = alloca %struct.transition*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca %struct.list*, align 8
  store %struct.list* %0, %struct.list** %3, align 8
  store %struct.transition* %1, %struct.transition** %4, align 8
  %7 = call noalias i8* @calloc(i64 1, i64 16) #8
  %8 = bitcast i8* %7 to %struct.list*
  store %struct.list* %8, %struct.list** %5, align 8
  %9 = load %struct.list*, %struct.list** %3, align 8
  store %struct.list* %9, %struct.list** %6, align 8
  br label %10

; <label>:10:                                     ; preds = %15, %2
  %11 = load %struct.list*, %struct.list** %3, align 8
  %12 = getelementptr inbounds %struct.list, %struct.list* %11, i32 0, i32 1
  %13 = load %struct.list*, %struct.list** %12, align 8
  %14 = icmp ne %struct.list* %13, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %10
  %16 = load %struct.list*, %struct.list** %3, align 8
  %17 = getelementptr inbounds %struct.list, %struct.list* %16, i32 0, i32 1
  %18 = load %struct.list*, %struct.list** %17, align 8
  store %struct.list* %18, %struct.list** %3, align 8
  br label %10

; <label>:19:                                     ; preds = %10
  %20 = load %struct.transition*, %struct.transition** %4, align 8
  %21 = load %struct.list*, %struct.list** %5, align 8
  %22 = getelementptr inbounds %struct.list, %struct.list* %21, i32 0, i32 0
  store %struct.transition* %20, %struct.transition** %22, align 8
  %23 = load %struct.list*, %struct.list** %5, align 8
  %24 = getelementptr inbounds %struct.list, %struct.list* %23, i32 0, i32 1
  store %struct.list* null, %struct.list** %24, align 8
  %25 = load %struct.list*, %struct.list** %5, align 8
  %26 = load %struct.list*, %struct.list** %3, align 8
  %27 = getelementptr inbounds %struct.list, %struct.list* %26, i32 0, i32 1
  store %struct.list* %25, %struct.list** %27, align 8
  %28 = load %struct.list*, %struct.list** %6, align 8
  ret %struct.list* %28
}

; Function Attrs: noinline nounwind uwtable
define void @print_tape(%struct.tapes*, i8 signext) #0 {
  %3 = alloca %struct.tapes*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.tapes*, align 8
  store %struct.tapes* %0, %struct.tapes** %3, align 8
  store i8 %1, i8* %4, align 1
  %7 = load %struct.tapes*, %struct.tapes** %3, align 8
  store %struct.tapes* %7, %struct.tapes** %6, align 8
  br label %8

; <label>:8:                                      ; preds = %14, %2
  %9 = load %struct.tapes*, %struct.tapes** %6, align 8
  %10 = getelementptr inbounds %struct.tapes, %struct.tapes* %9, i32 0, i32 0
  %11 = load %struct.tapes*, %struct.tapes** %10, align 8
  %12 = icmp eq %struct.tapes* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %8
  br label %18

; <label>:14:                                     ; preds = %8
  %15 = load %struct.tapes*, %struct.tapes** %6, align 8
  %16 = getelementptr inbounds %struct.tapes, %struct.tapes* %15, i32 0, i32 0
  %17 = load %struct.tapes*, %struct.tapes** %16, align 8
  store %struct.tapes* %17, %struct.tapes** %6, align 8
  br label %8

; <label>:18:                                     ; preds = %13
  br label %19

; <label>:19:                                     ; preds = %23, %18
  %20 = load %struct.tapes*, %struct.tapes** %6, align 8
  %21 = icmp eq %struct.tapes* %20, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  br label %33

; <label>:23:                                     ; preds = %19
  %24 = load %struct.tapes*, %struct.tapes** %6, align 8
  %25 = getelementptr inbounds %struct.tapes, %struct.tapes* %24, i32 0, i32 2
  %26 = load i8, i8* %25, align 8
  store i8 %26, i8* %5, align 1
  %27 = load i8, i8* %5, align 1
  %28 = sext i8 %27 to i32
  %29 = call i32 @putchar(i32 %28)
  %30 = load %struct.tapes*, %struct.tapes** %6, align 8
  %31 = getelementptr inbounds %struct.tapes, %struct.tapes* %30, i32 0, i32 1
  %32 = load %struct.tapes*, %struct.tapes** %31, align 8
  store %struct.tapes* %32, %struct.tapes** %6, align 8
  br label %19

; <label>:33:                                     ; preds = %22
  %34 = call i32 @putchar(i32 10)
  ret void
}

declare i32 @putchar(i32) #4

; Function Attrs: noinline nounwind uwtable
define void @print_transition(%struct.transition*) #0 {
  %2 = alloca %struct.transition*, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca [6 x i8], align 1
  store %struct.transition* %0, %struct.transition** %2, align 8
  %5 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @print_transition.s1, i32 0, i32 0), i64 5, i32 1, i1 false)
  %6 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @print_transition.s2, i32 0, i32 0), i64 6, i32 1, i1 false)
  %7 = load %struct.transition*, %struct.transition** %2, align 8
  %8 = icmp eq %struct.transition* %7, null
  br i1 %8, label %9, label %11

; <label>:9:                                      ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.105, i32 0, i32 0))
  br label %39

; <label>:11:                                     ; preds = %1
  %12 = load %struct.transition*, %struct.transition** %2, align 8
  %13 = getelementptr inbounds %struct.transition, %struct.transition* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 4
  %15 = sext i8 %14 to i32
  %16 = load %struct.transition*, %struct.transition** %2, align 8
  %17 = getelementptr inbounds %struct.transition, %struct.transition* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load %struct.transition*, %struct.transition** %2, align 8
  %21 = getelementptr inbounds %struct.transition, %struct.transition* %20, i32 0, i32 2
  %22 = load i8, i8* %21, align 2
  %23 = sext i8 %22 to i32
  %24 = load %struct.transition*, %struct.transition** %2, align 8
  %25 = getelementptr inbounds %struct.transition, %struct.transition* %24, i32 0, i32 3
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = load %struct.transition*, %struct.transition** %2, align 8
  %29 = getelementptr inbounds %struct.transition, %struct.transition* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %11
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i32 0, i32 0
  br label %36

; <label>:34:                                     ; preds = %11
  %35 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0
  br label %36

; <label>:36:                                     ; preds = %34, %32
  %37 = phi i8* [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1.106, i32 0, i32 0), i32 %15, i32 %19, i32 %23, i32 %27, i8* %37)
  br label %39

; <label>:39:                                     ; preds = %36, %9
  ret void
}

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define i32 @contains(i8 signext, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

; <label>:7:                                      ; preds = %27, %2
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8, i8* %10, i64 %12
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %9, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %7
  store i32 1, i32* %3, align 4
  br label %30

; <label>:18:                                     ; preds = %7
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %18
  store i32 0, i32* %3, align 4
  br label %30

; <label>:27:                                     ; preds = %18
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %6, align 4
  br label %7

; <label>:30:                                     ; preds = %26, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define i32 @is_valid_input(i8*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %24, %2
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %7, align 1
  %14 = load i8, i8* %7, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %8
  br label %27

; <label>:18:                                     ; preds = %8
  %19 = load i8, i8* %7, align 1
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @contains(i8 signext %19, i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %18
  store i32 0, i32* %3, align 4
  br label %28

; <label>:24:                                     ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %8

; <label>:27:                                     ; preds = %17
  store i32 1, i32* %3, align 4
  br label %28

; <label>:28:                                     ; preds = %27, %23
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define %struct.tm* @createTM(i8 signext, i8*) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca %struct.list*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store i8 %0, i8* %3, align 1
  store i8* %1, i8** %4, align 8
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %19 [
    i32 43, label %15
    i32 45, label %16
    i32 42, label %17
    i32 47, label %18
  ]

; <label>:15:                                     ; preds = %2
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2.107, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:16:                                     ; preds = %2
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3.108, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:17:                                     ; preds = %2
  store i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.4.109, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:18:                                     ; preds = %2
  store i8* getelementptr inbounds ([480 x i8], [480 x i8]* @.str.5.110, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:19:                                     ; preds = %2
  br label %20

; <label>:20:                                     ; preds = %19, %18, %17, %16, %15
  %21 = call noalias i8* @calloc(i64 1, i64 40) #8
  %22 = bitcast i8* %21 to %struct.tm*
  store %struct.tm* %22, %struct.tm** %6, align 8
  %23 = call noalias i8* @calloc(i64 1, i64 16) #8
  %24 = bitcast i8* %23 to %struct.list*
  store %struct.list* %24, %struct.list** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25) #9
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %10, align 8
  %31 = alloca i8, i64 %29, align 16
  store i32 0, i32* %11, align 4
  br label %32

; <label>:32:                                     ; preds = %45, %20
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %31, i64 %43
  store i8 %41, i8* %44, align 1
  br label %45

; <label>:45:                                     ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %32

; <label>:48:                                     ; preds = %32
  %49 = load %struct.tm*, %struct.tm** %6, align 8
  %50 = getelementptr inbounds %struct.tm, %struct.tm* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6.111, i32 0, i32 0), i8** %50, align 8
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7.112, i32 0, i32 0), i8** %52, align 8
  %53 = load i8*, i8** %4, align 8
  store i8* %53, i8** %8, align 8
  %54 = load %struct.tm*, %struct.tm** %6, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = call i32 @is_valid_input(i8* %56, i8* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

; <label>:60:                                     ; preds = %48
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8.113, i32 0, i32 0))
  call void @exit(i32 1) #10
  unreachable

; <label>:62:                                     ; preds = %48
  %63 = load i8*, i8** %8, align 8
  %64 = load %struct.tm*, %struct.tm** %6, align 8
  %65 = getelementptr inbounds %struct.tm, %struct.tm* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load %struct.tm*, %struct.tm** %6, align 8
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %66, i32 0, i32 3
  store i8 48, i8* %67, align 8
  %68 = load %struct.tm*, %struct.tm** %6, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 4
  store i8 104, i8* %69, align 1
  %70 = load %struct.tm*, %struct.tm** %6, align 8
  %71 = getelementptr inbounds %struct.tm, %struct.tm* %70, i32 0, i32 5
  store i8 114, i8* %71, align 2
  store i8 1, i8* %12, align 1
  br label %72

; <label>:72:                                     ; preds = %84, %62
  br label %73

; <label>:73:                                     ; preds = %72
  %74 = load i8, i8* %12, align 1
  %75 = trunc i8 %74 to i1
  br i1 %75, label %76, label %78

; <label>:76:                                     ; preds = %73
  %77 = call i8* @strtok(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.114, i32 0, i32 0)) #8
  store i8* %77, i8** %8, align 8
  store i8 0, i8* %12, align 1
  br label %80

; <label>:78:                                     ; preds = %73
  %79 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9.114, i32 0, i32 0)) #8
  store i8* %79, i8** %8, align 8
  br label %80

; <label>:80:                                     ; preds = %78, %76
  %81 = load i8*, i8** %8, align 8
  %82 = icmp eq i8* %81, null
  br i1 %82, label %83, label %84

; <label>:83:                                     ; preds = %80
  br label %88

; <label>:84:                                     ; preds = %80
  %85 = load %struct.list*, %struct.list** %7, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = call %struct.list* @insert_list(%struct.list* %85, i8* %86)
  store %struct.list* %87, %struct.list** %7, align 8
  br label %72

; <label>:88:                                     ; preds = %83
  %89 = load %struct.list*, %struct.list** %7, align 8
  %90 = getelementptr inbounds %struct.list, %struct.list* %89, i32 0, i32 1
  %91 = load %struct.list*, %struct.list** %90, align 8
  %92 = load %struct.tm*, %struct.tm** %6, align 8
  %93 = getelementptr inbounds %struct.tm, %struct.tm* %92, i32 0, i32 6
  store %struct.list* %91, %struct.list** %93, align 8
  %94 = load %struct.tm*, %struct.tm** %6, align 8
  %95 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %95)
  ret %struct.tm* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #8

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #8

; Function Attrs: noinline nounwind uwtable
define %struct.transition* @find_transition(%struct.list*, i8 signext, i8 signext) #0 {
  %4 = alloca %struct.transition*, align 8
  %5 = alloca %struct.list*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.transition*, align 8
  store %struct.list* %0, %struct.list** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  br label %9

; <label>:9:                                      ; preds = %34, %3
  %10 = load %struct.list*, %struct.list** %5, align 8
  %11 = icmp eq %struct.list* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  store %struct.transition* null, %struct.transition** %4, align 8
  br label %38

; <label>:13:                                     ; preds = %9
  %14 = load %struct.list*, %struct.list** %5, align 8
  %15 = getelementptr inbounds %struct.list, %struct.list* %14, i32 0, i32 0
  %16 = load %struct.transition*, %struct.transition** %15, align 8
  store %struct.transition* %16, %struct.transition** %8, align 8
  %17 = load %struct.transition*, %struct.transition** %8, align 8
  %18 = getelementptr inbounds %struct.transition, %struct.transition* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 4
  %20 = sext i8 %19 to i32
  %21 = load i8, i8* %6, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %34

; <label>:24:                                     ; preds = %13
  %25 = load %struct.transition*, %struct.transition** %8, align 8
  %26 = getelementptr inbounds %struct.transition, %struct.transition* %25, i32 0, i32 1
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = load i8, i8* %7, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %24
  %33 = load %struct.transition*, %struct.transition** %8, align 8
  store %struct.transition* %33, %struct.transition** %4, align 8
  br label %38

; <label>:34:                                     ; preds = %24, %13
  %35 = load %struct.list*, %struct.list** %5, align 8
  %36 = getelementptr inbounds %struct.list, %struct.list* %35, i32 0, i32 1
  %37 = load %struct.list*, %struct.list** %36, align 8
  store %struct.list* %37, %struct.list** %5, align 8
  br label %9

; <label>:38:                                     ; preds = %32, %12
  %39 = load %struct.transition*, %struct.transition** %4, align 8
  ret %struct.transition* %39
}

; Function Attrs: noinline nounwind uwtable
define %struct.tapes* @move(%struct.tapes*, i32, i8 signext) #0 {
  %4 = alloca %struct.tapes*, align 8
  %5 = alloca %struct.tapes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.tapes* %0, %struct.tapes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %23

; <label>:10:                                     ; preds = %3
  %11 = load %struct.tapes*, %struct.tapes** %5, align 8
  %12 = getelementptr inbounds %struct.tapes, %struct.tapes* %11, i32 0, i32 0
  %13 = load %struct.tapes*, %struct.tapes** %12, align 8
  %14 = icmp eq %struct.tapes* %13, null
  br i1 %14, label %15, label %19

; <label>:15:                                     ; preds = %10
  %16 = load %struct.tapes*, %struct.tapes** %5, align 8
  %17 = load i8, i8* %7, align 1
  %18 = call %struct.tapes* @insert_tape(%struct.tapes* %16, i32 0, i8 signext %17)
  br label %19

; <label>:19:                                     ; preds = %15, %10
  %20 = load %struct.tapes*, %struct.tapes** %5, align 8
  %21 = getelementptr inbounds %struct.tapes, %struct.tapes* %20, i32 0, i32 0
  %22 = load %struct.tapes*, %struct.tapes** %21, align 8
  store %struct.tapes* %22, %struct.tapes** %4, align 8
  br label %40

; <label>:23:                                     ; preds = %3
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %39

; <label>:26:                                     ; preds = %23
  %27 = load %struct.tapes*, %struct.tapes** %5, align 8
  %28 = getelementptr inbounds %struct.tapes, %struct.tapes* %27, i32 0, i32 1
  %29 = load %struct.tapes*, %struct.tapes** %28, align 8
  %30 = icmp eq %struct.tapes* %29, null
  br i1 %30, label %31, label %35

; <label>:31:                                     ; preds = %26
  %32 = load %struct.tapes*, %struct.tapes** %5, align 8
  %33 = load i8, i8* %7, align 1
  %34 = call %struct.tapes* @insert_tape(%struct.tapes* %32, i32 1, i8 signext %33)
  br label %35

; <label>:35:                                     ; preds = %31, %26
  %36 = load %struct.tapes*, %struct.tapes** %5, align 8
  %37 = getelementptr inbounds %struct.tapes, %struct.tapes* %36, i32 0, i32 1
  %38 = load %struct.tapes*, %struct.tapes** %37, align 8
  store %struct.tapes* %38, %struct.tapes** %4, align 8
  br label %40

; <label>:39:                                     ; preds = %23
  store %struct.tapes* null, %struct.tapes** %4, align 8
  br label %40

; <label>:40:                                     ; preds = %39, %35, %19
  %41 = load %struct.tapes*, %struct.tapes** %4, align 8
  ret %struct.tapes* %41
}

; Function Attrs: noinline nounwind uwtable
define i32 @count_tape(%struct.tapes*) #0 {
  %2 = alloca %struct.tapes*, align 8
  %3 = alloca %struct.tapes*, align 8
  %4 = alloca i32, align 4
  store %struct.tapes* %0, %struct.tapes** %2, align 8
  %5 = load %struct.tapes*, %struct.tapes** %2, align 8
  store %struct.tapes* %5, %struct.tapes** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

; <label>:6:                                      ; preds = %11, %1
  %7 = load %struct.tapes*, %struct.tapes** %3, align 8
  %8 = getelementptr inbounds %struct.tapes, %struct.tapes* %7, i32 0, i32 0
  %9 = load %struct.tapes*, %struct.tapes** %8, align 8
  %10 = icmp ne %struct.tapes* %9, null
  br i1 %10, label %11, label %15

; <label>:11:                                     ; preds = %6
  %12 = load %struct.tapes*, %struct.tapes** %3, align 8
  %13 = getelementptr inbounds %struct.tapes, %struct.tapes* %12, i32 0, i32 0
  %14 = load %struct.tapes*, %struct.tapes** %13, align 8
  store %struct.tapes* %14, %struct.tapes** %3, align 8
  br label %6

; <label>:15:                                     ; preds = %6
  br label %16

; <label>:16:                                     ; preds = %30, %15
  %17 = load %struct.tapes*, %struct.tapes** %3, align 8
  %18 = getelementptr inbounds %struct.tapes, %struct.tapes* %17, i32 0, i32 1
  %19 = load %struct.tapes*, %struct.tapes** %18, align 8
  %20 = icmp ne %struct.tapes* %19, null
  br i1 %20, label %21, label %34

; <label>:21:                                     ; preds = %16
  %22 = load %struct.tapes*, %struct.tapes** %3, align 8
  %23 = getelementptr inbounds %struct.tapes, %struct.tapes* %22, i32 0, i32 2
  %24 = load i8, i8* %23, align 8
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 46
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %27, %21
  %31 = load %struct.tapes*, %struct.tapes** %3, align 8
  %32 = getelementptr inbounds %struct.tapes, %struct.tapes* %31, i32 0, i32 1
  %33 = load %struct.tapes*, %struct.tapes** %32, align 8
  store %struct.tapes* %33, %struct.tapes** %3, align 8
  br label %16

; <label>:34:                                     ; preds = %16
  %35 = load %struct.tapes*, %struct.tapes** %3, align 8
  %36 = getelementptr inbounds %struct.tapes, %struct.tapes* %35, i32 0, i32 2
  %37 = load i8, i8* %36, align 8
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 46
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %34
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %43

; <label>:43:                                     ; preds = %40, %34
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

; Function Attrs: noinline nounwind uwtable
define i32 @simulate(%struct.tm*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.tapes*, align 8
  %7 = alloca %struct.tapes*, align 8
  %8 = alloca i8, align 1
  %9 = alloca %struct.transition*, align 8
  %10 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  %11 = load %struct.tm*, %struct.tm** %3, align 8
  %12 = getelementptr inbounds %struct.tm, %struct.tm* %11, i32 0, i32 2
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 0
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %4, align 1
  %16 = load %struct.tm*, %struct.tm** %3, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 3
  %18 = load i8, i8* %17, align 8
  store i8 %18, i8* %5, align 1
  %19 = load %struct.tm*, %struct.tm** %3, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call %struct.tapes* @create_tape(i8* %21)
  store %struct.tapes* %22, %struct.tapes** %6, align 8
  %23 = load %struct.tapes*, %struct.tapes** %6, align 8
  store %struct.tapes* %23, %struct.tapes** %7, align 8
  br label %24

; <label>:24:                                     ; preds = %65, %1
  %25 = load i8, i8* %5, align 1
  %26 = sext i8 %25 to i32
  %27 = load %struct.tm*, %struct.tm** %3, align 8
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %27, i32 0, i32 4
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %36

; <label>:32:                                     ; preds = %24
  %33 = load %struct.tapes*, %struct.tapes** %6, align 8
  %34 = call i32 @count_tape(%struct.tapes* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %2, align 4
  br label %88

; <label>:36:                                     ; preds = %24
  %37 = load i8, i8* %5, align 1
  %38 = sext i8 %37 to i32
  %39 = load %struct.tm*, %struct.tm** %3, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 5
  %41 = load i8, i8* %40, align 2
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %38, %42
  br i1 %43, label %44, label %48

; <label>:44:                                     ; preds = %36
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10.115, i32 0, i32 0))
  %46 = load %struct.tapes*, %struct.tapes** %6, align 8
  %47 = load i8, i8* %4, align 1
  call void @print_tape(%struct.tapes* %46, i8 signext %47)
  store i32 -1, i32* %2, align 4
  br label %88

; <label>:48:                                     ; preds = %36
  %49 = load %struct.tapes*, %struct.tapes** %7, align 8
  %50 = icmp eq %struct.tapes* %49, null
  br i1 %50, label %57, label %51

; <label>:51:                                     ; preds = %48
  %52 = load %struct.tapes*, %struct.tapes** %7, align 8
  %53 = getelementptr inbounds %struct.tapes, %struct.tapes* %52, i32 0, i32 2
  %54 = load i8, i8* %53, align 8
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %51, %48
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  br label %65

; <label>:60:                                     ; preds = %51
  %61 = load %struct.tapes*, %struct.tapes** %7, align 8
  %62 = getelementptr inbounds %struct.tapes, %struct.tapes* %61, i32 0, i32 2
  %63 = load i8, i8* %62, align 8
  %64 = sext i8 %63 to i32
  br label %65

; <label>:65:                                     ; preds = %60, %57
  %66 = phi i32 [ %59, %57 ], [ %64, %60 ]
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %8, align 1
  %68 = load %struct.tm*, %struct.tm** %3, align 8
  %69 = getelementptr inbounds %struct.tm, %struct.tm* %68, i32 0, i32 6
  %70 = load %struct.list*, %struct.list** %69, align 8
  %71 = load i8, i8* %5, align 1
  %72 = load i8, i8* %8, align 1
  %73 = call %struct.transition* @find_transition(%struct.list* %70, i8 signext %71, i8 signext %72)
  store %struct.transition* %73, %struct.transition** %9, align 8
  %74 = load %struct.transition*, %struct.transition** %9, align 8
  %75 = getelementptr inbounds %struct.transition, %struct.transition* %74, i32 0, i32 2
  %76 = load i8, i8* %75, align 2
  store i8 %76, i8* %5, align 1
  %77 = load %struct.transition*, %struct.transition** %9, align 8
  %78 = getelementptr inbounds %struct.transition, %struct.transition* %77, i32 0, i32 3
  %79 = load i8, i8* %78, align 1
  %80 = load %struct.tapes*, %struct.tapes** %7, align 8
  %81 = getelementptr inbounds %struct.tapes, %struct.tapes* %80, i32 0, i32 2
  store i8 %79, i8* %81, align 8
  %82 = load %struct.tapes*, %struct.tapes** %7, align 8
  %83 = load %struct.transition*, %struct.transition** %9, align 8
  %84 = getelementptr inbounds %struct.transition, %struct.transition* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load i8, i8* %4, align 1
  %87 = call %struct.tapes* @move(%struct.tapes* %82, i32 %85, i8 signext %86)
  store %struct.tapes* %87, %struct.tapes** %7, align 8
  br label %24

; <label>:88:                                     ; preds = %44, %32
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

; Function Attrs: noinline nounwind uwtable
define i32 @compare(i8 signext, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tm*, align 8
  %7 = alloca i32, align 4
  store i8 %0, i8* %4, align 1
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.tm* @createTM(i8 signext 45, i8* %8)
  store %struct.tm* %9, %struct.tm** %6, align 8
  %10 = load %struct.tm*, %struct.tm** %6, align 8
  %11 = call i32 @simulate(%struct.tm* %10)
  store i32 %11, i32* %7, align 4
  %12 = load i8, i8* %4, align 1
  %13 = sext i8 %12 to i32
  switch i32 %13, label %39 [
    i32 1, label %14
    i32 2, label %19
    i32 3, label %24
    i32 4, label %29
    i32 5, label %34
  ]

; <label>:14:                                     ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %3, align 4
  br label %40

; <label>:19:                                     ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp sgt i32 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 1, i32 0
  store i32 %23, i32* %3, align 4
  br label %40

; <label>:24:                                     ; preds = %2
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %3, align 4
  br label %40

; <label>:29:                                     ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = icmp sge i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %3, align 4
  br label %40

; <label>:34:                                     ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 1, i32 0
  store i32 %38, i32* %3, align 4
  br label %40

; <label>:39:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

; <label>:40:                                     ; preds = %39, %34, %29, %24, %19, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

; Function Attrs: noinline nounwind uwtable
define void @parsetm(%struct.tm*) #0 {
  %2 = alloca %struct.tm*, align 8
  store %struct.tm* %0, %struct.tm** %2, align 8
  %3 = load %struct.tm*, %struct.tm** %2, align 8
  %4 = getelementptr inbounds %struct.tm, %struct.tm* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.tm*, %struct.tm** %2, align 8
  %7 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 1
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.tm*, %struct.tm** %2, align 8
  %10 = getelementptr inbounds %struct.tm, %struct.tm* %9, i32 0, i32 2
  %11 = load i8*, i8** %10, align 8
  %12 = load %struct.tm*, %struct.tm** %2, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 3
  %14 = load i8, i8* %13, align 8
  %15 = sext i8 %14 to i32
  %16 = load %struct.tm*, %struct.tm** %2, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 4
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load %struct.tm*, %struct.tm** %2, align 8
  %21 = getelementptr inbounds %struct.tm, %struct.tm* %20, i32 0, i32 5
  %22 = load i8, i8* %21, align 2
  %23 = sext i8 %22 to i32
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.11.116, i32 0, i32 0), i8* %5, i8* %8, i8* %11, i32 %15, i32 %19, i32 %23)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @calculator(i32, i32, i8 signext) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.tm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  %17 = load i8, i8* %7, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %84 [
    i32 43, label %19
    i32 45, label %44
    i32 42, label %69
    i32 47, label %76
  ]

; <label>:19:                                     ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %20, %21
  %23 = icmp sge i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 -1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %26, %27
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %43

; <label>:30:                                     ; preds = %19
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %38

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 0, %35
  %37 = call i32 @calculator(i32 %34, i32 %36, i8 signext 45)
  store i32 %37, i32* %4, align 4
  br label %156

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @calculator(i32 %39, i32 %41, i8 signext 45)
  store i32 %42, i32* %4, align 4
  br label %156

; <label>:43:                                     ; preds = %19
  br label %85

; <label>:44:                                     ; preds = %3
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %45, %46
  %48 = icmp sge i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 -1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = mul nsw i32 %51, %52
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %68

; <label>:55:                                     ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %55
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = sub nsw i32 0, %60
  %62 = call i32 @calculator(i32 %59, i32 %61, i8 signext 43)
  store i32 %62, i32* %4, align 4
  br label %156

; <label>:63:                                     ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @calculator(i32 %64, i32 %66, i8 signext 43)
  store i32 %67, i32* %4, align 4
  br label %156

; <label>:68:                                     ; preds = %44
  br label %85

; <label>:69:                                     ; preds = %3
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = mul nsw i32 %70, %71
  %73 = icmp sge i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 1, i32 -1
  store i32 %75, i32* %9, align 4
  br label %85

; <label>:76:                                     ; preds = %3
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sdiv i32 %77, %78
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %82

; <label>:81:                                     ; preds = %76
  store i32 1, i32* %9, align 4
  br label %83

; <label>:82:                                     ; preds = %76
  store i32 -1, i32* %9, align 4
  br label %83

; <label>:83:                                     ; preds = %82, %81
  br label %85

; <label>:84:                                     ; preds = %3
  br label %85

; <label>:85:                                     ; preds = %84, %83, %69, %68, %43
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @abs(i32 %86) #12
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @abs(i32 %88) #12
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %11, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %97

; <label>:93:                                     ; preds = %85
  %94 = load i32, i32* %10, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %10, align 4
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %11, align 4
  br label %97

; <label>:97:                                     ; preds = %93, %85
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %98, %99
  %101 = add nsw i32 %100, 4
  %102 = zext i32 %101 to i64
  %103 = call i8* @llvm.stacksave()
  store i8* %103, i8** %13, align 8
  %104 = alloca i8, i64 %102, align 16
  %105 = getelementptr inbounds i8, i8* %104, i64 0
  store i8 42, i8* %105, align 16
  store i32 1, i32* %14, align 4
  br label %106

; <label>:106:                                    ; preds = %115, %97
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 1, %108
  %110 = icmp slt i32 %107, %109
  br i1 %110, label %111, label %118

; <label>:111:                                    ; preds = %106
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %104, i64 %113
  store i8 46, i8* %114, align 1
  br label %115

; <label>:115:                                    ; preds = %111
  %116 = load i32, i32* %14, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %14, align 4
  br label %106

; <label>:118:                                    ; preds = %106
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %104, i64 %120
  store i8 42, i8* %121, align 1
  %122 = load i32, i32* %14, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %15, align 4
  br label %124

; <label>:124:                                    ; preds = %135, %118
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %126, %127
  %129 = add nsw i32 %128, 2
  %130 = icmp slt i32 %125, %129
  br i1 %130, label %131, label %138

; <label>:131:                                    ; preds = %124
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8, i8* %104, i64 %133
  store i8 46, i8* %134, align 1
  br label %135

; <label>:135:                                    ; preds = %131
  %136 = load i32, i32* %15, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %15, align 4
  br label %124

; <label>:138:                                    ; preds = %124
  %139 = load i32, i32* %15, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %104, i64 %140
  store i8 42, i8* %141, align 1
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %142, %143
  %145 = add nsw i32 %144, 3
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %104, i64 %146
  store i8 0, i8* %147, align 1
  %148 = load i8, i8* %7, align 1
  %149 = call %struct.tm* @createTM(i8 signext %148, i8* %104)
  store %struct.tm* %149, %struct.tm** %8, align 8
  %150 = load %struct.tm*, %struct.tm** %8, align 8
  %151 = call i32 @simulate(%struct.tm* %150)
  %152 = load i32, i32* %9, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %16, align 4
  %154 = load i32, i32* %16, align 4
  store i32 %154, i32* %4, align 4
  %155 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %155)
  br label %156

; <label>:156:                                    ; preds = %138, %63, %58, %38, %33
  %157 = load i32, i32* %4, align 4
  ret i32 %157
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #6

; Function Attrs: noinline nounwind uwtable
define i32 @ext_callee(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %90 [
    i32 32, label %10
    i32 33, label %18
    i32 34, label %26
    i32 35, label %34
    i32 36, label %42
    i32 37, label %50
    i32 38, label %58
    i32 39, label %66
    i32 40, label %74
    i32 41, label %82
  ]

; <label>:10:                                     ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @calculator(i32 %11, i32 %12, i8 signext 45)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %7, align 4
  br label %91

; <label>:18:                                     ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @calculator(i32 %19, i32 %20, i8 signext 45)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  store i32 %25, i32* %7, align 4
  br label %26

; <label>:26:                                     ; preds = %18, %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @calculator(i32 %27, i32 %28, i8 signext 45)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %7, align 4
  br label %91

; <label>:34:                                     ; preds = %3
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @calculator(i32 %35, i32 %36, i8 signext 45)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sge i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %7, align 4
  br label %91

; <label>:42:                                     ; preds = %3
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @calculator(i32 %43, i32 %44, i8 signext 45)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %7, align 4
  br label %91

; <label>:50:                                     ; preds = %3
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @calculator(i32 %51, i32 %52, i8 signext 45)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp sle i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  store i32 %57, i32* %7, align 4
  br label %91

; <label>:58:                                     ; preds = %3
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @calculator(i32 %59, i32 %60, i8 signext 45)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  store i32 %65, i32* %7, align 4
  br label %91

; <label>:66:                                     ; preds = %3
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @calculator(i32 %67, i32 %68, i8 signext 45)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp sge i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 1, i32 0
  store i32 %73, i32* %7, align 4
  br label %91

; <label>:74:                                     ; preds = %3
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @calculator(i32 %75, i32 %76, i8 signext 45)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  store i32 %81, i32* %7, align 4
  br label %91

; <label>:82:                                     ; preds = %3
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @calculator(i32 %83, i32 %84, i8 signext 45)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp sle i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i32 1, i32 0
  store i32 %89, i32* %7, align 4
  br label %91

; <label>:90:                                     ; preds = %3
  br label %91

; <label>:91:                                     ; preds = %90, %82, %74, %66, %58, %50, %42, %34, %26, %10
  %92 = load i32, i32* %7, align 4
  ret i32 %92
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline noreturn nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind readnone }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 5.0.0 "}
