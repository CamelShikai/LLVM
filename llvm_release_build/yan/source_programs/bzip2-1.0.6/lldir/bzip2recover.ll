; ModuleID = 'bzip2recover.c'
source_filename = "bzip2recover.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.BitStream = type { %struct._IO_FILE*, i32, i32, i8 }

@bytesOut = global i64 0, align 8
@bytesIn = global i64 0, align 8
@progName = common global [2000 x i8] zeroinitializer, align 16
@outFileName = common global [2000 x i8] zeroinitializer, align 16
@inFileName = common global [2000 x i8] zeroinitializer, align 16
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [62 x i8] c"bzip2recover 1.0.6: extracts blocks from damaged .bz2 files.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"%s: usage is `%s damaged_file_name'.\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\09restrictions on size of recovered file: None\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"%s: supplied filename is suspiciously (>= %d chars) long.  Bye!\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"%s: can't read `%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"%s: searching for block boundaries ...\0A\00", align 1
@bStart = common global [50000 x i64] zeroinitializer, align 16
@bEnd = common global [50000 x i64] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [47 x i8] c"   block %d runs from %Lu to %Lu (incomplete)\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"   block %d runs from %Lu to %Lu\0A\00", align 1
@rbStart = common global [50000 x i64] zeroinitializer, align 16
@rbEnd = common global [50000 x i64] zeroinitializer, align 16
@.str.9 = private unnamed_addr constant [50 x i8] c"%s: sorry, I couldn't find any block boundaries.\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"%s: splitting into blocks\0A\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"%s: can't open `%s'\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"rec%5d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"   writing block %d to `%s' ...\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"%s: can't write `%s'\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"%s: finished\0A\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"%s: malloc failed on request for %d bytes.\0A\00", align 1
@.str.19 = private unnamed_addr constant [48 x i8] c"%s: warning: output file(s) may be incomplete.\0A\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"%s: I/O error reading `%s', possible reason follows.\0A\00", align 1
@.str.21 = private unnamed_addr constant [49 x i8] c"%s: `%s' appears to contain more than %d blocks\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"%s: and cannot be handled.  To fix, increase\0A\00", align 1
@.str.23 = private unnamed_addr constant [61 x i8] c"%s: BZ_MAX_HANDLED_BLOCKS in bzip2recover.c, and recompile.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct._IO_FILE*, align 8
  %7 = alloca %struct._IO_FILE*, align 8
  %8 = alloca %struct.BitStream*, align 8
  %9 = alloca %struct.BitStream*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @strcpy(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* %24) #6
  store i8 0, i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i64 0, i64 0), align 16
  store i8 0, i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i64 0, i64 0), align 16
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i32 0, i32 0))
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %35

; <label>:30:                                     ; preds = %2
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:35:                                     ; preds = %2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @strlen(i8* %38) #8
  %40 = icmp uge i64 %39, 1980
  br i1 %40, label %41, label %49

; <label>:41:                                     ; preds = %35
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i64 @strlen(i8* %45) #8
  %47 = trunc i64 %46 to i32
  %48 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %42, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i32 %47)
  call void @exit(i32 1) #7
  unreachable

; <label>:49:                                     ; preds = %35
  %50 = load i8**, i8*** %5, align 8
  %51 = getelementptr inbounds i8*, i8** %50, i64 1
  %52 = load i8*, i8** %51, align 8
  %53 = call i8* @strcpy(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0), i8* %52) #6
  %54 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %54, %struct._IO_FILE** %6, align 8
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %56 = icmp eq %struct._IO_FILE* %55, null
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %49
  %58 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %59 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:60:                                     ; preds = %49
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %62 = call %struct.BitStream* @bsOpenReadStream(%struct._IO_FILE* %61)
  store %struct.BitStream* %62, %struct.BitStream** %8, align 8
  %63 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %64 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  store i64 0, i64* %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %66
  store i64 0, i64* %67, align 8
  store i32 0, i32* %13, align 4
  br label %68

; <label>:68:                                     ; preds = %60, %210
  %69 = load %struct.BitStream*, %struct.BitStream** %8, align 8
  %70 = call i32 @bsGetBit(%struct.BitStream* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i64, i64* %14, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %14, align 8
  %73 = load i32, i32* %10, align 4
  %74 = icmp eq i32 %73, 2
  br i1 %74, label %75, label %115

; <label>:75:                                     ; preds = %68
  %76 = load i64, i64* %14, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = icmp uge i64 %76, %80
  br i1 %81, label %82, label %111

; <label>:82:                                     ; preds = %75
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %83, %87
  %89 = icmp uge i64 %88, 40
  br i1 %89, label %90, label %111

; <label>:90:                                     ; preds = %82
  %91 = load i64, i64* %14, align 8
  %92 = sub i64 %91, 1
  %93 = load i32, i32* %12, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %94
  store i64 %92, i64* %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %110

; <label>:98:                                     ; preds = %90
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i32 0, i32 0), i32 %100, i64 %104, i64 %108)
  br label %110

; <label>:110:                                    ; preds = %98, %90
  br label %114

; <label>:111:                                    ; preds = %82, %75
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %12, align 4
  br label %114

; <label>:114:                                    ; preds = %111, %110
  br label %211

; <label>:115:                                    ; preds = %68
  %116 = load i32, i32* %15, align 4
  %117 = shl i32 %116, 1
  %118 = load i32, i32* %16, align 4
  %119 = lshr i32 %118, 31
  %120 = or i32 %117, %119
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %16, align 4
  %122 = shl i32 %121, 1
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, 1
  %125 = or i32 %122, %124
  store i32 %125, i32* %16, align 4
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, 65535
  %128 = zext i32 %127 to i64
  %129 = icmp eq i64 %128, 12609
  br i1 %129, label %130, label %134

; <label>:130:                                    ; preds = %115
  %131 = load i32, i32* %16, align 4
  %132 = zext i32 %131 to i64
  %133 = icmp eq i64 %132, 1495683929
  br i1 %133, label %143, label %134

; <label>:134:                                    ; preds = %130, %115
  %135 = load i32, i32* %15, align 4
  %136 = and i32 %135, 65535
  %137 = zext i32 %136 to i64
  %138 = icmp eq i64 %137, 6002
  br i1 %138, label %139, label %210

; <label>:139:                                    ; preds = %134
  %140 = load i32, i32* %16, align 4
  %141 = zext i32 %140 to i64
  %142 = icmp eq i64 %141, 1161318544
  br i1 %142, label %143, label %210

; <label>:143:                                    ; preds = %139, %130
  %144 = load i64, i64* %14, align 8
  %145 = icmp ugt i64 %144, 49
  br i1 %145, label %146, label %152

; <label>:146:                                    ; preds = %143
  %147 = load i64, i64* %14, align 8
  %148 = sub i64 %147, 49
  %149 = load i32, i32* %12, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %150
  store i64 %148, i64* %151, align 8
  br label %156

; <label>:152:                                    ; preds = %143
  %153 = load i32, i32* %12, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %154
  store i64 0, i64* %155, align 8
  br label %156

; <label>:156:                                    ; preds = %152, %146
  %157 = load i32, i32* %12, align 4
  %158 = icmp sgt i32 %157, 0
  br i1 %158, label %159, label %199

; <label>:159:                                    ; preds = %156
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = sub i64 %163, %167
  %169 = icmp uge i64 %168, 130
  br i1 %169, label %170, label %199

; <label>:170:                                    ; preds = %159
  %171 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %175
  %177 = load i64, i64* %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %179
  %181 = load i64, i64* %180, align 8
  %182 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %171, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i32 %173, i64 %177, i64 %181)
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbStart, i64 0, i64 %188
  store i64 %186, i64* %189, align 8
  %190 = load i32, i32* %12, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bEnd, i64 0, i64 %191
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %13, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbEnd, i64 0, i64 %195
  store i64 %193, i64* %196, align 8
  %197 = load i32, i32* %13, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %13, align 4
  br label %199

; <label>:199:                                    ; preds = %170, %159, %156
  %200 = load i32, i32* %12, align 4
  %201 = icmp sge i32 %200, 50000
  br i1 %201, label %202, label %203

; <label>:202:                                    ; preds = %199
  call void @tooManyBlocks(i32 50000)
  br label %203

; <label>:203:                                    ; preds = %202, %199
  %204 = load i32, i32* %12, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %12, align 4
  %206 = load i64, i64* %14, align 8
  %207 = load i32, i32* %12, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [50000 x i64], [50000 x i64]* @bStart, i64 0, i64 %208
  store i64 %206, i64* %209, align 8
  br label %210

; <label>:210:                                    ; preds = %203, %139, %134
  br label %68

; <label>:211:                                    ; preds = %114
  %212 = load %struct.BitStream*, %struct.BitStream** %8, align 8
  call void @bsClose(%struct.BitStream* %212)
  %213 = load i32, i32* %13, align 4
  %214 = icmp slt i32 %213, 1
  br i1 %214, label %215, label %218

; <label>:215:                                    ; preds = %211
  %216 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %217 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %216, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:218:                                    ; preds = %211
  %219 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %220 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %219, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  %221 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  store %struct._IO_FILE* %221, %struct._IO_FILE** %6, align 8
  %222 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %223 = icmp eq %struct._IO_FILE* %222, null
  br i1 %223, label %224, label %227

; <label>:224:                                    ; preds = %218
  %225 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %226 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %225, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:227:                                    ; preds = %218
  %228 = load %struct._IO_FILE*, %struct._IO_FILE** %6, align 8
  %229 = call %struct.BitStream* @bsOpenReadStream(%struct._IO_FILE* %228)
  store %struct.BitStream* %229, %struct.BitStream** %8, align 8
  store i32 0, i32* %17, align 4
  store %struct.BitStream* null, %struct.BitStream** %9, align 8
  store i64 0, i64* %14, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %7, align 8
  store i32 0, i32* %11, align 4
  br label %230

; <label>:230:                                    ; preds = %227, %398
  %231 = load %struct.BitStream*, %struct.BitStream** %8, align 8
  %232 = call i32 @bsGetBit(%struct.BitStream* %231)
  store i32 %232, i32* %10, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp eq i32 %233, 2
  br i1 %234, label %235, label %236

; <label>:235:                                    ; preds = %230
  br label %399

; <label>:236:                                    ; preds = %230
  %237 = load i32, i32* %15, align 4
  %238 = shl i32 %237, 1
  %239 = load i32, i32* %16, align 4
  %240 = lshr i32 %239, 31
  %241 = or i32 %238, %240
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %16, align 4
  %243 = shl i32 %242, 1
  %244 = load i32, i32* %10, align 4
  %245 = and i32 %244, 1
  %246 = or i32 %243, %245
  store i32 %246, i32* %16, align 4
  %247 = load i64, i64* %14, align 8
  %248 = load i32, i32* %11, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbStart, i64 0, i64 %249
  %251 = load i64, i64* %250, align 8
  %252 = add i64 47, %251
  %253 = icmp eq i64 %247, %252
  br i1 %253, label %254, label %260

; <label>:254:                                    ; preds = %236
  %255 = load i32, i32* %15, align 4
  %256 = shl i32 %255, 16
  %257 = load i32, i32* %16, align 4
  %258 = lshr i32 %257, 16
  %259 = or i32 %256, %258
  store i32 %259, i32* %17, align 4
  br label %260

; <label>:260:                                    ; preds = %254, %236
  %261 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %262 = icmp ne %struct._IO_FILE* %261, null
  br i1 %262, label %263, label %280

; <label>:263:                                    ; preds = %260
  %264 = load i64, i64* %14, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbStart, i64 0, i64 %266
  %268 = load i64, i64* %267, align 8
  %269 = icmp uge i64 %264, %268
  br i1 %269, label %270, label %280

; <label>:270:                                    ; preds = %263
  %271 = load i64, i64* %14, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbEnd, i64 0, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = icmp ule i64 %271, %275
  br i1 %276, label %277, label %280

; <label>:277:                                    ; preds = %270
  %278 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  %279 = load i32, i32* %10, align 4
  call void @bsPutBit(%struct.BitStream* %278, i32 %279)
  br label %280

; <label>:280:                                    ; preds = %277, %270, %263, %260
  %281 = load i64, i64* %14, align 8
  %282 = add i64 %281, 1
  store i64 %282, i64* %14, align 8
  %283 = load i64, i64* %14, align 8
  %284 = load i32, i32* %11, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbEnd, i64 0, i64 %285
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, 1
  %289 = icmp eq i64 %283, %288
  br i1 %289, label %290, label %311

; <label>:290:                                    ; preds = %280
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %292 = icmp ne %struct._IO_FILE* %291, null
  br i1 %292, label %293, label %303

; <label>:293:                                    ; preds = %290
  %294 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %294, i8 zeroext 23)
  %295 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %295, i8 zeroext 114)
  %296 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %296, i8 zeroext 69)
  %297 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %297, i8 zeroext 56)
  %298 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %298, i8 zeroext 80)
  %299 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %299, i8 zeroext -112)
  %300 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  %301 = load i32, i32* %17, align 4
  call void @bsPutUInt32(%struct.BitStream* %300, i32 %301)
  %302 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsClose(%struct.BitStream* %302)
  br label %303

; <label>:303:                                    ; preds = %293, %290
  %304 = load i32, i32* %11, align 4
  %305 = load i32, i32* %13, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %308

; <label>:307:                                    ; preds = %303
  br label %399

; <label>:308:                                    ; preds = %303
  %309 = load i32, i32* %11, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %11, align 4
  br label %398

; <label>:311:                                    ; preds = %280
  %312 = load i64, i64* %14, align 8
  %313 = load i32, i32* %11, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [50000 x i64], [50000 x i64]* @rbStart, i64 0, i64 %314
  %316 = load i64, i64* %315, align 8
  %317 = icmp eq i64 %312, %316
  br i1 %317, label %318, label %397

; <label>:318:                                    ; preds = %311
  store i32 0, i32* %21, align 4
  br label %319

; <label>:319:                                    ; preds = %326, %318
  %320 = load i32, i32* %21, align 4
  %321 = icmp slt i32 %320, 2000
  br i1 %321, label %322, label %329

; <label>:322:                                    ; preds = %319
  %323 = load i32, i32* %21, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [2000 x i8], [2000 x i8]* @outFileName, i64 0, i64 %324
  store i8 0, i8* %325, align 1
  br label %326

; <label>:326:                                    ; preds = %322
  %327 = load i32, i32* %21, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %21, align 4
  br label %319

; <label>:329:                                    ; preds = %319
  %330 = call i8* @strcpy(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0)) #6
  %331 = call i8* @strrchr(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i32 47) #8
  store i8* %331, i8** %19, align 8
  %332 = load i8*, i8** %19, align 8
  %333 = icmp eq i8* %332, null
  br i1 %333, label %334, label %335

; <label>:334:                                    ; preds = %329
  store i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i8** %19, align 8
  br label %338

; <label>:335:                                    ; preds = %329
  %336 = load i8*, i8** %19, align 8
  %337 = getelementptr inbounds i8, i8* %336, i32 1
  store i8* %337, i8** %19, align 8
  br label %338

; <label>:338:                                    ; preds = %335, %334
  %339 = load i8*, i8** %19, align 8
  %340 = ptrtoint i8* %339 to i64
  %341 = sub i64 %340, ptrtoint ([2000 x i8]* @outFileName to i64)
  %342 = trunc i64 %341 to i32
  store i32 %342, i32* %20, align 4
  %343 = load i8*, i8** %19, align 8
  %344 = load i32, i32* %11, align 4
  %345 = add nsw i32 %344, 1
  %346 = call i32 (i8*, i8*, ...) @sprintf(i8* %343, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i32 %345) #6
  %347 = load i8*, i8** %19, align 8
  store i8* %347, i8** %18, align 8
  br label %348

; <label>:348:                                    ; preds = %361, %338
  %349 = load i8*, i8** %18, align 8
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %364

; <label>:353:                                    ; preds = %348
  %354 = load i8*, i8** %18, align 8
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = icmp eq i32 %356, 32
  br i1 %357, label %358, label %360

; <label>:358:                                    ; preds = %353
  %359 = load i8*, i8** %18, align 8
  store i8 48, i8* %359, align 1
  br label %360

; <label>:360:                                    ; preds = %358, %353
  br label %361

; <label>:361:                                    ; preds = %360
  %362 = load i8*, i8** %18, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %18, align 8
  br label %348

; <label>:364:                                    ; preds = %348
  %365 = load i32, i32* %20, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i8, i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0), i64 %366
  %368 = call i8* @strcat(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i8* %367) #6
  %369 = call zeroext i8 @endsInBz2(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0))
  %370 = icmp ne i8 %369, 0
  br i1 %370, label %373, label %371

; <label>:371:                                    ; preds = %364
  %372 = call i8* @strcat(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #6
  br label %373

; <label>:373:                                    ; preds = %371, %364
  %374 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %375 = load i32, i32* %11, align 4
  %376 = add nsw i32 %375, 1
  %377 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %374, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 %376, i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0))
  %378 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i32 0, i32 0))
  store %struct._IO_FILE* %378, %struct._IO_FILE** %7, align 8
  %379 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %380 = icmp eq %struct._IO_FILE* %379, null
  br i1 %380, label %381, label %384

; <label>:381:                                    ; preds = %373
  %382 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %383 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %382, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @outFileName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable

; <label>:384:                                    ; preds = %373
  %385 = load %struct._IO_FILE*, %struct._IO_FILE** %7, align 8
  %386 = call %struct.BitStream* @bsOpenWriteStream(%struct._IO_FILE* %385)
  store %struct.BitStream* %386, %struct.BitStream** %9, align 8
  %387 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %387, i8 zeroext 66)
  %388 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %388, i8 zeroext 90)
  %389 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %389, i8 zeroext 104)
  %390 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %390, i8 zeroext 57)
  %391 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %391, i8 zeroext 49)
  %392 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %392, i8 zeroext 65)
  %393 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %393, i8 zeroext 89)
  %394 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %394, i8 zeroext 38)
  %395 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %395, i8 zeroext 83)
  %396 = load %struct.BitStream*, %struct.BitStream** %9, align 8
  call void @bsPutUChar(%struct.BitStream* %396, i8 zeroext 89)
  br label %397

; <label>:397:                                    ; preds = %384, %311
  br label %398

; <label>:398:                                    ; preds = %397, %308
  br label %230

; <label>:399:                                    ; preds = %307, %235
  %400 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %401 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %400, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.BitStream* @bsOpenReadStream(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.BitStream*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #6
  %5 = bitcast i8* %4 to %struct.BitStream*
  store %struct.BitStream* %5, %struct.BitStream** %3, align 8
  %6 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %7 = icmp eq %struct.BitStream* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  call void @mallocFail(i32 24)
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %12 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %11, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %12, align 8
  %13 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %14 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %16 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %18 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %17, i32 0, i32 3
  store i8 114, i8* %18, align 8
  %19 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  ret %struct.BitStream* %19
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bsGetBit(%struct.BitStream*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BitStream*, align 8
  %4 = alloca i32, align 4
  store %struct.BitStream* %0, %struct.BitStream** %3, align 8
  %5 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %6 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %22

; <label>:9:                                      ; preds = %1
  %10 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %11 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %15 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %18 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %16, %19
  %21 = and i32 %20, 1
  store i32 %21, i32* %2, align 4
  br label %46

; <label>:22:                                     ; preds = %1
  %23 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %24 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %23, i32 0, i32 0
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %24, align 8
  %26 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %35

; <label>:29:                                     ; preds = %22
  %30 = call i32* @__errno_location() #9
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %29
  call void @readError()
  br label %34

; <label>:34:                                     ; preds = %33, %29
  store i32 2, i32* %2, align 4
  br label %46

; <label>:35:                                     ; preds = %22
  %36 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %37 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %36, i32 0, i32 2
  store i32 7, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %40 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %42 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 7
  %45 = and i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %46

; <label>:46:                                     ; preds = %35, %34, %9
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define internal void @tooManyBlocks(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0), i32 %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bsClose(%struct.BitStream*) #0 {
  %2 = alloca %struct.BitStream*, align 8
  %3 = alloca i32, align 4
  store %struct.BitStream* %0, %struct.BitStream** %2, align 8
  %4 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %5 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %4, i32 0, i32 3
  %6 = load i8, i8* %5, align 8
  %7 = sext i8 %6 to i32
  %8 = icmp eq i32 %7, 119
  br i1 %8, label %9, label %48

; <label>:9:                                      ; preds = %1
  br label %10

; <label>:10:                                     ; preds = %15, %9
  %11 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %12 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %13, 8
  br i1 %14, label %15, label %24

; <label>:15:                                     ; preds = %10
  %16 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %17 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  %20 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %21 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = shl i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %10

; <label>:24:                                     ; preds = %10
  %25 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %26 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = trunc i32 %27 to i8
  %29 = zext i8 %28 to i32
  %30 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %31 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %30, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** %31, align 8
  %33 = call i32 @_IO_putc(i32 %29, %struct._IO_FILE* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %24
  call void @writeError()
  br label %37

; <label>:37:                                     ; preds = %36, %24
  %38 = load i64, i64* @bytesOut, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* @bytesOut, align 8
  %40 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %41 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %40, i32 0, i32 0
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** %41, align 8
  %43 = call i32 @fflush(%struct._IO_FILE* %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %37
  call void @writeError()
  br label %47

; <label>:47:                                     ; preds = %46, %37
  br label %48

; <label>:48:                                     ; preds = %47, %1
  %49 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %50 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %49, i32 0, i32 0
  %51 = load %struct._IO_FILE*, %struct._IO_FILE** %50, align 8
  %52 = call i32 @fclose(%struct._IO_FILE* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, -1
  br i1 %54, label %55, label %64

; <label>:55:                                     ; preds = %48
  %56 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %57 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %56, i32 0, i32 3
  %58 = load i8, i8* %57, align 8
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 119
  br i1 %60, label %61, label %62

; <label>:61:                                     ; preds = %55
  call void @writeError()
  br label %63

; <label>:62:                                     ; preds = %55
  call void @readError()
  br label %63

; <label>:63:                                     ; preds = %62, %61
  br label %64

; <label>:64:                                     ; preds = %63, %48
  %65 = load %struct.BitStream*, %struct.BitStream** %2, align 8
  %66 = bitcast %struct.BitStream* %65 to i8*
  call void @free(i8* %66) #6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bsPutBit(%struct.BitStream*, i32) #0 {
  %3 = alloca %struct.BitStream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BitStream* %0, %struct.BitStream** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %7 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %32

; <label>:10:                                     ; preds = %2
  %11 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %12 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = trunc i32 %13 to i8
  %15 = zext i8 %14 to i32
  %16 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %17 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %16, i32 0, i32 0
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** %17, align 8
  %19 = call i32 @_IO_putc(i32 %15, %struct._IO_FILE* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %10
  call void @writeError()
  br label %23

; <label>:23:                                     ; preds = %22, %10
  %24 = load i64, i64* @bytesOut, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* @bytesOut, align 8
  %26 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %27 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %26, i32 0, i32 2
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 1
  %30 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %31 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %46

; <label>:32:                                     ; preds = %2
  %33 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %34 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = shl i32 %35, 1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 1
  %39 = or i32 %36, %38
  %40 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %41 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %43 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

; <label>:46:                                     ; preds = %32, %23
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bsPutUChar(%struct.BitStream*, i8 zeroext) #0 {
  %3 = alloca %struct.BitStream*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.BitStream* %0, %struct.BitStream** %3, align 8
  store i8 %1, i8* %4, align 1
  store i32 7, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %16, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %19

; <label>:9:                                      ; preds = %6
  %10 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %11 = load i8, i8* %4, align 1
  %12 = zext i8 %11 to i32
  %13 = load i32, i32* %5, align 4
  %14 = lshr i32 %12, %13
  %15 = and i32 %14, 1
  call void @bsPutBit(%struct.BitStream* %10, i32 %15)
  br label %16

; <label>:16:                                     ; preds = %9
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %5, align 4
  br label %6

; <label>:19:                                     ; preds = %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @bsPutUInt32(%struct.BitStream*, i32) #0 {
  %3 = alloca %struct.BitStream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.BitStream* %0, %struct.BitStream** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 31, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %18

; <label>:9:                                      ; preds = %6
  %10 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = lshr i32 %11, %12
  %14 = and i32 %13, 1
  call void @bsPutBit(%struct.BitStream* %10, i32 %14)
  br label %15

; <label>:15:                                     ; preds = %9
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* %5, align 4
  br label %6

; <label>:18:                                     ; preds = %6
  ret void
}

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) #4

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal zeroext i8 @endsInBz2(i8*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @strlen(i8* %5) #8
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 4
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %1
  store i8 0, i8* %2, align 1
  br label %51

; <label>:11:                                     ; preds = %1
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %12, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 46
  br i1 %19, label %20, label %47

; <label>:20:                                     ; preds = %11
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sub nsw i32 %22, 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 98
  br i1 %28, label %29, label %47

; <label>:29:                                     ; preds = %20
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, 2
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 122
  br i1 %37, label %38, label %47

; <label>:38:                                     ; preds = %29
  %39 = load i8*, i8** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 50
  br label %47

; <label>:47:                                     ; preds = %38, %29, %20, %11
  %48 = phi i1 [ false, %29 ], [ false, %20 ], [ false, %11 ], [ %46, %38 ]
  %49 = zext i1 %48 to i32
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %2, align 1
  br label %51

; <label>:51:                                     ; preds = %47, %10
  %52 = load i8, i8* %2, align 1
  ret i8 %52
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.BitStream* @bsOpenWriteStream(%struct._IO_FILE*) #0 {
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca %struct.BitStream*, align 8
  store %struct._IO_FILE* %0, %struct._IO_FILE** %2, align 8
  %4 = call noalias i8* @malloc(i64 24) #6
  %5 = bitcast i8* %4 to %struct.BitStream*
  store %struct.BitStream* %5, %struct.BitStream** %3, align 8
  %6 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %7 = icmp eq %struct.BitStream* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  call void @mallocFail(i32 24)
  br label %9

; <label>:9:                                      ; preds = %8, %1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %11 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %12 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %11, i32 0, i32 0
  store %struct._IO_FILE* %10, %struct._IO_FILE** %12, align 8
  %13 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %14 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %13, i32 0, i32 1
  store i32 0, i32* %14, align 8
  %15 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %16 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %15, i32 0, i32 2
  store i32 0, i32* %16, align 4
  %17 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %18 = getelementptr inbounds %struct.BitStream, %struct.BitStream* %17, i32 0, i32 3
  store i8 119, i8* %18, align 8
  %19 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  ret %struct.BitStream* %19
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @mallocFail(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = load i32, i32* %2, align 4
  %5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i32 %4)
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @_IO_getc(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: noinline nounwind uwtable
define internal void @readError() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0))
  call void @perror(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare void @perror(i8*) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind uwtable
define internal void @writeError() #0 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @inFileName, i32 0, i32 0))
  call void @perror(i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([2000 x i8], [2000 x i8]* @progName, i32 0, i32 0))
  call void @exit(i32 1) #7
  unreachable
                                                  ; No predecessors!
  ret void
}

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
