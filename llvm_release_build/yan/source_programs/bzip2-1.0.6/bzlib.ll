; ModuleID = 'bzlib.c'
source_filename = "bzlib.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }
%struct.EState = type { %struct.bz_stream*, i32, i32, i32, i32*, i32*, i32*, i32, i32*, i8*, i16*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x i8], [256 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [258 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [258 x [4 x i32]] }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bzFile = type { %struct._IO_FILE*, [5000 x i8], i32, i8, %struct.bz_stream, i32, i8 }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [443 x i8] c"\0A\0Abzip2/libbzip2: internal error number %d.\0AThis is a bug in bzip2/libbzip2, %s.\0APlease report it to me at: jseward@bzip.org.  If this happened\0Awhen you were using some program which uses libbzip2 as a\0Acomponent, you should also report this bug to the author(s)\0Aof that program.  Please make an effort to report this bug;\0Atimely and accurate bug reports eventually lead to higher\0Aquality software.  Thanks.  Julian Seward, 10 December 2007.\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [1057 x i8] c"\0A*** A special note about internal error number 1007 ***\0A\0AExperience suggests that a common cause of i.e. 1007\0Ais unreliable memory or other hardware.  The 1007 assertion\0Ajust happens to cross-check the results of huge numbers of\0Amemory reads/writes, and so acts (unintendedly) as a stress\0Atest of your memory system.\0A\0AI suggest the following: try compressing the file again,\0Apossibly monitoring progress in detail with the -vv flag.\0A\0A* If the error cannot be reproduced, and/or happens at different\0A  points in compression, you may have a flaky memory system.\0A  Try a memory-test program.  I have used Memtest86\0A  (www.memtest86.com).  At the time of writing it is free (GPLd).\0A  Memtest86 tests memory much more thorougly than your BIOSs\0A  power-on test, and may find failures that the BIOS doesn't.\0A\0A* If the error can be repeatably reproduced, this is a bug in\0A  bzip2, and I would very much like to hear about it.  Please\0A  let me know, and, ideally, save a copy of the file causing the\0A  problem -- without which I will be unable to investigate it.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c" {0x%08x, 0x%08x}\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"\0A    combined CRCs: stored = 0x%08x, computed = 0x%08x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"1.0.6, 6-Sept-2010\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@stdout = external global %struct._IO_FILE*, align 8
@bzerrorstrings = internal global [16 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i32 0, i32 0)], align 16
@BZ2_crc32Table = external global [256 x i32], align 16
@BZ2_rNums = external global [512 x i32], align 16
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.9 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"SEQUENCE_ERROR\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PARAM_ERROR\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"MEM_ERROR\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"DATA_ERROR\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"DATA_ERROR_MAGIC\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"IO_ERROR\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"UNEXPECTED_EOF\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"OUTBUFF_FULL\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CONFIG_ERROR\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"???\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bz__AssertH__fail(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i8* @BZ2_bzlibVersion()
  %6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([443 x i8], [443 x i8]* @.str, i32 0, i32 0), i32 %4, i8* %5)
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, 1007
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([1057 x i8], [1057 x i8]* @.str.1, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %9, %1
  call void @exit(i32 3) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzlibVersion() #0 {
  ret i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i32 0, i32 0)
}

; Function Attrs: noreturn nounwind
declare void @exit(i32) #2

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzCompressInit(%struct.bz_stream*, i32, i32, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bz_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = call i32 @bz_config_ok()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %4
  store i32 -9, i32* %5, align 4
  br label %245

; <label>:15:                                     ; preds = %4
  %16 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %17 = icmp eq %struct.bz_stream* %16, null
  br i1 %17, label %30, label %18

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 1
  br i1 %20, label %30, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i32, i32* %7, align 4
  %23 = icmp sgt i32 %22, 9
  br i1 %23, label %30, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %30, label %27

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 250
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27, %24, %21, %18, %15
  store i32 -2, i32* %5, align 4
  br label %245

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  store i32 30, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %31
  %36 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %37 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 9
  %38 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %37, align 8
  %39 = icmp eq i8* (i8*, i32, i32)* %38, null
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %35
  %41 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %42 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %41, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %42, align 8
  br label %43

; <label>:43:                                     ; preds = %40, %35
  %44 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 10
  %46 = load void (i8*, i8*)*, void (i8*, i8*)** %45, align 8
  %47 = icmp eq void (i8*, i8*)* %46, null
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %43
  %49 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %49, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %43
  %52 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %53 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %52, i32 0, i32 9
  %54 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %53, align 8
  %55 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %56 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %55, i32 0, i32 11
  %57 = load i8*, i8** %56, align 8
  %58 = call i8* %54(i8* %57, i32 55768, i32 1)
  %59 = bitcast i8* %58 to %struct.EState*
  store %struct.EState* %59, %struct.EState** %11, align 8
  %60 = load %struct.EState*, %struct.EState** %11, align 8
  %61 = icmp eq %struct.EState* %60, null
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %51
  store i32 -3, i32* %5, align 4
  br label %245

; <label>:63:                                     ; preds = %51
  %64 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %65 = load %struct.EState*, %struct.EState** %11, align 8
  %66 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 0
  store %struct.bz_stream* %64, %struct.bz_stream** %66, align 8
  %67 = load %struct.EState*, %struct.EState** %11, align 8
  %68 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 4
  store i32* null, i32** %68, align 8
  %69 = load %struct.EState*, %struct.EState** %11, align 8
  %70 = getelementptr inbounds %struct.EState, %struct.EState* %69, i32 0, i32 5
  store i32* null, i32** %70, align 8
  %71 = load %struct.EState*, %struct.EState** %11, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 6
  store i32* null, i32** %72, align 8
  %73 = load i32, i32* %7, align 4
  %74 = mul nsw i32 100000, %73
  store i32 %74, i32* %10, align 4
  %75 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %75, i32 0, i32 9
  %77 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %76, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 11
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = mul i64 %82, 4
  %84 = trunc i64 %83 to i32
  %85 = call i8* %77(i8* %80, i32 %84, i32 1)
  %86 = bitcast i8* %85 to i32*
  %87 = load %struct.EState*, %struct.EState** %11, align 8
  %88 = getelementptr inbounds %struct.EState, %struct.EState* %87, i32 0, i32 4
  store i32* %86, i32** %88, align 8
  %89 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %90 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %89, i32 0, i32 9
  %91 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %90, align 8
  %92 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %93 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %92, i32 0, i32 11
  %94 = load i8*, i8** %93, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 34
  %97 = sext i32 %96 to i64
  %98 = mul i64 %97, 4
  %99 = trunc i64 %98 to i32
  %100 = call i8* %91(i8* %94, i32 %99, i32 1)
  %101 = bitcast i8* %100 to i32*
  %102 = load %struct.EState*, %struct.EState** %11, align 8
  %103 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 5
  store i32* %101, i32** %103, align 8
  %104 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %105 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %104, i32 0, i32 9
  %106 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %105, align 8
  %107 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 11
  %109 = load i8*, i8** %108, align 8
  %110 = call i8* %106(i8* %109, i32 262148, i32 1)
  %111 = bitcast i8* %110 to i32*
  %112 = load %struct.EState*, %struct.EState** %11, align 8
  %113 = getelementptr inbounds %struct.EState, %struct.EState* %112, i32 0, i32 6
  store i32* %111, i32** %113, align 8
  %114 = load %struct.EState*, %struct.EState** %11, align 8
  %115 = getelementptr inbounds %struct.EState, %struct.EState* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %128, label %118

; <label>:118:                                    ; preds = %63
  %119 = load %struct.EState*, %struct.EState** %11, align 8
  %120 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 5
  %121 = load i32*, i32** %120, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %128, label %123

; <label>:123:                                    ; preds = %118
  %124 = load %struct.EState*, %struct.EState** %11, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %189

; <label>:128:                                    ; preds = %123, %118, %63
  %129 = load %struct.EState*, %struct.EState** %11, align 8
  %130 = getelementptr inbounds %struct.EState, %struct.EState* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %144

; <label>:133:                                    ; preds = %128
  %134 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %135 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %134, i32 0, i32 10
  %136 = load void (i8*, i8*)*, void (i8*, i8*)** %135, align 8
  %137 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %138 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %137, i32 0, i32 11
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.EState*, %struct.EState** %11, align 8
  %141 = getelementptr inbounds %struct.EState, %struct.EState* %140, i32 0, i32 4
  %142 = load i32*, i32** %141, align 8
  %143 = bitcast i32* %142 to i8*
  call void %136(i8* %139, i8* %143)
  br label %144

; <label>:144:                                    ; preds = %133, %128
  %145 = load %struct.EState*, %struct.EState** %11, align 8
  %146 = getelementptr inbounds %struct.EState, %struct.EState* %145, i32 0, i32 5
  %147 = load i32*, i32** %146, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %160

; <label>:149:                                    ; preds = %144
  %150 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %150, i32 0, i32 10
  %152 = load void (i8*, i8*)*, void (i8*, i8*)** %151, align 8
  %153 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %153, i32 0, i32 11
  %155 = load i8*, i8** %154, align 8
  %156 = load %struct.EState*, %struct.EState** %11, align 8
  %157 = getelementptr inbounds %struct.EState, %struct.EState* %156, i32 0, i32 5
  %158 = load i32*, i32** %157, align 8
  %159 = bitcast i32* %158 to i8*
  call void %152(i8* %155, i8* %159)
  br label %160

; <label>:160:                                    ; preds = %149, %144
  %161 = load %struct.EState*, %struct.EState** %11, align 8
  %162 = getelementptr inbounds %struct.EState, %struct.EState* %161, i32 0, i32 6
  %163 = load i32*, i32** %162, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %176

; <label>:165:                                    ; preds = %160
  %166 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %167 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %166, i32 0, i32 10
  %168 = load void (i8*, i8*)*, void (i8*, i8*)** %167, align 8
  %169 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %170 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %169, i32 0, i32 11
  %171 = load i8*, i8** %170, align 8
  %172 = load %struct.EState*, %struct.EState** %11, align 8
  %173 = getelementptr inbounds %struct.EState, %struct.EState* %172, i32 0, i32 6
  %174 = load i32*, i32** %173, align 8
  %175 = bitcast i32* %174 to i8*
  call void %168(i8* %171, i8* %175)
  br label %176

; <label>:176:                                    ; preds = %165, %160
  %177 = load %struct.EState*, %struct.EState** %11, align 8
  %178 = icmp ne %struct.EState* %177, null
  br i1 %178, label %179, label %188

; <label>:179:                                    ; preds = %176
  %180 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %181 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 10
  %182 = load void (i8*, i8*)*, void (i8*, i8*)** %181, align 8
  %183 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %184 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %183, i32 0, i32 11
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.EState*, %struct.EState** %11, align 8
  %187 = bitcast %struct.EState* %186 to i8*
  call void %182(i8* %185, i8* %187)
  br label %188

; <label>:188:                                    ; preds = %179, %176
  store i32 -3, i32* %5, align 4
  br label %245

; <label>:189:                                    ; preds = %123
  %190 = load %struct.EState*, %struct.EState** %11, align 8
  %191 = getelementptr inbounds %struct.EState, %struct.EState* %190, i32 0, i32 29
  store i32 0, i32* %191, align 4
  %192 = load %struct.EState*, %struct.EState** %11, align 8
  %193 = getelementptr inbounds %struct.EState, %struct.EState* %192, i32 0, i32 2
  store i32 2, i32* %193, align 4
  %194 = load %struct.EState*, %struct.EState** %11, align 8
  %195 = getelementptr inbounds %struct.EState, %struct.EState* %194, i32 0, i32 1
  store i32 2, i32* %195, align 8
  %196 = load %struct.EState*, %struct.EState** %11, align 8
  %197 = getelementptr inbounds %struct.EState, %struct.EState* %196, i32 0, i32 27
  store i32 0, i32* %197, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load %struct.EState*, %struct.EState** %11, align 8
  %200 = getelementptr inbounds %struct.EState, %struct.EState* %199, i32 0, i32 30
  store i32 %198, i32* %200, align 8
  %201 = load i32, i32* %7, align 4
  %202 = mul nsw i32 100000, %201
  %203 = sub nsw i32 %202, 19
  %204 = load %struct.EState*, %struct.EState** %11, align 8
  %205 = getelementptr inbounds %struct.EState, %struct.EState* %204, i32 0, i32 18
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load %struct.EState*, %struct.EState** %11, align 8
  %208 = getelementptr inbounds %struct.EState, %struct.EState* %207, i32 0, i32 28
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.EState*, %struct.EState** %11, align 8
  %211 = getelementptr inbounds %struct.EState, %struct.EState* %210, i32 0, i32 12
  store i32 %209, i32* %211, align 8
  %212 = load %struct.EState*, %struct.EState** %11, align 8
  %213 = getelementptr inbounds %struct.EState, %struct.EState* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = bitcast i32* %214 to i8*
  %216 = load %struct.EState*, %struct.EState** %11, align 8
  %217 = getelementptr inbounds %struct.EState, %struct.EState* %216, i32 0, i32 9
  store i8* %215, i8** %217, align 8
  %218 = load %struct.EState*, %struct.EState** %11, align 8
  %219 = getelementptr inbounds %struct.EState, %struct.EState* %218, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = bitcast i32* %220 to i16*
  %222 = load %struct.EState*, %struct.EState** %11, align 8
  %223 = getelementptr inbounds %struct.EState, %struct.EState* %222, i32 0, i32 10
  store i16* %221, i16** %223, align 8
  %224 = load %struct.EState*, %struct.EState** %11, align 8
  %225 = getelementptr inbounds %struct.EState, %struct.EState* %224, i32 0, i32 11
  store i8* null, i8** %225, align 8
  %226 = load %struct.EState*, %struct.EState** %11, align 8
  %227 = getelementptr inbounds %struct.EState, %struct.EState* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.EState*, %struct.EState** %11, align 8
  %230 = getelementptr inbounds %struct.EState, %struct.EState* %229, i32 0, i32 8
  store i32* %228, i32** %230, align 8
  %231 = load %struct.EState*, %struct.EState** %11, align 8
  %232 = bitcast %struct.EState* %231 to i8*
  %233 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %234 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %233, i32 0, i32 8
  store i8* %232, i8** %234, align 8
  %235 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %236 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %235, i32 0, i32 2
  store i32 0, i32* %236, align 4
  %237 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %238 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %237, i32 0, i32 3
  store i32 0, i32* %238, align 8
  %239 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %239, i32 0, i32 6
  store i32 0, i32* %240, align 4
  %241 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %242 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %241, i32 0, i32 7
  store i32 0, i32* %242, align 8
  %243 = load %struct.EState*, %struct.EState** %11, align 8
  call void @init_RL(%struct.EState* %243)
  %244 = load %struct.EState*, %struct.EState** %11, align 8
  call void @prepare_new_block(%struct.EState* %244)
  store i32 0, i32* %5, align 4
  br label %245

; <label>:245:                                    ; preds = %189, %188, %62, %30, %14
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bz_config_ok() #0 {
  ret i32 1
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @default_bzalloc(i8*, i32, i32) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = mul nsw i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = call noalias i8* @malloc(i64 %11) #8
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  ret i8* %13
}

; Function Attrs: noinline nounwind uwtable
define internal void @default_bzfree(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** %4, align 8
  call void @free(i8* %8) #8
  br label %9

; <label>:9:                                      ; preds = %7, %2
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_RL(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %2, align 8
  %3 = load %struct.EState*, %struct.EState** %2, align 8
  %4 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 13
  store i32 256, i32* %4, align 4
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 14
  store i32 0, i32* %6, align 8
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @prepare_new_block(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i32, align 4
  store %struct.EState* %0, %struct.EState** %2, align 8
  %4 = load %struct.EState*, %struct.EState** %2, align 8
  %5 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 17
  store i32 0, i32* %5, align 4
  %6 = load %struct.EState*, %struct.EState** %2, align 8
  %7 = getelementptr inbounds %struct.EState, %struct.EState* %6, i32 0, i32 19
  store i32 0, i32* %7, align 4
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  %9 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 20
  store i32 0, i32* %9, align 8
  %10 = load %struct.EState*, %struct.EState** %2, align 8
  %11 = getelementptr inbounds %struct.EState, %struct.EState* %10, i32 0, i32 26
  store i32 -1, i32* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

; <label>:12:                                     ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 256
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %12
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 22
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [256 x i8], [256 x i8]* %17, i64 0, i64 %19
  store i8 0, i8* %20, align 1
  br label %21

; <label>:21:                                     ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %12

; <label>:24:                                     ; preds = %12
  %25 = load %struct.EState*, %struct.EState** %2, align 8
  %26 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 29
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzCompress(%struct.bz_stream*, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bz_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %9 = icmp eq %struct.bz_stream* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:11:                                     ; preds = %2
  %12 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %13 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %12, i32 0, i32 8
  %14 = load i8*, i8** %13, align 8
  %15 = bitcast i8* %14 to %struct.EState*
  store %struct.EState* %15, %struct.EState** %7, align 8
  %16 = load %struct.EState*, %struct.EState** %7, align 8
  %17 = icmp eq %struct.EState* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %11
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:19:                                     ; preds = %11
  %20 = load %struct.EState*, %struct.EState** %7, align 8
  %21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 0
  %22 = load %struct.bz_stream*, %struct.bz_stream** %21, align 8
  %23 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %24 = icmp ne %struct.bz_stream* %22, %23
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %19
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:26:                                     ; preds = %19
  br label %27

; <label>:27:                                     ; preds = %57, %46, %26
  %28 = load %struct.EState*, %struct.EState** %7, align 8
  %29 = getelementptr inbounds %struct.EState, %struct.EState* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  switch i32 %30, label %146 [
    i32 1, label %31
    i32 2, label %32
    i32 3, label %66
    i32 4, label %104
  ]

; <label>:31:                                     ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:32:                                     ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %43

; <label>:35:                                     ; preds = %32
  %36 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %37 = call zeroext i8 @handle_compress(%struct.bz_stream* %36)
  store i8 %37, i8* %6, align 1
  %38 = load i8, i8* %6, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 -2
  store i32 %42, i32* %3, align 4
  br label %147

; <label>:43:                                     ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %43
  %47 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.EState*, %struct.EState** %7, align 8
  %51 = getelementptr inbounds %struct.EState, %struct.EState* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.EState*, %struct.EState** %7, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 1
  store i32 3, i32* %53, align 8
  br label %27

; <label>:54:                                     ; preds = %43
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %65

; <label>:57:                                     ; preds = %54
  %58 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %59 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.EState*, %struct.EState** %7, align 8
  %62 = getelementptr inbounds %struct.EState, %struct.EState* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.EState*, %struct.EState** %7, align 8
  %64 = getelementptr inbounds %struct.EState, %struct.EState* %63, i32 0, i32 1
  store i32 4, i32* %64, align 8
  br label %27

; <label>:65:                                     ; preds = %54
  store i32 -2, i32* %3, align 4
  br label %147

; <label>:66:                                     ; preds = %27
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 1
  br i1 %68, label %69, label %70

; <label>:69:                                     ; preds = %66
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:70:                                     ; preds = %66
  %71 = load %struct.EState*, %struct.EState** %7, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.EState*, %struct.EState** %7, align 8
  %75 = getelementptr inbounds %struct.EState, %struct.EState* %74, i32 0, i32 0
  %76 = load %struct.bz_stream*, %struct.bz_stream** %75, align 8
  %77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %73, %78
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %70
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:81:                                     ; preds = %70
  %82 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %83 = call zeroext i8 @handle_compress(%struct.bz_stream* %82)
  store i8 %83, i8* %6, align 1
  %84 = load %struct.EState*, %struct.EState** %7, align 8
  %85 = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ugt i32 %86, 0
  br i1 %87, label %100, label %88

; <label>:88:                                     ; preds = %81
  %89 = load %struct.EState*, %struct.EState** %7, align 8
  %90 = call zeroext i8 @isempty_RL(%struct.EState* %89)
  %91 = icmp ne i8 %90, 0
  br i1 %91, label %92, label %100

; <label>:92:                                     ; preds = %88
  %93 = load %struct.EState*, %struct.EState** %7, align 8
  %94 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 20
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.EState*, %struct.EState** %7, align 8
  %97 = getelementptr inbounds %struct.EState, %struct.EState* %96, i32 0, i32 19
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %101

; <label>:100:                                    ; preds = %92, %88, %81
  store i32 2, i32* %3, align 4
  br label %147

; <label>:101:                                    ; preds = %92
  %102 = load %struct.EState*, %struct.EState** %7, align 8
  %103 = getelementptr inbounds %struct.EState, %struct.EState* %102, i32 0, i32 1
  store i32 2, i32* %103, align 8
  store i32 1, i32* %3, align 4
  br label %147

; <label>:104:                                    ; preds = %27
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 2
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %104
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:108:                                    ; preds = %104
  %109 = load %struct.EState*, %struct.EState** %7, align 8
  %110 = getelementptr inbounds %struct.EState, %struct.EState* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.EState*, %struct.EState** %7, align 8
  %113 = getelementptr inbounds %struct.EState, %struct.EState* %112, i32 0, i32 0
  %114 = load %struct.bz_stream*, %struct.bz_stream** %113, align 8
  %115 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %111, %116
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %108
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:119:                                    ; preds = %108
  %120 = load %struct.bz_stream*, %struct.bz_stream** %4, align 8
  %121 = call zeroext i8 @handle_compress(%struct.bz_stream* %120)
  store i8 %121, i8* %6, align 1
  %122 = load i8, i8* %6, align 1
  %123 = icmp ne i8 %122, 0
  br i1 %123, label %125, label %124

; <label>:124:                                    ; preds = %119
  store i32 -1, i32* %3, align 4
  br label %147

; <label>:125:                                    ; preds = %119
  %126 = load %struct.EState*, %struct.EState** %7, align 8
  %127 = getelementptr inbounds %struct.EState, %struct.EState* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = icmp ugt i32 %128, 0
  br i1 %129, label %142, label %130

; <label>:130:                                    ; preds = %125
  %131 = load %struct.EState*, %struct.EState** %7, align 8
  %132 = call zeroext i8 @isempty_RL(%struct.EState* %131)
  %133 = icmp ne i8 %132, 0
  br i1 %133, label %134, label %142

; <label>:134:                                    ; preds = %130
  %135 = load %struct.EState*, %struct.EState** %7, align 8
  %136 = getelementptr inbounds %struct.EState, %struct.EState* %135, i32 0, i32 20
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.EState*, %struct.EState** %7, align 8
  %139 = getelementptr inbounds %struct.EState, %struct.EState* %138, i32 0, i32 19
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %143

; <label>:142:                                    ; preds = %134, %130, %125
  store i32 3, i32* %3, align 4
  br label %147

; <label>:143:                                    ; preds = %134
  %144 = load %struct.EState*, %struct.EState** %7, align 8
  %145 = getelementptr inbounds %struct.EState, %struct.EState* %144, i32 0, i32 1
  store i32 1, i32* %145, align 8
  store i32 4, i32* %3, align 4
  br label %147

; <label>:146:                                    ; preds = %27
  store i32 0, i32* %3, align 4
  br label %147

; <label>:147:                                    ; preds = %146, %143, %142, %124, %118, %107, %101, %100, %80, %69, %65, %35, %31, %25, %18, %10
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @handle_compress(%struct.bz_stream*) #0 {
  %2 = alloca %struct.bz_stream*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %2, align 8
  store i8 0, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %6 = load %struct.bz_stream*, %struct.bz_stream** %2, align 8
  %7 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %6, i32 0, i32 8
  %8 = load i8*, i8** %7, align 8
  %9 = bitcast i8* %8 to %struct.EState*
  store %struct.EState* %9, %struct.EState** %5, align 8
  br label %10

; <label>:10:                                     ; preds = %1, %123
  %11 = load %struct.EState*, %struct.EState** %5, align 8
  %12 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %67

; <label>:15:                                     ; preds = %10
  %16 = load %struct.EState*, %struct.EState** %5, align 8
  %17 = call zeroext i8 @copy_output_until_stop(%struct.EState* %16)
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %4, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load %struct.EState*, %struct.EState** %5, align 8
  %24 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 20
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.EState*, %struct.EState** %5, align 8
  %27 = getelementptr inbounds %struct.EState, %struct.EState* %26, i32 0, i32 19
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %15
  br label %124

; <label>:31:                                     ; preds = %15
  %32 = load %struct.EState*, %struct.EState** %5, align 8
  %33 = getelementptr inbounds %struct.EState, %struct.EState* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 4
  br i1 %35, label %36, label %47

; <label>:36:                                     ; preds = %31
  %37 = load %struct.EState*, %struct.EState** %5, align 8
  %38 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

; <label>:41:                                     ; preds = %36
  %42 = load %struct.EState*, %struct.EState** %5, align 8
  %43 = call zeroext i8 @isempty_RL(%struct.EState* %42)
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %41
  br label %124

; <label>:47:                                     ; preds = %41, %36, %31
  %48 = load %struct.EState*, %struct.EState** %5, align 8
  call void @prepare_new_block(%struct.EState* %48)
  %49 = load %struct.EState*, %struct.EState** %5, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 2
  store i32 2, i32* %50, align 4
  %51 = load %struct.EState*, %struct.EState** %5, align 8
  %52 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 3
  br i1 %54, label %55, label %66

; <label>:55:                                     ; preds = %47
  %56 = load %struct.EState*, %struct.EState** %5, align 8
  %57 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

; <label>:60:                                     ; preds = %55
  %61 = load %struct.EState*, %struct.EState** %5, align 8
  %62 = call zeroext i8 @isempty_RL(%struct.EState* %61)
  %63 = zext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %60
  br label %124

; <label>:66:                                     ; preds = %60, %55, %47
  br label %67

; <label>:67:                                     ; preds = %66, %10
  %68 = load %struct.EState*, %struct.EState** %5, align 8
  %69 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %123

; <label>:72:                                     ; preds = %67
  %73 = load %struct.EState*, %struct.EState** %5, align 8
  %74 = call zeroext i8 @copy_input_until_stop(%struct.EState* %73)
  %75 = zext i8 %74 to i32
  %76 = load i8, i8* %3, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %3, align 1
  %80 = load %struct.EState*, %struct.EState** %5, align 8
  %81 = getelementptr inbounds %struct.EState, %struct.EState* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 2
  br i1 %83, label %84, label %100

; <label>:84:                                     ; preds = %72
  %85 = load %struct.EState*, %struct.EState** %5, align 8
  %86 = getelementptr inbounds %struct.EState, %struct.EState* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %100

; <label>:89:                                     ; preds = %84
  %90 = load %struct.EState*, %struct.EState** %5, align 8
  call void @flush_RL(%struct.EState* %90)
  %91 = load %struct.EState*, %struct.EState** %5, align 8
  %92 = load %struct.EState*, %struct.EState** %5, align 8
  %93 = getelementptr inbounds %struct.EState, %struct.EState* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 4
  %96 = zext i1 %95 to i32
  %97 = trunc i32 %96 to i8
  call void @BZ2_compressBlock(%struct.EState* %91, i8 zeroext %97)
  %98 = load %struct.EState*, %struct.EState** %5, align 8
  %99 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 2
  store i32 1, i32* %99, align 4
  br label %122

; <label>:100:                                    ; preds = %84, %72
  %101 = load %struct.EState*, %struct.EState** %5, align 8
  %102 = getelementptr inbounds %struct.EState, %struct.EState* %101, i32 0, i32 17
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.EState*, %struct.EState** %5, align 8
  %105 = getelementptr inbounds %struct.EState, %struct.EState* %104, i32 0, i32 18
  %106 = load i32, i32* %105, align 8
  %107 = icmp sge i32 %103, %106
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %100
  %109 = load %struct.EState*, %struct.EState** %5, align 8
  call void @BZ2_compressBlock(%struct.EState* %109, i8 zeroext 0)
  %110 = load %struct.EState*, %struct.EState** %5, align 8
  %111 = getelementptr inbounds %struct.EState, %struct.EState* %110, i32 0, i32 2
  store i32 1, i32* %111, align 4
  br label %121

; <label>:112:                                    ; preds = %100
  %113 = load %struct.EState*, %struct.EState** %5, align 8
  %114 = getelementptr inbounds %struct.EState, %struct.EState* %113, i32 0, i32 0
  %115 = load %struct.bz_stream*, %struct.bz_stream** %114, align 8
  %116 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %112
  br label %124

; <label>:120:                                    ; preds = %112
  br label %121

; <label>:121:                                    ; preds = %120, %108
  br label %122

; <label>:122:                                    ; preds = %121, %89
  br label %123

; <label>:123:                                    ; preds = %122, %67
  br label %10

; <label>:124:                                    ; preds = %119, %65, %46, %30
  %125 = load i8, i8* %3, align 1
  %126 = zext i8 %125 to i32
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %132, label %128

; <label>:128:                                    ; preds = %124
  %129 = load i8, i8* %4, align 1
  %130 = zext i8 %129 to i32
  %131 = icmp ne i32 %130, 0
  br label %132

; <label>:132:                                    ; preds = %128, %124
  %133 = phi i1 [ true, %124 ], [ %131, %128 ]
  %134 = zext i1 %133 to i32
  %135 = trunc i32 %134 to i8
  ret i8 %135
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @isempty_RL(%struct.EState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %3, align 8
  %4 = load %struct.EState*, %struct.EState** %3, align 8
  %5 = getelementptr inbounds %struct.EState, %struct.EState* %4, i32 0, i32 13
  %6 = load i32, i32* %5, align 4
  %7 = icmp ult i32 %6, 256
  br i1 %7, label %8, label %14

; <label>:8:                                      ; preds = %1
  %9 = load %struct.EState*, %struct.EState** %3, align 8
  %10 = getelementptr inbounds %struct.EState, %struct.EState* %9, i32 0, i32 14
  %11 = load i32, i32* %10, align 8
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %8
  store i8 0, i8* %2, align 1
  br label %15

; <label>:14:                                     ; preds = %8, %1
  store i8 1, i8* %2, align 1
  br label %15

; <label>:15:                                     ; preds = %14, %13
  %16 = load i8, i8* %2, align 1
  ret i8 %16
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzCompressEnd(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca %struct.EState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %5 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %6 = icmp eq %struct.bz_stream* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.EState*
  store %struct.EState* %12, %struct.EState** %4, align 8
  %13 = load %struct.EState*, %struct.EState** %4, align 8
  %14 = icmp eq %struct.EState* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %8
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:16:                                     ; preds = %8
  %17 = load %struct.EState*, %struct.EState** %4, align 8
  %18 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 0
  %19 = load %struct.bz_stream*, %struct.bz_stream** %18, align 8
  %20 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %21 = icmp ne %struct.bz_stream* %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  store i32 -2, i32* %2, align 4
  br label %83

; <label>:23:                                     ; preds = %16
  %24 = load %struct.EState*, %struct.EState** %4, align 8
  %25 = getelementptr inbounds %struct.EState, %struct.EState* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %23
  %29 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %31 = load void (i8*, i8*)*, void (i8*, i8*)** %30, align 8
  %32 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 11
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.EState*, %struct.EState** %4, align 8
  %36 = getelementptr inbounds %struct.EState, %struct.EState* %35, i32 0, i32 4
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  call void %31(i8* %34, i8* %38)
  br label %39

; <label>:39:                                     ; preds = %28, %23
  %40 = load %struct.EState*, %struct.EState** %4, align 8
  %41 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 5
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %39
  %45 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %45, i32 0, i32 10
  %47 = load void (i8*, i8*)*, void (i8*, i8*)** %46, align 8
  %48 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 11
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.EState*, %struct.EState** %4, align 8
  %52 = getelementptr inbounds %struct.EState, %struct.EState* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  call void %47(i8* %50, i8* %54)
  br label %55

; <label>:55:                                     ; preds = %44, %39
  %56 = load %struct.EState*, %struct.EState** %4, align 8
  %57 = getelementptr inbounds %struct.EState, %struct.EState* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %71

; <label>:60:                                     ; preds = %55
  %61 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %63 = load void (i8*, i8*)*, void (i8*, i8*)** %62, align 8
  %64 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 11
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.EState*, %struct.EState** %4, align 8
  %68 = getelementptr inbounds %struct.EState, %struct.EState* %67, i32 0, i32 6
  %69 = load i32*, i32** %68, align 8
  %70 = bitcast i32* %69 to i8*
  call void %63(i8* %66, i8* %70)
  br label %71

; <label>:71:                                     ; preds = %60, %55
  %72 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %73 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 10
  %74 = load void (i8*, i8*)*, void (i8*, i8*)** %73, align 8
  %75 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %76 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %75, i32 0, i32 11
  %77 = load i8*, i8** %76, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 8
  %80 = load i8*, i8** %79, align 8
  call void %74(i8* %77, i8* %80)
  %81 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %82 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %81, i32 0, i32 8
  store i8* null, i8** %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

; <label>:83:                                     ; preds = %71, %22, %15, %7
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzDecompressInit(%struct.bz_stream*, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bz_stream*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.DState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = call i32 @bz_config_ok()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

; <label>:11:                                     ; preds = %3
  store i32 -9, i32* %4, align 4
  br label %97

; <label>:12:                                     ; preds = %3
  %13 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %14 = icmp eq %struct.bz_stream* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:16:                                     ; preds = %12
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %16
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:23:                                     ; preds = %19, %16
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 4
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26, %23
  store i32 -2, i32* %4, align 4
  br label %97

; <label>:30:                                     ; preds = %26
  %31 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 9
  %33 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %32, align 8
  %34 = icmp eq i8* (i8*, i32, i32)* %33, null
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %30
  %36 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %37 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %36, i32 0, i32 9
  store i8* (i8*, i32, i32)* @default_bzalloc, i8* (i8*, i32, i32)** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %35, %30
  %39 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %39, i32 0, i32 10
  %41 = load void (i8*, i8*)*, void (i8*, i8*)** %40, align 8
  %42 = icmp eq void (i8*, i8*)* %41, null
  br i1 %42, label %43, label %46

; <label>:43:                                     ; preds = %38
  %44 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 10
  store void (i8*, i8*)* @default_bzfree, void (i8*, i8*)** %45, align 8
  br label %46

; <label>:46:                                     ; preds = %43, %38
  %47 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %48 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %47, i32 0, i32 9
  %49 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %48, align 8
  %50 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %50, i32 0, i32 11
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* %49(i8* %52, i32 64144, i32 1)
  %54 = bitcast i8* %53 to %struct.DState*
  store %struct.DState* %54, %struct.DState** %8, align 8
  %55 = load %struct.DState*, %struct.DState** %8, align 8
  %56 = icmp eq %struct.DState* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %46
  store i32 -3, i32* %4, align 4
  br label %97

; <label>:58:                                     ; preds = %46
  %59 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %60 = load %struct.DState*, %struct.DState** %8, align 8
  %61 = getelementptr inbounds %struct.DState, %struct.DState* %60, i32 0, i32 0
  store %struct.bz_stream* %59, %struct.bz_stream** %61, align 8
  %62 = load %struct.DState*, %struct.DState** %8, align 8
  %63 = bitcast %struct.DState* %62 to i8*
  %64 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 8
  store i8* %63, i8** %65, align 8
  %66 = load %struct.DState*, %struct.DState** %8, align 8
  %67 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 1
  store i32 10, i32* %67, align 8
  %68 = load %struct.DState*, %struct.DState** %8, align 8
  %69 = getelementptr inbounds %struct.DState, %struct.DState* %68, i32 0, i32 8
  store i32 0, i32* %69, align 4
  %70 = load %struct.DState*, %struct.DState** %8, align 8
  %71 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 7
  store i32 0, i32* %71, align 8
  %72 = load %struct.DState*, %struct.DState** %8, align 8
  %73 = getelementptr inbounds %struct.DState, %struct.DState* %72, i32 0, i32 26
  store i32 0, i32* %73, align 4
  %74 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 2
  store i32 0, i32* %75, align 4
  %76 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %77 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %76, i32 0, i32 3
  store i32 0, i32* %77, align 8
  %78 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 6
  store i32 0, i32* %79, align 4
  %80 = load %struct.bz_stream*, %struct.bz_stream** %5, align 8
  %81 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 7
  store i32 0, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  %83 = trunc i32 %82 to i8
  %84 = load %struct.DState*, %struct.DState** %8, align 8
  %85 = getelementptr inbounds %struct.DState, %struct.DState* %84, i32 0, i32 10
  store i8 %83, i8* %85, align 4
  %86 = load %struct.DState*, %struct.DState** %8, align 8
  %87 = getelementptr inbounds %struct.DState, %struct.DState* %86, i32 0, i32 22
  store i8* null, i8** %87, align 8
  %88 = load %struct.DState*, %struct.DState** %8, align 8
  %89 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 21
  store i16* null, i16** %89, align 8
  %90 = load %struct.DState*, %struct.DState** %8, align 8
  %91 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 20
  store i32* null, i32** %91, align 8
  %92 = load %struct.DState*, %struct.DState** %8, align 8
  %93 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 11
  store i32 0, i32* %93, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.DState*, %struct.DState** %8, align 8
  %96 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 12
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

; <label>:97:                                     ; preds = %58, %57, %29, %22, %15, %11
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_indexIntoF(i32, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 256, i32* %6, align 4
  br label %8

; <label>:8:                                      ; preds = %25, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %9, %10
  %12 = ashr i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %13, %18
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %8
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %5, align 4
  br label %24

; <label>:22:                                     ; preds = %8
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %6, align 4
  br label %24

; <label>:24:                                     ; preds = %22, %20
  br label %25

; <label>:25:                                     ; preds = %24
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %8, label %30

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzDecompress(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.DState*, align 8
  %6 = alloca i32, align 4
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %7 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %8 = icmp eq %struct.bz_stream* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:10:                                     ; preds = %1
  %11 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %12 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %11, i32 0, i32 8
  %13 = load i8*, i8** %12, align 8
  %14 = bitcast i8* %13 to %struct.DState*
  store %struct.DState* %14, %struct.DState** %5, align 8
  %15 = load %struct.DState*, %struct.DState** %5, align 8
  %16 = icmp eq %struct.DState* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %10
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:18:                                     ; preds = %10
  %19 = load %struct.DState*, %struct.DState** %5, align 8
  %20 = getelementptr inbounds %struct.DState, %struct.DState* %19, i32 0, i32 0
  %21 = load %struct.bz_stream*, %struct.bz_stream** %20, align 8
  %22 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %23 = icmp ne %struct.bz_stream* %21, %22
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  store i32 -2, i32* %2, align 4
  br label %170

; <label>:25:                                     ; preds = %18
  br label %26

; <label>:26:                                     ; preds = %25, %169
  %27 = load %struct.DState*, %struct.DState** %5, align 8
  %28 = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  store i32 -1, i32* %2, align 4
  br label %170

; <label>:32:                                     ; preds = %26
  %33 = load %struct.DState*, %struct.DState** %5, align 8
  %34 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 2
  br i1 %36, label %37, label %126

; <label>:37:                                     ; preds = %32
  %38 = load %struct.DState*, %struct.DState** %5, align 8
  %39 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 10
  %40 = load i8, i8* %39, align 4
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %37
  %43 = load %struct.DState*, %struct.DState** %5, align 8
  %44 = call zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState* %43)
  store i8 %44, i8* %4, align 1
  br label %48

; <label>:45:                                     ; preds = %37
  %46 = load %struct.DState*, %struct.DState** %5, align 8
  %47 = call zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState* %46)
  store i8 %47, i8* %4, align 1
  br label %48

; <label>:48:                                     ; preds = %45, %42
  %49 = load i8, i8* %4, align 1
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %48
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:52:                                     ; preds = %48
  %53 = load %struct.DState*, %struct.DState** %5, align 8
  %54 = getelementptr inbounds %struct.DState, %struct.DState* %53, i32 0, i32 17
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.DState*, %struct.DState** %5, align 8
  %57 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 51
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  %60 = icmp eq i32 %55, %59
  br i1 %60, label %61, label %124

; <label>:61:                                     ; preds = %52
  %62 = load %struct.DState*, %struct.DState** %5, align 8
  %63 = getelementptr inbounds %struct.DState, %struct.DState* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %124

; <label>:66:                                     ; preds = %61
  %67 = load %struct.DState*, %struct.DState** %5, align 8
  %68 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 25
  %69 = load i32, i32* %68, align 8
  %70 = xor i32 %69, -1
  %71 = load %struct.DState*, %struct.DState** %5, align 8
  %72 = getelementptr inbounds %struct.DState, %struct.DState* %71, i32 0, i32 25
  store i32 %70, i32* %72, align 8
  %73 = load %struct.DState*, %struct.DState** %5, align 8
  %74 = getelementptr inbounds %struct.DState, %struct.DState* %73, i32 0, i32 12
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %75, 3
  br i1 %76, label %77, label %86

; <label>:77:                                     ; preds = %66
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %79 = load %struct.DState*, %struct.DState** %5, align 8
  %80 = getelementptr inbounds %struct.DState, %struct.DState* %79, i32 0, i32 23
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.DState*, %struct.DState** %5, align 8
  %83 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 25
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i32 0, i32 0), i32 %81, i32 %84)
  br label %86

; <label>:86:                                     ; preds = %77, %66
  %87 = load %struct.DState*, %struct.DState** %5, align 8
  %88 = getelementptr inbounds %struct.DState, %struct.DState* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 4
  %90 = icmp sge i32 %89, 2
  br i1 %90, label %91, label %94

; <label>:91:                                     ; preds = %86
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %93 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %94

; <label>:94:                                     ; preds = %91, %86
  %95 = load %struct.DState*, %struct.DState** %5, align 8
  %96 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 25
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.DState*, %struct.DState** %5, align 8
  %99 = getelementptr inbounds %struct.DState, %struct.DState* %98, i32 0, i32 23
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %103

; <label>:102:                                    ; preds = %94
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:103:                                    ; preds = %94
  %104 = load %struct.DState*, %struct.DState** %5, align 8
  %105 = getelementptr inbounds %struct.DState, %struct.DState* %104, i32 0, i32 26
  %106 = load i32, i32* %105, align 4
  %107 = shl i32 %106, 1
  %108 = load %struct.DState*, %struct.DState** %5, align 8
  %109 = getelementptr inbounds %struct.DState, %struct.DState* %108, i32 0, i32 26
  %110 = load i32, i32* %109, align 4
  %111 = lshr i32 %110, 31
  %112 = or i32 %107, %111
  %113 = load %struct.DState*, %struct.DState** %5, align 8
  %114 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 26
  store i32 %112, i32* %114, align 4
  %115 = load %struct.DState*, %struct.DState** %5, align 8
  %116 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 25
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.DState*, %struct.DState** %5, align 8
  %119 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 26
  %120 = load i32, i32* %119, align 4
  %121 = xor i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.DState*, %struct.DState** %5, align 8
  %123 = getelementptr inbounds %struct.DState, %struct.DState* %122, i32 0, i32 1
  store i32 14, i32* %123, align 8
  br label %125

; <label>:124:                                    ; preds = %61, %52
  store i32 0, i32* %2, align 4
  br label %170

; <label>:125:                                    ; preds = %103
  br label %126

; <label>:126:                                    ; preds = %125, %32
  %127 = load %struct.DState*, %struct.DState** %5, align 8
  %128 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 10
  br i1 %130, label %131, label %169

; <label>:131:                                    ; preds = %126
  %132 = load %struct.DState*, %struct.DState** %5, align 8
  %133 = call i32 @BZ2_decompress(%struct.DState* %132)
  store i32 %133, i32* %6, align 4
  %134 = load i32, i32* %6, align 4
  %135 = icmp eq i32 %134, 4
  br i1 %135, label %136, label %161

; <label>:136:                                    ; preds = %131
  %137 = load %struct.DState*, %struct.DState** %5, align 8
  %138 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 12
  %139 = load i32, i32* %138, align 4
  %140 = icmp sge i32 %139, 3
  br i1 %140, label %141, label %150

; <label>:141:                                    ; preds = %136
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %143 = load %struct.DState*, %struct.DState** %5, align 8
  %144 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 24
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.DState*, %struct.DState** %5, align 8
  %147 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 26
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %142, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i32 %145, i32 %148)
  br label %150

; <label>:150:                                    ; preds = %141, %136
  %151 = load %struct.DState*, %struct.DState** %5, align 8
  %152 = getelementptr inbounds %struct.DState, %struct.DState* %151, i32 0, i32 26
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.DState*, %struct.DState** %5, align 8
  %155 = getelementptr inbounds %struct.DState, %struct.DState* %154, i32 0, i32 24
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %153, %156
  br i1 %157, label %158, label %159

; <label>:158:                                    ; preds = %150
  store i32 -4, i32* %2, align 4
  br label %170

; <label>:159:                                    ; preds = %150
  %160 = load i32, i32* %6, align 4
  store i32 %160, i32* %2, align 4
  br label %170

; <label>:161:                                    ; preds = %131
  %162 = load %struct.DState*, %struct.DState** %5, align 8
  %163 = getelementptr inbounds %struct.DState, %struct.DState* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 2
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %161
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %2, align 4
  br label %170

; <label>:168:                                    ; preds = %161
  br label %169

; <label>:169:                                    ; preds = %168, %126
  br label %26

; <label>:170:                                    ; preds = %166, %159, %158, %124, %102, %51, %31, %24, %17, %9
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_SMALL(%struct.DState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DState*, align 8
  %4 = alloca i8, align 1
  store %struct.DState* %0, %struct.DState** %3, align 8
  %5 = load %struct.DState*, %struct.DState** %3, align 8
  %6 = getelementptr inbounds %struct.DState, %struct.DState* %5, i32 0, i32 4
  %7 = load i8, i8* %6, align 4
  %8 = icmp ne i8 %7, 0
  br i1 %8, label %9, label %664

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %9, %220, %228, %338, %346, %456, %464, %645
  br label %11

; <label>:11:                                     ; preds = %10, %88
  %12 = load %struct.DState*, %struct.DState** %3, align 8
  %13 = getelementptr inbounds %struct.DState, %struct.DState* %12, i32 0, i32 0
  %14 = load %struct.bz_stream*, %struct.bz_stream** %13, align 8
  %15 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %11
  store i8 0, i8* %2, align 1
  br label %1119

; <label>:19:                                     ; preds = %11
  %20 = load %struct.DState*, %struct.DState** %3, align 8
  %21 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  br label %89

; <label>:25:                                     ; preds = %19
  %26 = load %struct.DState*, %struct.DState** %3, align 8
  %27 = getelementptr inbounds %struct.DState, %struct.DState* %26, i32 0, i32 2
  %28 = load i8, i8* %27, align 4
  %29 = load %struct.DState*, %struct.DState** %3, align 8
  %30 = getelementptr inbounds %struct.DState, %struct.DState* %29, i32 0, i32 0
  %31 = load %struct.bz_stream*, %struct.bz_stream** %30, align 8
  %32 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %31, i32 0, i32 4
  %33 = load i8*, i8** %32, align 8
  store i8 %28, i8* %33, align 1
  %34 = load %struct.DState*, %struct.DState** %3, align 8
  %35 = getelementptr inbounds %struct.DState, %struct.DState* %34, i32 0, i32 25
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 8
  %38 = load %struct.DState*, %struct.DState** %3, align 8
  %39 = getelementptr inbounds %struct.DState, %struct.DState* %38, i32 0, i32 25
  %40 = load i32, i32* %39, align 8
  %41 = lshr i32 %40, 24
  %42 = load %struct.DState*, %struct.DState** %3, align 8
  %43 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 2
  %44 = load i8, i8* %43, align 4
  %45 = zext i8 %44 to i32
  %46 = xor i32 %41, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %37, %49
  %51 = load %struct.DState*, %struct.DState** %3, align 8
  %52 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 25
  store i32 %50, i32* %52, align 8
  %53 = load %struct.DState*, %struct.DState** %3, align 8
  %54 = getelementptr inbounds %struct.DState, %struct.DState* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.DState*, %struct.DState** %3, align 8
  %58 = getelementptr inbounds %struct.DState, %struct.DState* %57, i32 0, i32 0
  %59 = load %struct.bz_stream*, %struct.bz_stream** %58, align 8
  %60 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %59, i32 0, i32 4
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  %63 = load %struct.DState*, %struct.DState** %3, align 8
  %64 = getelementptr inbounds %struct.DState, %struct.DState* %63, i32 0, i32 0
  %65 = load %struct.bz_stream*, %struct.bz_stream** %64, align 8
  %66 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = add i32 %67, -1
  store i32 %68, i32* %66, align 8
  %69 = load %struct.DState*, %struct.DState** %3, align 8
  %70 = getelementptr inbounds %struct.DState, %struct.DState* %69, i32 0, i32 0
  %71 = load %struct.bz_stream*, %struct.bz_stream** %70, align 8
  %72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.DState*, %struct.DState** %3, align 8
  %76 = getelementptr inbounds %struct.DState, %struct.DState* %75, i32 0, i32 0
  %77 = load %struct.bz_stream*, %struct.bz_stream** %76, align 8
  %78 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 6
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

; <label>:81:                                     ; preds = %25
  %82 = load %struct.DState*, %struct.DState** %3, align 8
  %83 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 0
  %84 = load %struct.bz_stream*, %struct.bz_stream** %83, align 8
  %85 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = add i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

; <label>:88:                                     ; preds = %81, %25
  br label %11

; <label>:89:                                     ; preds = %24
  %90 = load %struct.DState*, %struct.DState** %3, align 8
  %91 = getelementptr inbounds %struct.DState, %struct.DState* %90, i32 0, i32 17
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.DState*, %struct.DState** %3, align 8
  %94 = getelementptr inbounds %struct.DState, %struct.DState* %93, i32 0, i32 51
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  %97 = icmp eq i32 %92, %96
  br i1 %97, label %98, label %99

; <label>:98:                                     ; preds = %89
  store i8 0, i8* %2, align 1
  br label %1119

; <label>:99:                                     ; preds = %89
  %100 = load %struct.DState*, %struct.DState** %3, align 8
  %101 = getelementptr inbounds %struct.DState, %struct.DState* %100, i32 0, i32 17
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.DState*, %struct.DState** %3, align 8
  %104 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 51
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  %107 = icmp sgt i32 %102, %106
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %99
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:109:                                    ; preds = %99
  %110 = load %struct.DState*, %struct.DState** %3, align 8
  %111 = getelementptr inbounds %struct.DState, %struct.DState* %110, i32 0, i32 3
  store i32 1, i32* %111, align 8
  %112 = load %struct.DState*, %struct.DState** %3, align 8
  %113 = getelementptr inbounds %struct.DState, %struct.DState* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 8
  %115 = trunc i32 %114 to i8
  %116 = load %struct.DState*, %struct.DState** %3, align 8
  %117 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 2
  store i8 %115, i8* %117, align 4
  %118 = load %struct.DState*, %struct.DState** %3, align 8
  %119 = getelementptr inbounds %struct.DState, %struct.DState* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.DState*, %struct.DState** %3, align 8
  %122 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 9
  %123 = load i32, i32* %122, align 8
  %124 = mul i32 100000, %123
  %125 = icmp uge i32 %120, %124
  br i1 %125, label %126, label %127

; <label>:126:                                    ; preds = %109
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:127:                                    ; preds = %109
  %128 = load %struct.DState*, %struct.DState** %3, align 8
  %129 = getelementptr inbounds %struct.DState, %struct.DState* %128, i32 0, i32 14
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.DState*, %struct.DState** %3, align 8
  %132 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 18
  %133 = getelementptr inbounds [257 x i32], [257 x i32]* %132, i32 0, i32 0
  %134 = call i32 @BZ2_indexIntoF(i32 %130, i32* %133)
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %4, align 1
  %136 = load %struct.DState*, %struct.DState** %3, align 8
  %137 = getelementptr inbounds %struct.DState, %struct.DState* %136, i32 0, i32 21
  %138 = load i16*, i16** %137, align 8
  %139 = load %struct.DState*, %struct.DState** %3, align 8
  %140 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 14
  %141 = load i32, i32* %140, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds i16, i16* %138, i64 %142
  %144 = load i16, i16* %143, align 2
  %145 = zext i16 %144 to i32
  %146 = load %struct.DState*, %struct.DState** %3, align 8
  %147 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 22
  %148 = load i8*, i8** %147, align 8
  %149 = load %struct.DState*, %struct.DState** %3, align 8
  %150 = getelementptr inbounds %struct.DState, %struct.DState* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = lshr i32 %151, 1
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %148, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load %struct.DState*, %struct.DState** %3, align 8
  %158 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 2
  %161 = and i32 %160, 4
  %162 = lshr i32 %156, %161
  %163 = and i32 %162, 15
  %164 = shl i32 %163, 16
  %165 = or i32 %145, %164
  %166 = load %struct.DState*, %struct.DState** %3, align 8
  %167 = getelementptr inbounds %struct.DState, %struct.DState* %166, i32 0, i32 14
  store i32 %165, i32* %167, align 4
  %168 = load %struct.DState*, %struct.DState** %3, align 8
  %169 = getelementptr inbounds %struct.DState, %struct.DState* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %193

; <label>:172:                                    ; preds = %127
  %173 = load %struct.DState*, %struct.DState** %3, align 8
  %174 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.DState*, %struct.DState** %3, align 8
  %180 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  %181 = load %struct.DState*, %struct.DState** %3, align 8
  %182 = getelementptr inbounds %struct.DState, %struct.DState* %181, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load %struct.DState*, %struct.DState** %3, align 8
  %186 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 512
  br i1 %188, label %189, label %192

; <label>:189:                                    ; preds = %172
  %190 = load %struct.DState*, %struct.DState** %3, align 8
  %191 = getelementptr inbounds %struct.DState, %struct.DState* %190, i32 0, i32 6
  store i32 0, i32* %191, align 4
  br label %192

; <label>:192:                                    ; preds = %189, %172
  br label %193

; <label>:193:                                    ; preds = %192, %127
  %194 = load %struct.DState*, %struct.DState** %3, align 8
  %195 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %195, align 8
  %198 = load %struct.DState*, %struct.DState** %3, align 8
  %199 = getelementptr inbounds %struct.DState, %struct.DState* %198, i32 0, i32 5
  %200 = load i32, i32* %199, align 8
  %201 = icmp eq i32 %200, 1
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 1, i32 0
  %204 = load i8, i8* %4, align 1
  %205 = zext i8 %204 to i32
  %206 = xor i32 %205, %203
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %4, align 1
  %208 = load %struct.DState*, %struct.DState** %3, align 8
  %209 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 17
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %209, align 4
  %212 = load %struct.DState*, %struct.DState** %3, align 8
  %213 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.DState*, %struct.DState** %3, align 8
  %216 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 51
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  %219 = icmp eq i32 %214, %218
  br i1 %219, label %220, label %221

; <label>:220:                                    ; preds = %193
  br label %10

; <label>:221:                                    ; preds = %193
  %222 = load i8, i8* %4, align 1
  %223 = zext i8 %222 to i32
  %224 = load %struct.DState*, %struct.DState** %3, align 8
  %225 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 15
  %226 = load i32, i32* %225, align 8
  %227 = icmp ne i32 %223, %226
  br i1 %227, label %228, label %233

; <label>:228:                                    ; preds = %221
  %229 = load i8, i8* %4, align 1
  %230 = zext i8 %229 to i32
  %231 = load %struct.DState*, %struct.DState** %3, align 8
  %232 = getelementptr inbounds %struct.DState, %struct.DState* %231, i32 0, i32 15
  store i32 %230, i32* %232, align 8
  br label %10

; <label>:233:                                    ; preds = %221
  %234 = load %struct.DState*, %struct.DState** %3, align 8
  %235 = getelementptr inbounds %struct.DState, %struct.DState* %234, i32 0, i32 3
  store i32 2, i32* %235, align 8
  %236 = load %struct.DState*, %struct.DState** %3, align 8
  %237 = getelementptr inbounds %struct.DState, %struct.DState* %236, i32 0, i32 14
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.DState*, %struct.DState** %3, align 8
  %240 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 8
  %242 = mul i32 100000, %241
  %243 = icmp uge i32 %238, %242
  br i1 %243, label %244, label %245

; <label>:244:                                    ; preds = %233
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:245:                                    ; preds = %233
  %246 = load %struct.DState*, %struct.DState** %3, align 8
  %247 = getelementptr inbounds %struct.DState, %struct.DState* %246, i32 0, i32 14
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.DState*, %struct.DState** %3, align 8
  %250 = getelementptr inbounds %struct.DState, %struct.DState* %249, i32 0, i32 18
  %251 = getelementptr inbounds [257 x i32], [257 x i32]* %250, i32 0, i32 0
  %252 = call i32 @BZ2_indexIntoF(i32 %248, i32* %251)
  %253 = trunc i32 %252 to i8
  store i8 %253, i8* %4, align 1
  %254 = load %struct.DState*, %struct.DState** %3, align 8
  %255 = getelementptr inbounds %struct.DState, %struct.DState* %254, i32 0, i32 21
  %256 = load i16*, i16** %255, align 8
  %257 = load %struct.DState*, %struct.DState** %3, align 8
  %258 = getelementptr inbounds %struct.DState, %struct.DState* %257, i32 0, i32 14
  %259 = load i32, i32* %258, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i16, i16* %256, i64 %260
  %262 = load i16, i16* %261, align 2
  %263 = zext i16 %262 to i32
  %264 = load %struct.DState*, %struct.DState** %3, align 8
  %265 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 22
  %266 = load i8*, i8** %265, align 8
  %267 = load %struct.DState*, %struct.DState** %3, align 8
  %268 = getelementptr inbounds %struct.DState, %struct.DState* %267, i32 0, i32 14
  %269 = load i32, i32* %268, align 4
  %270 = lshr i32 %269, 1
  %271 = zext i32 %270 to i64
  %272 = getelementptr inbounds i8, i8* %266, i64 %271
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = load %struct.DState*, %struct.DState** %3, align 8
  %276 = getelementptr inbounds %struct.DState, %struct.DState* %275, i32 0, i32 14
  %277 = load i32, i32* %276, align 4
  %278 = shl i32 %277, 2
  %279 = and i32 %278, 4
  %280 = lshr i32 %274, %279
  %281 = and i32 %280, 15
  %282 = shl i32 %281, 16
  %283 = or i32 %263, %282
  %284 = load %struct.DState*, %struct.DState** %3, align 8
  %285 = getelementptr inbounds %struct.DState, %struct.DState* %284, i32 0, i32 14
  store i32 %283, i32* %285, align 4
  %286 = load %struct.DState*, %struct.DState** %3, align 8
  %287 = getelementptr inbounds %struct.DState, %struct.DState* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %311

; <label>:290:                                    ; preds = %245
  %291 = load %struct.DState*, %struct.DState** %3, align 8
  %292 = getelementptr inbounds %struct.DState, %struct.DState* %291, i32 0, i32 6
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %294
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.DState*, %struct.DState** %3, align 8
  %298 = getelementptr inbounds %struct.DState, %struct.DState* %297, i32 0, i32 5
  store i32 %296, i32* %298, align 8
  %299 = load %struct.DState*, %struct.DState** %3, align 8
  %300 = getelementptr inbounds %struct.DState, %struct.DState* %299, i32 0, i32 6
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load %struct.DState*, %struct.DState** %3, align 8
  %304 = getelementptr inbounds %struct.DState, %struct.DState* %303, i32 0, i32 6
  %305 = load i32, i32* %304, align 4
  %306 = icmp eq i32 %305, 512
  br i1 %306, label %307, label %310

; <label>:307:                                    ; preds = %290
  %308 = load %struct.DState*, %struct.DState** %3, align 8
  %309 = getelementptr inbounds %struct.DState, %struct.DState* %308, i32 0, i32 6
  store i32 0, i32* %309, align 4
  br label %310

; <label>:310:                                    ; preds = %307, %290
  br label %311

; <label>:311:                                    ; preds = %310, %245
  %312 = load %struct.DState*, %struct.DState** %3, align 8
  %313 = getelementptr inbounds %struct.DState, %struct.DState* %312, i32 0, i32 5
  %314 = load i32, i32* %313, align 8
  %315 = add nsw i32 %314, -1
  store i32 %315, i32* %313, align 8
  %316 = load %struct.DState*, %struct.DState** %3, align 8
  %317 = getelementptr inbounds %struct.DState, %struct.DState* %316, i32 0, i32 5
  %318 = load i32, i32* %317, align 8
  %319 = icmp eq i32 %318, 1
  %320 = zext i1 %319 to i64
  %321 = select i1 %319, i32 1, i32 0
  %322 = load i8, i8* %4, align 1
  %323 = zext i8 %322 to i32
  %324 = xor i32 %323, %321
  %325 = trunc i32 %324 to i8
  store i8 %325, i8* %4, align 1
  %326 = load %struct.DState*, %struct.DState** %3, align 8
  %327 = getelementptr inbounds %struct.DState, %struct.DState* %326, i32 0, i32 17
  %328 = load i32, i32* %327, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %327, align 4
  %330 = load %struct.DState*, %struct.DState** %3, align 8
  %331 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 17
  %332 = load i32, i32* %331, align 4
  %333 = load %struct.DState*, %struct.DState** %3, align 8
  %334 = getelementptr inbounds %struct.DState, %struct.DState* %333, i32 0, i32 51
  %335 = load i32, i32* %334, align 8
  %336 = add nsw i32 %335, 1
  %337 = icmp eq i32 %332, %336
  br i1 %337, label %338, label %339

; <label>:338:                                    ; preds = %311
  br label %10

; <label>:339:                                    ; preds = %311
  %340 = load i8, i8* %4, align 1
  %341 = zext i8 %340 to i32
  %342 = load %struct.DState*, %struct.DState** %3, align 8
  %343 = getelementptr inbounds %struct.DState, %struct.DState* %342, i32 0, i32 15
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %341, %344
  br i1 %345, label %346, label %351

; <label>:346:                                    ; preds = %339
  %347 = load i8, i8* %4, align 1
  %348 = zext i8 %347 to i32
  %349 = load %struct.DState*, %struct.DState** %3, align 8
  %350 = getelementptr inbounds %struct.DState, %struct.DState* %349, i32 0, i32 15
  store i32 %348, i32* %350, align 8
  br label %10

; <label>:351:                                    ; preds = %339
  %352 = load %struct.DState*, %struct.DState** %3, align 8
  %353 = getelementptr inbounds %struct.DState, %struct.DState* %352, i32 0, i32 3
  store i32 3, i32* %353, align 8
  %354 = load %struct.DState*, %struct.DState** %3, align 8
  %355 = getelementptr inbounds %struct.DState, %struct.DState* %354, i32 0, i32 14
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.DState*, %struct.DState** %3, align 8
  %358 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 9
  %359 = load i32, i32* %358, align 8
  %360 = mul i32 100000, %359
  %361 = icmp uge i32 %356, %360
  br i1 %361, label %362, label %363

; <label>:362:                                    ; preds = %351
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:363:                                    ; preds = %351
  %364 = load %struct.DState*, %struct.DState** %3, align 8
  %365 = getelementptr inbounds %struct.DState, %struct.DState* %364, i32 0, i32 14
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.DState*, %struct.DState** %3, align 8
  %368 = getelementptr inbounds %struct.DState, %struct.DState* %367, i32 0, i32 18
  %369 = getelementptr inbounds [257 x i32], [257 x i32]* %368, i32 0, i32 0
  %370 = call i32 @BZ2_indexIntoF(i32 %366, i32* %369)
  %371 = trunc i32 %370 to i8
  store i8 %371, i8* %4, align 1
  %372 = load %struct.DState*, %struct.DState** %3, align 8
  %373 = getelementptr inbounds %struct.DState, %struct.DState* %372, i32 0, i32 21
  %374 = load i16*, i16** %373, align 8
  %375 = load %struct.DState*, %struct.DState** %3, align 8
  %376 = getelementptr inbounds %struct.DState, %struct.DState* %375, i32 0, i32 14
  %377 = load i32, i32* %376, align 4
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i16, i16* %374, i64 %378
  %380 = load i16, i16* %379, align 2
  %381 = zext i16 %380 to i32
  %382 = load %struct.DState*, %struct.DState** %3, align 8
  %383 = getelementptr inbounds %struct.DState, %struct.DState* %382, i32 0, i32 22
  %384 = load i8*, i8** %383, align 8
  %385 = load %struct.DState*, %struct.DState** %3, align 8
  %386 = getelementptr inbounds %struct.DState, %struct.DState* %385, i32 0, i32 14
  %387 = load i32, i32* %386, align 4
  %388 = lshr i32 %387, 1
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds i8, i8* %384, i64 %389
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = load %struct.DState*, %struct.DState** %3, align 8
  %394 = getelementptr inbounds %struct.DState, %struct.DState* %393, i32 0, i32 14
  %395 = load i32, i32* %394, align 4
  %396 = shl i32 %395, 2
  %397 = and i32 %396, 4
  %398 = lshr i32 %392, %397
  %399 = and i32 %398, 15
  %400 = shl i32 %399, 16
  %401 = or i32 %381, %400
  %402 = load %struct.DState*, %struct.DState** %3, align 8
  %403 = getelementptr inbounds %struct.DState, %struct.DState* %402, i32 0, i32 14
  store i32 %401, i32* %403, align 4
  %404 = load %struct.DState*, %struct.DState** %3, align 8
  %405 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 5
  %406 = load i32, i32* %405, align 8
  %407 = icmp eq i32 %406, 0
  br i1 %407, label %408, label %429

; <label>:408:                                    ; preds = %363
  %409 = load %struct.DState*, %struct.DState** %3, align 8
  %410 = getelementptr inbounds %struct.DState, %struct.DState* %409, i32 0, i32 6
  %411 = load i32, i32* %410, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = load %struct.DState*, %struct.DState** %3, align 8
  %416 = getelementptr inbounds %struct.DState, %struct.DState* %415, i32 0, i32 5
  store i32 %414, i32* %416, align 8
  %417 = load %struct.DState*, %struct.DState** %3, align 8
  %418 = getelementptr inbounds %struct.DState, %struct.DState* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %418, align 4
  %421 = load %struct.DState*, %struct.DState** %3, align 8
  %422 = getelementptr inbounds %struct.DState, %struct.DState* %421, i32 0, i32 6
  %423 = load i32, i32* %422, align 4
  %424 = icmp eq i32 %423, 512
  br i1 %424, label %425, label %428

; <label>:425:                                    ; preds = %408
  %426 = load %struct.DState*, %struct.DState** %3, align 8
  %427 = getelementptr inbounds %struct.DState, %struct.DState* %426, i32 0, i32 6
  store i32 0, i32* %427, align 4
  br label %428

; <label>:428:                                    ; preds = %425, %408
  br label %429

; <label>:429:                                    ; preds = %428, %363
  %430 = load %struct.DState*, %struct.DState** %3, align 8
  %431 = getelementptr inbounds %struct.DState, %struct.DState* %430, i32 0, i32 5
  %432 = load i32, i32* %431, align 8
  %433 = add nsw i32 %432, -1
  store i32 %433, i32* %431, align 8
  %434 = load %struct.DState*, %struct.DState** %3, align 8
  %435 = getelementptr inbounds %struct.DState, %struct.DState* %434, i32 0, i32 5
  %436 = load i32, i32* %435, align 8
  %437 = icmp eq i32 %436, 1
  %438 = zext i1 %437 to i64
  %439 = select i1 %437, i32 1, i32 0
  %440 = load i8, i8* %4, align 1
  %441 = zext i8 %440 to i32
  %442 = xor i32 %441, %439
  %443 = trunc i32 %442 to i8
  store i8 %443, i8* %4, align 1
  %444 = load %struct.DState*, %struct.DState** %3, align 8
  %445 = getelementptr inbounds %struct.DState, %struct.DState* %444, i32 0, i32 17
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %446, 1
  store i32 %447, i32* %445, align 4
  %448 = load %struct.DState*, %struct.DState** %3, align 8
  %449 = getelementptr inbounds %struct.DState, %struct.DState* %448, i32 0, i32 17
  %450 = load i32, i32* %449, align 4
  %451 = load %struct.DState*, %struct.DState** %3, align 8
  %452 = getelementptr inbounds %struct.DState, %struct.DState* %451, i32 0, i32 51
  %453 = load i32, i32* %452, align 8
  %454 = add nsw i32 %453, 1
  %455 = icmp eq i32 %450, %454
  br i1 %455, label %456, label %457

; <label>:456:                                    ; preds = %429
  br label %10

; <label>:457:                                    ; preds = %429
  %458 = load i8, i8* %4, align 1
  %459 = zext i8 %458 to i32
  %460 = load %struct.DState*, %struct.DState** %3, align 8
  %461 = getelementptr inbounds %struct.DState, %struct.DState* %460, i32 0, i32 15
  %462 = load i32, i32* %461, align 8
  %463 = icmp ne i32 %459, %462
  br i1 %463, label %464, label %469

; <label>:464:                                    ; preds = %457
  %465 = load i8, i8* %4, align 1
  %466 = zext i8 %465 to i32
  %467 = load %struct.DState*, %struct.DState** %3, align 8
  %468 = getelementptr inbounds %struct.DState, %struct.DState* %467, i32 0, i32 15
  store i32 %466, i32* %468, align 8
  br label %10

; <label>:469:                                    ; preds = %457
  %470 = load %struct.DState*, %struct.DState** %3, align 8
  %471 = getelementptr inbounds %struct.DState, %struct.DState* %470, i32 0, i32 14
  %472 = load i32, i32* %471, align 4
  %473 = load %struct.DState*, %struct.DState** %3, align 8
  %474 = getelementptr inbounds %struct.DState, %struct.DState* %473, i32 0, i32 9
  %475 = load i32, i32* %474, align 8
  %476 = mul i32 100000, %475
  %477 = icmp uge i32 %472, %476
  br i1 %477, label %478, label %479

; <label>:478:                                    ; preds = %469
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:479:                                    ; preds = %469
  %480 = load %struct.DState*, %struct.DState** %3, align 8
  %481 = getelementptr inbounds %struct.DState, %struct.DState* %480, i32 0, i32 14
  %482 = load i32, i32* %481, align 4
  %483 = load %struct.DState*, %struct.DState** %3, align 8
  %484 = getelementptr inbounds %struct.DState, %struct.DState* %483, i32 0, i32 18
  %485 = getelementptr inbounds [257 x i32], [257 x i32]* %484, i32 0, i32 0
  %486 = call i32 @BZ2_indexIntoF(i32 %482, i32* %485)
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %4, align 1
  %488 = load %struct.DState*, %struct.DState** %3, align 8
  %489 = getelementptr inbounds %struct.DState, %struct.DState* %488, i32 0, i32 21
  %490 = load i16*, i16** %489, align 8
  %491 = load %struct.DState*, %struct.DState** %3, align 8
  %492 = getelementptr inbounds %struct.DState, %struct.DState* %491, i32 0, i32 14
  %493 = load i32, i32* %492, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds i16, i16* %490, i64 %494
  %496 = load i16, i16* %495, align 2
  %497 = zext i16 %496 to i32
  %498 = load %struct.DState*, %struct.DState** %3, align 8
  %499 = getelementptr inbounds %struct.DState, %struct.DState* %498, i32 0, i32 22
  %500 = load i8*, i8** %499, align 8
  %501 = load %struct.DState*, %struct.DState** %3, align 8
  %502 = getelementptr inbounds %struct.DState, %struct.DState* %501, i32 0, i32 14
  %503 = load i32, i32* %502, align 4
  %504 = lshr i32 %503, 1
  %505 = zext i32 %504 to i64
  %506 = getelementptr inbounds i8, i8* %500, i64 %505
  %507 = load i8, i8* %506, align 1
  %508 = zext i8 %507 to i32
  %509 = load %struct.DState*, %struct.DState** %3, align 8
  %510 = getelementptr inbounds %struct.DState, %struct.DState* %509, i32 0, i32 14
  %511 = load i32, i32* %510, align 4
  %512 = shl i32 %511, 2
  %513 = and i32 %512, 4
  %514 = lshr i32 %508, %513
  %515 = and i32 %514, 15
  %516 = shl i32 %515, 16
  %517 = or i32 %497, %516
  %518 = load %struct.DState*, %struct.DState** %3, align 8
  %519 = getelementptr inbounds %struct.DState, %struct.DState* %518, i32 0, i32 14
  store i32 %517, i32* %519, align 4
  %520 = load %struct.DState*, %struct.DState** %3, align 8
  %521 = getelementptr inbounds %struct.DState, %struct.DState* %520, i32 0, i32 5
  %522 = load i32, i32* %521, align 8
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %524, label %545

; <label>:524:                                    ; preds = %479
  %525 = load %struct.DState*, %struct.DState** %3, align 8
  %526 = getelementptr inbounds %struct.DState, %struct.DState* %525, i32 0, i32 6
  %527 = load i32, i32* %526, align 4
  %528 = sext i32 %527 to i64
  %529 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %528
  %530 = load i32, i32* %529, align 4
  %531 = load %struct.DState*, %struct.DState** %3, align 8
  %532 = getelementptr inbounds %struct.DState, %struct.DState* %531, i32 0, i32 5
  store i32 %530, i32* %532, align 8
  %533 = load %struct.DState*, %struct.DState** %3, align 8
  %534 = getelementptr inbounds %struct.DState, %struct.DState* %533, i32 0, i32 6
  %535 = load i32, i32* %534, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, i32* %534, align 4
  %537 = load %struct.DState*, %struct.DState** %3, align 8
  %538 = getelementptr inbounds %struct.DState, %struct.DState* %537, i32 0, i32 6
  %539 = load i32, i32* %538, align 4
  %540 = icmp eq i32 %539, 512
  br i1 %540, label %541, label %544

; <label>:541:                                    ; preds = %524
  %542 = load %struct.DState*, %struct.DState** %3, align 8
  %543 = getelementptr inbounds %struct.DState, %struct.DState* %542, i32 0, i32 6
  store i32 0, i32* %543, align 4
  br label %544

; <label>:544:                                    ; preds = %541, %524
  br label %545

; <label>:545:                                    ; preds = %544, %479
  %546 = load %struct.DState*, %struct.DState** %3, align 8
  %547 = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 5
  %548 = load i32, i32* %547, align 8
  %549 = add nsw i32 %548, -1
  store i32 %549, i32* %547, align 8
  %550 = load %struct.DState*, %struct.DState** %3, align 8
  %551 = getelementptr inbounds %struct.DState, %struct.DState* %550, i32 0, i32 5
  %552 = load i32, i32* %551, align 8
  %553 = icmp eq i32 %552, 1
  %554 = zext i1 %553 to i64
  %555 = select i1 %553, i32 1, i32 0
  %556 = load i8, i8* %4, align 1
  %557 = zext i8 %556 to i32
  %558 = xor i32 %557, %555
  %559 = trunc i32 %558 to i8
  store i8 %559, i8* %4, align 1
  %560 = load %struct.DState*, %struct.DState** %3, align 8
  %561 = getelementptr inbounds %struct.DState, %struct.DState* %560, i32 0, i32 17
  %562 = load i32, i32* %561, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %561, align 4
  %564 = load i8, i8* %4, align 1
  %565 = zext i8 %564 to i32
  %566 = add nsw i32 %565, 4
  %567 = load %struct.DState*, %struct.DState** %3, align 8
  %568 = getelementptr inbounds %struct.DState, %struct.DState* %567, i32 0, i32 3
  store i32 %566, i32* %568, align 8
  %569 = load %struct.DState*, %struct.DState** %3, align 8
  %570 = getelementptr inbounds %struct.DState, %struct.DState* %569, i32 0, i32 14
  %571 = load i32, i32* %570, align 4
  %572 = load %struct.DState*, %struct.DState** %3, align 8
  %573 = getelementptr inbounds %struct.DState, %struct.DState* %572, i32 0, i32 9
  %574 = load i32, i32* %573, align 8
  %575 = mul i32 100000, %574
  %576 = icmp uge i32 %571, %575
  br i1 %576, label %577, label %578

; <label>:577:                                    ; preds = %545
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:578:                                    ; preds = %545
  %579 = load %struct.DState*, %struct.DState** %3, align 8
  %580 = getelementptr inbounds %struct.DState, %struct.DState* %579, i32 0, i32 14
  %581 = load i32, i32* %580, align 4
  %582 = load %struct.DState*, %struct.DState** %3, align 8
  %583 = getelementptr inbounds %struct.DState, %struct.DState* %582, i32 0, i32 18
  %584 = getelementptr inbounds [257 x i32], [257 x i32]* %583, i32 0, i32 0
  %585 = call i32 @BZ2_indexIntoF(i32 %581, i32* %584)
  %586 = load %struct.DState*, %struct.DState** %3, align 8
  %587 = getelementptr inbounds %struct.DState, %struct.DState* %586, i32 0, i32 15
  store i32 %585, i32* %587, align 8
  %588 = load %struct.DState*, %struct.DState** %3, align 8
  %589 = getelementptr inbounds %struct.DState, %struct.DState* %588, i32 0, i32 21
  %590 = load i16*, i16** %589, align 8
  %591 = load %struct.DState*, %struct.DState** %3, align 8
  %592 = getelementptr inbounds %struct.DState, %struct.DState* %591, i32 0, i32 14
  %593 = load i32, i32* %592, align 4
  %594 = zext i32 %593 to i64
  %595 = getelementptr inbounds i16, i16* %590, i64 %594
  %596 = load i16, i16* %595, align 2
  %597 = zext i16 %596 to i32
  %598 = load %struct.DState*, %struct.DState** %3, align 8
  %599 = getelementptr inbounds %struct.DState, %struct.DState* %598, i32 0, i32 22
  %600 = load i8*, i8** %599, align 8
  %601 = load %struct.DState*, %struct.DState** %3, align 8
  %602 = getelementptr inbounds %struct.DState, %struct.DState* %601, i32 0, i32 14
  %603 = load i32, i32* %602, align 4
  %604 = lshr i32 %603, 1
  %605 = zext i32 %604 to i64
  %606 = getelementptr inbounds i8, i8* %600, i64 %605
  %607 = load i8, i8* %606, align 1
  %608 = zext i8 %607 to i32
  %609 = load %struct.DState*, %struct.DState** %3, align 8
  %610 = getelementptr inbounds %struct.DState, %struct.DState* %609, i32 0, i32 14
  %611 = load i32, i32* %610, align 4
  %612 = shl i32 %611, 2
  %613 = and i32 %612, 4
  %614 = lshr i32 %608, %613
  %615 = and i32 %614, 15
  %616 = shl i32 %615, 16
  %617 = or i32 %597, %616
  %618 = load %struct.DState*, %struct.DState** %3, align 8
  %619 = getelementptr inbounds %struct.DState, %struct.DState* %618, i32 0, i32 14
  store i32 %617, i32* %619, align 4
  %620 = load %struct.DState*, %struct.DState** %3, align 8
  %621 = getelementptr inbounds %struct.DState, %struct.DState* %620, i32 0, i32 5
  %622 = load i32, i32* %621, align 8
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %645

; <label>:624:                                    ; preds = %578
  %625 = load %struct.DState*, %struct.DState** %3, align 8
  %626 = getelementptr inbounds %struct.DState, %struct.DState* %625, i32 0, i32 6
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %628
  %630 = load i32, i32* %629, align 4
  %631 = load %struct.DState*, %struct.DState** %3, align 8
  %632 = getelementptr inbounds %struct.DState, %struct.DState* %631, i32 0, i32 5
  store i32 %630, i32* %632, align 8
  %633 = load %struct.DState*, %struct.DState** %3, align 8
  %634 = getelementptr inbounds %struct.DState, %struct.DState* %633, i32 0, i32 6
  %635 = load i32, i32* %634, align 4
  %636 = add nsw i32 %635, 1
  store i32 %636, i32* %634, align 4
  %637 = load %struct.DState*, %struct.DState** %3, align 8
  %638 = getelementptr inbounds %struct.DState, %struct.DState* %637, i32 0, i32 6
  %639 = load i32, i32* %638, align 4
  %640 = icmp eq i32 %639, 512
  br i1 %640, label %641, label %644

; <label>:641:                                    ; preds = %624
  %642 = load %struct.DState*, %struct.DState** %3, align 8
  %643 = getelementptr inbounds %struct.DState, %struct.DState* %642, i32 0, i32 6
  store i32 0, i32* %643, align 4
  br label %644

; <label>:644:                                    ; preds = %641, %624
  br label %645

; <label>:645:                                    ; preds = %644, %578
  %646 = load %struct.DState*, %struct.DState** %3, align 8
  %647 = getelementptr inbounds %struct.DState, %struct.DState* %646, i32 0, i32 5
  %648 = load i32, i32* %647, align 8
  %649 = add nsw i32 %648, -1
  store i32 %649, i32* %647, align 8
  %650 = load %struct.DState*, %struct.DState** %3, align 8
  %651 = getelementptr inbounds %struct.DState, %struct.DState* %650, i32 0, i32 5
  %652 = load i32, i32* %651, align 8
  %653 = icmp eq i32 %652, 1
  %654 = zext i1 %653 to i64
  %655 = select i1 %653, i32 1, i32 0
  %656 = load %struct.DState*, %struct.DState** %3, align 8
  %657 = getelementptr inbounds %struct.DState, %struct.DState* %656, i32 0, i32 15
  %658 = load i32, i32* %657, align 8
  %659 = xor i32 %658, %655
  store i32 %659, i32* %657, align 8
  %660 = load %struct.DState*, %struct.DState** %3, align 8
  %661 = getelementptr inbounds %struct.DState, %struct.DState* %660, i32 0, i32 17
  %662 = load i32, i32* %661, align 4
  %663 = add nsw i32 %662, 1
  store i32 %663, i32* %661, align 4
  br label %10

; <label>:664:                                    ; preds = %1
  br label %665

; <label>:665:                                    ; preds = %664, %835, %843, %913, %921, %991, %999, %1073
  br label %666

; <label>:666:                                    ; preds = %665, %743
  %667 = load %struct.DState*, %struct.DState** %3, align 8
  %668 = getelementptr inbounds %struct.DState, %struct.DState* %667, i32 0, i32 0
  %669 = load %struct.bz_stream*, %struct.bz_stream** %668, align 8
  %670 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %669, i32 0, i32 5
  %671 = load i32, i32* %670, align 8
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %673, label %674

; <label>:673:                                    ; preds = %666
  store i8 0, i8* %2, align 1
  br label %1119

; <label>:674:                                    ; preds = %666
  %675 = load %struct.DState*, %struct.DState** %3, align 8
  %676 = getelementptr inbounds %struct.DState, %struct.DState* %675, i32 0, i32 3
  %677 = load i32, i32* %676, align 8
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %680

; <label>:679:                                    ; preds = %674
  br label %744

; <label>:680:                                    ; preds = %674
  %681 = load %struct.DState*, %struct.DState** %3, align 8
  %682 = getelementptr inbounds %struct.DState, %struct.DState* %681, i32 0, i32 2
  %683 = load i8, i8* %682, align 4
  %684 = load %struct.DState*, %struct.DState** %3, align 8
  %685 = getelementptr inbounds %struct.DState, %struct.DState* %684, i32 0, i32 0
  %686 = load %struct.bz_stream*, %struct.bz_stream** %685, align 8
  %687 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %686, i32 0, i32 4
  %688 = load i8*, i8** %687, align 8
  store i8 %683, i8* %688, align 1
  %689 = load %struct.DState*, %struct.DState** %3, align 8
  %690 = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 25
  %691 = load i32, i32* %690, align 8
  %692 = shl i32 %691, 8
  %693 = load %struct.DState*, %struct.DState** %3, align 8
  %694 = getelementptr inbounds %struct.DState, %struct.DState* %693, i32 0, i32 25
  %695 = load i32, i32* %694, align 8
  %696 = lshr i32 %695, 24
  %697 = load %struct.DState*, %struct.DState** %3, align 8
  %698 = getelementptr inbounds %struct.DState, %struct.DState* %697, i32 0, i32 2
  %699 = load i8, i8* %698, align 4
  %700 = zext i8 %699 to i32
  %701 = xor i32 %696, %700
  %702 = zext i32 %701 to i64
  %703 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %702
  %704 = load i32, i32* %703, align 4
  %705 = xor i32 %692, %704
  %706 = load %struct.DState*, %struct.DState** %3, align 8
  %707 = getelementptr inbounds %struct.DState, %struct.DState* %706, i32 0, i32 25
  store i32 %705, i32* %707, align 8
  %708 = load %struct.DState*, %struct.DState** %3, align 8
  %709 = getelementptr inbounds %struct.DState, %struct.DState* %708, i32 0, i32 3
  %710 = load i32, i32* %709, align 8
  %711 = add nsw i32 %710, -1
  store i32 %711, i32* %709, align 8
  %712 = load %struct.DState*, %struct.DState** %3, align 8
  %713 = getelementptr inbounds %struct.DState, %struct.DState* %712, i32 0, i32 0
  %714 = load %struct.bz_stream*, %struct.bz_stream** %713, align 8
  %715 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %714, i32 0, i32 4
  %716 = load i8*, i8** %715, align 8
  %717 = getelementptr inbounds i8, i8* %716, i32 1
  store i8* %717, i8** %715, align 8
  %718 = load %struct.DState*, %struct.DState** %3, align 8
  %719 = getelementptr inbounds %struct.DState, %struct.DState* %718, i32 0, i32 0
  %720 = load %struct.bz_stream*, %struct.bz_stream** %719, align 8
  %721 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %720, i32 0, i32 5
  %722 = load i32, i32* %721, align 8
  %723 = add i32 %722, -1
  store i32 %723, i32* %721, align 8
  %724 = load %struct.DState*, %struct.DState** %3, align 8
  %725 = getelementptr inbounds %struct.DState, %struct.DState* %724, i32 0, i32 0
  %726 = load %struct.bz_stream*, %struct.bz_stream** %725, align 8
  %727 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %726, i32 0, i32 6
  %728 = load i32, i32* %727, align 4
  %729 = add i32 %728, 1
  store i32 %729, i32* %727, align 4
  %730 = load %struct.DState*, %struct.DState** %3, align 8
  %731 = getelementptr inbounds %struct.DState, %struct.DState* %730, i32 0, i32 0
  %732 = load %struct.bz_stream*, %struct.bz_stream** %731, align 8
  %733 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %732, i32 0, i32 6
  %734 = load i32, i32* %733, align 4
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %736, label %743

; <label>:736:                                    ; preds = %680
  %737 = load %struct.DState*, %struct.DState** %3, align 8
  %738 = getelementptr inbounds %struct.DState, %struct.DState* %737, i32 0, i32 0
  %739 = load %struct.bz_stream*, %struct.bz_stream** %738, align 8
  %740 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %739, i32 0, i32 7
  %741 = load i32, i32* %740, align 8
  %742 = add i32 %741, 1
  store i32 %742, i32* %740, align 8
  br label %743

; <label>:743:                                    ; preds = %736, %680
  br label %666

; <label>:744:                                    ; preds = %679
  %745 = load %struct.DState*, %struct.DState** %3, align 8
  %746 = getelementptr inbounds %struct.DState, %struct.DState* %745, i32 0, i32 17
  %747 = load i32, i32* %746, align 4
  %748 = load %struct.DState*, %struct.DState** %3, align 8
  %749 = getelementptr inbounds %struct.DState, %struct.DState* %748, i32 0, i32 51
  %750 = load i32, i32* %749, align 8
  %751 = add nsw i32 %750, 1
  %752 = icmp eq i32 %747, %751
  br i1 %752, label %753, label %754

; <label>:753:                                    ; preds = %744
  store i8 0, i8* %2, align 1
  br label %1119

; <label>:754:                                    ; preds = %744
  %755 = load %struct.DState*, %struct.DState** %3, align 8
  %756 = getelementptr inbounds %struct.DState, %struct.DState* %755, i32 0, i32 17
  %757 = load i32, i32* %756, align 4
  %758 = load %struct.DState*, %struct.DState** %3, align 8
  %759 = getelementptr inbounds %struct.DState, %struct.DState* %758, i32 0, i32 51
  %760 = load i32, i32* %759, align 8
  %761 = add nsw i32 %760, 1
  %762 = icmp sgt i32 %757, %761
  br i1 %762, label %763, label %764

; <label>:763:                                    ; preds = %754
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:764:                                    ; preds = %754
  %765 = load %struct.DState*, %struct.DState** %3, align 8
  %766 = getelementptr inbounds %struct.DState, %struct.DState* %765, i32 0, i32 3
  store i32 1, i32* %766, align 8
  %767 = load %struct.DState*, %struct.DState** %3, align 8
  %768 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 15
  %769 = load i32, i32* %768, align 8
  %770 = trunc i32 %769 to i8
  %771 = load %struct.DState*, %struct.DState** %3, align 8
  %772 = getelementptr inbounds %struct.DState, %struct.DState* %771, i32 0, i32 2
  store i8 %770, i8* %772, align 4
  %773 = load %struct.DState*, %struct.DState** %3, align 8
  %774 = getelementptr inbounds %struct.DState, %struct.DState* %773, i32 0, i32 14
  %775 = load i32, i32* %774, align 4
  %776 = load %struct.DState*, %struct.DState** %3, align 8
  %777 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 9
  %778 = load i32, i32* %777, align 8
  %779 = mul i32 100000, %778
  %780 = icmp uge i32 %775, %779
  br i1 %780, label %781, label %782

; <label>:781:                                    ; preds = %764
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:782:                                    ; preds = %764
  %783 = load %struct.DState*, %struct.DState** %3, align 8
  %784 = getelementptr inbounds %struct.DState, %struct.DState* %783, i32 0, i32 14
  %785 = load i32, i32* %784, align 4
  %786 = load %struct.DState*, %struct.DState** %3, align 8
  %787 = getelementptr inbounds %struct.DState, %struct.DState* %786, i32 0, i32 18
  %788 = getelementptr inbounds [257 x i32], [257 x i32]* %787, i32 0, i32 0
  %789 = call i32 @BZ2_indexIntoF(i32 %785, i32* %788)
  %790 = trunc i32 %789 to i8
  store i8 %790, i8* %4, align 1
  %791 = load %struct.DState*, %struct.DState** %3, align 8
  %792 = getelementptr inbounds %struct.DState, %struct.DState* %791, i32 0, i32 21
  %793 = load i16*, i16** %792, align 8
  %794 = load %struct.DState*, %struct.DState** %3, align 8
  %795 = getelementptr inbounds %struct.DState, %struct.DState* %794, i32 0, i32 14
  %796 = load i32, i32* %795, align 4
  %797 = zext i32 %796 to i64
  %798 = getelementptr inbounds i16, i16* %793, i64 %797
  %799 = load i16, i16* %798, align 2
  %800 = zext i16 %799 to i32
  %801 = load %struct.DState*, %struct.DState** %3, align 8
  %802 = getelementptr inbounds %struct.DState, %struct.DState* %801, i32 0, i32 22
  %803 = load i8*, i8** %802, align 8
  %804 = load %struct.DState*, %struct.DState** %3, align 8
  %805 = getelementptr inbounds %struct.DState, %struct.DState* %804, i32 0, i32 14
  %806 = load i32, i32* %805, align 4
  %807 = lshr i32 %806, 1
  %808 = zext i32 %807 to i64
  %809 = getelementptr inbounds i8, i8* %803, i64 %808
  %810 = load i8, i8* %809, align 1
  %811 = zext i8 %810 to i32
  %812 = load %struct.DState*, %struct.DState** %3, align 8
  %813 = getelementptr inbounds %struct.DState, %struct.DState* %812, i32 0, i32 14
  %814 = load i32, i32* %813, align 4
  %815 = shl i32 %814, 2
  %816 = and i32 %815, 4
  %817 = lshr i32 %811, %816
  %818 = and i32 %817, 15
  %819 = shl i32 %818, 16
  %820 = or i32 %800, %819
  %821 = load %struct.DState*, %struct.DState** %3, align 8
  %822 = getelementptr inbounds %struct.DState, %struct.DState* %821, i32 0, i32 14
  store i32 %820, i32* %822, align 4
  %823 = load %struct.DState*, %struct.DState** %3, align 8
  %824 = getelementptr inbounds %struct.DState, %struct.DState* %823, i32 0, i32 17
  %825 = load i32, i32* %824, align 4
  %826 = add nsw i32 %825, 1
  store i32 %826, i32* %824, align 4
  %827 = load %struct.DState*, %struct.DState** %3, align 8
  %828 = getelementptr inbounds %struct.DState, %struct.DState* %827, i32 0, i32 17
  %829 = load i32, i32* %828, align 4
  %830 = load %struct.DState*, %struct.DState** %3, align 8
  %831 = getelementptr inbounds %struct.DState, %struct.DState* %830, i32 0, i32 51
  %832 = load i32, i32* %831, align 8
  %833 = add nsw i32 %832, 1
  %834 = icmp eq i32 %829, %833
  br i1 %834, label %835, label %836

; <label>:835:                                    ; preds = %782
  br label %665

; <label>:836:                                    ; preds = %782
  %837 = load i8, i8* %4, align 1
  %838 = zext i8 %837 to i32
  %839 = load %struct.DState*, %struct.DState** %3, align 8
  %840 = getelementptr inbounds %struct.DState, %struct.DState* %839, i32 0, i32 15
  %841 = load i32, i32* %840, align 8
  %842 = icmp ne i32 %838, %841
  br i1 %842, label %843, label %848

; <label>:843:                                    ; preds = %836
  %844 = load i8, i8* %4, align 1
  %845 = zext i8 %844 to i32
  %846 = load %struct.DState*, %struct.DState** %3, align 8
  %847 = getelementptr inbounds %struct.DState, %struct.DState* %846, i32 0, i32 15
  store i32 %845, i32* %847, align 8
  br label %665

; <label>:848:                                    ; preds = %836
  %849 = load %struct.DState*, %struct.DState** %3, align 8
  %850 = getelementptr inbounds %struct.DState, %struct.DState* %849, i32 0, i32 3
  store i32 2, i32* %850, align 8
  %851 = load %struct.DState*, %struct.DState** %3, align 8
  %852 = getelementptr inbounds %struct.DState, %struct.DState* %851, i32 0, i32 14
  %853 = load i32, i32* %852, align 4
  %854 = load %struct.DState*, %struct.DState** %3, align 8
  %855 = getelementptr inbounds %struct.DState, %struct.DState* %854, i32 0, i32 9
  %856 = load i32, i32* %855, align 8
  %857 = mul i32 100000, %856
  %858 = icmp uge i32 %853, %857
  br i1 %858, label %859, label %860

; <label>:859:                                    ; preds = %848
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:860:                                    ; preds = %848
  %861 = load %struct.DState*, %struct.DState** %3, align 8
  %862 = getelementptr inbounds %struct.DState, %struct.DState* %861, i32 0, i32 14
  %863 = load i32, i32* %862, align 4
  %864 = load %struct.DState*, %struct.DState** %3, align 8
  %865 = getelementptr inbounds %struct.DState, %struct.DState* %864, i32 0, i32 18
  %866 = getelementptr inbounds [257 x i32], [257 x i32]* %865, i32 0, i32 0
  %867 = call i32 @BZ2_indexIntoF(i32 %863, i32* %866)
  %868 = trunc i32 %867 to i8
  store i8 %868, i8* %4, align 1
  %869 = load %struct.DState*, %struct.DState** %3, align 8
  %870 = getelementptr inbounds %struct.DState, %struct.DState* %869, i32 0, i32 21
  %871 = load i16*, i16** %870, align 8
  %872 = load %struct.DState*, %struct.DState** %3, align 8
  %873 = getelementptr inbounds %struct.DState, %struct.DState* %872, i32 0, i32 14
  %874 = load i32, i32* %873, align 4
  %875 = zext i32 %874 to i64
  %876 = getelementptr inbounds i16, i16* %871, i64 %875
  %877 = load i16, i16* %876, align 2
  %878 = zext i16 %877 to i32
  %879 = load %struct.DState*, %struct.DState** %3, align 8
  %880 = getelementptr inbounds %struct.DState, %struct.DState* %879, i32 0, i32 22
  %881 = load i8*, i8** %880, align 8
  %882 = load %struct.DState*, %struct.DState** %3, align 8
  %883 = getelementptr inbounds %struct.DState, %struct.DState* %882, i32 0, i32 14
  %884 = load i32, i32* %883, align 4
  %885 = lshr i32 %884, 1
  %886 = zext i32 %885 to i64
  %887 = getelementptr inbounds i8, i8* %881, i64 %886
  %888 = load i8, i8* %887, align 1
  %889 = zext i8 %888 to i32
  %890 = load %struct.DState*, %struct.DState** %3, align 8
  %891 = getelementptr inbounds %struct.DState, %struct.DState* %890, i32 0, i32 14
  %892 = load i32, i32* %891, align 4
  %893 = shl i32 %892, 2
  %894 = and i32 %893, 4
  %895 = lshr i32 %889, %894
  %896 = and i32 %895, 15
  %897 = shl i32 %896, 16
  %898 = or i32 %878, %897
  %899 = load %struct.DState*, %struct.DState** %3, align 8
  %900 = getelementptr inbounds %struct.DState, %struct.DState* %899, i32 0, i32 14
  store i32 %898, i32* %900, align 4
  %901 = load %struct.DState*, %struct.DState** %3, align 8
  %902 = getelementptr inbounds %struct.DState, %struct.DState* %901, i32 0, i32 17
  %903 = load i32, i32* %902, align 4
  %904 = add nsw i32 %903, 1
  store i32 %904, i32* %902, align 4
  %905 = load %struct.DState*, %struct.DState** %3, align 8
  %906 = getelementptr inbounds %struct.DState, %struct.DState* %905, i32 0, i32 17
  %907 = load i32, i32* %906, align 4
  %908 = load %struct.DState*, %struct.DState** %3, align 8
  %909 = getelementptr inbounds %struct.DState, %struct.DState* %908, i32 0, i32 51
  %910 = load i32, i32* %909, align 8
  %911 = add nsw i32 %910, 1
  %912 = icmp eq i32 %907, %911
  br i1 %912, label %913, label %914

; <label>:913:                                    ; preds = %860
  br label %665

; <label>:914:                                    ; preds = %860
  %915 = load i8, i8* %4, align 1
  %916 = zext i8 %915 to i32
  %917 = load %struct.DState*, %struct.DState** %3, align 8
  %918 = getelementptr inbounds %struct.DState, %struct.DState* %917, i32 0, i32 15
  %919 = load i32, i32* %918, align 8
  %920 = icmp ne i32 %916, %919
  br i1 %920, label %921, label %926

; <label>:921:                                    ; preds = %914
  %922 = load i8, i8* %4, align 1
  %923 = zext i8 %922 to i32
  %924 = load %struct.DState*, %struct.DState** %3, align 8
  %925 = getelementptr inbounds %struct.DState, %struct.DState* %924, i32 0, i32 15
  store i32 %923, i32* %925, align 8
  br label %665

; <label>:926:                                    ; preds = %914
  %927 = load %struct.DState*, %struct.DState** %3, align 8
  %928 = getelementptr inbounds %struct.DState, %struct.DState* %927, i32 0, i32 3
  store i32 3, i32* %928, align 8
  %929 = load %struct.DState*, %struct.DState** %3, align 8
  %930 = getelementptr inbounds %struct.DState, %struct.DState* %929, i32 0, i32 14
  %931 = load i32, i32* %930, align 4
  %932 = load %struct.DState*, %struct.DState** %3, align 8
  %933 = getelementptr inbounds %struct.DState, %struct.DState* %932, i32 0, i32 9
  %934 = load i32, i32* %933, align 8
  %935 = mul i32 100000, %934
  %936 = icmp uge i32 %931, %935
  br i1 %936, label %937, label %938

; <label>:937:                                    ; preds = %926
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:938:                                    ; preds = %926
  %939 = load %struct.DState*, %struct.DState** %3, align 8
  %940 = getelementptr inbounds %struct.DState, %struct.DState* %939, i32 0, i32 14
  %941 = load i32, i32* %940, align 4
  %942 = load %struct.DState*, %struct.DState** %3, align 8
  %943 = getelementptr inbounds %struct.DState, %struct.DState* %942, i32 0, i32 18
  %944 = getelementptr inbounds [257 x i32], [257 x i32]* %943, i32 0, i32 0
  %945 = call i32 @BZ2_indexIntoF(i32 %941, i32* %944)
  %946 = trunc i32 %945 to i8
  store i8 %946, i8* %4, align 1
  %947 = load %struct.DState*, %struct.DState** %3, align 8
  %948 = getelementptr inbounds %struct.DState, %struct.DState* %947, i32 0, i32 21
  %949 = load i16*, i16** %948, align 8
  %950 = load %struct.DState*, %struct.DState** %3, align 8
  %951 = getelementptr inbounds %struct.DState, %struct.DState* %950, i32 0, i32 14
  %952 = load i32, i32* %951, align 4
  %953 = zext i32 %952 to i64
  %954 = getelementptr inbounds i16, i16* %949, i64 %953
  %955 = load i16, i16* %954, align 2
  %956 = zext i16 %955 to i32
  %957 = load %struct.DState*, %struct.DState** %3, align 8
  %958 = getelementptr inbounds %struct.DState, %struct.DState* %957, i32 0, i32 22
  %959 = load i8*, i8** %958, align 8
  %960 = load %struct.DState*, %struct.DState** %3, align 8
  %961 = getelementptr inbounds %struct.DState, %struct.DState* %960, i32 0, i32 14
  %962 = load i32, i32* %961, align 4
  %963 = lshr i32 %962, 1
  %964 = zext i32 %963 to i64
  %965 = getelementptr inbounds i8, i8* %959, i64 %964
  %966 = load i8, i8* %965, align 1
  %967 = zext i8 %966 to i32
  %968 = load %struct.DState*, %struct.DState** %3, align 8
  %969 = getelementptr inbounds %struct.DState, %struct.DState* %968, i32 0, i32 14
  %970 = load i32, i32* %969, align 4
  %971 = shl i32 %970, 2
  %972 = and i32 %971, 4
  %973 = lshr i32 %967, %972
  %974 = and i32 %973, 15
  %975 = shl i32 %974, 16
  %976 = or i32 %956, %975
  %977 = load %struct.DState*, %struct.DState** %3, align 8
  %978 = getelementptr inbounds %struct.DState, %struct.DState* %977, i32 0, i32 14
  store i32 %976, i32* %978, align 4
  %979 = load %struct.DState*, %struct.DState** %3, align 8
  %980 = getelementptr inbounds %struct.DState, %struct.DState* %979, i32 0, i32 17
  %981 = load i32, i32* %980, align 4
  %982 = add nsw i32 %981, 1
  store i32 %982, i32* %980, align 4
  %983 = load %struct.DState*, %struct.DState** %3, align 8
  %984 = getelementptr inbounds %struct.DState, %struct.DState* %983, i32 0, i32 17
  %985 = load i32, i32* %984, align 4
  %986 = load %struct.DState*, %struct.DState** %3, align 8
  %987 = getelementptr inbounds %struct.DState, %struct.DState* %986, i32 0, i32 51
  %988 = load i32, i32* %987, align 8
  %989 = add nsw i32 %988, 1
  %990 = icmp eq i32 %985, %989
  br i1 %990, label %991, label %992

; <label>:991:                                    ; preds = %938
  br label %665

; <label>:992:                                    ; preds = %938
  %993 = load i8, i8* %4, align 1
  %994 = zext i8 %993 to i32
  %995 = load %struct.DState*, %struct.DState** %3, align 8
  %996 = getelementptr inbounds %struct.DState, %struct.DState* %995, i32 0, i32 15
  %997 = load i32, i32* %996, align 8
  %998 = icmp ne i32 %994, %997
  br i1 %998, label %999, label %1004

; <label>:999:                                    ; preds = %992
  %1000 = load i8, i8* %4, align 1
  %1001 = zext i8 %1000 to i32
  %1002 = load %struct.DState*, %struct.DState** %3, align 8
  %1003 = getelementptr inbounds %struct.DState, %struct.DState* %1002, i32 0, i32 15
  store i32 %1001, i32* %1003, align 8
  br label %665

; <label>:1004:                                   ; preds = %992
  %1005 = load %struct.DState*, %struct.DState** %3, align 8
  %1006 = getelementptr inbounds %struct.DState, %struct.DState* %1005, i32 0, i32 14
  %1007 = load i32, i32* %1006, align 4
  %1008 = load %struct.DState*, %struct.DState** %3, align 8
  %1009 = getelementptr inbounds %struct.DState, %struct.DState* %1008, i32 0, i32 9
  %1010 = load i32, i32* %1009, align 8
  %1011 = mul i32 100000, %1010
  %1012 = icmp uge i32 %1007, %1011
  br i1 %1012, label %1013, label %1014

; <label>:1013:                                   ; preds = %1004
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:1014:                                   ; preds = %1004
  %1015 = load %struct.DState*, %struct.DState** %3, align 8
  %1016 = getelementptr inbounds %struct.DState, %struct.DState* %1015, i32 0, i32 14
  %1017 = load i32, i32* %1016, align 4
  %1018 = load %struct.DState*, %struct.DState** %3, align 8
  %1019 = getelementptr inbounds %struct.DState, %struct.DState* %1018, i32 0, i32 18
  %1020 = getelementptr inbounds [257 x i32], [257 x i32]* %1019, i32 0, i32 0
  %1021 = call i32 @BZ2_indexIntoF(i32 %1017, i32* %1020)
  %1022 = trunc i32 %1021 to i8
  store i8 %1022, i8* %4, align 1
  %1023 = load %struct.DState*, %struct.DState** %3, align 8
  %1024 = getelementptr inbounds %struct.DState, %struct.DState* %1023, i32 0, i32 21
  %1025 = load i16*, i16** %1024, align 8
  %1026 = load %struct.DState*, %struct.DState** %3, align 8
  %1027 = getelementptr inbounds %struct.DState, %struct.DState* %1026, i32 0, i32 14
  %1028 = load i32, i32* %1027, align 4
  %1029 = zext i32 %1028 to i64
  %1030 = getelementptr inbounds i16, i16* %1025, i64 %1029
  %1031 = load i16, i16* %1030, align 2
  %1032 = zext i16 %1031 to i32
  %1033 = load %struct.DState*, %struct.DState** %3, align 8
  %1034 = getelementptr inbounds %struct.DState, %struct.DState* %1033, i32 0, i32 22
  %1035 = load i8*, i8** %1034, align 8
  %1036 = load %struct.DState*, %struct.DState** %3, align 8
  %1037 = getelementptr inbounds %struct.DState, %struct.DState* %1036, i32 0, i32 14
  %1038 = load i32, i32* %1037, align 4
  %1039 = lshr i32 %1038, 1
  %1040 = zext i32 %1039 to i64
  %1041 = getelementptr inbounds i8, i8* %1035, i64 %1040
  %1042 = load i8, i8* %1041, align 1
  %1043 = zext i8 %1042 to i32
  %1044 = load %struct.DState*, %struct.DState** %3, align 8
  %1045 = getelementptr inbounds %struct.DState, %struct.DState* %1044, i32 0, i32 14
  %1046 = load i32, i32* %1045, align 4
  %1047 = shl i32 %1046, 2
  %1048 = and i32 %1047, 4
  %1049 = lshr i32 %1043, %1048
  %1050 = and i32 %1049, 15
  %1051 = shl i32 %1050, 16
  %1052 = or i32 %1032, %1051
  %1053 = load %struct.DState*, %struct.DState** %3, align 8
  %1054 = getelementptr inbounds %struct.DState, %struct.DState* %1053, i32 0, i32 14
  store i32 %1052, i32* %1054, align 4
  %1055 = load %struct.DState*, %struct.DState** %3, align 8
  %1056 = getelementptr inbounds %struct.DState, %struct.DState* %1055, i32 0, i32 17
  %1057 = load i32, i32* %1056, align 4
  %1058 = add nsw i32 %1057, 1
  store i32 %1058, i32* %1056, align 4
  %1059 = load i8, i8* %4, align 1
  %1060 = zext i8 %1059 to i32
  %1061 = add nsw i32 %1060, 4
  %1062 = load %struct.DState*, %struct.DState** %3, align 8
  %1063 = getelementptr inbounds %struct.DState, %struct.DState* %1062, i32 0, i32 3
  store i32 %1061, i32* %1063, align 8
  %1064 = load %struct.DState*, %struct.DState** %3, align 8
  %1065 = getelementptr inbounds %struct.DState, %struct.DState* %1064, i32 0, i32 14
  %1066 = load i32, i32* %1065, align 4
  %1067 = load %struct.DState*, %struct.DState** %3, align 8
  %1068 = getelementptr inbounds %struct.DState, %struct.DState* %1067, i32 0, i32 9
  %1069 = load i32, i32* %1068, align 8
  %1070 = mul i32 100000, %1069
  %1071 = icmp uge i32 %1066, %1070
  br i1 %1071, label %1072, label %1073

; <label>:1072:                                   ; preds = %1014
  store i8 1, i8* %2, align 1
  br label %1119

; <label>:1073:                                   ; preds = %1014
  %1074 = load %struct.DState*, %struct.DState** %3, align 8
  %1075 = getelementptr inbounds %struct.DState, %struct.DState* %1074, i32 0, i32 14
  %1076 = load i32, i32* %1075, align 4
  %1077 = load %struct.DState*, %struct.DState** %3, align 8
  %1078 = getelementptr inbounds %struct.DState, %struct.DState* %1077, i32 0, i32 18
  %1079 = getelementptr inbounds [257 x i32], [257 x i32]* %1078, i32 0, i32 0
  %1080 = call i32 @BZ2_indexIntoF(i32 %1076, i32* %1079)
  %1081 = load %struct.DState*, %struct.DState** %3, align 8
  %1082 = getelementptr inbounds %struct.DState, %struct.DState* %1081, i32 0, i32 15
  store i32 %1080, i32* %1082, align 8
  %1083 = load %struct.DState*, %struct.DState** %3, align 8
  %1084 = getelementptr inbounds %struct.DState, %struct.DState* %1083, i32 0, i32 21
  %1085 = load i16*, i16** %1084, align 8
  %1086 = load %struct.DState*, %struct.DState** %3, align 8
  %1087 = getelementptr inbounds %struct.DState, %struct.DState* %1086, i32 0, i32 14
  %1088 = load i32, i32* %1087, align 4
  %1089 = zext i32 %1088 to i64
  %1090 = getelementptr inbounds i16, i16* %1085, i64 %1089
  %1091 = load i16, i16* %1090, align 2
  %1092 = zext i16 %1091 to i32
  %1093 = load %struct.DState*, %struct.DState** %3, align 8
  %1094 = getelementptr inbounds %struct.DState, %struct.DState* %1093, i32 0, i32 22
  %1095 = load i8*, i8** %1094, align 8
  %1096 = load %struct.DState*, %struct.DState** %3, align 8
  %1097 = getelementptr inbounds %struct.DState, %struct.DState* %1096, i32 0, i32 14
  %1098 = load i32, i32* %1097, align 4
  %1099 = lshr i32 %1098, 1
  %1100 = zext i32 %1099 to i64
  %1101 = getelementptr inbounds i8, i8* %1095, i64 %1100
  %1102 = load i8, i8* %1101, align 1
  %1103 = zext i8 %1102 to i32
  %1104 = load %struct.DState*, %struct.DState** %3, align 8
  %1105 = getelementptr inbounds %struct.DState, %struct.DState* %1104, i32 0, i32 14
  %1106 = load i32, i32* %1105, align 4
  %1107 = shl i32 %1106, 2
  %1108 = and i32 %1107, 4
  %1109 = lshr i32 %1103, %1108
  %1110 = and i32 %1109, 15
  %1111 = shl i32 %1110, 16
  %1112 = or i32 %1092, %1111
  %1113 = load %struct.DState*, %struct.DState** %3, align 8
  %1114 = getelementptr inbounds %struct.DState, %struct.DState* %1113, i32 0, i32 14
  store i32 %1112, i32* %1114, align 4
  %1115 = load %struct.DState*, %struct.DState** %3, align 8
  %1116 = getelementptr inbounds %struct.DState, %struct.DState* %1115, i32 0, i32 17
  %1117 = load i32, i32* %1116, align 4
  %1118 = add nsw i32 %1117, 1
  store i32 %1118, i32* %1116, align 4
  br label %665

; <label>:1119:                                   ; preds = %1072, %1013, %937, %859, %781, %763, %753, %673, %577, %478, %362, %244, %126, %108, %98, %18
  %1120 = load i8, i8* %2, align 1
  ret i8 %1120
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @unRLE_obuf_to_output_FAST(%struct.DState*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.DState*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.DState* %0, %struct.DState** %3, align 8
  %18 = load %struct.DState*, %struct.DState** %3, align 8
  %19 = getelementptr inbounds %struct.DState, %struct.DState* %18, i32 0, i32 4
  %20 = load i8, i8* %19, align 4
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %22, label %579

; <label>:22:                                     ; preds = %1
  br label %23

; <label>:23:                                     ; preds = %22, %213, %221, %311, %319, %409, %417, %560
  br label %24

; <label>:24:                                     ; preds = %23, %101
  %25 = load %struct.DState*, %struct.DState** %3, align 8
  %26 = getelementptr inbounds %struct.DState, %struct.DState* %25, i32 0, i32 0
  %27 = load %struct.bz_stream*, %struct.bz_stream** %26, align 8
  %28 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %24
  store i8 0, i8* %2, align 1
  br label %882

; <label>:32:                                     ; preds = %24
  %33 = load %struct.DState*, %struct.DState** %3, align 8
  %34 = getelementptr inbounds %struct.DState, %struct.DState* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %32
  br label %102

; <label>:38:                                     ; preds = %32
  %39 = load %struct.DState*, %struct.DState** %3, align 8
  %40 = getelementptr inbounds %struct.DState, %struct.DState* %39, i32 0, i32 2
  %41 = load i8, i8* %40, align 4
  %42 = load %struct.DState*, %struct.DState** %3, align 8
  %43 = getelementptr inbounds %struct.DState, %struct.DState* %42, i32 0, i32 0
  %44 = load %struct.bz_stream*, %struct.bz_stream** %43, align 8
  %45 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %44, i32 0, i32 4
  %46 = load i8*, i8** %45, align 8
  store i8 %41, i8* %46, align 1
  %47 = load %struct.DState*, %struct.DState** %3, align 8
  %48 = getelementptr inbounds %struct.DState, %struct.DState* %47, i32 0, i32 25
  %49 = load i32, i32* %48, align 8
  %50 = shl i32 %49, 8
  %51 = load %struct.DState*, %struct.DState** %3, align 8
  %52 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 25
  %53 = load i32, i32* %52, align 8
  %54 = lshr i32 %53, 24
  %55 = load %struct.DState*, %struct.DState** %3, align 8
  %56 = getelementptr inbounds %struct.DState, %struct.DState* %55, i32 0, i32 2
  %57 = load i8, i8* %56, align 4
  %58 = zext i8 %57 to i32
  %59 = xor i32 %54, %58
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %50, %62
  %64 = load %struct.DState*, %struct.DState** %3, align 8
  %65 = getelementptr inbounds %struct.DState, %struct.DState* %64, i32 0, i32 25
  store i32 %63, i32* %65, align 8
  %66 = load %struct.DState*, %struct.DState** %3, align 8
  %67 = getelementptr inbounds %struct.DState, %struct.DState* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.DState*, %struct.DState** %3, align 8
  %71 = getelementptr inbounds %struct.DState, %struct.DState* %70, i32 0, i32 0
  %72 = load %struct.bz_stream*, %struct.bz_stream** %71, align 8
  %73 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %73, align 8
  %76 = load %struct.DState*, %struct.DState** %3, align 8
  %77 = getelementptr inbounds %struct.DState, %struct.DState* %76, i32 0, i32 0
  %78 = load %struct.bz_stream*, %struct.bz_stream** %77, align 8
  %79 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 8
  %81 = add i32 %80, -1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.DState*, %struct.DState** %3, align 8
  %83 = getelementptr inbounds %struct.DState, %struct.DState* %82, i32 0, i32 0
  %84 = load %struct.bz_stream*, %struct.bz_stream** %83, align 8
  %85 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.DState*, %struct.DState** %3, align 8
  %89 = getelementptr inbounds %struct.DState, %struct.DState* %88, i32 0, i32 0
  %90 = load %struct.bz_stream*, %struct.bz_stream** %89, align 8
  %91 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %101

; <label>:94:                                     ; preds = %38
  %95 = load %struct.DState*, %struct.DState** %3, align 8
  %96 = getelementptr inbounds %struct.DState, %struct.DState* %95, i32 0, i32 0
  %97 = load %struct.bz_stream*, %struct.bz_stream** %96, align 8
  %98 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, 1
  store i32 %100, i32* %98, align 8
  br label %101

; <label>:101:                                    ; preds = %94, %38
  br label %24

; <label>:102:                                    ; preds = %37
  %103 = load %struct.DState*, %struct.DState** %3, align 8
  %104 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 17
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.DState*, %struct.DState** %3, align 8
  %107 = getelementptr inbounds %struct.DState, %struct.DState* %106, i32 0, i32 51
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  %110 = icmp eq i32 %105, %109
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %102
  store i8 0, i8* %2, align 1
  br label %882

; <label>:112:                                    ; preds = %102
  %113 = load %struct.DState*, %struct.DState** %3, align 8
  %114 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 17
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.DState*, %struct.DState** %3, align 8
  %117 = getelementptr inbounds %struct.DState, %struct.DState* %116, i32 0, i32 51
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  %120 = icmp sgt i32 %115, %119
  br i1 %120, label %121, label %122

; <label>:121:                                    ; preds = %112
  store i8 1, i8* %2, align 1
  br label %882

; <label>:122:                                    ; preds = %112
  %123 = load %struct.DState*, %struct.DState** %3, align 8
  %124 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 3
  store i32 1, i32* %124, align 8
  %125 = load %struct.DState*, %struct.DState** %3, align 8
  %126 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 15
  %127 = load i32, i32* %126, align 8
  %128 = trunc i32 %127 to i8
  %129 = load %struct.DState*, %struct.DState** %3, align 8
  %130 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 2
  store i8 %128, i8* %130, align 4
  %131 = load %struct.DState*, %struct.DState** %3, align 8
  %132 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.DState*, %struct.DState** %3, align 8
  %135 = getelementptr inbounds %struct.DState, %struct.DState* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 8
  %137 = mul i32 100000, %136
  %138 = icmp uge i32 %133, %137
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %122
  store i8 1, i8* %2, align 1
  br label %882

; <label>:140:                                    ; preds = %122
  %141 = load %struct.DState*, %struct.DState** %3, align 8
  %142 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 20
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.DState*, %struct.DState** %3, align 8
  %145 = getelementptr inbounds %struct.DState, %struct.DState* %144, i32 0, i32 14
  %146 = load i32, i32* %145, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.DState*, %struct.DState** %3, align 8
  %151 = getelementptr inbounds %struct.DState, %struct.DState* %150, i32 0, i32 14
  store i32 %149, i32* %151, align 4
  %152 = load %struct.DState*, %struct.DState** %3, align 8
  %153 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 14
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  %156 = trunc i32 %155 to i8
  store i8 %156, i8* %4, align 1
  %157 = load %struct.DState*, %struct.DState** %3, align 8
  %158 = getelementptr inbounds %struct.DState, %struct.DState* %157, i32 0, i32 14
  %159 = load i32, i32* %158, align 4
  %160 = lshr i32 %159, 8
  store i32 %160, i32* %158, align 4
  %161 = load %struct.DState*, %struct.DState** %3, align 8
  %162 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %186

; <label>:165:                                    ; preds = %140
  %166 = load %struct.DState*, %struct.DState** %3, align 8
  %167 = getelementptr inbounds %struct.DState, %struct.DState* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.DState*, %struct.DState** %3, align 8
  %173 = getelementptr inbounds %struct.DState, %struct.DState* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 8
  %174 = load %struct.DState*, %struct.DState** %3, align 8
  %175 = getelementptr inbounds %struct.DState, %struct.DState* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  %178 = load %struct.DState*, %struct.DState** %3, align 8
  %179 = getelementptr inbounds %struct.DState, %struct.DState* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 512
  br i1 %181, label %182, label %185

; <label>:182:                                    ; preds = %165
  %183 = load %struct.DState*, %struct.DState** %3, align 8
  %184 = getelementptr inbounds %struct.DState, %struct.DState* %183, i32 0, i32 6
  store i32 0, i32* %184, align 4
  br label %185

; <label>:185:                                    ; preds = %182, %165
  br label %186

; <label>:186:                                    ; preds = %185, %140
  %187 = load %struct.DState*, %struct.DState** %3, align 8
  %188 = getelementptr inbounds %struct.DState, %struct.DState* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, -1
  store i32 %190, i32* %188, align 8
  %191 = load %struct.DState*, %struct.DState** %3, align 8
  %192 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 1
  %195 = zext i1 %194 to i64
  %196 = select i1 %194, i32 1, i32 0
  %197 = load i8, i8* %4, align 1
  %198 = zext i8 %197 to i32
  %199 = xor i32 %198, %196
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %4, align 1
  %201 = load %struct.DState*, %struct.DState** %3, align 8
  %202 = getelementptr inbounds %struct.DState, %struct.DState* %201, i32 0, i32 17
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  %205 = load %struct.DState*, %struct.DState** %3, align 8
  %206 = getelementptr inbounds %struct.DState, %struct.DState* %205, i32 0, i32 17
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.DState*, %struct.DState** %3, align 8
  %209 = getelementptr inbounds %struct.DState, %struct.DState* %208, i32 0, i32 51
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  %212 = icmp eq i32 %207, %211
  br i1 %212, label %213, label %214

; <label>:213:                                    ; preds = %186
  br label %23

; <label>:214:                                    ; preds = %186
  %215 = load i8, i8* %4, align 1
  %216 = zext i8 %215 to i32
  %217 = load %struct.DState*, %struct.DState** %3, align 8
  %218 = getelementptr inbounds %struct.DState, %struct.DState* %217, i32 0, i32 15
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %216, %219
  br i1 %220, label %221, label %226

; <label>:221:                                    ; preds = %214
  %222 = load i8, i8* %4, align 1
  %223 = zext i8 %222 to i32
  %224 = load %struct.DState*, %struct.DState** %3, align 8
  %225 = getelementptr inbounds %struct.DState, %struct.DState* %224, i32 0, i32 15
  store i32 %223, i32* %225, align 8
  br label %23

; <label>:226:                                    ; preds = %214
  %227 = load %struct.DState*, %struct.DState** %3, align 8
  %228 = getelementptr inbounds %struct.DState, %struct.DState* %227, i32 0, i32 3
  store i32 2, i32* %228, align 8
  %229 = load %struct.DState*, %struct.DState** %3, align 8
  %230 = getelementptr inbounds %struct.DState, %struct.DState* %229, i32 0, i32 14
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.DState*, %struct.DState** %3, align 8
  %233 = getelementptr inbounds %struct.DState, %struct.DState* %232, i32 0, i32 9
  %234 = load i32, i32* %233, align 8
  %235 = mul i32 100000, %234
  %236 = icmp uge i32 %231, %235
  br i1 %236, label %237, label %238

; <label>:237:                                    ; preds = %226
  store i8 1, i8* %2, align 1
  br label %882

; <label>:238:                                    ; preds = %226
  %239 = load %struct.DState*, %struct.DState** %3, align 8
  %240 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 20
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.DState*, %struct.DState** %3, align 8
  %243 = getelementptr inbounds %struct.DState, %struct.DState* %242, i32 0, i32 14
  %244 = load i32, i32* %243, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %241, i64 %245
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.DState*, %struct.DState** %3, align 8
  %249 = getelementptr inbounds %struct.DState, %struct.DState* %248, i32 0, i32 14
  store i32 %247, i32* %249, align 4
  %250 = load %struct.DState*, %struct.DState** %3, align 8
  %251 = getelementptr inbounds %struct.DState, %struct.DState* %250, i32 0, i32 14
  %252 = load i32, i32* %251, align 4
  %253 = and i32 %252, 255
  %254 = trunc i32 %253 to i8
  store i8 %254, i8* %4, align 1
  %255 = load %struct.DState*, %struct.DState** %3, align 8
  %256 = getelementptr inbounds %struct.DState, %struct.DState* %255, i32 0, i32 14
  %257 = load i32, i32* %256, align 4
  %258 = lshr i32 %257, 8
  store i32 %258, i32* %256, align 4
  %259 = load %struct.DState*, %struct.DState** %3, align 8
  %260 = getelementptr inbounds %struct.DState, %struct.DState* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %284

; <label>:263:                                    ; preds = %238
  %264 = load %struct.DState*, %struct.DState** %3, align 8
  %265 = getelementptr inbounds %struct.DState, %struct.DState* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.DState*, %struct.DState** %3, align 8
  %271 = getelementptr inbounds %struct.DState, %struct.DState* %270, i32 0, i32 5
  store i32 %269, i32* %271, align 8
  %272 = load %struct.DState*, %struct.DState** %3, align 8
  %273 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 6
  %274 = load i32, i32* %273, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %273, align 4
  %276 = load %struct.DState*, %struct.DState** %3, align 8
  %277 = getelementptr inbounds %struct.DState, %struct.DState* %276, i32 0, i32 6
  %278 = load i32, i32* %277, align 4
  %279 = icmp eq i32 %278, 512
  br i1 %279, label %280, label %283

; <label>:280:                                    ; preds = %263
  %281 = load %struct.DState*, %struct.DState** %3, align 8
  %282 = getelementptr inbounds %struct.DState, %struct.DState* %281, i32 0, i32 6
  store i32 0, i32* %282, align 4
  br label %283

; <label>:283:                                    ; preds = %280, %263
  br label %284

; <label>:284:                                    ; preds = %283, %238
  %285 = load %struct.DState*, %struct.DState** %3, align 8
  %286 = getelementptr inbounds %struct.DState, %struct.DState* %285, i32 0, i32 5
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, -1
  store i32 %288, i32* %286, align 8
  %289 = load %struct.DState*, %struct.DState** %3, align 8
  %290 = getelementptr inbounds %struct.DState, %struct.DState* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 1
  %293 = zext i1 %292 to i64
  %294 = select i1 %292, i32 1, i32 0
  %295 = load i8, i8* %4, align 1
  %296 = zext i8 %295 to i32
  %297 = xor i32 %296, %294
  %298 = trunc i32 %297 to i8
  store i8 %298, i8* %4, align 1
  %299 = load %struct.DState*, %struct.DState** %3, align 8
  %300 = getelementptr inbounds %struct.DState, %struct.DState* %299, i32 0, i32 17
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 4
  %303 = load %struct.DState*, %struct.DState** %3, align 8
  %304 = getelementptr inbounds %struct.DState, %struct.DState* %303, i32 0, i32 17
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.DState*, %struct.DState** %3, align 8
  %307 = getelementptr inbounds %struct.DState, %struct.DState* %306, i32 0, i32 51
  %308 = load i32, i32* %307, align 8
  %309 = add nsw i32 %308, 1
  %310 = icmp eq i32 %305, %309
  br i1 %310, label %311, label %312

; <label>:311:                                    ; preds = %284
  br label %23

; <label>:312:                                    ; preds = %284
  %313 = load i8, i8* %4, align 1
  %314 = zext i8 %313 to i32
  %315 = load %struct.DState*, %struct.DState** %3, align 8
  %316 = getelementptr inbounds %struct.DState, %struct.DState* %315, i32 0, i32 15
  %317 = load i32, i32* %316, align 8
  %318 = icmp ne i32 %314, %317
  br i1 %318, label %319, label %324

; <label>:319:                                    ; preds = %312
  %320 = load i8, i8* %4, align 1
  %321 = zext i8 %320 to i32
  %322 = load %struct.DState*, %struct.DState** %3, align 8
  %323 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 15
  store i32 %321, i32* %323, align 8
  br label %23

; <label>:324:                                    ; preds = %312
  %325 = load %struct.DState*, %struct.DState** %3, align 8
  %326 = getelementptr inbounds %struct.DState, %struct.DState* %325, i32 0, i32 3
  store i32 3, i32* %326, align 8
  %327 = load %struct.DState*, %struct.DState** %3, align 8
  %328 = getelementptr inbounds %struct.DState, %struct.DState* %327, i32 0, i32 14
  %329 = load i32, i32* %328, align 4
  %330 = load %struct.DState*, %struct.DState** %3, align 8
  %331 = getelementptr inbounds %struct.DState, %struct.DState* %330, i32 0, i32 9
  %332 = load i32, i32* %331, align 8
  %333 = mul i32 100000, %332
  %334 = icmp uge i32 %329, %333
  br i1 %334, label %335, label %336

; <label>:335:                                    ; preds = %324
  store i8 1, i8* %2, align 1
  br label %882

; <label>:336:                                    ; preds = %324
  %337 = load %struct.DState*, %struct.DState** %3, align 8
  %338 = getelementptr inbounds %struct.DState, %struct.DState* %337, i32 0, i32 20
  %339 = load i32*, i32** %338, align 8
  %340 = load %struct.DState*, %struct.DState** %3, align 8
  %341 = getelementptr inbounds %struct.DState, %struct.DState* %340, i32 0, i32 14
  %342 = load i32, i32* %341, align 4
  %343 = zext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %339, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.DState*, %struct.DState** %3, align 8
  %347 = getelementptr inbounds %struct.DState, %struct.DState* %346, i32 0, i32 14
  store i32 %345, i32* %347, align 4
  %348 = load %struct.DState*, %struct.DState** %3, align 8
  %349 = getelementptr inbounds %struct.DState, %struct.DState* %348, i32 0, i32 14
  %350 = load i32, i32* %349, align 4
  %351 = and i32 %350, 255
  %352 = trunc i32 %351 to i8
  store i8 %352, i8* %4, align 1
  %353 = load %struct.DState*, %struct.DState** %3, align 8
  %354 = getelementptr inbounds %struct.DState, %struct.DState* %353, i32 0, i32 14
  %355 = load i32, i32* %354, align 4
  %356 = lshr i32 %355, 8
  store i32 %356, i32* %354, align 4
  %357 = load %struct.DState*, %struct.DState** %3, align 8
  %358 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %382

; <label>:361:                                    ; preds = %336
  %362 = load %struct.DState*, %struct.DState** %3, align 8
  %363 = getelementptr inbounds %struct.DState, %struct.DState* %362, i32 0, i32 6
  %364 = load i32, i32* %363, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.DState*, %struct.DState** %3, align 8
  %369 = getelementptr inbounds %struct.DState, %struct.DState* %368, i32 0, i32 5
  store i32 %367, i32* %369, align 8
  %370 = load %struct.DState*, %struct.DState** %3, align 8
  %371 = getelementptr inbounds %struct.DState, %struct.DState* %370, i32 0, i32 6
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %371, align 4
  %374 = load %struct.DState*, %struct.DState** %3, align 8
  %375 = getelementptr inbounds %struct.DState, %struct.DState* %374, i32 0, i32 6
  %376 = load i32, i32* %375, align 4
  %377 = icmp eq i32 %376, 512
  br i1 %377, label %378, label %381

; <label>:378:                                    ; preds = %361
  %379 = load %struct.DState*, %struct.DState** %3, align 8
  %380 = getelementptr inbounds %struct.DState, %struct.DState* %379, i32 0, i32 6
  store i32 0, i32* %380, align 4
  br label %381

; <label>:381:                                    ; preds = %378, %361
  br label %382

; <label>:382:                                    ; preds = %381, %336
  %383 = load %struct.DState*, %struct.DState** %3, align 8
  %384 = getelementptr inbounds %struct.DState, %struct.DState* %383, i32 0, i32 5
  %385 = load i32, i32* %384, align 8
  %386 = add nsw i32 %385, -1
  store i32 %386, i32* %384, align 8
  %387 = load %struct.DState*, %struct.DState** %3, align 8
  %388 = getelementptr inbounds %struct.DState, %struct.DState* %387, i32 0, i32 5
  %389 = load i32, i32* %388, align 8
  %390 = icmp eq i32 %389, 1
  %391 = zext i1 %390 to i64
  %392 = select i1 %390, i32 1, i32 0
  %393 = load i8, i8* %4, align 1
  %394 = zext i8 %393 to i32
  %395 = xor i32 %394, %392
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %4, align 1
  %397 = load %struct.DState*, %struct.DState** %3, align 8
  %398 = getelementptr inbounds %struct.DState, %struct.DState* %397, i32 0, i32 17
  %399 = load i32, i32* %398, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %398, align 4
  %401 = load %struct.DState*, %struct.DState** %3, align 8
  %402 = getelementptr inbounds %struct.DState, %struct.DState* %401, i32 0, i32 17
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.DState*, %struct.DState** %3, align 8
  %405 = getelementptr inbounds %struct.DState, %struct.DState* %404, i32 0, i32 51
  %406 = load i32, i32* %405, align 8
  %407 = add nsw i32 %406, 1
  %408 = icmp eq i32 %403, %407
  br i1 %408, label %409, label %410

; <label>:409:                                    ; preds = %382
  br label %23

; <label>:410:                                    ; preds = %382
  %411 = load i8, i8* %4, align 1
  %412 = zext i8 %411 to i32
  %413 = load %struct.DState*, %struct.DState** %3, align 8
  %414 = getelementptr inbounds %struct.DState, %struct.DState* %413, i32 0, i32 15
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %412, %415
  br i1 %416, label %417, label %422

; <label>:417:                                    ; preds = %410
  %418 = load i8, i8* %4, align 1
  %419 = zext i8 %418 to i32
  %420 = load %struct.DState*, %struct.DState** %3, align 8
  %421 = getelementptr inbounds %struct.DState, %struct.DState* %420, i32 0, i32 15
  store i32 %419, i32* %421, align 8
  br label %23

; <label>:422:                                    ; preds = %410
  %423 = load %struct.DState*, %struct.DState** %3, align 8
  %424 = getelementptr inbounds %struct.DState, %struct.DState* %423, i32 0, i32 14
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.DState*, %struct.DState** %3, align 8
  %427 = getelementptr inbounds %struct.DState, %struct.DState* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 8
  %429 = mul i32 100000, %428
  %430 = icmp uge i32 %425, %429
  br i1 %430, label %431, label %432

; <label>:431:                                    ; preds = %422
  store i8 1, i8* %2, align 1
  br label %882

; <label>:432:                                    ; preds = %422
  %433 = load %struct.DState*, %struct.DState** %3, align 8
  %434 = getelementptr inbounds %struct.DState, %struct.DState* %433, i32 0, i32 20
  %435 = load i32*, i32** %434, align 8
  %436 = load %struct.DState*, %struct.DState** %3, align 8
  %437 = getelementptr inbounds %struct.DState, %struct.DState* %436, i32 0, i32 14
  %438 = load i32, i32* %437, align 4
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds i32, i32* %435, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.DState*, %struct.DState** %3, align 8
  %443 = getelementptr inbounds %struct.DState, %struct.DState* %442, i32 0, i32 14
  store i32 %441, i32* %443, align 4
  %444 = load %struct.DState*, %struct.DState** %3, align 8
  %445 = getelementptr inbounds %struct.DState, %struct.DState* %444, i32 0, i32 14
  %446 = load i32, i32* %445, align 4
  %447 = and i32 %446, 255
  %448 = trunc i32 %447 to i8
  store i8 %448, i8* %4, align 1
  %449 = load %struct.DState*, %struct.DState** %3, align 8
  %450 = getelementptr inbounds %struct.DState, %struct.DState* %449, i32 0, i32 14
  %451 = load i32, i32* %450, align 4
  %452 = lshr i32 %451, 8
  store i32 %452, i32* %450, align 4
  %453 = load %struct.DState*, %struct.DState** %3, align 8
  %454 = getelementptr inbounds %struct.DState, %struct.DState* %453, i32 0, i32 5
  %455 = load i32, i32* %454, align 8
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %478

; <label>:457:                                    ; preds = %432
  %458 = load %struct.DState*, %struct.DState** %3, align 8
  %459 = getelementptr inbounds %struct.DState, %struct.DState* %458, i32 0, i32 6
  %460 = load i32, i32* %459, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = load %struct.DState*, %struct.DState** %3, align 8
  %465 = getelementptr inbounds %struct.DState, %struct.DState* %464, i32 0, i32 5
  store i32 %463, i32* %465, align 8
  %466 = load %struct.DState*, %struct.DState** %3, align 8
  %467 = getelementptr inbounds %struct.DState, %struct.DState* %466, i32 0, i32 6
  %468 = load i32, i32* %467, align 4
  %469 = add nsw i32 %468, 1
  store i32 %469, i32* %467, align 4
  %470 = load %struct.DState*, %struct.DState** %3, align 8
  %471 = getelementptr inbounds %struct.DState, %struct.DState* %470, i32 0, i32 6
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, 512
  br i1 %473, label %474, label %477

; <label>:474:                                    ; preds = %457
  %475 = load %struct.DState*, %struct.DState** %3, align 8
  %476 = getelementptr inbounds %struct.DState, %struct.DState* %475, i32 0, i32 6
  store i32 0, i32* %476, align 4
  br label %477

; <label>:477:                                    ; preds = %474, %457
  br label %478

; <label>:478:                                    ; preds = %477, %432
  %479 = load %struct.DState*, %struct.DState** %3, align 8
  %480 = getelementptr inbounds %struct.DState, %struct.DState* %479, i32 0, i32 5
  %481 = load i32, i32* %480, align 8
  %482 = add nsw i32 %481, -1
  store i32 %482, i32* %480, align 8
  %483 = load %struct.DState*, %struct.DState** %3, align 8
  %484 = getelementptr inbounds %struct.DState, %struct.DState* %483, i32 0, i32 5
  %485 = load i32, i32* %484, align 8
  %486 = icmp eq i32 %485, 1
  %487 = zext i1 %486 to i64
  %488 = select i1 %486, i32 1, i32 0
  %489 = load i8, i8* %4, align 1
  %490 = zext i8 %489 to i32
  %491 = xor i32 %490, %488
  %492 = trunc i32 %491 to i8
  store i8 %492, i8* %4, align 1
  %493 = load %struct.DState*, %struct.DState** %3, align 8
  %494 = getelementptr inbounds %struct.DState, %struct.DState* %493, i32 0, i32 17
  %495 = load i32, i32* %494, align 4
  %496 = add nsw i32 %495, 1
  store i32 %496, i32* %494, align 4
  %497 = load i8, i8* %4, align 1
  %498 = zext i8 %497 to i32
  %499 = add nsw i32 %498, 4
  %500 = load %struct.DState*, %struct.DState** %3, align 8
  %501 = getelementptr inbounds %struct.DState, %struct.DState* %500, i32 0, i32 3
  store i32 %499, i32* %501, align 8
  %502 = load %struct.DState*, %struct.DState** %3, align 8
  %503 = getelementptr inbounds %struct.DState, %struct.DState* %502, i32 0, i32 14
  %504 = load i32, i32* %503, align 4
  %505 = load %struct.DState*, %struct.DState** %3, align 8
  %506 = getelementptr inbounds %struct.DState, %struct.DState* %505, i32 0, i32 9
  %507 = load i32, i32* %506, align 8
  %508 = mul i32 100000, %507
  %509 = icmp uge i32 %504, %508
  br i1 %509, label %510, label %511

; <label>:510:                                    ; preds = %478
  store i8 1, i8* %2, align 1
  br label %882

; <label>:511:                                    ; preds = %478
  %512 = load %struct.DState*, %struct.DState** %3, align 8
  %513 = getelementptr inbounds %struct.DState, %struct.DState* %512, i32 0, i32 20
  %514 = load i32*, i32** %513, align 8
  %515 = load %struct.DState*, %struct.DState** %3, align 8
  %516 = getelementptr inbounds %struct.DState, %struct.DState* %515, i32 0, i32 14
  %517 = load i32, i32* %516, align 4
  %518 = zext i32 %517 to i64
  %519 = getelementptr inbounds i32, i32* %514, i64 %518
  %520 = load i32, i32* %519, align 4
  %521 = load %struct.DState*, %struct.DState** %3, align 8
  %522 = getelementptr inbounds %struct.DState, %struct.DState* %521, i32 0, i32 14
  store i32 %520, i32* %522, align 4
  %523 = load %struct.DState*, %struct.DState** %3, align 8
  %524 = getelementptr inbounds %struct.DState, %struct.DState* %523, i32 0, i32 14
  %525 = load i32, i32* %524, align 4
  %526 = and i32 %525, 255
  %527 = trunc i32 %526 to i8
  %528 = zext i8 %527 to i32
  %529 = load %struct.DState*, %struct.DState** %3, align 8
  %530 = getelementptr inbounds %struct.DState, %struct.DState* %529, i32 0, i32 15
  store i32 %528, i32* %530, align 8
  %531 = load %struct.DState*, %struct.DState** %3, align 8
  %532 = getelementptr inbounds %struct.DState, %struct.DState* %531, i32 0, i32 14
  %533 = load i32, i32* %532, align 4
  %534 = lshr i32 %533, 8
  store i32 %534, i32* %532, align 4
  %535 = load %struct.DState*, %struct.DState** %3, align 8
  %536 = getelementptr inbounds %struct.DState, %struct.DState* %535, i32 0, i32 5
  %537 = load i32, i32* %536, align 8
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %560

; <label>:539:                                    ; preds = %511
  %540 = load %struct.DState*, %struct.DState** %3, align 8
  %541 = getelementptr inbounds %struct.DState, %struct.DState* %540, i32 0, i32 6
  %542 = load i32, i32* %541, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %543
  %545 = load i32, i32* %544, align 4
  %546 = load %struct.DState*, %struct.DState** %3, align 8
  %547 = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 5
  store i32 %545, i32* %547, align 8
  %548 = load %struct.DState*, %struct.DState** %3, align 8
  %549 = getelementptr inbounds %struct.DState, %struct.DState* %548, i32 0, i32 6
  %550 = load i32, i32* %549, align 4
  %551 = add nsw i32 %550, 1
  store i32 %551, i32* %549, align 4
  %552 = load %struct.DState*, %struct.DState** %3, align 8
  %553 = getelementptr inbounds %struct.DState, %struct.DState* %552, i32 0, i32 6
  %554 = load i32, i32* %553, align 4
  %555 = icmp eq i32 %554, 512
  br i1 %555, label %556, label %559

; <label>:556:                                    ; preds = %539
  %557 = load %struct.DState*, %struct.DState** %3, align 8
  %558 = getelementptr inbounds %struct.DState, %struct.DState* %557, i32 0, i32 6
  store i32 0, i32* %558, align 4
  br label %559

; <label>:559:                                    ; preds = %556, %539
  br label %560

; <label>:560:                                    ; preds = %559, %511
  %561 = load %struct.DState*, %struct.DState** %3, align 8
  %562 = getelementptr inbounds %struct.DState, %struct.DState* %561, i32 0, i32 5
  %563 = load i32, i32* %562, align 8
  %564 = add nsw i32 %563, -1
  store i32 %564, i32* %562, align 8
  %565 = load %struct.DState*, %struct.DState** %3, align 8
  %566 = getelementptr inbounds %struct.DState, %struct.DState* %565, i32 0, i32 5
  %567 = load i32, i32* %566, align 8
  %568 = icmp eq i32 %567, 1
  %569 = zext i1 %568 to i64
  %570 = select i1 %568, i32 1, i32 0
  %571 = load %struct.DState*, %struct.DState** %3, align 8
  %572 = getelementptr inbounds %struct.DState, %struct.DState* %571, i32 0, i32 15
  %573 = load i32, i32* %572, align 8
  %574 = xor i32 %573, %570
  store i32 %574, i32* %572, align 8
  %575 = load %struct.DState*, %struct.DState** %3, align 8
  %576 = getelementptr inbounds %struct.DState, %struct.DState* %575, i32 0, i32 17
  %577 = load i32, i32* %576, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %576, align 4
  br label %23

; <label>:579:                                    ; preds = %1
  %580 = load %struct.DState*, %struct.DState** %3, align 8
  %581 = getelementptr inbounds %struct.DState, %struct.DState* %580, i32 0, i32 25
  %582 = load i32, i32* %581, align 8
  store i32 %582, i32* %5, align 4
  %583 = load %struct.DState*, %struct.DState** %3, align 8
  %584 = getelementptr inbounds %struct.DState, %struct.DState* %583, i32 0, i32 2
  %585 = load i8, i8* %584, align 4
  store i8 %585, i8* %6, align 1
  %586 = load %struct.DState*, %struct.DState** %3, align 8
  %587 = getelementptr inbounds %struct.DState, %struct.DState* %586, i32 0, i32 3
  %588 = load i32, i32* %587, align 8
  store i32 %588, i32* %7, align 4
  %589 = load %struct.DState*, %struct.DState** %3, align 8
  %590 = getelementptr inbounds %struct.DState, %struct.DState* %589, i32 0, i32 17
  %591 = load i32, i32* %590, align 4
  store i32 %591, i32* %8, align 4
  %592 = load %struct.DState*, %struct.DState** %3, align 8
  %593 = getelementptr inbounds %struct.DState, %struct.DState* %592, i32 0, i32 15
  %594 = load i32, i32* %593, align 8
  store i32 %594, i32* %9, align 4
  %595 = load %struct.DState*, %struct.DState** %3, align 8
  %596 = getelementptr inbounds %struct.DState, %struct.DState* %595, i32 0, i32 20
  %597 = load i32*, i32** %596, align 8
  store i32* %597, i32** %10, align 8
  %598 = load %struct.DState*, %struct.DState** %3, align 8
  %599 = getelementptr inbounds %struct.DState, %struct.DState* %598, i32 0, i32 14
  %600 = load i32, i32* %599, align 4
  store i32 %600, i32* %11, align 4
  %601 = load %struct.DState*, %struct.DState** %3, align 8
  %602 = getelementptr inbounds %struct.DState, %struct.DState* %601, i32 0, i32 0
  %603 = load %struct.bz_stream*, %struct.bz_stream** %602, align 8
  %604 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %603, i32 0, i32 4
  %605 = load i8*, i8** %604, align 8
  store i8* %605, i8** %12, align 8
  %606 = load %struct.DState*, %struct.DState** %3, align 8
  %607 = getelementptr inbounds %struct.DState, %struct.DState* %606, i32 0, i32 0
  %608 = load %struct.bz_stream*, %struct.bz_stream** %607, align 8
  %609 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %608, i32 0, i32 5
  %610 = load i32, i32* %609, align 8
  store i32 %610, i32* %13, align 4
  %611 = load %struct.DState*, %struct.DState** %3, align 8
  %612 = getelementptr inbounds %struct.DState, %struct.DState* %611, i32 0, i32 9
  %613 = load i32, i32* %612, align 8
  store i32 %613, i32* %14, align 4
  %614 = load i32, i32* %13, align 4
  store i32 %614, i32* %15, align 4
  %615 = load %struct.DState*, %struct.DState** %3, align 8
  %616 = getelementptr inbounds %struct.DState, %struct.DState* %615, i32 0, i32 51
  %617 = load i32, i32* %616, align 8
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %16, align 4
  br label %619

; <label>:619:                                    ; preds = %579, %739, %745, %770, %776, %806
  %620 = load i32, i32* %7, align 4
  %621 = icmp sgt i32 %620, 0
  br i1 %621, label %622, label %674

; <label>:622:                                    ; preds = %619
  br label %623

; <label>:623:                                    ; preds = %622, %631
  %624 = load i32, i32* %13, align 4
  %625 = icmp eq i32 %624, 0
  br i1 %625, label %626, label %627

; <label>:626:                                    ; preds = %623
  br label %820

; <label>:627:                                    ; preds = %623
  %628 = load i32, i32* %7, align 4
  %629 = icmp eq i32 %628, 1
  br i1 %629, label %630, label %631

; <label>:630:                                    ; preds = %627
  br label %651

; <label>:631:                                    ; preds = %627
  %632 = load i8, i8* %6, align 1
  %633 = load i8*, i8** %12, align 8
  store i8 %632, i8* %633, align 1
  %634 = load i32, i32* %5, align 4
  %635 = shl i32 %634, 8
  %636 = load i32, i32* %5, align 4
  %637 = lshr i32 %636, 24
  %638 = load i8, i8* %6, align 1
  %639 = zext i8 %638 to i32
  %640 = xor i32 %637, %639
  %641 = zext i32 %640 to i64
  %642 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %641
  %643 = load i32, i32* %642, align 4
  %644 = xor i32 %635, %643
  store i32 %644, i32* %5, align 4
  %645 = load i32, i32* %7, align 4
  %646 = add nsw i32 %645, -1
  store i32 %646, i32* %7, align 4
  %647 = load i8*, i8** %12, align 8
  %648 = getelementptr inbounds i8, i8* %647, i32 1
  store i8* %648, i8** %12, align 8
  %649 = load i32, i32* %13, align 4
  %650 = add i32 %649, -1
  store i32 %650, i32* %13, align 4
  br label %623

; <label>:651:                                    ; preds = %630
  br label %652

; <label>:652:                                    ; preds = %716, %709, %651
  %653 = load i32, i32* %13, align 4
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %655, label %656

; <label>:655:                                    ; preds = %652
  store i32 1, i32* %7, align 4
  br label %820

; <label>:656:                                    ; preds = %652
  %657 = load i8, i8* %6, align 1
  %658 = load i8*, i8** %12, align 8
  store i8 %657, i8* %658, align 1
  %659 = load i32, i32* %5, align 4
  %660 = shl i32 %659, 8
  %661 = load i32, i32* %5, align 4
  %662 = lshr i32 %661, 24
  %663 = load i8, i8* %6, align 1
  %664 = zext i8 %663 to i32
  %665 = xor i32 %662, %664
  %666 = zext i32 %665 to i64
  %667 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %666
  %668 = load i32, i32* %667, align 4
  %669 = xor i32 %660, %668
  store i32 %669, i32* %5, align 4
  %670 = load i8*, i8** %12, align 8
  %671 = getelementptr inbounds i8, i8* %670, i32 1
  store i8* %671, i8** %12, align 8
  %672 = load i32, i32* %13, align 4
  %673 = add i32 %672, -1
  store i32 %673, i32* %13, align 4
  br label %674

; <label>:674:                                    ; preds = %656, %619
  %675 = load i32, i32* %8, align 4
  %676 = load i32, i32* %16, align 4
  %677 = icmp sgt i32 %675, %676
  br i1 %677, label %678, label %679

; <label>:678:                                    ; preds = %674
  store i8 1, i8* %2, align 1
  br label %882

; <label>:679:                                    ; preds = %674
  %680 = load i32, i32* %8, align 4
  %681 = load i32, i32* %16, align 4
  %682 = icmp eq i32 %680, %681
  br i1 %682, label %683, label %684

; <label>:683:                                    ; preds = %679
  store i32 0, i32* %7, align 4
  br label %820

; <label>:684:                                    ; preds = %679
  %685 = load i32, i32* %9, align 4
  %686 = trunc i32 %685 to i8
  store i8 %686, i8* %6, align 1
  %687 = load i32, i32* %11, align 4
  %688 = load i32, i32* %14, align 4
  %689 = mul i32 100000, %688
  %690 = icmp uge i32 %687, %689
  br i1 %690, label %691, label %692

; <label>:691:                                    ; preds = %684
  store i8 1, i8* %2, align 1
  br label %882

; <label>:692:                                    ; preds = %684
  %693 = load i32*, i32** %10, align 8
  %694 = load i32, i32* %11, align 4
  %695 = zext i32 %694 to i64
  %696 = getelementptr inbounds i32, i32* %693, i64 %695
  %697 = load i32, i32* %696, align 4
  store i32 %697, i32* %11, align 4
  %698 = load i32, i32* %11, align 4
  %699 = and i32 %698, 255
  %700 = trunc i32 %699 to i8
  store i8 %700, i8* %4, align 1
  %701 = load i32, i32* %11, align 4
  %702 = lshr i32 %701, 8
  store i32 %702, i32* %11, align 4
  %703 = load i32, i32* %8, align 4
  %704 = add nsw i32 %703, 1
  store i32 %704, i32* %8, align 4
  %705 = load i8, i8* %4, align 1
  %706 = zext i8 %705 to i32
  %707 = load i32, i32* %9, align 4
  %708 = icmp ne i32 %706, %707
  br i1 %708, label %709, label %712

; <label>:709:                                    ; preds = %692
  %710 = load i8, i8* %4, align 1
  %711 = zext i8 %710 to i32
  store i32 %711, i32* %9, align 4
  br label %652

; <label>:712:                                    ; preds = %692
  %713 = load i32, i32* %8, align 4
  %714 = load i32, i32* %16, align 4
  %715 = icmp eq i32 %713, %714
  br i1 %715, label %716, label %717

; <label>:716:                                    ; preds = %712
  br label %652

; <label>:717:                                    ; preds = %712
  store i32 2, i32* %7, align 4
  %718 = load i32, i32* %11, align 4
  %719 = load i32, i32* %14, align 4
  %720 = mul i32 100000, %719
  %721 = icmp uge i32 %718, %720
  br i1 %721, label %722, label %723

; <label>:722:                                    ; preds = %717
  store i8 1, i8* %2, align 1
  br label %882

; <label>:723:                                    ; preds = %717
  %724 = load i32*, i32** %10, align 8
  %725 = load i32, i32* %11, align 4
  %726 = zext i32 %725 to i64
  %727 = getelementptr inbounds i32, i32* %724, i64 %726
  %728 = load i32, i32* %727, align 4
  store i32 %728, i32* %11, align 4
  %729 = load i32, i32* %11, align 4
  %730 = and i32 %729, 255
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %4, align 1
  %732 = load i32, i32* %11, align 4
  %733 = lshr i32 %732, 8
  store i32 %733, i32* %11, align 4
  %734 = load i32, i32* %8, align 4
  %735 = add nsw i32 %734, 1
  store i32 %735, i32* %8, align 4
  %736 = load i32, i32* %8, align 4
  %737 = load i32, i32* %16, align 4
  %738 = icmp eq i32 %736, %737
  br i1 %738, label %739, label %740

; <label>:739:                                    ; preds = %723
  br label %619

; <label>:740:                                    ; preds = %723
  %741 = load i8, i8* %4, align 1
  %742 = zext i8 %741 to i32
  %743 = load i32, i32* %9, align 4
  %744 = icmp ne i32 %742, %743
  br i1 %744, label %745, label %748

; <label>:745:                                    ; preds = %740
  %746 = load i8, i8* %4, align 1
  %747 = zext i8 %746 to i32
  store i32 %747, i32* %9, align 4
  br label %619

; <label>:748:                                    ; preds = %740
  store i32 3, i32* %7, align 4
  %749 = load i32, i32* %11, align 4
  %750 = load i32, i32* %14, align 4
  %751 = mul i32 100000, %750
  %752 = icmp uge i32 %749, %751
  br i1 %752, label %753, label %754

; <label>:753:                                    ; preds = %748
  store i8 1, i8* %2, align 1
  br label %882

; <label>:754:                                    ; preds = %748
  %755 = load i32*, i32** %10, align 8
  %756 = load i32, i32* %11, align 4
  %757 = zext i32 %756 to i64
  %758 = getelementptr inbounds i32, i32* %755, i64 %757
  %759 = load i32, i32* %758, align 4
  store i32 %759, i32* %11, align 4
  %760 = load i32, i32* %11, align 4
  %761 = and i32 %760, 255
  %762 = trunc i32 %761 to i8
  store i8 %762, i8* %4, align 1
  %763 = load i32, i32* %11, align 4
  %764 = lshr i32 %763, 8
  store i32 %764, i32* %11, align 4
  %765 = load i32, i32* %8, align 4
  %766 = add nsw i32 %765, 1
  store i32 %766, i32* %8, align 4
  %767 = load i32, i32* %8, align 4
  %768 = load i32, i32* %16, align 4
  %769 = icmp eq i32 %767, %768
  br i1 %769, label %770, label %771

; <label>:770:                                    ; preds = %754
  br label %619

; <label>:771:                                    ; preds = %754
  %772 = load i8, i8* %4, align 1
  %773 = zext i8 %772 to i32
  %774 = load i32, i32* %9, align 4
  %775 = icmp ne i32 %773, %774
  br i1 %775, label %776, label %779

; <label>:776:                                    ; preds = %771
  %777 = load i8, i8* %4, align 1
  %778 = zext i8 %777 to i32
  store i32 %778, i32* %9, align 4
  br label %619

; <label>:779:                                    ; preds = %771
  %780 = load i32, i32* %11, align 4
  %781 = load i32, i32* %14, align 4
  %782 = mul i32 100000, %781
  %783 = icmp uge i32 %780, %782
  br i1 %783, label %784, label %785

; <label>:784:                                    ; preds = %779
  store i8 1, i8* %2, align 1
  br label %882

; <label>:785:                                    ; preds = %779
  %786 = load i32*, i32** %10, align 8
  %787 = load i32, i32* %11, align 4
  %788 = zext i32 %787 to i64
  %789 = getelementptr inbounds i32, i32* %786, i64 %788
  %790 = load i32, i32* %789, align 4
  store i32 %790, i32* %11, align 4
  %791 = load i32, i32* %11, align 4
  %792 = and i32 %791, 255
  %793 = trunc i32 %792 to i8
  store i8 %793, i8* %4, align 1
  %794 = load i32, i32* %11, align 4
  %795 = lshr i32 %794, 8
  store i32 %795, i32* %11, align 4
  %796 = load i32, i32* %8, align 4
  %797 = add nsw i32 %796, 1
  store i32 %797, i32* %8, align 4
  %798 = load i8, i8* %4, align 1
  %799 = zext i8 %798 to i32
  %800 = add nsw i32 %799, 4
  store i32 %800, i32* %7, align 4
  %801 = load i32, i32* %11, align 4
  %802 = load i32, i32* %14, align 4
  %803 = mul i32 100000, %802
  %804 = icmp uge i32 %801, %803
  br i1 %804, label %805, label %806

; <label>:805:                                    ; preds = %785
  store i8 1, i8* %2, align 1
  br label %882

; <label>:806:                                    ; preds = %785
  %807 = load i32*, i32** %10, align 8
  %808 = load i32, i32* %11, align 4
  %809 = zext i32 %808 to i64
  %810 = getelementptr inbounds i32, i32* %807, i64 %809
  %811 = load i32, i32* %810, align 4
  store i32 %811, i32* %11, align 4
  %812 = load i32, i32* %11, align 4
  %813 = and i32 %812, 255
  %814 = trunc i32 %813 to i8
  %815 = zext i8 %814 to i32
  store i32 %815, i32* %9, align 4
  %816 = load i32, i32* %11, align 4
  %817 = lshr i32 %816, 8
  store i32 %817, i32* %11, align 4
  %818 = load i32, i32* %8, align 4
  %819 = add nsw i32 %818, 1
  store i32 %819, i32* %8, align 4
  br label %619

; <label>:820:                                    ; preds = %683, %655, %626
  %821 = load %struct.DState*, %struct.DState** %3, align 8
  %822 = getelementptr inbounds %struct.DState, %struct.DState* %821, i32 0, i32 0
  %823 = load %struct.bz_stream*, %struct.bz_stream** %822, align 8
  %824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %823, i32 0, i32 6
  %825 = load i32, i32* %824, align 4
  store i32 %825, i32* %17, align 4
  %826 = load i32, i32* %15, align 4
  %827 = load i32, i32* %13, align 4
  %828 = sub i32 %826, %827
  %829 = load %struct.DState*, %struct.DState** %3, align 8
  %830 = getelementptr inbounds %struct.DState, %struct.DState* %829, i32 0, i32 0
  %831 = load %struct.bz_stream*, %struct.bz_stream** %830, align 8
  %832 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %831, i32 0, i32 6
  %833 = load i32, i32* %832, align 4
  %834 = add i32 %833, %828
  store i32 %834, i32* %832, align 4
  %835 = load %struct.DState*, %struct.DState** %3, align 8
  %836 = getelementptr inbounds %struct.DState, %struct.DState* %835, i32 0, i32 0
  %837 = load %struct.bz_stream*, %struct.bz_stream** %836, align 8
  %838 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %837, i32 0, i32 6
  %839 = load i32, i32* %838, align 4
  %840 = load i32, i32* %17, align 4
  %841 = icmp ult i32 %839, %840
  br i1 %841, label %842, label %849

; <label>:842:                                    ; preds = %820
  %843 = load %struct.DState*, %struct.DState** %3, align 8
  %844 = getelementptr inbounds %struct.DState, %struct.DState* %843, i32 0, i32 0
  %845 = load %struct.bz_stream*, %struct.bz_stream** %844, align 8
  %846 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %845, i32 0, i32 7
  %847 = load i32, i32* %846, align 8
  %848 = add i32 %847, 1
  store i32 %848, i32* %846, align 8
  br label %849

; <label>:849:                                    ; preds = %842, %820
  %850 = load i32, i32* %5, align 4
  %851 = load %struct.DState*, %struct.DState** %3, align 8
  %852 = getelementptr inbounds %struct.DState, %struct.DState* %851, i32 0, i32 25
  store i32 %850, i32* %852, align 8
  %853 = load i8, i8* %6, align 1
  %854 = load %struct.DState*, %struct.DState** %3, align 8
  %855 = getelementptr inbounds %struct.DState, %struct.DState* %854, i32 0, i32 2
  store i8 %853, i8* %855, align 4
  %856 = load i32, i32* %7, align 4
  %857 = load %struct.DState*, %struct.DState** %3, align 8
  %858 = getelementptr inbounds %struct.DState, %struct.DState* %857, i32 0, i32 3
  store i32 %856, i32* %858, align 8
  %859 = load i32, i32* %8, align 4
  %860 = load %struct.DState*, %struct.DState** %3, align 8
  %861 = getelementptr inbounds %struct.DState, %struct.DState* %860, i32 0, i32 17
  store i32 %859, i32* %861, align 4
  %862 = load i32, i32* %9, align 4
  %863 = load %struct.DState*, %struct.DState** %3, align 8
  %864 = getelementptr inbounds %struct.DState, %struct.DState* %863, i32 0, i32 15
  store i32 %862, i32* %864, align 8
  %865 = load i32*, i32** %10, align 8
  %866 = load %struct.DState*, %struct.DState** %3, align 8
  %867 = getelementptr inbounds %struct.DState, %struct.DState* %866, i32 0, i32 20
  store i32* %865, i32** %867, align 8
  %868 = load i32, i32* %11, align 4
  %869 = load %struct.DState*, %struct.DState** %3, align 8
  %870 = getelementptr inbounds %struct.DState, %struct.DState* %869, i32 0, i32 14
  store i32 %868, i32* %870, align 4
  %871 = load i8*, i8** %12, align 8
  %872 = load %struct.DState*, %struct.DState** %3, align 8
  %873 = getelementptr inbounds %struct.DState, %struct.DState* %872, i32 0, i32 0
  %874 = load %struct.bz_stream*, %struct.bz_stream** %873, align 8
  %875 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %874, i32 0, i32 4
  store i8* %871, i8** %875, align 8
  %876 = load i32, i32* %13, align 4
  %877 = load %struct.DState*, %struct.DState** %3, align 8
  %878 = getelementptr inbounds %struct.DState, %struct.DState* %877, i32 0, i32 0
  %879 = load %struct.bz_stream*, %struct.bz_stream** %878, align 8
  %880 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %879, i32 0, i32 5
  store i32 %876, i32* %880, align 8
  br label %881

; <label>:881:                                    ; preds = %849
  store i8 0, i8* %2, align 1
  br label %882

; <label>:882:                                    ; preds = %881, %805, %784, %753, %722, %691, %678, %510, %431, %335, %237, %139, %121, %111, %31
  %883 = load i8, i8* %2, align 1
  ret i8 %883
}

declare i32 @BZ2_decompress(%struct.DState*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzDecompressEnd(%struct.bz_stream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bz_stream*, align 8
  %4 = alloca %struct.DState*, align 8
  store %struct.bz_stream* %0, %struct.bz_stream** %3, align 8
  %5 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %6 = icmp eq %struct.bz_stream* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:8:                                      ; preds = %1
  %9 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %10 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %9, i32 0, i32 8
  %11 = load i8*, i8** %10, align 8
  %12 = bitcast i8* %11 to %struct.DState*
  store %struct.DState* %12, %struct.DState** %4, align 8
  %13 = load %struct.DState*, %struct.DState** %4, align 8
  %14 = icmp eq %struct.DState* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %8
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:16:                                     ; preds = %8
  %17 = load %struct.DState*, %struct.DState** %4, align 8
  %18 = getelementptr inbounds %struct.DState, %struct.DState* %17, i32 0, i32 0
  %19 = load %struct.bz_stream*, %struct.bz_stream** %18, align 8
  %20 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %21 = icmp ne %struct.bz_stream* %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  store i32 -2, i32* %2, align 4
  br label %82

; <label>:23:                                     ; preds = %16
  %24 = load %struct.DState*, %struct.DState** %4, align 8
  %25 = getelementptr inbounds %struct.DState, %struct.DState* %24, i32 0, i32 20
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

; <label>:28:                                     ; preds = %23
  %29 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %30 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %29, i32 0, i32 10
  %31 = load void (i8*, i8*)*, void (i8*, i8*)** %30, align 8
  %32 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %33 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %32, i32 0, i32 11
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.DState*, %struct.DState** %4, align 8
  %36 = getelementptr inbounds %struct.DState, %struct.DState* %35, i32 0, i32 20
  %37 = load i32*, i32** %36, align 8
  %38 = bitcast i32* %37 to i8*
  call void %31(i8* %34, i8* %38)
  br label %39

; <label>:39:                                     ; preds = %28, %23
  %40 = load %struct.DState*, %struct.DState** %4, align 8
  %41 = getelementptr inbounds %struct.DState, %struct.DState* %40, i32 0, i32 21
  %42 = load i16*, i16** %41, align 8
  %43 = icmp ne i16* %42, null
  br i1 %43, label %44, label %55

; <label>:44:                                     ; preds = %39
  %45 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %46 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %45, i32 0, i32 10
  %47 = load void (i8*, i8*)*, void (i8*, i8*)** %46, align 8
  %48 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 11
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.DState*, %struct.DState** %4, align 8
  %52 = getelementptr inbounds %struct.DState, %struct.DState* %51, i32 0, i32 21
  %53 = load i16*, i16** %52, align 8
  %54 = bitcast i16* %53 to i8*
  call void %47(i8* %50, i8* %54)
  br label %55

; <label>:55:                                     ; preds = %44, %39
  %56 = load %struct.DState*, %struct.DState** %4, align 8
  %57 = getelementptr inbounds %struct.DState, %struct.DState* %56, i32 0, i32 22
  %58 = load i8*, i8** %57, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %70

; <label>:60:                                     ; preds = %55
  %61 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %62 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %61, i32 0, i32 10
  %63 = load void (i8*, i8*)*, void (i8*, i8*)** %62, align 8
  %64 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %64, i32 0, i32 11
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.DState*, %struct.DState** %4, align 8
  %68 = getelementptr inbounds %struct.DState, %struct.DState* %67, i32 0, i32 22
  %69 = load i8*, i8** %68, align 8
  call void %63(i8* %66, i8* %69)
  br label %70

; <label>:70:                                     ; preds = %60, %55
  %71 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %72 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %71, i32 0, i32 10
  %73 = load void (i8*, i8*)*, void (i8*, i8*)** %72, align 8
  %74 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 11
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %78 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %77, i32 0, i32 8
  %79 = load i8*, i8** %78, align 8
  call void %73(i8* %76, i8* %79)
  %80 = load %struct.bz_stream*, %struct.bz_stream** %3, align 8
  %81 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %80, i32 0, i32 8
  store i8* null, i8** %81, align 8
  store i32 0, i32* %2, align 4
  br label %82

; <label>:82:                                     ; preds = %70, %22, %15, %7
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzWriteOpen(i32*, %struct._IO_FILE*, i32, i32, i32) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct._IO_FILE*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %7, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.bzFile* null, %struct.bzFile** %13, align 8
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %5
  %17 = load i32*, i32** %7, align 8
  store i32 0, i32* %17, align 4
  br label %18

; <label>:18:                                     ; preds = %16, %5
  %19 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %20 = icmp ne %struct.bzFile* %19, null
  br i1 %20, label %21, label %24

; <label>:21:                                     ; preds = %18
  %22 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %23 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %22, i32 0, i32 5
  store i32 0, i32* %23, align 8
  br label %24

; <label>:24:                                     ; preds = %21, %18
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %26 = icmp eq %struct._IO_FILE* %25, null
  br i1 %26, label %45, label %27

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 1
  br i1 %29, label %45, label %30

; <label>:30:                                     ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = icmp sgt i32 %31, 9
  br i1 %32, label %45, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %11, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %45, label %36

; <label>:36:                                     ; preds = %33
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 250
  br i1 %38, label %45, label %39

; <label>:39:                                     ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %45, label %42

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %10, align 4
  %44 = icmp sgt i32 %43, 4
  br i1 %44, label %45, label %57

; <label>:45:                                     ; preds = %42, %39, %36, %33, %30, %27, %24
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %50

; <label>:48:                                     ; preds = %45
  %49 = load i32*, i32** %7, align 8
  store i32 -2, i32* %49, align 4
  br label %50

; <label>:50:                                     ; preds = %48, %45
  %51 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %52 = icmp ne %struct.bzFile* %51, null
  br i1 %52, label %53, label %56

; <label>:53:                                     ; preds = %50
  %54 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %55 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %54, i32 0, i32 5
  store i32 -2, i32* %55, align 8
  br label %56

; <label>:56:                                     ; preds = %53, %50
  store i8* null, i8** %6, align 8
  br label %156

; <label>:57:                                     ; preds = %42
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %59 = call i32 @ferror(%struct._IO_FILE* %58) #8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %73

; <label>:61:                                     ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = load i32*, i32** %7, align 8
  store i32 -6, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %61
  %67 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %68 = icmp ne %struct.bzFile* %67, null
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %66
  %70 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 5
  store i32 -6, i32* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %66
  store i8* null, i8** %6, align 8
  br label %156

; <label>:73:                                     ; preds = %57
  %74 = call noalias i8* @malloc(i64 5104) #8
  %75 = bitcast i8* %74 to %struct.bzFile*
  store %struct.bzFile* %75, %struct.bzFile** %13, align 8
  %76 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %77 = icmp eq %struct.bzFile* %76, null
  br i1 %77, label %78, label %90

; <label>:78:                                     ; preds = %73
  %79 = load i32*, i32** %7, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %83

; <label>:81:                                     ; preds = %78
  %82 = load i32*, i32** %7, align 8
  store i32 -3, i32* %82, align 4
  br label %83

; <label>:83:                                     ; preds = %81, %78
  %84 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %85 = icmp ne %struct.bzFile* %84, null
  br i1 %85, label %86, label %89

; <label>:86:                                     ; preds = %83
  %87 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %88 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %87, i32 0, i32 5
  store i32 -3, i32* %88, align 8
  br label %89

; <label>:89:                                     ; preds = %86, %83
  store i8* null, i8** %6, align 8
  br label %156

; <label>:90:                                     ; preds = %73
  %91 = load i32*, i32** %7, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %90
  %94 = load i32*, i32** %7, align 8
  store i32 0, i32* %94, align 4
  br label %95

; <label>:95:                                     ; preds = %93, %90
  %96 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %97 = icmp ne %struct.bzFile* %96, null
  br i1 %97, label %98, label %101

; <label>:98:                                     ; preds = %95
  %99 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %100 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %99, i32 0, i32 5
  store i32 0, i32* %100, align 8
  br label %101

; <label>:101:                                    ; preds = %98, %95
  %102 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %102, i32 0, i32 6
  store i8 0, i8* %103, align 4
  %104 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %105 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %8, align 8
  %107 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %108 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %107, i32 0, i32 0
  store %struct._IO_FILE* %106, %struct._IO_FILE** %108, align 8
  %109 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %110 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %109, i32 0, i32 3
  store i8 1, i8* %110, align 4
  %111 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %112 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %112, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %113, align 8
  %114 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %115 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %115, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %116, align 8
  %117 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %118 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %118, i32 0, i32 11
  store i8* null, i8** %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %123

; <label>:122:                                    ; preds = %101
  store i32 30, i32* %11, align 4
  br label %123

; <label>:123:                                    ; preds = %122, %101
  %124 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %125 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %124, i32 0, i32 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %125, i32 %126, i32 %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %148

; <label>:132:                                    ; preds = %123
  %133 = load i32*, i32** %7, align 8
  %134 = icmp ne i32* %133, null
  br i1 %134, label %135, label %138

; <label>:135:                                    ; preds = %132
  %136 = load i32, i32* %12, align 4
  %137 = load i32*, i32** %7, align 8
  store i32 %136, i32* %137, align 4
  br label %138

; <label>:138:                                    ; preds = %135, %132
  %139 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %140 = icmp ne %struct.bzFile* %139, null
  br i1 %140, label %141, label %145

; <label>:141:                                    ; preds = %138
  %142 = load i32, i32* %12, align 4
  %143 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %144 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 8
  br label %145

; <label>:145:                                    ; preds = %141, %138
  %146 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %147 = bitcast %struct.bzFile* %146 to i8*
  call void @free(i8* %147) #8
  store i8* null, i8** %6, align 8
  br label %156

; <label>:148:                                    ; preds = %123
  %149 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %150 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %150, i32 0, i32 1
  store i32 0, i32* %151, align 8
  %152 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %153 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %152, i32 0, i32 6
  store i8 1, i8* %153, align 4
  %154 = load %struct.bzFile*, %struct.bzFile** %13, align 8
  %155 = bitcast %struct.bzFile* %154 to i8*
  store i8* %155, i8** %6, align 8
  br label %156

; <label>:156:                                    ; preds = %148, %145, %89, %72, %56
  %157 = load i8*, i8** %6, align 8
  ret i8* %157
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzWrite(i32*, i8*, i8*, i32) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  store %struct.bzFile* %14, %struct.bzFile** %12, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %5, align 8
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %4
  %20 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %27 = icmp eq %struct.bzFile* %26, null
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %7, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %31, %28, %25
  %35 = load i32*, i32** %5, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 -2, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %41 = icmp ne %struct.bzFile* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %43, i32 0, i32 5
  store i32 -2, i32* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %42, %39
  br label %197

; <label>:46:                                     ; preds = %31
  %47 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 4
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %63, label %51

; <label>:51:                                     ; preds = %46
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %51
  %55 = load i32*, i32** %5, align 8
  store i32 -1, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %58 = icmp ne %struct.bzFile* %57, null
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 -1, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %56
  br label %197

; <label>:63:                                     ; preds = %46
  %64 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %65 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %64, i32 0, i32 0
  %66 = load %struct._IO_FILE*, %struct._IO_FILE** %65, align 8
  %67 = call i32 @ferror(%struct._IO_FILE* %66) #8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

; <label>:69:                                     ; preds = %63
  %70 = load i32*, i32** %5, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %69
  %73 = load i32*, i32** %5, align 8
  store i32 -6, i32* %73, align 4
  br label %74

; <label>:74:                                     ; preds = %72, %69
  %75 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %76 = icmp ne %struct.bzFile* %75, null
  br i1 %76, label %77, label %80

; <label>:77:                                     ; preds = %74
  %78 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %79 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %78, i32 0, i32 5
  store i32 -6, i32* %79, align 8
  br label %80

; <label>:80:                                     ; preds = %77, %74
  br label %197

; <label>:81:                                     ; preds = %63
  %82 = load i32, i32* %8, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %89

; <label>:87:                                     ; preds = %84
  %88 = load i32*, i32** %5, align 8
  store i32 0, i32* %88, align 4
  br label %89

; <label>:89:                                     ; preds = %87, %84
  %90 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %91 = icmp ne %struct.bzFile* %90, null
  br i1 %91, label %92, label %95

; <label>:92:                                     ; preds = %89
  %93 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %94 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %93, i32 0, i32 5
  store i32 0, i32* %94, align 8
  br label %95

; <label>:95:                                     ; preds = %92, %89
  br label %197

; <label>:96:                                     ; preds = %81
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %99 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  br label %105

; <label>:105:                                    ; preds = %96, %196
  %106 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %107 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 5
  store i32 5000, i32* %108, align 8
  %109 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %110 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %109, i32 0, i32 1
  %111 = getelementptr inbounds [5000 x i8], [5000 x i8]* %110, i32 0, i32 0
  %112 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %113 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %113, i32 0, i32 4
  store i8* %111, i8** %114, align 8
  %115 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %116 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %115, i32 0, i32 4
  %117 = call i32 @BZ2_bzCompress(%struct.bz_stream* %116, i32 0)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 1
  br i1 %119, label %120, label %134

; <label>:120:                                    ; preds = %105
  %121 = load i32*, i32** %5, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %126

; <label>:123:                                    ; preds = %120
  %124 = load i32, i32* %11, align 4
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %126

; <label>:126:                                    ; preds = %123, %120
  %127 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %128 = icmp ne %struct.bzFile* %127, null
  br i1 %128, label %129, label %133

; <label>:129:                                    ; preds = %126
  %130 = load i32, i32* %11, align 4
  %131 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %132 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %131, i32 0, i32 5
  store i32 %130, i32* %132, align 8
  br label %133

; <label>:133:                                    ; preds = %129, %126
  br label %197

; <label>:134:                                    ; preds = %105
  %135 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %136 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 8
  %139 = icmp ult i32 %138, 5000
  br i1 %139, label %140, label %178

; <label>:140:                                    ; preds = %134
  %141 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %142 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = sub i32 5000, %144
  store i32 %145, i32* %9, align 4
  %146 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %147 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %146, i32 0, i32 1
  %148 = getelementptr inbounds [5000 x i8], [5000 x i8]* %147, i32 0, i32 0
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %152 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %151, i32 0, i32 0
  %153 = load %struct._IO_FILE*, %struct._IO_FILE** %152, align 8
  %154 = call i64 @fwrite(i8* %148, i64 1, i64 %150, %struct._IO_FILE* %153)
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %10, align 4
  %158 = icmp ne i32 %156, %157
  br i1 %158, label %165, label %159

; <label>:159:                                    ; preds = %140
  %160 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %161 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %160, i32 0, i32 0
  %162 = load %struct._IO_FILE*, %struct._IO_FILE** %161, align 8
  %163 = call i32 @ferror(%struct._IO_FILE* %162) #8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %177

; <label>:165:                                    ; preds = %159, %140
  %166 = load i32*, i32** %5, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %170

; <label>:168:                                    ; preds = %165
  %169 = load i32*, i32** %5, align 8
  store i32 -6, i32* %169, align 4
  br label %170

; <label>:170:                                    ; preds = %168, %165
  %171 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %172 = icmp ne %struct.bzFile* %171, null
  br i1 %172, label %173, label %176

; <label>:173:                                    ; preds = %170
  %174 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %175 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %174, i32 0, i32 5
  store i32 -6, i32* %175, align 8
  br label %176

; <label>:176:                                    ; preds = %173, %170
  br label %197

; <label>:177:                                    ; preds = %159
  br label %178

; <label>:178:                                    ; preds = %177, %134
  %179 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %180 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %179, i32 0, i32 4
  %181 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %196

; <label>:184:                                    ; preds = %178
  %185 = load i32*, i32** %5, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %189

; <label>:187:                                    ; preds = %184
  %188 = load i32*, i32** %5, align 8
  store i32 0, i32* %188, align 4
  br label %189

; <label>:189:                                    ; preds = %187, %184
  %190 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %191 = icmp ne %struct.bzFile* %190, null
  br i1 %191, label %192, label %195

; <label>:192:                                    ; preds = %189
  %193 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %194 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %193, i32 0, i32 5
  store i32 0, i32* %194, align 8
  br label %195

; <label>:195:                                    ; preds = %192, %189
  br label %197

; <label>:196:                                    ; preds = %178
  br label %105

; <label>:197:                                    ; preds = %195, %176, %133, %95, %80, %62, %45
  ret void
}

declare i64 @fwrite(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzWriteClose(i32*, i8*, i32, i32*, i32*) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32*, i32** %9, align 8
  %15 = load i32*, i32** %10, align 8
  call void @BZ2_bzWriteClose64(i32* %11, i8* %12, i32 %13, i32* %14, i32* null, i32* %15, i32* null)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzWriteClose64(i32*, i8*, i32, i32*, i32*, i32*, i32*) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = bitcast i8* %19 to %struct.bzFile*
  store %struct.bzFile* %20, %struct.bzFile** %18, align 8
  %21 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %22 = icmp eq %struct.bzFile* %21, null
  br i1 %22, label %23, label %35

; <label>:23:                                     ; preds = %7
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23
  %27 = load i32*, i32** %8, align 8
  store i32 0, i32* %27, align 4
  br label %28

; <label>:28:                                     ; preds = %26, %23
  %29 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %30 = icmp ne %struct.bzFile* %29, null
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %33 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %32, i32 0, i32 5
  store i32 0, i32* %33, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %28
  br label %266

; <label>:35:                                     ; preds = %7
  %36 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %37 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %36, i32 0, i32 3
  %38 = load i8, i8* %37, align 4
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %52, label %40

; <label>:40:                                     ; preds = %35
  %41 = load i32*, i32** %8, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

; <label>:43:                                     ; preds = %40
  %44 = load i32*, i32** %8, align 8
  store i32 -1, i32* %44, align 4
  br label %45

; <label>:45:                                     ; preds = %43, %40
  %46 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %47 = icmp ne %struct.bzFile* %46, null
  br i1 %47, label %48, label %51

; <label>:48:                                     ; preds = %45
  %49 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %50 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %49, i32 0, i32 5
  store i32 -1, i32* %50, align 8
  br label %51

; <label>:51:                                     ; preds = %48, %45
  br label %266

; <label>:52:                                     ; preds = %35
  %53 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %54 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %53, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %54, align 8
  %56 = call i32 @ferror(%struct._IO_FILE* %55) #8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

; <label>:58:                                     ; preds = %52
  %59 = load i32*, i32** %8, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %63

; <label>:61:                                     ; preds = %58
  %62 = load i32*, i32** %8, align 8
  store i32 -6, i32* %62, align 4
  br label %63

; <label>:63:                                     ; preds = %61, %58
  %64 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %65 = icmp ne %struct.bzFile* %64, null
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %63
  %67 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %68 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %67, i32 0, i32 5
  store i32 -6, i32* %68, align 8
  br label %69

; <label>:69:                                     ; preds = %66, %63
  br label %266

; <label>:70:                                     ; preds = %52
  %71 = load i32*, i32** %11, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %70
  %74 = load i32*, i32** %11, align 8
  store i32 0, i32* %74, align 4
  br label %75

; <label>:75:                                     ; preds = %73, %70
  %76 = load i32*, i32** %12, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %78, label %80

; <label>:78:                                     ; preds = %75
  %79 = load i32*, i32** %12, align 8
  store i32 0, i32* %79, align 4
  br label %80

; <label>:80:                                     ; preds = %78, %75
  %81 = load i32*, i32** %13, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %85

; <label>:83:                                     ; preds = %80
  %84 = load i32*, i32** %13, align 8
  store i32 0, i32* %84, align 4
  br label %85

; <label>:85:                                     ; preds = %83, %80
  %86 = load i32*, i32** %14, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %90

; <label>:88:                                     ; preds = %85
  %89 = load i32*, i32** %14, align 8
  store i32 0, i32* %89, align 4
  br label %90

; <label>:90:                                     ; preds = %88, %85
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %181, label %93

; <label>:93:                                     ; preds = %90
  %94 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %95 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %181

; <label>:98:                                     ; preds = %93
  br label %99

; <label>:99:                                     ; preds = %98, %179
  %100 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %101 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %101, i32 0, i32 5
  store i32 5000, i32* %102, align 8
  %103 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %104 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %103, i32 0, i32 1
  %105 = getelementptr inbounds [5000 x i8], [5000 x i8]* %104, i32 0, i32 0
  %106 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %107 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 4
  store i8* %105, i8** %108, align 8
  %109 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %110 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %109, i32 0, i32 4
  %111 = call i32 @BZ2_bzCompress(%struct.bz_stream* %110, i32 2)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 3
  br i1 %113, label %114, label %131

; <label>:114:                                    ; preds = %99
  %115 = load i32, i32* %17, align 4
  %116 = icmp ne i32 %115, 4
  br i1 %116, label %117, label %131

; <label>:117:                                    ; preds = %114
  %118 = load i32*, i32** %8, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %123

; <label>:120:                                    ; preds = %117
  %121 = load i32, i32* %17, align 4
  %122 = load i32*, i32** %8, align 8
  store i32 %121, i32* %122, align 4
  br label %123

; <label>:123:                                    ; preds = %120, %117
  %124 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %125 = icmp ne %struct.bzFile* %124, null
  br i1 %125, label %126, label %130

; <label>:126:                                    ; preds = %123
  %127 = load i32, i32* %17, align 4
  %128 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %129 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  br label %130

; <label>:130:                                    ; preds = %126, %123
  br label %266

; <label>:131:                                    ; preds = %114, %99
  %132 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %133 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 8
  %136 = icmp ult i32 %135, 5000
  br i1 %136, label %137, label %175

; <label>:137:                                    ; preds = %131
  %138 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %139 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %138, i32 0, i32 4
  %140 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = sub i32 5000, %141
  store i32 %142, i32* %15, align 4
  %143 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %144 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %143, i32 0, i32 1
  %145 = getelementptr inbounds [5000 x i8], [5000 x i8]* %144, i32 0, i32 0
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %149 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %148, i32 0, i32 0
  %150 = load %struct._IO_FILE*, %struct._IO_FILE** %149, align 8
  %151 = call i64 @fwrite(i8* %145, i64 1, i64 %147, %struct._IO_FILE* %150)
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %16, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %162, label %156

; <label>:156:                                    ; preds = %137
  %157 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %158 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %157, i32 0, i32 0
  %159 = load %struct._IO_FILE*, %struct._IO_FILE** %158, align 8
  %160 = call i32 @ferror(%struct._IO_FILE* %159) #8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

; <label>:162:                                    ; preds = %156, %137
  %163 = load i32*, i32** %8, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %165, label %167

; <label>:165:                                    ; preds = %162
  %166 = load i32*, i32** %8, align 8
  store i32 -6, i32* %166, align 4
  br label %167

; <label>:167:                                    ; preds = %165, %162
  %168 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %169 = icmp ne %struct.bzFile* %168, null
  br i1 %169, label %170, label %173

; <label>:170:                                    ; preds = %167
  %171 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %172 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %171, i32 0, i32 5
  store i32 -6, i32* %172, align 8
  br label %173

; <label>:173:                                    ; preds = %170, %167
  br label %266

; <label>:174:                                    ; preds = %156
  br label %175

; <label>:175:                                    ; preds = %174, %131
  %176 = load i32, i32* %17, align 4
  %177 = icmp eq i32 %176, 4
  br i1 %177, label %178, label %179

; <label>:178:                                    ; preds = %175
  br label %180

; <label>:179:                                    ; preds = %175
  br label %99

; <label>:180:                                    ; preds = %178
  br label %181

; <label>:181:                                    ; preds = %180, %93, %90
  %182 = load i32, i32* %10, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %213, label %184

; <label>:184:                                    ; preds = %181
  %185 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %186 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %185, i32 0, i32 0
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %186, align 8
  %188 = call i32 @ferror(%struct._IO_FILE* %187) #8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %213, label %190

; <label>:190:                                    ; preds = %184
  %191 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %192 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %191, i32 0, i32 0
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** %192, align 8
  %194 = call i32 @fflush(%struct._IO_FILE* %193)
  %195 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %196 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %195, i32 0, i32 0
  %197 = load %struct._IO_FILE*, %struct._IO_FILE** %196, align 8
  %198 = call i32 @ferror(%struct._IO_FILE* %197) #8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

; <label>:200:                                    ; preds = %190
  %201 = load i32*, i32** %8, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %205

; <label>:203:                                    ; preds = %200
  %204 = load i32*, i32** %8, align 8
  store i32 -6, i32* %204, align 4
  br label %205

; <label>:205:                                    ; preds = %203, %200
  %206 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %207 = icmp ne %struct.bzFile* %206, null
  br i1 %207, label %208, label %211

; <label>:208:                                    ; preds = %205
  %209 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %210 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %209, i32 0, i32 5
  store i32 -6, i32* %210, align 8
  br label %211

; <label>:211:                                    ; preds = %208, %205
  br label %266

; <label>:212:                                    ; preds = %190
  br label %213

; <label>:213:                                    ; preds = %212, %184, %181
  %214 = load i32*, i32** %11, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %222

; <label>:216:                                    ; preds = %213
  %217 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %218 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %217, i32 0, i32 4
  %219 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32*, i32** %11, align 8
  store i32 %220, i32* %221, align 4
  br label %222

; <label>:222:                                    ; preds = %216, %213
  %223 = load i32*, i32** %12, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %231

; <label>:225:                                    ; preds = %222
  %226 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %227 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %227, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = load i32*, i32** %12, align 8
  store i32 %229, i32* %230, align 4
  br label %231

; <label>:231:                                    ; preds = %225, %222
  %232 = load i32*, i32** %13, align 8
  %233 = icmp ne i32* %232, null
  br i1 %233, label %234, label %240

; <label>:234:                                    ; preds = %231
  %235 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %236 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 4
  %239 = load i32*, i32** %13, align 8
  store i32 %238, i32* %239, align 4
  br label %240

; <label>:240:                                    ; preds = %234, %231
  %241 = load i32*, i32** %14, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %249

; <label>:243:                                    ; preds = %240
  %244 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %245 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %244, i32 0, i32 4
  %246 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %245, i32 0, i32 7
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %14, align 8
  store i32 %247, i32* %248, align 4
  br label %249

; <label>:249:                                    ; preds = %243, %240
  %250 = load i32*, i32** %8, align 8
  %251 = icmp ne i32* %250, null
  br i1 %251, label %252, label %254

; <label>:252:                                    ; preds = %249
  %253 = load i32*, i32** %8, align 8
  store i32 0, i32* %253, align 4
  br label %254

; <label>:254:                                    ; preds = %252, %249
  %255 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %256 = icmp ne %struct.bzFile* %255, null
  br i1 %256, label %257, label %260

; <label>:257:                                    ; preds = %254
  %258 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %259 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %258, i32 0, i32 5
  store i32 0, i32* %259, align 8
  br label %260

; <label>:260:                                    ; preds = %257, %254
  %261 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %262 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %261, i32 0, i32 4
  %263 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %262)
  %264 = load %struct.bzFile*, %struct.bzFile** %18, align 8
  %265 = bitcast %struct.bzFile* %264 to i8*
  call void @free(i8* %265) #8
  br label %266

; <label>:266:                                    ; preds = %260, %211, %173, %130, %69, %51, %34
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzReadOpen(i32*, %struct._IO_FILE*, i32, i32, i8*, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct._IO_FILE*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bzFile*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store %struct._IO_FILE* %1, %struct._IO_FILE** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.bzFile* null, %struct.bzFile** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %6
  %19 = load i32*, i32** %8, align 8
  store i32 0, i32* %19, align 4
  br label %20

; <label>:20:                                     ; preds = %18, %6
  %21 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %22 = icmp ne %struct.bzFile* %21, null
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %20
  %24 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %25 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %24, i32 0, i32 5
  store i32 0, i32* %25, align 8
  br label %26

; <label>:26:                                     ; preds = %23, %20
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %28 = icmp eq %struct._IO_FILE* %27, null
  br i1 %28, label %56, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %56, label %35

; <label>:35:                                     ; preds = %32, %29
  %36 = load i32, i32* %10, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %56, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %56, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i8*, i8** %12, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %47

; <label>:44:                                     ; preds = %41
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

; <label>:47:                                     ; preds = %44, %41
  %48 = load i8*, i8** %12, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %68

; <label>:50:                                     ; preds = %47
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %56, label %53

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %54, 5000
  br i1 %55, label %56, label %68

; <label>:56:                                     ; preds = %53, %50, %44, %38, %35, %32, %26
  %57 = load i32*, i32** %8, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %56
  %60 = load i32*, i32** %8, align 8
  store i32 -2, i32* %60, align 4
  br label %61

; <label>:61:                                     ; preds = %59, %56
  %62 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %63 = icmp ne %struct.bzFile* %62, null
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %61
  %65 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %66 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %65, i32 0, i32 5
  store i32 -2, i32* %66, align 8
  br label %67

; <label>:67:                                     ; preds = %64, %61
  store i8* null, i8** %7, align 8
  br label %193

; <label>:68:                                     ; preds = %53, %47
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %70 = call i32 @ferror(%struct._IO_FILE* %69) #8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

; <label>:72:                                     ; preds = %68
  %73 = load i32*, i32** %8, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %77

; <label>:75:                                     ; preds = %72
  %76 = load i32*, i32** %8, align 8
  store i32 -6, i32* %76, align 4
  br label %77

; <label>:77:                                     ; preds = %75, %72
  %78 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %79 = icmp ne %struct.bzFile* %78, null
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %77
  %81 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %82 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %81, i32 0, i32 5
  store i32 -6, i32* %82, align 8
  br label %83

; <label>:83:                                     ; preds = %80, %77
  store i8* null, i8** %7, align 8
  br label %193

; <label>:84:                                     ; preds = %68
  %85 = call noalias i8* @malloc(i64 5104) #8
  %86 = bitcast i8* %85 to %struct.bzFile*
  store %struct.bzFile* %86, %struct.bzFile** %14, align 8
  %87 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %88 = icmp eq %struct.bzFile* %87, null
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %84
  %90 = load i32*, i32** %8, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %94

; <label>:92:                                     ; preds = %89
  %93 = load i32*, i32** %8, align 8
  store i32 -3, i32* %93, align 4
  br label %94

; <label>:94:                                     ; preds = %92, %89
  %95 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %96 = icmp ne %struct.bzFile* %95, null
  br i1 %96, label %97, label %100

; <label>:97:                                     ; preds = %94
  %98 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %99 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %98, i32 0, i32 5
  store i32 -3, i32* %99, align 8
  br label %100

; <label>:100:                                    ; preds = %97, %94
  store i8* null, i8** %7, align 8
  br label %193

; <label>:101:                                    ; preds = %84
  %102 = load i32*, i32** %8, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %101
  %105 = load i32*, i32** %8, align 8
  store i32 0, i32* %105, align 4
  br label %106

; <label>:106:                                    ; preds = %104, %101
  %107 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %108 = icmp ne %struct.bzFile* %107, null
  br i1 %108, label %109, label %112

; <label>:109:                                    ; preds = %106
  %110 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %111 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %110, i32 0, i32 5
  store i32 0, i32* %111, align 8
  br label %112

; <label>:112:                                    ; preds = %109, %106
  %113 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %114 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %113, i32 0, i32 6
  store i8 0, i8* %114, align 4
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** %9, align 8
  %116 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %117 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %116, i32 0, i32 0
  store %struct._IO_FILE* %115, %struct._IO_FILE** %117, align 8
  %118 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %119 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %118, i32 0, i32 2
  store i32 0, i32* %119, align 8
  %120 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %121 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %120, i32 0, i32 3
  store i8 0, i8* %121, align 4
  %122 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %123 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %123, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %124, align 8
  %125 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %126 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %126, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %127, align 8
  %128 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %129 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %129, i32 0, i32 11
  store i8* null, i8** %130, align 8
  br label %131

; <label>:131:                                    ; preds = %134, %112
  %132 = load i32, i32* %13, align 4
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %152

; <label>:134:                                    ; preds = %131
  %135 = load i8*, i8** %12, align 8
  %136 = load i8, i8* %135, align 1
  %137 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %138 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %137, i32 0, i32 1
  %139 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %140 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [5000 x i8], [5000 x i8]* %138, i64 0, i64 %142
  store i8 %136, i8* %143, align 1
  %144 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %145 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  %148 = load i8*, i8** %12, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 1
  store i8* %149, i8** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %13, align 4
  br label %131

; <label>:152:                                    ; preds = %131
  %153 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %154 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %153, i32 0, i32 4
  %155 = load i32, i32* %10, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %154, i32 %155, i32 %156)
  store i32 %157, i32* %15, align 4
  %158 = load i32, i32* %15, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %176

; <label>:160:                                    ; preds = %152
  %161 = load i32*, i32** %8, align 8
  %162 = icmp ne i32* %161, null
  br i1 %162, label %163, label %166

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %15, align 4
  %165 = load i32*, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  br label %166

; <label>:166:                                    ; preds = %163, %160
  %167 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %168 = icmp ne %struct.bzFile* %167, null
  br i1 %168, label %169, label %173

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %15, align 4
  %171 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %172 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %171, i32 0, i32 5
  store i32 %170, i32* %172, align 8
  br label %173

; <label>:173:                                    ; preds = %169, %166
  %174 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %175 = bitcast %struct.bzFile* %174 to i8*
  call void @free(i8* %175) #8
  store i8* null, i8** %7, align 8
  br label %193

; <label>:176:                                    ; preds = %152
  %177 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %178 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %181 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 8
  %183 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %184 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %183, i32 0, i32 1
  %185 = getelementptr inbounds [5000 x i8], [5000 x i8]* %184, i32 0, i32 0
  %186 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %187 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  %189 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %190 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %189, i32 0, i32 6
  store i8 1, i8* %190, align 4
  %191 = load %struct.bzFile*, %struct.bzFile** %14, align 8
  %192 = bitcast %struct.bzFile* %191 to i8*
  store i8* %192, i8** %7, align 8
  br label %193

; <label>:193:                                    ; preds = %176, %173, %100, %83, %67
  %194 = load i8*, i8** %7, align 8
  ret i8* %194
}

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzReadClose(i32*, i8*) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.bzFile*
  store %struct.bzFile* %7, %struct.bzFile** %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %2
  %11 = load i32*, i32** %3, align 8
  store i32 0, i32* %11, align 4
  br label %12

; <label>:12:                                     ; preds = %10, %2
  %13 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %14 = icmp ne %struct.bzFile* %13, null
  br i1 %14, label %15, label %18

; <label>:15:                                     ; preds = %12
  %16 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %17 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %16, i32 0, i32 5
  store i32 0, i32* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %20 = icmp eq %struct.bzFile* %19, null
  br i1 %20, label %21, label %33

; <label>:21:                                     ; preds = %18
  %22 = load i32*, i32** %3, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %21
  %25 = load i32*, i32** %3, align 8
  store i32 0, i32* %25, align 4
  br label %26

; <label>:26:                                     ; preds = %24, %21
  %27 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %28 = icmp ne %struct.bzFile* %27, null
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %26
  %30 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %31 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %30, i32 0, i32 5
  store i32 0, i32* %31, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %26
  br label %62

; <label>:33:                                     ; preds = %18
  %34 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %35 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %34, i32 0, i32 3
  %36 = load i8, i8* %35, align 4
  %37 = icmp ne i8 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %33
  %39 = load i32*, i32** %3, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %38
  %42 = load i32*, i32** %3, align 8
  store i32 -1, i32* %42, align 4
  br label %43

; <label>:43:                                     ; preds = %41, %38
  %44 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %45 = icmp ne %struct.bzFile* %44, null
  br i1 %45, label %46, label %49

; <label>:46:                                     ; preds = %43
  %47 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 5
  store i32 -1, i32* %48, align 8
  br label %49

; <label>:49:                                     ; preds = %46, %43
  br label %62

; <label>:50:                                     ; preds = %33
  %51 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %52 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %51, i32 0, i32 6
  %53 = load i8, i8* %52, align 4
  %54 = icmp ne i8 %53, 0
  br i1 %54, label %55, label %59

; <label>:55:                                     ; preds = %50
  %56 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %57 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %56, i32 0, i32 4
  %58 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %57)
  br label %59

; <label>:59:                                     ; preds = %55, %50
  %60 = load %struct.bzFile*, %struct.bzFile** %5, align 8
  %61 = bitcast %struct.bzFile* %60 to i8*
  call void @free(i8* %61) #8
  br label %62

; <label>:62:                                     ; preds = %59, %49, %32
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzRead(i32*, i8*, i8*, i32) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  store %struct.bzFile* %14, %struct.bzFile** %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %4
  %20 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 0, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %27 = icmp eq %struct.bzFile* %26, null
  br i1 %27, label %34, label %28

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** %8, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %34, label %31

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34:                                     ; preds = %31, %28, %25
  %35 = load i32*, i32** %6, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %39

; <label>:37:                                     ; preds = %34
  %38 = load i32*, i32** %6, align 8
  store i32 -2, i32* %38, align 4
  br label %39

; <label>:39:                                     ; preds = %37, %34
  %40 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %41 = icmp ne %struct.bzFile* %40, null
  br i1 %41, label %42, label %45

; <label>:42:                                     ; preds = %39
  %43 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %44 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %43, i32 0, i32 5
  store i32 -2, i32* %44, align 8
  br label %45

; <label>:45:                                     ; preds = %42, %39
  store i32 0, i32* %5, align 4
  br label %257

; <label>:46:                                     ; preds = %31
  %47 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %48 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %47, i32 0, i32 3
  %49 = load i8, i8* %48, align 4
  %50 = icmp ne i8 %49, 0
  br i1 %50, label %51, label %63

; <label>:51:                                     ; preds = %46
  %52 = load i32*, i32** %6, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %51
  %55 = load i32*, i32** %6, align 8
  store i32 -1, i32* %55, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %51
  %57 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %58 = icmp ne %struct.bzFile* %57, null
  br i1 %58, label %59, label %62

; <label>:59:                                     ; preds = %56
  %60 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %61 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %60, i32 0, i32 5
  store i32 -1, i32* %61, align 8
  br label %62

; <label>:62:                                     ; preds = %59, %56
  store i32 0, i32* %5, align 4
  br label %257

; <label>:63:                                     ; preds = %46
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %63
  %67 = load i32*, i32** %6, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %71

; <label>:69:                                     ; preds = %66
  %70 = load i32*, i32** %6, align 8
  store i32 0, i32* %70, align 4
  br label %71

; <label>:71:                                     ; preds = %69, %66
  %72 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %73 = icmp ne %struct.bzFile* %72, null
  br i1 %73, label %74, label %77

; <label>:74:                                     ; preds = %71
  %75 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %76 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %75, i32 0, i32 5
  store i32 0, i32* %76, align 8
  br label %77

; <label>:77:                                     ; preds = %74, %71
  store i32 0, i32* %5, align 4
  br label %257

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* %9, align 4
  %80 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %81 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %81, i32 0, i32 5
  store i32 %79, i32* %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %85 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %85, i32 0, i32 4
  store i8* %83, i8** %86, align 8
  br label %87

; <label>:87:                                     ; preds = %78, %256
  %88 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %89 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %88, i32 0, i32 0
  %90 = load %struct._IO_FILE*, %struct._IO_FILE** %89, align 8
  %91 = call i32 @ferror(%struct._IO_FILE* %90) #8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %105

; <label>:93:                                     ; preds = %87
  %94 = load i32*, i32** %6, align 8
  %95 = icmp ne i32* %94, null
  br i1 %95, label %96, label %98

; <label>:96:                                     ; preds = %93
  %97 = load i32*, i32** %6, align 8
  store i32 -6, i32* %97, align 4
  br label %98

; <label>:98:                                     ; preds = %96, %93
  %99 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %100 = icmp ne %struct.bzFile* %99, null
  br i1 %100, label %101, label %104

; <label>:101:                                    ; preds = %98
  %102 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %103 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %102, i32 0, i32 5
  store i32 -6, i32* %103, align 8
  br label %104

; <label>:104:                                    ; preds = %101, %98
  store i32 0, i32* %5, align 4
  br label %257

; <label>:105:                                    ; preds = %87
  %106 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %107 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %159

; <label>:111:                                    ; preds = %105
  %112 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %113 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %112, i32 0, i32 0
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** %113, align 8
  %115 = call zeroext i8 @myfeof(%struct._IO_FILE* %114)
  %116 = icmp ne i8 %115, 0
  br i1 %116, label %159, label %117

; <label>:117:                                    ; preds = %111
  %118 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %119 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %118, i32 0, i32 1
  %120 = getelementptr inbounds [5000 x i8], [5000 x i8]* %119, i32 0, i32 0
  %121 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %122 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %121, i32 0, i32 0
  %123 = load %struct._IO_FILE*, %struct._IO_FILE** %122, align 8
  %124 = call i64 @fread(i8* %120, i64 1, i64 5000, %struct._IO_FILE* %123)
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %10, align 4
  %126 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %127 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %126, i32 0, i32 0
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** %127, align 8
  %129 = call i32 @ferror(%struct._IO_FILE* %128) #8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

; <label>:131:                                    ; preds = %117
  %132 = load i32*, i32** %6, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %136

; <label>:134:                                    ; preds = %131
  %135 = load i32*, i32** %6, align 8
  store i32 -6, i32* %135, align 4
  br label %136

; <label>:136:                                    ; preds = %134, %131
  %137 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %138 = icmp ne %struct.bzFile* %137, null
  br i1 %138, label %139, label %142

; <label>:139:                                    ; preds = %136
  %140 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %141 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %140, i32 0, i32 5
  store i32 -6, i32* %141, align 8
  br label %142

; <label>:142:                                    ; preds = %139, %136
  store i32 0, i32* %5, align 4
  br label %257

; <label>:143:                                    ; preds = %117
  %144 = load i32, i32* %10, align 4
  %145 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %146 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %148 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %151 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %150, i32 0, i32 4
  %152 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %151, i32 0, i32 1
  store i32 %149, i32* %152, align 8
  %153 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %154 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %153, i32 0, i32 1
  %155 = getelementptr inbounds [5000 x i8], [5000 x i8]* %154, i32 0, i32 0
  %156 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %157 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %157, i32 0, i32 0
  store i8* %155, i8** %158, align 8
  br label %159

; <label>:159:                                    ; preds = %143, %111, %105
  %160 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %161 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %160, i32 0, i32 4
  %162 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %161)
  store i32 %162, i32* %11, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %182

; <label>:165:                                    ; preds = %159
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 4
  br i1 %167, label %168, label %182

; <label>:168:                                    ; preds = %165
  %169 = load i32*, i32** %6, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %174

; <label>:171:                                    ; preds = %168
  %172 = load i32, i32* %11, align 4
  %173 = load i32*, i32** %6, align 8
  store i32 %172, i32* %173, align 4
  br label %174

; <label>:174:                                    ; preds = %171, %168
  %175 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %176 = icmp ne %struct.bzFile* %175, null
  br i1 %176, label %177, label %181

; <label>:177:                                    ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %180 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %179, i32 0, i32 5
  store i32 %178, i32* %180, align 8
  br label %181

; <label>:181:                                    ; preds = %177, %174
  store i32 0, i32* %5, align 4
  br label %257

; <label>:182:                                    ; preds = %165, %159
  %183 = load i32, i32* %11, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %216

; <label>:185:                                    ; preds = %182
  %186 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %187 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %186, i32 0, i32 0
  %188 = load %struct._IO_FILE*, %struct._IO_FILE** %187, align 8
  %189 = call zeroext i8 @myfeof(%struct._IO_FILE* %188)
  %190 = zext i8 %189 to i32
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %216

; <label>:192:                                    ; preds = %185
  %193 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %194 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %216

; <label>:198:                                    ; preds = %192
  %199 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %200 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 8
  %203 = icmp ugt i32 %202, 0
  br i1 %203, label %204, label %216

; <label>:204:                                    ; preds = %198
  %205 = load i32*, i32** %6, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %209

; <label>:207:                                    ; preds = %204
  %208 = load i32*, i32** %6, align 8
  store i32 -7, i32* %208, align 4
  br label %209

; <label>:209:                                    ; preds = %207, %204
  %210 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %211 = icmp ne %struct.bzFile* %210, null
  br i1 %211, label %212, label %215

; <label>:212:                                    ; preds = %209
  %213 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %214 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %213, i32 0, i32 5
  store i32 -7, i32* %214, align 8
  br label %215

; <label>:215:                                    ; preds = %212, %209
  store i32 0, i32* %5, align 4
  br label %257

; <label>:216:                                    ; preds = %198, %192, %185, %182
  %217 = load i32, i32* %11, align 4
  %218 = icmp eq i32 %217, 4
  br i1 %218, label %219, label %237

; <label>:219:                                    ; preds = %216
  %220 = load i32*, i32** %6, align 8
  %221 = icmp ne i32* %220, null
  br i1 %221, label %222, label %224

; <label>:222:                                    ; preds = %219
  %223 = load i32*, i32** %6, align 8
  store i32 4, i32* %223, align 4
  br label %224

; <label>:224:                                    ; preds = %222, %219
  %225 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %226 = icmp ne %struct.bzFile* %225, null
  br i1 %226, label %227, label %230

; <label>:227:                                    ; preds = %224
  %228 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %229 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %228, i32 0, i32 5
  store i32 4, i32* %229, align 8
  br label %230

; <label>:230:                                    ; preds = %227, %224
  %231 = load i32, i32* %9, align 4
  %232 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %233 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = sub i32 %231, %235
  store i32 %236, i32* %5, align 4
  br label %257

; <label>:237:                                    ; preds = %216
  %238 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %239 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %239, i32 0, i32 5
  %241 = load i32, i32* %240, align 8
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %256

; <label>:243:                                    ; preds = %237
  %244 = load i32*, i32** %6, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %248

; <label>:246:                                    ; preds = %243
  %247 = load i32*, i32** %6, align 8
  store i32 0, i32* %247, align 4
  br label %248

; <label>:248:                                    ; preds = %246, %243
  %249 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %250 = icmp ne %struct.bzFile* %249, null
  br i1 %250, label %251, label %254

; <label>:251:                                    ; preds = %248
  %252 = load %struct.bzFile*, %struct.bzFile** %12, align 8
  %253 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %252, i32 0, i32 5
  store i32 0, i32* %253, align 8
  br label %254

; <label>:254:                                    ; preds = %251, %248
  %255 = load i32, i32* %9, align 4
  store i32 %255, i32* %5, align 4
  br label %257

; <label>:256:                                    ; preds = %237
  br label %87

; <label>:257:                                    ; preds = %254, %230, %215, %181, %142, %104, %77, %62, %45
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

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

declare i64 @fread(i8*, i64, i64, %struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzReadGetUnused(i32*, i8*, i8**, i32*) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bzFile*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bzFile*
  store %struct.bzFile* %11, %struct.bzFile** %9, align 8
  %12 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %13 = icmp eq %struct.bzFile* %12, null
  br i1 %13, label %14, label %26

; <label>:14:                                     ; preds = %4
  %15 = load i32*, i32** %5, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %14
  %18 = load i32*, i32** %5, align 8
  store i32 -2, i32* %18, align 4
  br label %19

; <label>:19:                                     ; preds = %17, %14
  %20 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %21 = icmp ne %struct.bzFile* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %24 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %23, i32 0, i32 5
  store i32 -2, i32* %24, align 8
  br label %25

; <label>:25:                                     ; preds = %22, %19
  br label %83

; <label>:26:                                     ; preds = %4
  %27 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %28 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 4
  br i1 %30, label %31, label %43

; <label>:31:                                     ; preds = %26
  %32 = load i32*, i32** %5, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %36

; <label>:34:                                     ; preds = %31
  %35 = load i32*, i32** %5, align 8
  store i32 -1, i32* %35, align 4
  br label %36

; <label>:36:                                     ; preds = %34, %31
  %37 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %38 = icmp ne %struct.bzFile* %37, null
  br i1 %38, label %39, label %42

; <label>:39:                                     ; preds = %36
  %40 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %41 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %40, i32 0, i32 5
  store i32 -1, i32* %41, align 8
  br label %42

; <label>:42:                                     ; preds = %39, %36
  br label %83

; <label>:43:                                     ; preds = %26
  %44 = load i8**, i8*** %7, align 8
  %45 = icmp eq i8** %44, null
  br i1 %45, label %49, label %46

; <label>:46:                                     ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %61

; <label>:49:                                     ; preds = %46, %43
  %50 = load i32*, i32** %5, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %54

; <label>:52:                                     ; preds = %49
  %53 = load i32*, i32** %5, align 8
  store i32 -2, i32* %53, align 4
  br label %54

; <label>:54:                                     ; preds = %52, %49
  %55 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %56 = icmp ne %struct.bzFile* %55, null
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %54
  %58 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %59 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %58, i32 0, i32 5
  store i32 -2, i32* %59, align 8
  br label %60

; <label>:60:                                     ; preds = %57, %54
  br label %83

; <label>:61:                                     ; preds = %46
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %61
  %65 = load i32*, i32** %5, align 8
  store i32 0, i32* %65, align 4
  br label %66

; <label>:66:                                     ; preds = %64, %61
  %67 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %68 = icmp ne %struct.bzFile* %67, null
  br i1 %68, label %69, label %72

; <label>:69:                                     ; preds = %66
  %70 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %71 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %70, i32 0, i32 5
  store i32 0, i32* %71, align 8
  br label %72

; <label>:72:                                     ; preds = %69, %66
  %73 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %74 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32*, i32** %8, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.bzFile*, %struct.bzFile** %9, align 8
  %79 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8**, i8*** %7, align 8
  store i8* %81, i8** %82, align 8
  br label %83

; <label>:83:                                     ; preds = %72, %60, %42, %25
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzBuffToBuffCompress(i8*, i32*, i8*, i32, i32, i32, i32) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bz_stream, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %44, label %20

; <label>:20:                                     ; preds = %7
  %21 = load i32*, i32** %10, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %44, label %23

; <label>:23:                                     ; preds = %20
  %24 = load i8*, i8** %11, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %44, label %26

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %44, label %29

; <label>:29:                                     ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = icmp sgt i32 %30, 9
  br i1 %31, label %44, label %32

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %44, label %35

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = icmp sgt i32 %36, 4
  br i1 %37, label %44, label %38

; <label>:38:                                     ; preds = %35
  %39 = load i32, i32* %15, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %44, label %41

; <label>:41:                                     ; preds = %38
  %42 = load i32, i32* %15, align 4
  %43 = icmp sgt i32 %42, 250
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %7
  store i32 -2, i32* %8, align 4
  br label %91

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* %15, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %45
  store i32 30, i32* %15, align 4
  br label %49

; <label>:49:                                     ; preds = %48, %45
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %50, align 8
  %51 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %51, align 8
  %52 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 11
  store i8* null, i8** %52, align 8
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @BZ2_bzCompressInit(%struct.bz_stream* %16, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %17, align 4
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

; <label>:59:                                     ; preds = %49
  %60 = load i32, i32* %17, align 4
  store i32 %60, i32* %8, align 4
  br label %91

; <label>:61:                                     ; preds = %49
  %62 = load i8*, i8** %11, align 8
  %63 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 0
  store i8* %62, i8** %63, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 4
  store i8* %64, i8** %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 1
  store i32 %66, i32* %67, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 5
  store i32 %69, i32* %70, align 8
  %71 = call i32 @BZ2_bzCompress(%struct.bz_stream* %16, i32 2)
  store i32 %71, i32* %17, align 4
  %72 = load i32, i32* %17, align 4
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %61
  br label %86

; <label>:75:                                     ; preds = %61
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 4
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %75
  br label %88

; <label>:79:                                     ; preds = %75
  %80 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %16, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = sub i32 %83, %81
  store i32 %84, i32* %82, align 4
  %85 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  store i32 0, i32* %8, align 4
  br label %91

; <label>:86:                                     ; preds = %74
  %87 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  store i32 -8, i32* %8, align 4
  br label %91

; <label>:88:                                     ; preds = %78
  %89 = call i32 @BZ2_bzCompressEnd(%struct.bz_stream* %16)
  %90 = load i32, i32* %17, align 4
  store i32 %90, i32* %8, align 4
  br label %91

; <label>:91:                                     ; preds = %88, %86, %79, %59, %44
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzBuffToBuffDecompress(i8*, i32*, i8*, i32, i32, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bz_stream, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %36, label %18

; <label>:18:                                     ; preds = %6
  %19 = load i32*, i32** %9, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %36, label %21

; <label>:21:                                     ; preds = %18
  %22 = load i8*, i8** %10, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %36, label %24

; <label>:24:                                     ; preds = %21
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

; <label>:27:                                     ; preds = %24
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %36, label %30

; <label>:30:                                     ; preds = %27, %24
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %36, label %33

; <label>:33:                                     ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = icmp sgt i32 %34, 4
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %33, %30, %27, %21, %18, %6
  store i32 -2, i32* %7, align 4
  br label %84

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 9
  store i8* (i8*, i32, i32)* null, i8* (i8*, i32, i32)** %38, align 8
  %39 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 10
  store void (i8*, i8*)* null, void (i8*, i8*)** %39, align 8
  %40 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 11
  store i8* null, i8** %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @BZ2_bzDecompressInit(%struct.bz_stream* %14, i32 %41, i32 %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %7, align 4
  br label %84

; <label>:48:                                     ; preds = %37
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 0
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 4
  store i8* %51, i8** %52, align 8
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  store i32 %56, i32* %57, align 8
  %58 = call i32 @BZ2_bzDecompress(%struct.bz_stream* %14)
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %48
  br label %73

; <label>:62:                                     ; preds = %48
  %63 = load i32, i32* %15, align 4
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %66

; <label>:65:                                     ; preds = %62
  br label %81

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* %69, align 4
  %71 = sub i32 %70, %68
  store i32 %71, i32* %69, align 4
  %72 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 0, i32* %7, align 4
  br label %84

; <label>:73:                                     ; preds = %61
  %74 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %14, i32 0, i32 5
  %75 = load i32, i32* %74, align 8
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %73
  %78 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 -7, i32* %7, align 4
  br label %84

; <label>:79:                                     ; preds = %73
  %80 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  store i32 -8, i32* %7, align 4
  br label %84

; <label>:81:                                     ; preds = %65
  %82 = call i32 @BZ2_bzDecompressEnd(%struct.bz_stream* %14)
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %7, align 4
  br label %84

; <label>:84:                                     ; preds = %81, %79, %77, %66, %46, %36
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzopen(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @bzopen_or_bzdopen(i8* %5, i32 -1, i8* %6, i32 0)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define internal i8* @bzopen_or_bzdopen(i8*, i32, i8*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [5000 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [10 x i8], align 1
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 9, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = bitcast [10 x i8]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 10, i32 1, i1 false)
  store %struct._IO_FILE* null, %struct._IO_FILE** %15, align 8
  store i8* null, i8** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 30, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load i8*, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %4
  store i8* null, i8** %5, align 8
  br label %139

; <label>:25:                                     ; preds = %4
  br label %26

; <label>:26:                                     ; preds = %55, %25
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %58

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %8, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %37 [
    i32 114, label %34
    i32 119, label %35
    i32 115, label %36
  ]

; <label>:34:                                     ; preds = %30
  store i32 0, i32* %13, align 4
  br label %55

; <label>:35:                                     ; preds = %30
  store i32 1, i32* %13, align 4
  br label %55

; <label>:36:                                     ; preds = %30
  store i32 1, i32* %19, align 4
  br label %55

; <label>:37:                                     ; preds = %30
  %38 = call i16** @__ctype_b_loc() #9
  %39 = load i16*, i16** %38, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i16, i16* %39, i64 %43
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = and i32 %46, 2048
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

; <label>:49:                                     ; preds = %37
  %50 = load i8*, i8** %8, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = sub nsw i32 %52, 48
  store i32 %53, i32* %12, align 4
  br label %54

; <label>:54:                                     ; preds = %49, %37
  br label %55

; <label>:55:                                     ; preds = %54, %36, %35, %34
  %56 = load i8*, i8** %8, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %8, align 8
  br label %26

; <label>:58:                                     ; preds = %26
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)
  %64 = call i8* @strcat(i8* %59, i8* %63) #8
  %65 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %66 = call i8* @strcat(i8* %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0)) #8
  %67 = load i32, i32* %9, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %90

; <label>:69:                                     ; preds = %58
  %70 = load i8*, i8** %6, align 8
  %71 = icmp eq i8* %70, null
  br i1 %71, label %76, label %72

; <label>:72:                                     ; preds = %69
  %73 = load i8*, i8** %6, align 8
  %74 = call i32 @strcmp(i8* %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.9, i32 0, i32 0)) #10
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %85

; <label>:76:                                     ; preds = %72, %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  br label %83

; <label>:81:                                     ; preds = %76
  %82 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  br label %83

; <label>:83:                                     ; preds = %81, %79
  %84 = phi %struct._IO_FILE* [ %80, %79 ], [ %82, %81 ]
  store %struct._IO_FILE* %84, %struct._IO_FILE** %15, align 8
  br label %89

; <label>:85:                                     ; preds = %72
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %88 = call %struct._IO_FILE* @fopen(i8* %86, i8* %87)
  store %struct._IO_FILE* %88, %struct._IO_FILE** %15, align 8
  br label %89

; <label>:89:                                     ; preds = %85, %83
  br label %94

; <label>:90:                                     ; preds = %58
  %91 = load i32, i32* %7, align 4
  %92 = getelementptr inbounds [10 x i8], [10 x i8]* %14, i32 0, i32 0
  %93 = call %struct._IO_FILE* @fdopen(i32 %91, i8* %92) #8
  store %struct._IO_FILE* %93, %struct._IO_FILE** %15, align 8
  br label %94

; <label>:94:                                     ; preds = %90, %89
  %95 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %96 = icmp eq %struct._IO_FILE* %95, null
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %94
  store i8* null, i8** %5, align 8
  br label %139

; <label>:98:                                     ; preds = %94
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %115

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %104, label %105

; <label>:104:                                    ; preds = %101
  store i32 1, i32* %12, align 4
  br label %105

; <label>:105:                                    ; preds = %104, %101
  %106 = load i32, i32* %12, align 4
  %107 = icmp sgt i32 %106, 9
  br i1 %107, label %108, label %109

; <label>:108:                                    ; preds = %105
  store i32 9, i32* %12, align 4
  br label %109

; <label>:109:                                    ; preds = %108, %105
  %110 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %17, align 4
  %113 = load i32, i32* %18, align 4
  %114 = call i8* @BZ2_bzWriteOpen(i32* %10, %struct._IO_FILE* %110, i32 %111, i32 %112, i32 %113)
  store i8* %114, i8** %16, align 8
  br label %122

; <label>:115:                                    ; preds = %98
  %116 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* %19, align 4
  %119 = getelementptr inbounds [5000 x i8], [5000 x i8]* %11, i32 0, i32 0
  %120 = load i32, i32* %20, align 4
  %121 = call i8* @BZ2_bzReadOpen(i32* %10, %struct._IO_FILE* %116, i32 %117, i32 %118, i8* %119, i32 %120)
  store i8* %121, i8** %16, align 8
  br label %122

; <label>:122:                                    ; preds = %115, %109
  %123 = load i8*, i8** %16, align 8
  %124 = icmp eq i8* %123, null
  br i1 %124, label %125, label %137

; <label>:125:                                    ; preds = %122
  %126 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %127 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %128 = icmp ne %struct._IO_FILE* %126, %127
  br i1 %128, label %129, label %136

; <label>:129:                                    ; preds = %125
  %130 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %132 = icmp ne %struct._IO_FILE* %130, %131
  br i1 %132, label %133, label %136

; <label>:133:                                    ; preds = %129
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8
  %135 = call i32 @fclose(%struct._IO_FILE* %134)
  br label %136

; <label>:136:                                    ; preds = %133, %129, %125
  store i8* null, i8** %5, align 8
  br label %139

; <label>:137:                                    ; preds = %122
  %138 = load i8*, i8** %16, align 8
  store i8* %138, i8** %5, align 8
  br label %139

; <label>:139:                                    ; preds = %137, %136, %97, %24
  %140 = load i8*, i8** %5, align 8
  ret i8* %140
}

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzdopen(i32, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i8*, i8** %4, align 8
  %7 = call i8* @bzopen_or_bzdopen(i8* null, i32 %5, i8* %6, i32 1)
  ret i8* %7
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzread(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.bzFile*
  %12 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %3
  store i32 0, i32* %4, align 4
  br label %29

; <label>:16:                                     ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BZ2_bzRead(i32* %8, i8* %17, i8* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %23, %16
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %29

; <label>:28:                                     ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %26, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzwrite(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = load i32, i32* %7, align 4
  call void @BZ2_bzWrite(i32* %8, i8* %9, i8* %10, i32 %11)
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %17

; <label>:16:                                     ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %17

; <label>:17:                                     ; preds = %16, %14
  %18 = load i32, i32* %4, align 4
  ret i32 %18
}

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_bzflush(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define void @BZ2_bzclose(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct._IO_FILE*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %38

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.bzFile*
  %11 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %10, i32 0, i32 0
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** %11, align 8
  store %struct._IO_FILE* %12, %struct._IO_FILE** %4, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.bzFile*
  %15 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %14, i32 0, i32 3
  %16 = load i8, i8* %15, align 4
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %25

; <label>:18:                                     ; preds = %8
  %19 = load i8*, i8** %2, align 8
  call void @BZ2_bzWriteClose(i32* %3, i8* %19, i32 0, i32* null, i32* null)
  %20 = load i32, i32* %3, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %18
  %23 = load i8*, i8** %2, align 8
  call void @BZ2_bzWriteClose(i32* null, i8* %23, i32 1, i32* null, i32* null)
  br label %24

; <label>:24:                                     ; preds = %22, %18
  br label %27

; <label>:25:                                     ; preds = %8
  %26 = load i8*, i8** %2, align 8
  call void @BZ2_bzReadClose(i32* %3, i8* %26)
  br label %27

; <label>:27:                                     ; preds = %25, %24
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  %30 = icmp ne %struct._IO_FILE* %28, %29
  br i1 %30, label %31, label %38

; <label>:31:                                     ; preds = %27
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8
  %34 = icmp ne %struct._IO_FILE* %32, %33
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %31
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** %4, align 8
  %37 = call i32 @fclose(%struct._IO_FILE* %36)
  br label %38

; <label>:38:                                     ; preds = %7, %35, %31, %27
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @BZ2_bzerror(i8*, i32*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.bzFile*
  %8 = getelementptr inbounds %struct.bzFile, %struct.bzFile* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

; <label>:13:                                     ; preds = %12, %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, -1
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [16 x i8*], [16 x i8*]* @bzerrorstrings, i64 0, i64 %18
  %20 = load i8*, i8** %19, align 8
  ret i8* %20
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @copy_output_until_stop(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  store i8 0, i8* %3, align 1
  br label %4

; <label>:4:                                      ; preds = %1, %71
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 0
  %7 = load %struct.bz_stream*, %struct.bz_stream** %6, align 8
  %8 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %7, i32 0, i32 5
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %4
  br label %72

; <label>:12:                                     ; preds = %4
  %13 = load %struct.EState*, %struct.EState** %2, align 8
  %14 = getelementptr inbounds %struct.EState, %struct.EState* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 4
  %19 = icmp sge i32 %15, %18
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %12
  br label %72

; <label>:21:                                     ; preds = %12
  store i8 1, i8* %3, align 1
  %22 = load %struct.EState*, %struct.EState** %2, align 8
  %23 = getelementptr inbounds %struct.EState, %struct.EState* %22, i32 0, i32 11
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.EState*, %struct.EState** %2, align 8
  %26 = getelementptr inbounds %struct.EState, %struct.EState* %25, i32 0, i32 20
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 0
  %33 = load %struct.bz_stream*, %struct.bz_stream** %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 4
  %35 = load i8*, i8** %34, align 8
  store i8 %30, i8* %35, align 1
  %36 = load %struct.EState*, %struct.EState** %2, align 8
  %37 = getelementptr inbounds %struct.EState, %struct.EState* %36, i32 0, i32 20
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load %struct.EState*, %struct.EState** %2, align 8
  %41 = getelementptr inbounds %struct.EState, %struct.EState* %40, i32 0, i32 0
  %42 = load %struct.bz_stream*, %struct.bz_stream** %41, align 8
  %43 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, -1
  store i32 %45, i32* %43, align 8
  %46 = load %struct.EState*, %struct.EState** %2, align 8
  %47 = getelementptr inbounds %struct.EState, %struct.EState* %46, i32 0, i32 0
  %48 = load %struct.bz_stream*, %struct.bz_stream** %47, align 8
  %49 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %48, i32 0, i32 4
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %49, align 8
  %52 = load %struct.EState*, %struct.EState** %2, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 0
  %54 = load %struct.bz_stream*, %struct.bz_stream** %53, align 8
  %55 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.EState*, %struct.EState** %2, align 8
  %59 = getelementptr inbounds %struct.EState, %struct.EState* %58, i32 0, i32 0
  %60 = load %struct.bz_stream*, %struct.bz_stream** %59, align 8
  %61 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %71

; <label>:64:                                     ; preds = %21
  %65 = load %struct.EState*, %struct.EState** %2, align 8
  %66 = getelementptr inbounds %struct.EState, %struct.EState* %65, i32 0, i32 0
  %67 = load %struct.bz_stream*, %struct.bz_stream** %66, align 8
  %68 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

; <label>:71:                                     ; preds = %64, %21
  br label %4

; <label>:72:                                     ; preds = %20, %11
  %73 = load i8, i8* %3, align 1
  ret i8 %73
}

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @copy_input_until_stop(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  store i8 0, i8* %3, align 1
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  %9 = getelementptr inbounds %struct.EState, %struct.EState* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %157

; <label>:12:                                     ; preds = %1
  br label %13

; <label>:13:                                     ; preds = %12, %155
  %14 = load %struct.EState*, %struct.EState** %2, align 8
  %15 = getelementptr inbounds %struct.EState, %struct.EState* %14, i32 0, i32 17
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.EState*, %struct.EState** %2, align 8
  %18 = getelementptr inbounds %struct.EState, %struct.EState* %17, i32 0, i32 18
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %13
  br label %156

; <label>:22:                                     ; preds = %13
  %23 = load %struct.EState*, %struct.EState** %2, align 8
  %24 = getelementptr inbounds %struct.EState, %struct.EState* %23, i32 0, i32 0
  %25 = load %struct.bz_stream*, %struct.bz_stream** %24, align 8
  %26 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %22
  br label %156

; <label>:30:                                     ; preds = %22
  store i8 1, i8* %3, align 1
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 0
  %33 = load %struct.bz_stream*, %struct.bz_stream** %32, align 8
  %34 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.EState*, %struct.EState** %2, align 8
  %40 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %93

; <label>:43:                                     ; preds = %30
  %44 = load %struct.EState*, %struct.EState** %2, align 8
  %45 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %93

; <label>:48:                                     ; preds = %43
  %49 = load %struct.EState*, %struct.EState** %2, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 13
  %51 = load i32, i32* %50, align 4
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %5, align 1
  %53 = load %struct.EState*, %struct.EState** %2, align 8
  %54 = getelementptr inbounds %struct.EState, %struct.EState* %53, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = shl i32 %55, 8
  %57 = load %struct.EState*, %struct.EState** %2, align 8
  %58 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 26
  %59 = load i32, i32* %58, align 8
  %60 = lshr i32 %59, 24
  %61 = load i8, i8* %5, align 1
  %62 = zext i8 %61 to i32
  %63 = xor i32 %60, %62
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %56, %66
  %68 = load %struct.EState*, %struct.EState** %2, align 8
  %69 = getelementptr inbounds %struct.EState, %struct.EState* %68, i32 0, i32 26
  store i32 %67, i32* %69, align 8
  %70 = load %struct.EState*, %struct.EState** %2, align 8
  %71 = getelementptr inbounds %struct.EState, %struct.EState* %70, i32 0, i32 22
  %72 = load %struct.EState*, %struct.EState** %2, align 8
  %73 = getelementptr inbounds %struct.EState, %struct.EState* %72, i32 0, i32 13
  %74 = load i32, i32* %73, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %71, i64 0, i64 %75
  store i8 1, i8* %76, align 1
  %77 = load i8, i8* %5, align 1
  %78 = load %struct.EState*, %struct.EState** %2, align 8
  %79 = getelementptr inbounds %struct.EState, %struct.EState* %78, i32 0, i32 9
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.EState*, %struct.EState** %2, align 8
  %82 = getelementptr inbounds %struct.EState, %struct.EState* %81, i32 0, i32 17
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %80, i64 %84
  store i8 %77, i8* %85, align 1
  %86 = load %struct.EState*, %struct.EState** %2, align 8
  %87 = getelementptr inbounds %struct.EState, %struct.EState* %86, i32 0, i32 17
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* %4, align 4
  %91 = load %struct.EState*, %struct.EState** %2, align 8
  %92 = getelementptr inbounds %struct.EState, %struct.EState* %91, i32 0, i32 13
  store i32 %90, i32* %92, align 4
  br label %123

; <label>:93:                                     ; preds = %43, %30
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.EState*, %struct.EState** %2, align 8
  %96 = getelementptr inbounds %struct.EState, %struct.EState* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %94, %97
  br i1 %98, label %104, label %99

; <label>:99:                                     ; preds = %93
  %100 = load %struct.EState*, %struct.EState** %2, align 8
  %101 = getelementptr inbounds %struct.EState, %struct.EState* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 255
  br i1 %103, label %104, label %117

; <label>:104:                                    ; preds = %99, %93
  %105 = load %struct.EState*, %struct.EState** %2, align 8
  %106 = getelementptr inbounds %struct.EState, %struct.EState* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = icmp ult i32 %107, 256
  br i1 %108, label %109, label %111

; <label>:109:                                    ; preds = %104
  %110 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %110)
  br label %111

; <label>:111:                                    ; preds = %109, %104
  %112 = load i32, i32* %4, align 4
  %113 = load %struct.EState*, %struct.EState** %2, align 8
  %114 = getelementptr inbounds %struct.EState, %struct.EState* %113, i32 0, i32 13
  store i32 %112, i32* %114, align 4
  %115 = load %struct.EState*, %struct.EState** %2, align 8
  %116 = getelementptr inbounds %struct.EState, %struct.EState* %115, i32 0, i32 14
  store i32 1, i32* %116, align 8
  br label %122

; <label>:117:                                    ; preds = %99
  %118 = load %struct.EState*, %struct.EState** %2, align 8
  %119 = getelementptr inbounds %struct.EState, %struct.EState* %118, i32 0, i32 14
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

; <label>:122:                                    ; preds = %117, %111
  br label %123

; <label>:123:                                    ; preds = %122, %48
  %124 = load %struct.EState*, %struct.EState** %2, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 0
  %126 = load %struct.bz_stream*, %struct.bz_stream** %125, align 8
  %127 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %127, align 8
  %130 = load %struct.EState*, %struct.EState** %2, align 8
  %131 = getelementptr inbounds %struct.EState, %struct.EState* %130, i32 0, i32 0
  %132 = load %struct.bz_stream*, %struct.bz_stream** %131, align 8
  %133 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = add i32 %134, -1
  store i32 %135, i32* %133, align 8
  %136 = load %struct.EState*, %struct.EState** %2, align 8
  %137 = getelementptr inbounds %struct.EState, %struct.EState* %136, i32 0, i32 0
  %138 = load %struct.bz_stream*, %struct.bz_stream** %137, align 8
  %139 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %139, align 4
  %142 = load %struct.EState*, %struct.EState** %2, align 8
  %143 = getelementptr inbounds %struct.EState, %struct.EState* %142, i32 0, i32 0
  %144 = load %struct.bz_stream*, %struct.bz_stream** %143, align 8
  %145 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

; <label>:148:                                    ; preds = %123
  %149 = load %struct.EState*, %struct.EState** %2, align 8
  %150 = getelementptr inbounds %struct.EState, %struct.EState* %149, i32 0, i32 0
  %151 = load %struct.bz_stream*, %struct.bz_stream** %150, align 8
  %152 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = add i32 %153, 1
  store i32 %154, i32* %152, align 8
  br label %155

; <label>:155:                                    ; preds = %148, %123
  br label %13

; <label>:156:                                    ; preds = %29, %21
  br label %312

; <label>:157:                                    ; preds = %1
  br label %158

; <label>:158:                                    ; preds = %157, %306
  %159 = load %struct.EState*, %struct.EState** %2, align 8
  %160 = getelementptr inbounds %struct.EState, %struct.EState* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.EState*, %struct.EState** %2, align 8
  %163 = getelementptr inbounds %struct.EState, %struct.EState* %162, i32 0, i32 18
  %164 = load i32, i32* %163, align 8
  %165 = icmp sge i32 %161, %164
  br i1 %165, label %166, label %167

; <label>:166:                                    ; preds = %158
  br label %311

; <label>:167:                                    ; preds = %158
  %168 = load %struct.EState*, %struct.EState** %2, align 8
  %169 = getelementptr inbounds %struct.EState, %struct.EState* %168, i32 0, i32 0
  %170 = load %struct.bz_stream*, %struct.bz_stream** %169, align 8
  %171 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %167
  br label %311

; <label>:175:                                    ; preds = %167
  %176 = load %struct.EState*, %struct.EState** %2, align 8
  %177 = getelementptr inbounds %struct.EState, %struct.EState* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %175
  br label %311

; <label>:181:                                    ; preds = %175
  store i8 1, i8* %3, align 1
  %182 = load %struct.EState*, %struct.EState** %2, align 8
  %183 = getelementptr inbounds %struct.EState, %struct.EState* %182, i32 0, i32 0
  %184 = load %struct.bz_stream*, %struct.bz_stream** %183, align 8
  %185 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  store i32 %188, i32* %6, align 4
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.EState*, %struct.EState** %2, align 8
  %191 = getelementptr inbounds %struct.EState, %struct.EState* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 4
  %193 = icmp ne i32 %189, %192
  br i1 %193, label %194, label %244

; <label>:194:                                    ; preds = %181
  %195 = load %struct.EState*, %struct.EState** %2, align 8
  %196 = getelementptr inbounds %struct.EState, %struct.EState* %195, i32 0, i32 14
  %197 = load i32, i32* %196, align 8
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %199, label %244

; <label>:199:                                    ; preds = %194
  %200 = load %struct.EState*, %struct.EState** %2, align 8
  %201 = getelementptr inbounds %struct.EState, %struct.EState* %200, i32 0, i32 13
  %202 = load i32, i32* %201, align 4
  %203 = trunc i32 %202 to i8
  store i8 %203, i8* %7, align 1
  %204 = load %struct.EState*, %struct.EState** %2, align 8
  %205 = getelementptr inbounds %struct.EState, %struct.EState* %204, i32 0, i32 26
  %206 = load i32, i32* %205, align 8
  %207 = shl i32 %206, 8
  %208 = load %struct.EState*, %struct.EState** %2, align 8
  %209 = getelementptr inbounds %struct.EState, %struct.EState* %208, i32 0, i32 26
  %210 = load i32, i32* %209, align 8
  %211 = lshr i32 %210, 24
  %212 = load i8, i8* %7, align 1
  %213 = zext i8 %212 to i32
  %214 = xor i32 %211, %213
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = xor i32 %207, %217
  %219 = load %struct.EState*, %struct.EState** %2, align 8
  %220 = getelementptr inbounds %struct.EState, %struct.EState* %219, i32 0, i32 26
  store i32 %218, i32* %220, align 8
  %221 = load %struct.EState*, %struct.EState** %2, align 8
  %222 = getelementptr inbounds %struct.EState, %struct.EState* %221, i32 0, i32 22
  %223 = load %struct.EState*, %struct.EState** %2, align 8
  %224 = getelementptr inbounds %struct.EState, %struct.EState* %223, i32 0, i32 13
  %225 = load i32, i32* %224, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds [256 x i8], [256 x i8]* %222, i64 0, i64 %226
  store i8 1, i8* %227, align 1
  %228 = load i8, i8* %7, align 1
  %229 = load %struct.EState*, %struct.EState** %2, align 8
  %230 = getelementptr inbounds %struct.EState, %struct.EState* %229, i32 0, i32 9
  %231 = load i8*, i8** %230, align 8
  %232 = load %struct.EState*, %struct.EState** %2, align 8
  %233 = getelementptr inbounds %struct.EState, %struct.EState* %232, i32 0, i32 17
  %234 = load i32, i32* %233, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %231, i64 %235
  store i8 %228, i8* %236, align 1
  %237 = load %struct.EState*, %struct.EState** %2, align 8
  %238 = getelementptr inbounds %struct.EState, %struct.EState* %237, i32 0, i32 17
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  %241 = load i32, i32* %6, align 4
  %242 = load %struct.EState*, %struct.EState** %2, align 8
  %243 = getelementptr inbounds %struct.EState, %struct.EState* %242, i32 0, i32 13
  store i32 %241, i32* %243, align 4
  br label %274

; <label>:244:                                    ; preds = %194, %181
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.EState*, %struct.EState** %2, align 8
  %247 = getelementptr inbounds %struct.EState, %struct.EState* %246, i32 0, i32 13
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %255, label %250

; <label>:250:                                    ; preds = %244
  %251 = load %struct.EState*, %struct.EState** %2, align 8
  %252 = getelementptr inbounds %struct.EState, %struct.EState* %251, i32 0, i32 14
  %253 = load i32, i32* %252, align 8
  %254 = icmp eq i32 %253, 255
  br i1 %254, label %255, label %268

; <label>:255:                                    ; preds = %250, %244
  %256 = load %struct.EState*, %struct.EState** %2, align 8
  %257 = getelementptr inbounds %struct.EState, %struct.EState* %256, i32 0, i32 13
  %258 = load i32, i32* %257, align 4
  %259 = icmp ult i32 %258, 256
  br i1 %259, label %260, label %262

; <label>:260:                                    ; preds = %255
  %261 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %261)
  br label %262

; <label>:262:                                    ; preds = %260, %255
  %263 = load i32, i32* %6, align 4
  %264 = load %struct.EState*, %struct.EState** %2, align 8
  %265 = getelementptr inbounds %struct.EState, %struct.EState* %264, i32 0, i32 13
  store i32 %263, i32* %265, align 4
  %266 = load %struct.EState*, %struct.EState** %2, align 8
  %267 = getelementptr inbounds %struct.EState, %struct.EState* %266, i32 0, i32 14
  store i32 1, i32* %267, align 8
  br label %273

; <label>:268:                                    ; preds = %250
  %269 = load %struct.EState*, %struct.EState** %2, align 8
  %270 = getelementptr inbounds %struct.EState, %struct.EState* %269, i32 0, i32 14
  %271 = load i32, i32* %270, align 8
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 8
  br label %273

; <label>:273:                                    ; preds = %268, %262
  br label %274

; <label>:274:                                    ; preds = %273, %199
  %275 = load %struct.EState*, %struct.EState** %2, align 8
  %276 = getelementptr inbounds %struct.EState, %struct.EState* %275, i32 0, i32 0
  %277 = load %struct.bz_stream*, %struct.bz_stream** %276, align 8
  %278 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %277, i32 0, i32 0
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %278, align 8
  %281 = load %struct.EState*, %struct.EState** %2, align 8
  %282 = getelementptr inbounds %struct.EState, %struct.EState* %281, i32 0, i32 0
  %283 = load %struct.bz_stream*, %struct.bz_stream** %282, align 8
  %284 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = add i32 %285, -1
  store i32 %286, i32* %284, align 8
  %287 = load %struct.EState*, %struct.EState** %2, align 8
  %288 = getelementptr inbounds %struct.EState, %struct.EState* %287, i32 0, i32 0
  %289 = load %struct.bz_stream*, %struct.bz_stream** %288, align 8
  %290 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = add i32 %291, 1
  store i32 %292, i32* %290, align 4
  %293 = load %struct.EState*, %struct.EState** %2, align 8
  %294 = getelementptr inbounds %struct.EState, %struct.EState* %293, i32 0, i32 0
  %295 = load %struct.bz_stream*, %struct.bz_stream** %294, align 8
  %296 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 0
  br i1 %298, label %299, label %306

; <label>:299:                                    ; preds = %274
  %300 = load %struct.EState*, %struct.EState** %2, align 8
  %301 = getelementptr inbounds %struct.EState, %struct.EState* %300, i32 0, i32 0
  %302 = load %struct.bz_stream*, %struct.bz_stream** %301, align 8
  %303 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 8
  %305 = add i32 %304, 1
  store i32 %305, i32* %303, align 8
  br label %306

; <label>:306:                                    ; preds = %299, %274
  %307 = load %struct.EState*, %struct.EState** %2, align 8
  %308 = getelementptr inbounds %struct.EState, %struct.EState* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = add i32 %309, -1
  store i32 %310, i32* %308, align 8
  br label %158

; <label>:311:                                    ; preds = %180, %174, %166
  br label %312

; <label>:312:                                    ; preds = %311, %156
  %313 = load i8, i8* %3, align 1
  ret i8 %313
}

; Function Attrs: noinline nounwind uwtable
define internal void @flush_RL(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  store %struct.EState* %0, %struct.EState** %2, align 8
  %3 = load %struct.EState*, %struct.EState** %2, align 8
  %4 = getelementptr inbounds %struct.EState, %struct.EState* %3, i32 0, i32 13
  %5 = load i32, i32* %4, align 4
  %6 = icmp ult i32 %5, 256
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %1
  %8 = load %struct.EState*, %struct.EState** %2, align 8
  call void @add_pair_to_block(%struct.EState* %8)
  br label %9

; <label>:9:                                      ; preds = %7, %1
  %10 = load %struct.EState*, %struct.EState** %2, align 8
  call void @init_RL(%struct.EState* %10)
  ret void
}

declare void @BZ2_compressBlock(%struct.EState*, i8 zeroext) #1

; Function Attrs: noinline nounwind uwtable
define internal void @add_pair_to_block(%struct.EState*) #0 {
  %2 = alloca %struct.EState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store %struct.EState* %0, %struct.EState** %2, align 8
  %5 = load %struct.EState*, %struct.EState** %2, align 8
  %6 = getelementptr inbounds %struct.EState, %struct.EState* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* %4, align 1
  store i32 0, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %33, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.EState*, %struct.EState** %2, align 8
  %12 = getelementptr inbounds %struct.EState, %struct.EState* %11, i32 0, i32 14
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %36

; <label>:15:                                     ; preds = %9
  %16 = load %struct.EState*, %struct.EState** %2, align 8
  %17 = getelementptr inbounds %struct.EState, %struct.EState* %16, i32 0, i32 26
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 8
  %20 = load %struct.EState*, %struct.EState** %2, align 8
  %21 = getelementptr inbounds %struct.EState, %struct.EState* %20, i32 0, i32 26
  %22 = load i32, i32* %21, align 8
  %23 = lshr i32 %22, 24
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = xor i32 %23, %25
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [256 x i32], [256 x i32]* @BZ2_crc32Table, i64 0, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = xor i32 %19, %29
  %31 = load %struct.EState*, %struct.EState** %2, align 8
  %32 = getelementptr inbounds %struct.EState, %struct.EState* %31, i32 0, i32 26
  store i32 %30, i32* %32, align 8
  br label %33

; <label>:33:                                     ; preds = %15
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %9

; <label>:36:                                     ; preds = %9
  %37 = load %struct.EState*, %struct.EState** %2, align 8
  %38 = getelementptr inbounds %struct.EState, %struct.EState* %37, i32 0, i32 22
  %39 = load %struct.EState*, %struct.EState** %2, align 8
  %40 = getelementptr inbounds %struct.EState, %struct.EState* %39, i32 0, i32 13
  %41 = load i32, i32* %40, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %38, i64 0, i64 %42
  store i8 1, i8* %43, align 1
  %44 = load %struct.EState*, %struct.EState** %2, align 8
  %45 = getelementptr inbounds %struct.EState, %struct.EState* %44, i32 0, i32 14
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %128 [
    i32 1, label %47
    i32 2, label %61
    i32 3, label %88
  ]

; <label>:47:                                     ; preds = %36
  %48 = load i8, i8* %4, align 1
  %49 = load %struct.EState*, %struct.EState** %2, align 8
  %50 = getelementptr inbounds %struct.EState, %struct.EState* %49, i32 0, i32 9
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.EState*, %struct.EState** %2, align 8
  %53 = getelementptr inbounds %struct.EState, %struct.EState* %52, i32 0, i32 17
  %54 = load i32, i32* %53, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  store i8 %48, i8* %56, align 1
  %57 = load %struct.EState*, %struct.EState** %2, align 8
  %58 = getelementptr inbounds %struct.EState, %struct.EState* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %206

; <label>:61:                                     ; preds = %36
  %62 = load i8, i8* %4, align 1
  %63 = load %struct.EState*, %struct.EState** %2, align 8
  %64 = getelementptr inbounds %struct.EState, %struct.EState* %63, i32 0, i32 9
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.EState*, %struct.EState** %2, align 8
  %67 = getelementptr inbounds %struct.EState, %struct.EState* %66, i32 0, i32 17
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %65, i64 %69
  store i8 %62, i8* %70, align 1
  %71 = load %struct.EState*, %struct.EState** %2, align 8
  %72 = getelementptr inbounds %struct.EState, %struct.EState* %71, i32 0, i32 17
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = load i8, i8* %4, align 1
  %76 = load %struct.EState*, %struct.EState** %2, align 8
  %77 = getelementptr inbounds %struct.EState, %struct.EState* %76, i32 0, i32 9
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.EState*, %struct.EState** %2, align 8
  %80 = getelementptr inbounds %struct.EState, %struct.EState* %79, i32 0, i32 17
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %78, i64 %82
  store i8 %75, i8* %83, align 1
  %84 = load %struct.EState*, %struct.EState** %2, align 8
  %85 = getelementptr inbounds %struct.EState, %struct.EState* %84, i32 0, i32 17
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %206

; <label>:88:                                     ; preds = %36
  %89 = load i8, i8* %4, align 1
  %90 = load %struct.EState*, %struct.EState** %2, align 8
  %91 = getelementptr inbounds %struct.EState, %struct.EState* %90, i32 0, i32 9
  %92 = load i8*, i8** %91, align 8
  %93 = load %struct.EState*, %struct.EState** %2, align 8
  %94 = getelementptr inbounds %struct.EState, %struct.EState* %93, i32 0, i32 17
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %92, i64 %96
  store i8 %89, i8* %97, align 1
  %98 = load %struct.EState*, %struct.EState** %2, align 8
  %99 = getelementptr inbounds %struct.EState, %struct.EState* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load i8, i8* %4, align 1
  %103 = load %struct.EState*, %struct.EState** %2, align 8
  %104 = getelementptr inbounds %struct.EState, %struct.EState* %103, i32 0, i32 9
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.EState*, %struct.EState** %2, align 8
  %107 = getelementptr inbounds %struct.EState, %struct.EState* %106, i32 0, i32 17
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8, i8* %105, i64 %109
  store i8 %102, i8* %110, align 1
  %111 = load %struct.EState*, %struct.EState** %2, align 8
  %112 = getelementptr inbounds %struct.EState, %struct.EState* %111, i32 0, i32 17
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i8, i8* %4, align 1
  %116 = load %struct.EState*, %struct.EState** %2, align 8
  %117 = getelementptr inbounds %struct.EState, %struct.EState* %116, i32 0, i32 9
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.EState*, %struct.EState** %2, align 8
  %120 = getelementptr inbounds %struct.EState, %struct.EState* %119, i32 0, i32 17
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %118, i64 %122
  store i8 %115, i8* %123, align 1
  %124 = load %struct.EState*, %struct.EState** %2, align 8
  %125 = getelementptr inbounds %struct.EState, %struct.EState* %124, i32 0, i32 17
  %126 = load i32, i32* %125, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %125, align 4
  br label %206

; <label>:128:                                    ; preds = %36
  %129 = load %struct.EState*, %struct.EState** %2, align 8
  %130 = getelementptr inbounds %struct.EState, %struct.EState* %129, i32 0, i32 22
  %131 = load %struct.EState*, %struct.EState** %2, align 8
  %132 = getelementptr inbounds %struct.EState, %struct.EState* %131, i32 0, i32 14
  %133 = load i32, i32* %132, align 8
  %134 = sub nsw i32 %133, 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [256 x i8], [256 x i8]* %130, i64 0, i64 %135
  store i8 1, i8* %136, align 1
  %137 = load i8, i8* %4, align 1
  %138 = load %struct.EState*, %struct.EState** %2, align 8
  %139 = getelementptr inbounds %struct.EState, %struct.EState* %138, i32 0, i32 9
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.EState*, %struct.EState** %2, align 8
  %142 = getelementptr inbounds %struct.EState, %struct.EState* %141, i32 0, i32 17
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  store i8 %137, i8* %145, align 1
  %146 = load %struct.EState*, %struct.EState** %2, align 8
  %147 = getelementptr inbounds %struct.EState, %struct.EState* %146, i32 0, i32 17
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 4
  %150 = load i8, i8* %4, align 1
  %151 = load %struct.EState*, %struct.EState** %2, align 8
  %152 = getelementptr inbounds %struct.EState, %struct.EState* %151, i32 0, i32 9
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.EState*, %struct.EState** %2, align 8
  %155 = getelementptr inbounds %struct.EState, %struct.EState* %154, i32 0, i32 17
  %156 = load i32, i32* %155, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %153, i64 %157
  store i8 %150, i8* %158, align 1
  %159 = load %struct.EState*, %struct.EState** %2, align 8
  %160 = getelementptr inbounds %struct.EState, %struct.EState* %159, i32 0, i32 17
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load i8, i8* %4, align 1
  %164 = load %struct.EState*, %struct.EState** %2, align 8
  %165 = getelementptr inbounds %struct.EState, %struct.EState* %164, i32 0, i32 9
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.EState*, %struct.EState** %2, align 8
  %168 = getelementptr inbounds %struct.EState, %struct.EState* %167, i32 0, i32 17
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %166, i64 %170
  store i8 %163, i8* %171, align 1
  %172 = load %struct.EState*, %struct.EState** %2, align 8
  %173 = getelementptr inbounds %struct.EState, %struct.EState* %172, i32 0, i32 17
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  %176 = load i8, i8* %4, align 1
  %177 = load %struct.EState*, %struct.EState** %2, align 8
  %178 = getelementptr inbounds %struct.EState, %struct.EState* %177, i32 0, i32 9
  %179 = load i8*, i8** %178, align 8
  %180 = load %struct.EState*, %struct.EState** %2, align 8
  %181 = getelementptr inbounds %struct.EState, %struct.EState* %180, i32 0, i32 17
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %179, i64 %183
  store i8 %176, i8* %184, align 1
  %185 = load %struct.EState*, %struct.EState** %2, align 8
  %186 = getelementptr inbounds %struct.EState, %struct.EState* %185, i32 0, i32 17
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = load %struct.EState*, %struct.EState** %2, align 8
  %190 = getelementptr inbounds %struct.EState, %struct.EState* %189, i32 0, i32 14
  %191 = load i32, i32* %190, align 8
  %192 = sub nsw i32 %191, 4
  %193 = trunc i32 %192 to i8
  %194 = load %struct.EState*, %struct.EState** %2, align 8
  %195 = getelementptr inbounds %struct.EState, %struct.EState* %194, i32 0, i32 9
  %196 = load i8*, i8** %195, align 8
  %197 = load %struct.EState*, %struct.EState** %2, align 8
  %198 = getelementptr inbounds %struct.EState, %struct.EState* %197, i32 0, i32 17
  %199 = load i32, i32* %198, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i8, i8* %196, i64 %200
  store i8 %193, i8* %201, align 1
  %202 = load %struct.EState*, %struct.EState** %2, align 8
  %203 = getelementptr inbounds %struct.EState, %struct.EState* %202, i32 0, i32 17
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  br label %206

; <label>:206:                                    ; preds = %128, %88, %61, %47
  ret void
}

declare i32 @fgetc(%struct._IO_FILE*) #1

declare i32 @ungetc(i32, %struct._IO_FILE*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #4

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #6

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind
declare %struct._IO_FILE* @fdopen(i32, i8*) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
