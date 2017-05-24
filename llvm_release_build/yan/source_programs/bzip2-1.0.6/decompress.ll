; ModuleID = 'decompress.c'
source_filename = "decompress.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.DState = type { %struct.bz_stream*, i32, i8, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, [256 x i32], i32, [257 x i32], [257 x i32], i32*, i16*, i8*, i32, i32, i32, i32, i32, [256 x i8], [16 x i8], [256 x i8], [4096 x i8], [16 x i32], [18002 x i8], [18002 x i8], [6 x [258 x i8]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x [258 x i32]], [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }
%struct.bz_stream = type { i8*, i32, i32, i32, i8*, i32, i32, i32, i8*, i8* (i8*, i32, i32)*, void (i8*, i8*)*, i8* }

@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [20 x i8] c"\0A    [%d: huff+mtf \00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"rt+rld\00", align 1
@BZ2_rNums = external global [512 x i32], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @BZ2_decompress(%struct.DState*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.DState*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bz_stream*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca i32, align 4
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  %55 = alloca i32, align 4
  %56 = alloca [6 x i8], align 1
  %57 = alloca i8, align 1
  %58 = alloca i8, align 1
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  %62 = alloca i32, align 4
  %63 = alloca i32, align 4
  %64 = alloca i32, align 4
  %65 = alloca i32, align 4
  %66 = alloca i32, align 4
  %67 = alloca i32, align 4
  %68 = alloca i32, align 4
  %69 = alloca i32, align 4
  %70 = alloca i32, align 4
  %71 = alloca i32, align 4
  %72 = alloca i32, align 4
  %73 = alloca i32, align 4
  %74 = alloca i32, align 4
  %75 = alloca i32, align 4
  %76 = alloca i32, align 4
  %77 = alloca i32, align 4
  %78 = alloca i32, align 4
  %79 = alloca i32, align 4
  %80 = alloca i32, align 4
  %81 = alloca i32, align 4
  %82 = alloca i32, align 4
  %83 = alloca i32, align 4
  %84 = alloca i32, align 4
  %85 = alloca i32, align 4
  %86 = alloca i32, align 4
  %87 = alloca i32, align 4
  %88 = alloca i32, align 4
  store %struct.DState* %0, %struct.DState** %3, align 8
  %89 = load %struct.DState*, %struct.DState** %3, align 8
  %90 = getelementptr inbounds %struct.DState, %struct.DState* %89, i32 0, i32 0
  %91 = load %struct.bz_stream*, %struct.bz_stream** %90, align 8
  store %struct.bz_stream* %91, %struct.bz_stream** %8, align 8
  %92 = load %struct.DState*, %struct.DState** %3, align 8
  %93 = getelementptr inbounds %struct.DState, %struct.DState* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp eq i32 %94, 10
  br i1 %95, label %96, label %145

; <label>:96:                                     ; preds = %1
  %97 = load %struct.DState*, %struct.DState** %3, align 8
  %98 = getelementptr inbounds %struct.DState, %struct.DState* %97, i32 0, i32 40
  store i32 0, i32* %98, align 4
  %99 = load %struct.DState*, %struct.DState** %3, align 8
  %100 = getelementptr inbounds %struct.DState, %struct.DState* %99, i32 0, i32 41
  store i32 0, i32* %100, align 8
  %101 = load %struct.DState*, %struct.DState** %3, align 8
  %102 = getelementptr inbounds %struct.DState, %struct.DState* %101, i32 0, i32 42
  store i32 0, i32* %102, align 4
  %103 = load %struct.DState*, %struct.DState** %3, align 8
  %104 = getelementptr inbounds %struct.DState, %struct.DState* %103, i32 0, i32 43
  store i32 0, i32* %104, align 8
  %105 = load %struct.DState*, %struct.DState** %3, align 8
  %106 = getelementptr inbounds %struct.DState, %struct.DState* %105, i32 0, i32 44
  store i32 0, i32* %106, align 4
  %107 = load %struct.DState*, %struct.DState** %3, align 8
  %108 = getelementptr inbounds %struct.DState, %struct.DState* %107, i32 0, i32 45
  store i32 0, i32* %108, align 8
  %109 = load %struct.DState*, %struct.DState** %3, align 8
  %110 = getelementptr inbounds %struct.DState, %struct.DState* %109, i32 0, i32 46
  store i32 0, i32* %110, align 4
  %111 = load %struct.DState*, %struct.DState** %3, align 8
  %112 = getelementptr inbounds %struct.DState, %struct.DState* %111, i32 0, i32 47
  store i32 0, i32* %112, align 8
  %113 = load %struct.DState*, %struct.DState** %3, align 8
  %114 = getelementptr inbounds %struct.DState, %struct.DState* %113, i32 0, i32 48
  store i32 0, i32* %114, align 4
  %115 = load %struct.DState*, %struct.DState** %3, align 8
  %116 = getelementptr inbounds %struct.DState, %struct.DState* %115, i32 0, i32 49
  store i32 0, i32* %116, align 8
  %117 = load %struct.DState*, %struct.DState** %3, align 8
  %118 = getelementptr inbounds %struct.DState, %struct.DState* %117, i32 0, i32 50
  store i32 0, i32* %118, align 4
  %119 = load %struct.DState*, %struct.DState** %3, align 8
  %120 = getelementptr inbounds %struct.DState, %struct.DState* %119, i32 0, i32 51
  store i32 0, i32* %120, align 8
  %121 = load %struct.DState*, %struct.DState** %3, align 8
  %122 = getelementptr inbounds %struct.DState, %struct.DState* %121, i32 0, i32 52
  store i32 0, i32* %122, align 4
  %123 = load %struct.DState*, %struct.DState** %3, align 8
  %124 = getelementptr inbounds %struct.DState, %struct.DState* %123, i32 0, i32 53
  store i32 0, i32* %124, align 8
  %125 = load %struct.DState*, %struct.DState** %3, align 8
  %126 = getelementptr inbounds %struct.DState, %struct.DState* %125, i32 0, i32 54
  store i32 0, i32* %126, align 4
  %127 = load %struct.DState*, %struct.DState** %3, align 8
  %128 = getelementptr inbounds %struct.DState, %struct.DState* %127, i32 0, i32 55
  store i32 0, i32* %128, align 8
  %129 = load %struct.DState*, %struct.DState** %3, align 8
  %130 = getelementptr inbounds %struct.DState, %struct.DState* %129, i32 0, i32 56
  store i32 0, i32* %130, align 4
  %131 = load %struct.DState*, %struct.DState** %3, align 8
  %132 = getelementptr inbounds %struct.DState, %struct.DState* %131, i32 0, i32 57
  store i32 0, i32* %132, align 8
  %133 = load %struct.DState*, %struct.DState** %3, align 8
  %134 = getelementptr inbounds %struct.DState, %struct.DState* %133, i32 0, i32 58
  store i32 0, i32* %134, align 4
  %135 = load %struct.DState*, %struct.DState** %3, align 8
  %136 = getelementptr inbounds %struct.DState, %struct.DState* %135, i32 0, i32 59
  store i32 0, i32* %136, align 8
  %137 = load %struct.DState*, %struct.DState** %3, align 8
  %138 = getelementptr inbounds %struct.DState, %struct.DState* %137, i32 0, i32 60
  store i32 0, i32* %138, align 4
  %139 = load %struct.DState*, %struct.DState** %3, align 8
  %140 = getelementptr inbounds %struct.DState, %struct.DState* %139, i32 0, i32 61
  store i32* null, i32** %140, align 8
  %141 = load %struct.DState*, %struct.DState** %3, align 8
  %142 = getelementptr inbounds %struct.DState, %struct.DState* %141, i32 0, i32 62
  store i32* null, i32** %142, align 8
  %143 = load %struct.DState*, %struct.DState** %3, align 8
  %144 = getelementptr inbounds %struct.DState, %struct.DState* %143, i32 0, i32 63
  store i32* null, i32** %144, align 8
  br label %145

; <label>:145:                                    ; preds = %96, %1
  %146 = load %struct.DState*, %struct.DState** %3, align 8
  %147 = getelementptr inbounds %struct.DState, %struct.DState* %146, i32 0, i32 40
  %148 = load i32, i32* %147, align 4
  store i32 %148, i32* %9, align 4
  %149 = load %struct.DState*, %struct.DState** %3, align 8
  %150 = getelementptr inbounds %struct.DState, %struct.DState* %149, i32 0, i32 41
  %151 = load i32, i32* %150, align 8
  store i32 %151, i32* %10, align 4
  %152 = load %struct.DState*, %struct.DState** %3, align 8
  %153 = getelementptr inbounds %struct.DState, %struct.DState* %152, i32 0, i32 42
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %11, align 4
  %155 = load %struct.DState*, %struct.DState** %3, align 8
  %156 = getelementptr inbounds %struct.DState, %struct.DState* %155, i32 0, i32 43
  %157 = load i32, i32* %156, align 8
  store i32 %157, i32* %12, align 4
  %158 = load %struct.DState*, %struct.DState** %3, align 8
  %159 = getelementptr inbounds %struct.DState, %struct.DState* %158, i32 0, i32 44
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %13, align 4
  %161 = load %struct.DState*, %struct.DState** %3, align 8
  %162 = getelementptr inbounds %struct.DState, %struct.DState* %161, i32 0, i32 45
  %163 = load i32, i32* %162, align 8
  store i32 %163, i32* %14, align 4
  %164 = load %struct.DState*, %struct.DState** %3, align 8
  %165 = getelementptr inbounds %struct.DState, %struct.DState* %164, i32 0, i32 46
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %15, align 4
  %167 = load %struct.DState*, %struct.DState** %3, align 8
  %168 = getelementptr inbounds %struct.DState, %struct.DState* %167, i32 0, i32 47
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %16, align 4
  %170 = load %struct.DState*, %struct.DState** %3, align 8
  %171 = getelementptr inbounds %struct.DState, %struct.DState* %170, i32 0, i32 48
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %17, align 4
  %173 = load %struct.DState*, %struct.DState** %3, align 8
  %174 = getelementptr inbounds %struct.DState, %struct.DState* %173, i32 0, i32 49
  %175 = load i32, i32* %174, align 8
  store i32 %175, i32* %18, align 4
  %176 = load %struct.DState*, %struct.DState** %3, align 8
  %177 = getelementptr inbounds %struct.DState, %struct.DState* %176, i32 0, i32 50
  %178 = load i32, i32* %177, align 4
  store i32 %178, i32* %19, align 4
  %179 = load %struct.DState*, %struct.DState** %3, align 8
  %180 = getelementptr inbounds %struct.DState, %struct.DState* %179, i32 0, i32 51
  %181 = load i32, i32* %180, align 8
  store i32 %181, i32* %20, align 4
  %182 = load %struct.DState*, %struct.DState** %3, align 8
  %183 = getelementptr inbounds %struct.DState, %struct.DState* %182, i32 0, i32 52
  %184 = load i32, i32* %183, align 4
  store i32 %184, i32* %21, align 4
  %185 = load %struct.DState*, %struct.DState** %3, align 8
  %186 = getelementptr inbounds %struct.DState, %struct.DState* %185, i32 0, i32 53
  %187 = load i32, i32* %186, align 8
  store i32 %187, i32* %22, align 4
  %188 = load %struct.DState*, %struct.DState** %3, align 8
  %189 = getelementptr inbounds %struct.DState, %struct.DState* %188, i32 0, i32 54
  %190 = load i32, i32* %189, align 4
  store i32 %190, i32* %23, align 4
  %191 = load %struct.DState*, %struct.DState** %3, align 8
  %192 = getelementptr inbounds %struct.DState, %struct.DState* %191, i32 0, i32 55
  %193 = load i32, i32* %192, align 8
  store i32 %193, i32* %24, align 4
  %194 = load %struct.DState*, %struct.DState** %3, align 8
  %195 = getelementptr inbounds %struct.DState, %struct.DState* %194, i32 0, i32 56
  %196 = load i32, i32* %195, align 4
  store i32 %196, i32* %25, align 4
  %197 = load %struct.DState*, %struct.DState** %3, align 8
  %198 = getelementptr inbounds %struct.DState, %struct.DState* %197, i32 0, i32 57
  %199 = load i32, i32* %198, align 8
  store i32 %199, i32* %26, align 4
  %200 = load %struct.DState*, %struct.DState** %3, align 8
  %201 = getelementptr inbounds %struct.DState, %struct.DState* %200, i32 0, i32 58
  %202 = load i32, i32* %201, align 4
  store i32 %202, i32* %27, align 4
  %203 = load %struct.DState*, %struct.DState** %3, align 8
  %204 = getelementptr inbounds %struct.DState, %struct.DState* %203, i32 0, i32 59
  %205 = load i32, i32* %204, align 8
  store i32 %205, i32* %28, align 4
  %206 = load %struct.DState*, %struct.DState** %3, align 8
  %207 = getelementptr inbounds %struct.DState, %struct.DState* %206, i32 0, i32 60
  %208 = load i32, i32* %207, align 4
  store i32 %208, i32* %29, align 4
  %209 = load %struct.DState*, %struct.DState** %3, align 8
  %210 = getelementptr inbounds %struct.DState, %struct.DState* %209, i32 0, i32 61
  %211 = load i32*, i32** %210, align 8
  store i32* %211, i32** %30, align 8
  %212 = load %struct.DState*, %struct.DState** %3, align 8
  %213 = getelementptr inbounds %struct.DState, %struct.DState* %212, i32 0, i32 62
  %214 = load i32*, i32** %213, align 8
  store i32* %214, i32** %31, align 8
  %215 = load %struct.DState*, %struct.DState** %3, align 8
  %216 = getelementptr inbounds %struct.DState, %struct.DState* %215, i32 0, i32 63
  %217 = load i32*, i32** %216, align 8
  store i32* %217, i32** %32, align 8
  store i32 0, i32* %5, align 4
  %218 = load %struct.DState*, %struct.DState** %3, align 8
  %219 = getelementptr inbounds %struct.DState, %struct.DState* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  switch i32 %220, label %5836 [
    i32 10, label %221
    i32 11, label %310
    i32 12, label %399
    i32 13, label %488
    i32 14, label %664
    i32 15, label %758
    i32 16, label %847
    i32 17, label %936
    i32 18, label %1025
    i32 19, label %1114
    i32 20, label %1220
    i32 21, label %1313
    i32 22, label %1406
    i32 23, label %1499
    i32 24, label %1592
    i32 25, label %1680
    i32 26, label %1773
    i32 27, label %1866
    i32 28, label %1980
    i32 29, label %2113
    i32 30, label %2230
    i32 31, label %2320
    i32 32, label %2413
    i32 33, label %2584
    i32 34, label %2680
    i32 35, label %2769
    i32 36, label %3082
    i32 37, label %3187
    i32 38, label %3386
    i32 39, label %3491
    i32 40, label %4052
    i32 41, label %4157
    i32 42, label %5015
    i32 43, label %5104
    i32 44, label %5193
    i32 45, label %5282
    i32 46, label %5371
    i32 47, label %5462
    i32 48, label %5555
    i32 49, label %5648
    i32 50, label %5741
  ]

; <label>:221:                                    ; preds = %145
  %222 = load %struct.DState*, %struct.DState** %3, align 8
  %223 = getelementptr inbounds %struct.DState, %struct.DState* %222, i32 0, i32 1
  store i32 10, i32* %223, align 8
  br label %224

; <label>:224:                                    ; preds = %221, %303
  %225 = load %struct.DState*, %struct.DState** %3, align 8
  %226 = getelementptr inbounds %struct.DState, %struct.DState* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 4
  %228 = icmp sge i32 %227, 8
  br i1 %228, label %229, label %245

; <label>:229:                                    ; preds = %224
  %230 = load %struct.DState*, %struct.DState** %3, align 8
  %231 = getelementptr inbounds %struct.DState, %struct.DState* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.DState*, %struct.DState** %3, align 8
  %234 = getelementptr inbounds %struct.DState, %struct.DState* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, 8
  %237 = lshr i32 %232, %236
  %238 = and i32 %237, 255
  store i32 %238, i32* %33, align 4
  %239 = load %struct.DState*, %struct.DState** %3, align 8
  %240 = getelementptr inbounds %struct.DState, %struct.DState* %239, i32 0, i32 8
  %241 = load i32, i32* %240, align 4
  %242 = sub nsw i32 %241, 8
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %33, align 4
  %244 = trunc i32 %243 to i8
  store i8 %244, i8* %4, align 1
  br label %304

; <label>:245:                                    ; preds = %224
  %246 = load %struct.DState*, %struct.DState** %3, align 8
  %247 = getelementptr inbounds %struct.DState, %struct.DState* %246, i32 0, i32 0
  %248 = load %struct.bz_stream*, %struct.bz_stream** %247, align 8
  %249 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

; <label>:252:                                    ; preds = %245
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:253:                                    ; preds = %245
  %254 = load %struct.DState*, %struct.DState** %3, align 8
  %255 = getelementptr inbounds %struct.DState, %struct.DState* %254, i32 0, i32 7
  %256 = load i32, i32* %255, align 8
  %257 = shl i32 %256, 8
  %258 = load %struct.DState*, %struct.DState** %3, align 8
  %259 = getelementptr inbounds %struct.DState, %struct.DState* %258, i32 0, i32 0
  %260 = load %struct.bz_stream*, %struct.bz_stream** %259, align 8
  %261 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load i8, i8* %262, align 1
  %264 = zext i8 %263 to i32
  %265 = or i32 %257, %264
  %266 = load %struct.DState*, %struct.DState** %3, align 8
  %267 = getelementptr inbounds %struct.DState, %struct.DState* %266, i32 0, i32 7
  store i32 %265, i32* %267, align 8
  %268 = load %struct.DState*, %struct.DState** %3, align 8
  %269 = getelementptr inbounds %struct.DState, %struct.DState* %268, i32 0, i32 8
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %270, 8
  store i32 %271, i32* %269, align 4
  %272 = load %struct.DState*, %struct.DState** %3, align 8
  %273 = getelementptr inbounds %struct.DState, %struct.DState* %272, i32 0, i32 0
  %274 = load %struct.bz_stream*, %struct.bz_stream** %273, align 8
  %275 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %275, align 8
  %278 = load %struct.DState*, %struct.DState** %3, align 8
  %279 = getelementptr inbounds %struct.DState, %struct.DState* %278, i32 0, i32 0
  %280 = load %struct.bz_stream*, %struct.bz_stream** %279, align 8
  %281 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = add i32 %282, -1
  store i32 %283, i32* %281, align 8
  %284 = load %struct.DState*, %struct.DState** %3, align 8
  %285 = getelementptr inbounds %struct.DState, %struct.DState* %284, i32 0, i32 0
  %286 = load %struct.bz_stream*, %struct.bz_stream** %285, align 8
  %287 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %287, align 4
  %290 = load %struct.DState*, %struct.DState** %3, align 8
  %291 = getelementptr inbounds %struct.DState, %struct.DState* %290, i32 0, i32 0
  %292 = load %struct.bz_stream*, %struct.bz_stream** %291, align 8
  %293 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %292, i32 0, i32 2
  %294 = load i32, i32* %293, align 4
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %303

; <label>:296:                                    ; preds = %253
  %297 = load %struct.DState*, %struct.DState** %3, align 8
  %298 = getelementptr inbounds %struct.DState, %struct.DState* %297, i32 0, i32 0
  %299 = load %struct.bz_stream*, %struct.bz_stream** %298, align 8
  %300 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %299, i32 0, i32 3
  %301 = load i32, i32* %300, align 8
  %302 = add i32 %301, 1
  store i32 %302, i32* %300, align 8
  br label %303

; <label>:303:                                    ; preds = %296, %253
  br label %224

; <label>:304:                                    ; preds = %229
  %305 = load i8, i8* %4, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp ne i32 %306, 66
  br i1 %307, label %308, label %309

; <label>:308:                                    ; preds = %304
  store i32 -5, i32* %5, align 4
  br label %5838

; <label>:309:                                    ; preds = %304
  br label %310

; <label>:310:                                    ; preds = %145, %309
  %311 = load %struct.DState*, %struct.DState** %3, align 8
  %312 = getelementptr inbounds %struct.DState, %struct.DState* %311, i32 0, i32 1
  store i32 11, i32* %312, align 8
  br label %313

; <label>:313:                                    ; preds = %310, %392
  %314 = load %struct.DState*, %struct.DState** %3, align 8
  %315 = getelementptr inbounds %struct.DState, %struct.DState* %314, i32 0, i32 8
  %316 = load i32, i32* %315, align 4
  %317 = icmp sge i32 %316, 8
  br i1 %317, label %318, label %334

; <label>:318:                                    ; preds = %313
  %319 = load %struct.DState*, %struct.DState** %3, align 8
  %320 = getelementptr inbounds %struct.DState, %struct.DState* %319, i32 0, i32 7
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.DState*, %struct.DState** %3, align 8
  %323 = getelementptr inbounds %struct.DState, %struct.DState* %322, i32 0, i32 8
  %324 = load i32, i32* %323, align 4
  %325 = sub nsw i32 %324, 8
  %326 = lshr i32 %321, %325
  %327 = and i32 %326, 255
  store i32 %327, i32* %34, align 4
  %328 = load %struct.DState*, %struct.DState** %3, align 8
  %329 = getelementptr inbounds %struct.DState, %struct.DState* %328, i32 0, i32 8
  %330 = load i32, i32* %329, align 4
  %331 = sub nsw i32 %330, 8
  store i32 %331, i32* %329, align 4
  %332 = load i32, i32* %34, align 4
  %333 = trunc i32 %332 to i8
  store i8 %333, i8* %4, align 1
  br label %393

; <label>:334:                                    ; preds = %313
  %335 = load %struct.DState*, %struct.DState** %3, align 8
  %336 = getelementptr inbounds %struct.DState, %struct.DState* %335, i32 0, i32 0
  %337 = load %struct.bz_stream*, %struct.bz_stream** %336, align 8
  %338 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %342

; <label>:341:                                    ; preds = %334
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:342:                                    ; preds = %334
  %343 = load %struct.DState*, %struct.DState** %3, align 8
  %344 = getelementptr inbounds %struct.DState, %struct.DState* %343, i32 0, i32 7
  %345 = load i32, i32* %344, align 8
  %346 = shl i32 %345, 8
  %347 = load %struct.DState*, %struct.DState** %3, align 8
  %348 = getelementptr inbounds %struct.DState, %struct.DState* %347, i32 0, i32 0
  %349 = load %struct.bz_stream*, %struct.bz_stream** %348, align 8
  %350 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %349, i32 0, i32 0
  %351 = load i8*, i8** %350, align 8
  %352 = load i8, i8* %351, align 1
  %353 = zext i8 %352 to i32
  %354 = or i32 %346, %353
  %355 = load %struct.DState*, %struct.DState** %3, align 8
  %356 = getelementptr inbounds %struct.DState, %struct.DState* %355, i32 0, i32 7
  store i32 %354, i32* %356, align 8
  %357 = load %struct.DState*, %struct.DState** %3, align 8
  %358 = getelementptr inbounds %struct.DState, %struct.DState* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, 8
  store i32 %360, i32* %358, align 4
  %361 = load %struct.DState*, %struct.DState** %3, align 8
  %362 = getelementptr inbounds %struct.DState, %struct.DState* %361, i32 0, i32 0
  %363 = load %struct.bz_stream*, %struct.bz_stream** %362, align 8
  %364 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %364, align 8
  %367 = load %struct.DState*, %struct.DState** %3, align 8
  %368 = getelementptr inbounds %struct.DState, %struct.DState* %367, i32 0, i32 0
  %369 = load %struct.bz_stream*, %struct.bz_stream** %368, align 8
  %370 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = add i32 %371, -1
  store i32 %372, i32* %370, align 8
  %373 = load %struct.DState*, %struct.DState** %3, align 8
  %374 = getelementptr inbounds %struct.DState, %struct.DState* %373, i32 0, i32 0
  %375 = load %struct.bz_stream*, %struct.bz_stream** %374, align 8
  %376 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %375, i32 0, i32 2
  %377 = load i32, i32* %376, align 4
  %378 = add i32 %377, 1
  store i32 %378, i32* %376, align 4
  %379 = load %struct.DState*, %struct.DState** %3, align 8
  %380 = getelementptr inbounds %struct.DState, %struct.DState* %379, i32 0, i32 0
  %381 = load %struct.bz_stream*, %struct.bz_stream** %380, align 8
  %382 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %392

; <label>:385:                                    ; preds = %342
  %386 = load %struct.DState*, %struct.DState** %3, align 8
  %387 = getelementptr inbounds %struct.DState, %struct.DState* %386, i32 0, i32 0
  %388 = load %struct.bz_stream*, %struct.bz_stream** %387, align 8
  %389 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = add i32 %390, 1
  store i32 %391, i32* %389, align 8
  br label %392

; <label>:392:                                    ; preds = %385, %342
  br label %313

; <label>:393:                                    ; preds = %318
  %394 = load i8, i8* %4, align 1
  %395 = zext i8 %394 to i32
  %396 = icmp ne i32 %395, 90
  br i1 %396, label %397, label %398

; <label>:397:                                    ; preds = %393
  store i32 -5, i32* %5, align 4
  br label %5838

; <label>:398:                                    ; preds = %393
  br label %399

; <label>:399:                                    ; preds = %145, %398
  %400 = load %struct.DState*, %struct.DState** %3, align 8
  %401 = getelementptr inbounds %struct.DState, %struct.DState* %400, i32 0, i32 1
  store i32 12, i32* %401, align 8
  br label %402

; <label>:402:                                    ; preds = %399, %481
  %403 = load %struct.DState*, %struct.DState** %3, align 8
  %404 = getelementptr inbounds %struct.DState, %struct.DState* %403, i32 0, i32 8
  %405 = load i32, i32* %404, align 4
  %406 = icmp sge i32 %405, 8
  br i1 %406, label %407, label %423

; <label>:407:                                    ; preds = %402
  %408 = load %struct.DState*, %struct.DState** %3, align 8
  %409 = getelementptr inbounds %struct.DState, %struct.DState* %408, i32 0, i32 7
  %410 = load i32, i32* %409, align 8
  %411 = load %struct.DState*, %struct.DState** %3, align 8
  %412 = getelementptr inbounds %struct.DState, %struct.DState* %411, i32 0, i32 8
  %413 = load i32, i32* %412, align 4
  %414 = sub nsw i32 %413, 8
  %415 = lshr i32 %410, %414
  %416 = and i32 %415, 255
  store i32 %416, i32* %35, align 4
  %417 = load %struct.DState*, %struct.DState** %3, align 8
  %418 = getelementptr inbounds %struct.DState, %struct.DState* %417, i32 0, i32 8
  %419 = load i32, i32* %418, align 4
  %420 = sub nsw i32 %419, 8
  store i32 %420, i32* %418, align 4
  %421 = load i32, i32* %35, align 4
  %422 = trunc i32 %421 to i8
  store i8 %422, i8* %4, align 1
  br label %482

; <label>:423:                                    ; preds = %402
  %424 = load %struct.DState*, %struct.DState** %3, align 8
  %425 = getelementptr inbounds %struct.DState, %struct.DState* %424, i32 0, i32 0
  %426 = load %struct.bz_stream*, %struct.bz_stream** %425, align 8
  %427 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = icmp eq i32 %428, 0
  br i1 %429, label %430, label %431

; <label>:430:                                    ; preds = %423
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:431:                                    ; preds = %423
  %432 = load %struct.DState*, %struct.DState** %3, align 8
  %433 = getelementptr inbounds %struct.DState, %struct.DState* %432, i32 0, i32 7
  %434 = load i32, i32* %433, align 8
  %435 = shl i32 %434, 8
  %436 = load %struct.DState*, %struct.DState** %3, align 8
  %437 = getelementptr inbounds %struct.DState, %struct.DState* %436, i32 0, i32 0
  %438 = load %struct.bz_stream*, %struct.bz_stream** %437, align 8
  %439 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %438, i32 0, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = or i32 %435, %442
  %444 = load %struct.DState*, %struct.DState** %3, align 8
  %445 = getelementptr inbounds %struct.DState, %struct.DState* %444, i32 0, i32 7
  store i32 %443, i32* %445, align 8
  %446 = load %struct.DState*, %struct.DState** %3, align 8
  %447 = getelementptr inbounds %struct.DState, %struct.DState* %446, i32 0, i32 8
  %448 = load i32, i32* %447, align 4
  %449 = add nsw i32 %448, 8
  store i32 %449, i32* %447, align 4
  %450 = load %struct.DState*, %struct.DState** %3, align 8
  %451 = getelementptr inbounds %struct.DState, %struct.DState* %450, i32 0, i32 0
  %452 = load %struct.bz_stream*, %struct.bz_stream** %451, align 8
  %453 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %452, i32 0, i32 0
  %454 = load i8*, i8** %453, align 8
  %455 = getelementptr inbounds i8, i8* %454, i32 1
  store i8* %455, i8** %453, align 8
  %456 = load %struct.DState*, %struct.DState** %3, align 8
  %457 = getelementptr inbounds %struct.DState, %struct.DState* %456, i32 0, i32 0
  %458 = load %struct.bz_stream*, %struct.bz_stream** %457, align 8
  %459 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 8
  %461 = add i32 %460, -1
  store i32 %461, i32* %459, align 8
  %462 = load %struct.DState*, %struct.DState** %3, align 8
  %463 = getelementptr inbounds %struct.DState, %struct.DState* %462, i32 0, i32 0
  %464 = load %struct.bz_stream*, %struct.bz_stream** %463, align 8
  %465 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %464, i32 0, i32 2
  %466 = load i32, i32* %465, align 4
  %467 = add i32 %466, 1
  store i32 %467, i32* %465, align 4
  %468 = load %struct.DState*, %struct.DState** %3, align 8
  %469 = getelementptr inbounds %struct.DState, %struct.DState* %468, i32 0, i32 0
  %470 = load %struct.bz_stream*, %struct.bz_stream** %469, align 8
  %471 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %470, i32 0, i32 2
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %481

; <label>:474:                                    ; preds = %431
  %475 = load %struct.DState*, %struct.DState** %3, align 8
  %476 = getelementptr inbounds %struct.DState, %struct.DState* %475, i32 0, i32 0
  %477 = load %struct.bz_stream*, %struct.bz_stream** %476, align 8
  %478 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 8
  %480 = add i32 %479, 1
  store i32 %480, i32* %478, align 8
  br label %481

; <label>:481:                                    ; preds = %474, %431
  br label %402

; <label>:482:                                    ; preds = %407
  %483 = load i8, i8* %4, align 1
  %484 = zext i8 %483 to i32
  %485 = icmp ne i32 %484, 104
  br i1 %485, label %486, label %487

; <label>:486:                                    ; preds = %482
  store i32 -5, i32* %5, align 4
  br label %5838

; <label>:487:                                    ; preds = %482
  br label %488

; <label>:488:                                    ; preds = %145, %487
  %489 = load %struct.DState*, %struct.DState** %3, align 8
  %490 = getelementptr inbounds %struct.DState, %struct.DState* %489, i32 0, i32 1
  store i32 13, i32* %490, align 8
  br label %491

; <label>:491:                                    ; preds = %488, %571
  %492 = load %struct.DState*, %struct.DState** %3, align 8
  %493 = getelementptr inbounds %struct.DState, %struct.DState* %492, i32 0, i32 8
  %494 = load i32, i32* %493, align 4
  %495 = icmp sge i32 %494, 8
  br i1 %495, label %496, label %513

; <label>:496:                                    ; preds = %491
  %497 = load %struct.DState*, %struct.DState** %3, align 8
  %498 = getelementptr inbounds %struct.DState, %struct.DState* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 8
  %500 = load %struct.DState*, %struct.DState** %3, align 8
  %501 = getelementptr inbounds %struct.DState, %struct.DState* %500, i32 0, i32 8
  %502 = load i32, i32* %501, align 4
  %503 = sub nsw i32 %502, 8
  %504 = lshr i32 %499, %503
  %505 = and i32 %504, 255
  store i32 %505, i32* %36, align 4
  %506 = load %struct.DState*, %struct.DState** %3, align 8
  %507 = getelementptr inbounds %struct.DState, %struct.DState* %506, i32 0, i32 8
  %508 = load i32, i32* %507, align 4
  %509 = sub nsw i32 %508, 8
  store i32 %509, i32* %507, align 4
  %510 = load i32, i32* %36, align 4
  %511 = load %struct.DState*, %struct.DState** %3, align 8
  %512 = getelementptr inbounds %struct.DState, %struct.DState* %511, i32 0, i32 9
  store i32 %510, i32* %512, align 8
  br label %572

; <label>:513:                                    ; preds = %491
  %514 = load %struct.DState*, %struct.DState** %3, align 8
  %515 = getelementptr inbounds %struct.DState, %struct.DState* %514, i32 0, i32 0
  %516 = load %struct.bz_stream*, %struct.bz_stream** %515, align 8
  %517 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %516, i32 0, i32 1
  %518 = load i32, i32* %517, align 8
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %521

; <label>:520:                                    ; preds = %513
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:521:                                    ; preds = %513
  %522 = load %struct.DState*, %struct.DState** %3, align 8
  %523 = getelementptr inbounds %struct.DState, %struct.DState* %522, i32 0, i32 7
  %524 = load i32, i32* %523, align 8
  %525 = shl i32 %524, 8
  %526 = load %struct.DState*, %struct.DState** %3, align 8
  %527 = getelementptr inbounds %struct.DState, %struct.DState* %526, i32 0, i32 0
  %528 = load %struct.bz_stream*, %struct.bz_stream** %527, align 8
  %529 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %528, i32 0, i32 0
  %530 = load i8*, i8** %529, align 8
  %531 = load i8, i8* %530, align 1
  %532 = zext i8 %531 to i32
  %533 = or i32 %525, %532
  %534 = load %struct.DState*, %struct.DState** %3, align 8
  %535 = getelementptr inbounds %struct.DState, %struct.DState* %534, i32 0, i32 7
  store i32 %533, i32* %535, align 8
  %536 = load %struct.DState*, %struct.DState** %3, align 8
  %537 = getelementptr inbounds %struct.DState, %struct.DState* %536, i32 0, i32 8
  %538 = load i32, i32* %537, align 4
  %539 = add nsw i32 %538, 8
  store i32 %539, i32* %537, align 4
  %540 = load %struct.DState*, %struct.DState** %3, align 8
  %541 = getelementptr inbounds %struct.DState, %struct.DState* %540, i32 0, i32 0
  %542 = load %struct.bz_stream*, %struct.bz_stream** %541, align 8
  %543 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %542, i32 0, i32 0
  %544 = load i8*, i8** %543, align 8
  %545 = getelementptr inbounds i8, i8* %544, i32 1
  store i8* %545, i8** %543, align 8
  %546 = load %struct.DState*, %struct.DState** %3, align 8
  %547 = getelementptr inbounds %struct.DState, %struct.DState* %546, i32 0, i32 0
  %548 = load %struct.bz_stream*, %struct.bz_stream** %547, align 8
  %549 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %548, i32 0, i32 1
  %550 = load i32, i32* %549, align 8
  %551 = add i32 %550, -1
  store i32 %551, i32* %549, align 8
  %552 = load %struct.DState*, %struct.DState** %3, align 8
  %553 = getelementptr inbounds %struct.DState, %struct.DState* %552, i32 0, i32 0
  %554 = load %struct.bz_stream*, %struct.bz_stream** %553, align 8
  %555 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %554, i32 0, i32 2
  %556 = load i32, i32* %555, align 4
  %557 = add i32 %556, 1
  store i32 %557, i32* %555, align 4
  %558 = load %struct.DState*, %struct.DState** %3, align 8
  %559 = getelementptr inbounds %struct.DState, %struct.DState* %558, i32 0, i32 0
  %560 = load %struct.bz_stream*, %struct.bz_stream** %559, align 8
  %561 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %560, i32 0, i32 2
  %562 = load i32, i32* %561, align 4
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %564, label %571

; <label>:564:                                    ; preds = %521
  %565 = load %struct.DState*, %struct.DState** %3, align 8
  %566 = getelementptr inbounds %struct.DState, %struct.DState* %565, i32 0, i32 0
  %567 = load %struct.bz_stream*, %struct.bz_stream** %566, align 8
  %568 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %567, i32 0, i32 3
  %569 = load i32, i32* %568, align 8
  %570 = add i32 %569, 1
  store i32 %570, i32* %568, align 8
  br label %571

; <label>:571:                                    ; preds = %564, %521
  br label %491

; <label>:572:                                    ; preds = %496
  %573 = load %struct.DState*, %struct.DState** %3, align 8
  %574 = getelementptr inbounds %struct.DState, %struct.DState* %573, i32 0, i32 9
  %575 = load i32, i32* %574, align 8
  %576 = icmp slt i32 %575, 49
  br i1 %576, label %582, label %577

; <label>:577:                                    ; preds = %572
  %578 = load %struct.DState*, %struct.DState** %3, align 8
  %579 = getelementptr inbounds %struct.DState, %struct.DState* %578, i32 0, i32 9
  %580 = load i32, i32* %579, align 8
  %581 = icmp sgt i32 %580, 57
  br i1 %581, label %582, label %583

; <label>:582:                                    ; preds = %577, %572
  store i32 -5, i32* %5, align 4
  br label %5838

; <label>:583:                                    ; preds = %577
  %584 = load %struct.DState*, %struct.DState** %3, align 8
  %585 = getelementptr inbounds %struct.DState, %struct.DState* %584, i32 0, i32 9
  %586 = load i32, i32* %585, align 8
  %587 = sub nsw i32 %586, 48
  store i32 %587, i32* %585, align 8
  %588 = load %struct.DState*, %struct.DState** %3, align 8
  %589 = getelementptr inbounds %struct.DState, %struct.DState* %588, i32 0, i32 10
  %590 = load i8, i8* %589, align 4
  %591 = icmp ne i8 %590, 0
  br i1 %591, label %592, label %639

; <label>:592:                                    ; preds = %583
  %593 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %594 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %593, i32 0, i32 9
  %595 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %594, align 8
  %596 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %597 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %596, i32 0, i32 11
  %598 = load i8*, i8** %597, align 8
  %599 = load %struct.DState*, %struct.DState** %3, align 8
  %600 = getelementptr inbounds %struct.DState, %struct.DState* %599, i32 0, i32 9
  %601 = load i32, i32* %600, align 8
  %602 = mul nsw i32 %601, 100000
  %603 = sext i32 %602 to i64
  %604 = mul i64 %603, 2
  %605 = trunc i64 %604 to i32
  %606 = call i8* %595(i8* %598, i32 %605, i32 1)
  %607 = bitcast i8* %606 to i16*
  %608 = load %struct.DState*, %struct.DState** %3, align 8
  %609 = getelementptr inbounds %struct.DState, %struct.DState* %608, i32 0, i32 21
  store i16* %607, i16** %609, align 8
  %610 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %611 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %610, i32 0, i32 9
  %612 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %611, align 8
  %613 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %614 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %613, i32 0, i32 11
  %615 = load i8*, i8** %614, align 8
  %616 = load %struct.DState*, %struct.DState** %3, align 8
  %617 = getelementptr inbounds %struct.DState, %struct.DState* %616, i32 0, i32 9
  %618 = load i32, i32* %617, align 8
  %619 = mul nsw i32 %618, 100000
  %620 = add nsw i32 1, %619
  %621 = ashr i32 %620, 1
  %622 = sext i32 %621 to i64
  %623 = mul i64 %622, 1
  %624 = trunc i64 %623 to i32
  %625 = call i8* %612(i8* %615, i32 %624, i32 1)
  %626 = load %struct.DState*, %struct.DState** %3, align 8
  %627 = getelementptr inbounds %struct.DState, %struct.DState* %626, i32 0, i32 22
  store i8* %625, i8** %627, align 8
  %628 = load %struct.DState*, %struct.DState** %3, align 8
  %629 = getelementptr inbounds %struct.DState, %struct.DState* %628, i32 0, i32 21
  %630 = load i16*, i16** %629, align 8
  %631 = icmp eq i16* %630, null
  br i1 %631, label %637, label %632

; <label>:632:                                    ; preds = %592
  %633 = load %struct.DState*, %struct.DState** %3, align 8
  %634 = getelementptr inbounds %struct.DState, %struct.DState* %633, i32 0, i32 22
  %635 = load i8*, i8** %634, align 8
  %636 = icmp eq i8* %635, null
  br i1 %636, label %637, label %638

; <label>:637:                                    ; preds = %632, %592
  store i32 -3, i32* %5, align 4
  br label %5838

; <label>:638:                                    ; preds = %632
  br label %663

; <label>:639:                                    ; preds = %583
  %640 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %641 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %640, i32 0, i32 9
  %642 = load i8* (i8*, i32, i32)*, i8* (i8*, i32, i32)** %641, align 8
  %643 = load %struct.bz_stream*, %struct.bz_stream** %8, align 8
  %644 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %643, i32 0, i32 11
  %645 = load i8*, i8** %644, align 8
  %646 = load %struct.DState*, %struct.DState** %3, align 8
  %647 = getelementptr inbounds %struct.DState, %struct.DState* %646, i32 0, i32 9
  %648 = load i32, i32* %647, align 8
  %649 = mul nsw i32 %648, 100000
  %650 = sext i32 %649 to i64
  %651 = mul i64 %650, 4
  %652 = trunc i64 %651 to i32
  %653 = call i8* %642(i8* %645, i32 %652, i32 1)
  %654 = bitcast i8* %653 to i32*
  %655 = load %struct.DState*, %struct.DState** %3, align 8
  %656 = getelementptr inbounds %struct.DState, %struct.DState* %655, i32 0, i32 20
  store i32* %654, i32** %656, align 8
  %657 = load %struct.DState*, %struct.DState** %3, align 8
  %658 = getelementptr inbounds %struct.DState, %struct.DState* %657, i32 0, i32 20
  %659 = load i32*, i32** %658, align 8
  %660 = icmp eq i32* %659, null
  br i1 %660, label %661, label %662

; <label>:661:                                    ; preds = %639
  store i32 -3, i32* %5, align 4
  br label %5838

; <label>:662:                                    ; preds = %639
  br label %663

; <label>:663:                                    ; preds = %662, %638
  br label %664

; <label>:664:                                    ; preds = %145, %663
  %665 = load %struct.DState*, %struct.DState** %3, align 8
  %666 = getelementptr inbounds %struct.DState, %struct.DState* %665, i32 0, i32 1
  store i32 14, i32* %666, align 8
  br label %667

; <label>:667:                                    ; preds = %664, %746
  %668 = load %struct.DState*, %struct.DState** %3, align 8
  %669 = getelementptr inbounds %struct.DState, %struct.DState* %668, i32 0, i32 8
  %670 = load i32, i32* %669, align 4
  %671 = icmp sge i32 %670, 8
  br i1 %671, label %672, label %688

; <label>:672:                                    ; preds = %667
  %673 = load %struct.DState*, %struct.DState** %3, align 8
  %674 = getelementptr inbounds %struct.DState, %struct.DState* %673, i32 0, i32 7
  %675 = load i32, i32* %674, align 8
  %676 = load %struct.DState*, %struct.DState** %3, align 8
  %677 = getelementptr inbounds %struct.DState, %struct.DState* %676, i32 0, i32 8
  %678 = load i32, i32* %677, align 4
  %679 = sub nsw i32 %678, 8
  %680 = lshr i32 %675, %679
  %681 = and i32 %680, 255
  store i32 %681, i32* %37, align 4
  %682 = load %struct.DState*, %struct.DState** %3, align 8
  %683 = getelementptr inbounds %struct.DState, %struct.DState* %682, i32 0, i32 8
  %684 = load i32, i32* %683, align 4
  %685 = sub nsw i32 %684, 8
  store i32 %685, i32* %683, align 4
  %686 = load i32, i32* %37, align 4
  %687 = trunc i32 %686 to i8
  store i8 %687, i8* %4, align 1
  br label %747

; <label>:688:                                    ; preds = %667
  %689 = load %struct.DState*, %struct.DState** %3, align 8
  %690 = getelementptr inbounds %struct.DState, %struct.DState* %689, i32 0, i32 0
  %691 = load %struct.bz_stream*, %struct.bz_stream** %690, align 8
  %692 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %691, i32 0, i32 1
  %693 = load i32, i32* %692, align 8
  %694 = icmp eq i32 %693, 0
  br i1 %694, label %695, label %696

; <label>:695:                                    ; preds = %688
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:696:                                    ; preds = %688
  %697 = load %struct.DState*, %struct.DState** %3, align 8
  %698 = getelementptr inbounds %struct.DState, %struct.DState* %697, i32 0, i32 7
  %699 = load i32, i32* %698, align 8
  %700 = shl i32 %699, 8
  %701 = load %struct.DState*, %struct.DState** %3, align 8
  %702 = getelementptr inbounds %struct.DState, %struct.DState* %701, i32 0, i32 0
  %703 = load %struct.bz_stream*, %struct.bz_stream** %702, align 8
  %704 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %703, i32 0, i32 0
  %705 = load i8*, i8** %704, align 8
  %706 = load i8, i8* %705, align 1
  %707 = zext i8 %706 to i32
  %708 = or i32 %700, %707
  %709 = load %struct.DState*, %struct.DState** %3, align 8
  %710 = getelementptr inbounds %struct.DState, %struct.DState* %709, i32 0, i32 7
  store i32 %708, i32* %710, align 8
  %711 = load %struct.DState*, %struct.DState** %3, align 8
  %712 = getelementptr inbounds %struct.DState, %struct.DState* %711, i32 0, i32 8
  %713 = load i32, i32* %712, align 4
  %714 = add nsw i32 %713, 8
  store i32 %714, i32* %712, align 4
  %715 = load %struct.DState*, %struct.DState** %3, align 8
  %716 = getelementptr inbounds %struct.DState, %struct.DState* %715, i32 0, i32 0
  %717 = load %struct.bz_stream*, %struct.bz_stream** %716, align 8
  %718 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %717, i32 0, i32 0
  %719 = load i8*, i8** %718, align 8
  %720 = getelementptr inbounds i8, i8* %719, i32 1
  store i8* %720, i8** %718, align 8
  %721 = load %struct.DState*, %struct.DState** %3, align 8
  %722 = getelementptr inbounds %struct.DState, %struct.DState* %721, i32 0, i32 0
  %723 = load %struct.bz_stream*, %struct.bz_stream** %722, align 8
  %724 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %723, i32 0, i32 1
  %725 = load i32, i32* %724, align 8
  %726 = add i32 %725, -1
  store i32 %726, i32* %724, align 8
  %727 = load %struct.DState*, %struct.DState** %3, align 8
  %728 = getelementptr inbounds %struct.DState, %struct.DState* %727, i32 0, i32 0
  %729 = load %struct.bz_stream*, %struct.bz_stream** %728, align 8
  %730 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %729, i32 0, i32 2
  %731 = load i32, i32* %730, align 4
  %732 = add i32 %731, 1
  store i32 %732, i32* %730, align 4
  %733 = load %struct.DState*, %struct.DState** %3, align 8
  %734 = getelementptr inbounds %struct.DState, %struct.DState* %733, i32 0, i32 0
  %735 = load %struct.bz_stream*, %struct.bz_stream** %734, align 8
  %736 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %735, i32 0, i32 2
  %737 = load i32, i32* %736, align 4
  %738 = icmp eq i32 %737, 0
  br i1 %738, label %739, label %746

; <label>:739:                                    ; preds = %696
  %740 = load %struct.DState*, %struct.DState** %3, align 8
  %741 = getelementptr inbounds %struct.DState, %struct.DState* %740, i32 0, i32 0
  %742 = load %struct.bz_stream*, %struct.bz_stream** %741, align 8
  %743 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %742, i32 0, i32 3
  %744 = load i32, i32* %743, align 8
  %745 = add i32 %744, 1
  store i32 %745, i32* %743, align 8
  br label %746

; <label>:746:                                    ; preds = %739, %696
  br label %667

; <label>:747:                                    ; preds = %672
  %748 = load i8, i8* %4, align 1
  %749 = zext i8 %748 to i32
  %750 = icmp eq i32 %749, 23
  br i1 %750, label %751, label %752

; <label>:751:                                    ; preds = %747
  br label %5014

; <label>:752:                                    ; preds = %747
  %753 = load i8, i8* %4, align 1
  %754 = zext i8 %753 to i32
  %755 = icmp ne i32 %754, 49
  br i1 %755, label %756, label %757

; <label>:756:                                    ; preds = %752
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:757:                                    ; preds = %752
  br label %758

; <label>:758:                                    ; preds = %145, %757
  %759 = load %struct.DState*, %struct.DState** %3, align 8
  %760 = getelementptr inbounds %struct.DState, %struct.DState* %759, i32 0, i32 1
  store i32 15, i32* %760, align 8
  br label %761

; <label>:761:                                    ; preds = %758, %840
  %762 = load %struct.DState*, %struct.DState** %3, align 8
  %763 = getelementptr inbounds %struct.DState, %struct.DState* %762, i32 0, i32 8
  %764 = load i32, i32* %763, align 4
  %765 = icmp sge i32 %764, 8
  br i1 %765, label %766, label %782

; <label>:766:                                    ; preds = %761
  %767 = load %struct.DState*, %struct.DState** %3, align 8
  %768 = getelementptr inbounds %struct.DState, %struct.DState* %767, i32 0, i32 7
  %769 = load i32, i32* %768, align 8
  %770 = load %struct.DState*, %struct.DState** %3, align 8
  %771 = getelementptr inbounds %struct.DState, %struct.DState* %770, i32 0, i32 8
  %772 = load i32, i32* %771, align 4
  %773 = sub nsw i32 %772, 8
  %774 = lshr i32 %769, %773
  %775 = and i32 %774, 255
  store i32 %775, i32* %38, align 4
  %776 = load %struct.DState*, %struct.DState** %3, align 8
  %777 = getelementptr inbounds %struct.DState, %struct.DState* %776, i32 0, i32 8
  %778 = load i32, i32* %777, align 4
  %779 = sub nsw i32 %778, 8
  store i32 %779, i32* %777, align 4
  %780 = load i32, i32* %38, align 4
  %781 = trunc i32 %780 to i8
  store i8 %781, i8* %4, align 1
  br label %841

; <label>:782:                                    ; preds = %761
  %783 = load %struct.DState*, %struct.DState** %3, align 8
  %784 = getelementptr inbounds %struct.DState, %struct.DState* %783, i32 0, i32 0
  %785 = load %struct.bz_stream*, %struct.bz_stream** %784, align 8
  %786 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 8
  %788 = icmp eq i32 %787, 0
  br i1 %788, label %789, label %790

; <label>:789:                                    ; preds = %782
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:790:                                    ; preds = %782
  %791 = load %struct.DState*, %struct.DState** %3, align 8
  %792 = getelementptr inbounds %struct.DState, %struct.DState* %791, i32 0, i32 7
  %793 = load i32, i32* %792, align 8
  %794 = shl i32 %793, 8
  %795 = load %struct.DState*, %struct.DState** %3, align 8
  %796 = getelementptr inbounds %struct.DState, %struct.DState* %795, i32 0, i32 0
  %797 = load %struct.bz_stream*, %struct.bz_stream** %796, align 8
  %798 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %797, i32 0, i32 0
  %799 = load i8*, i8** %798, align 8
  %800 = load i8, i8* %799, align 1
  %801 = zext i8 %800 to i32
  %802 = or i32 %794, %801
  %803 = load %struct.DState*, %struct.DState** %3, align 8
  %804 = getelementptr inbounds %struct.DState, %struct.DState* %803, i32 0, i32 7
  store i32 %802, i32* %804, align 8
  %805 = load %struct.DState*, %struct.DState** %3, align 8
  %806 = getelementptr inbounds %struct.DState, %struct.DState* %805, i32 0, i32 8
  %807 = load i32, i32* %806, align 4
  %808 = add nsw i32 %807, 8
  store i32 %808, i32* %806, align 4
  %809 = load %struct.DState*, %struct.DState** %3, align 8
  %810 = getelementptr inbounds %struct.DState, %struct.DState* %809, i32 0, i32 0
  %811 = load %struct.bz_stream*, %struct.bz_stream** %810, align 8
  %812 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %811, i32 0, i32 0
  %813 = load i8*, i8** %812, align 8
  %814 = getelementptr inbounds i8, i8* %813, i32 1
  store i8* %814, i8** %812, align 8
  %815 = load %struct.DState*, %struct.DState** %3, align 8
  %816 = getelementptr inbounds %struct.DState, %struct.DState* %815, i32 0, i32 0
  %817 = load %struct.bz_stream*, %struct.bz_stream** %816, align 8
  %818 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %817, i32 0, i32 1
  %819 = load i32, i32* %818, align 8
  %820 = add i32 %819, -1
  store i32 %820, i32* %818, align 8
  %821 = load %struct.DState*, %struct.DState** %3, align 8
  %822 = getelementptr inbounds %struct.DState, %struct.DState* %821, i32 0, i32 0
  %823 = load %struct.bz_stream*, %struct.bz_stream** %822, align 8
  %824 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %823, i32 0, i32 2
  %825 = load i32, i32* %824, align 4
  %826 = add i32 %825, 1
  store i32 %826, i32* %824, align 4
  %827 = load %struct.DState*, %struct.DState** %3, align 8
  %828 = getelementptr inbounds %struct.DState, %struct.DState* %827, i32 0, i32 0
  %829 = load %struct.bz_stream*, %struct.bz_stream** %828, align 8
  %830 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %829, i32 0, i32 2
  %831 = load i32, i32* %830, align 4
  %832 = icmp eq i32 %831, 0
  br i1 %832, label %833, label %840

; <label>:833:                                    ; preds = %790
  %834 = load %struct.DState*, %struct.DState** %3, align 8
  %835 = getelementptr inbounds %struct.DState, %struct.DState* %834, i32 0, i32 0
  %836 = load %struct.bz_stream*, %struct.bz_stream** %835, align 8
  %837 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %836, i32 0, i32 3
  %838 = load i32, i32* %837, align 8
  %839 = add i32 %838, 1
  store i32 %839, i32* %837, align 8
  br label %840

; <label>:840:                                    ; preds = %833, %790
  br label %761

; <label>:841:                                    ; preds = %766
  %842 = load i8, i8* %4, align 1
  %843 = zext i8 %842 to i32
  %844 = icmp ne i32 %843, 65
  br i1 %844, label %845, label %846

; <label>:845:                                    ; preds = %841
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:846:                                    ; preds = %841
  br label %847

; <label>:847:                                    ; preds = %145, %846
  %848 = load %struct.DState*, %struct.DState** %3, align 8
  %849 = getelementptr inbounds %struct.DState, %struct.DState* %848, i32 0, i32 1
  store i32 16, i32* %849, align 8
  br label %850

; <label>:850:                                    ; preds = %847, %929
  %851 = load %struct.DState*, %struct.DState** %3, align 8
  %852 = getelementptr inbounds %struct.DState, %struct.DState* %851, i32 0, i32 8
  %853 = load i32, i32* %852, align 4
  %854 = icmp sge i32 %853, 8
  br i1 %854, label %855, label %871

; <label>:855:                                    ; preds = %850
  %856 = load %struct.DState*, %struct.DState** %3, align 8
  %857 = getelementptr inbounds %struct.DState, %struct.DState* %856, i32 0, i32 7
  %858 = load i32, i32* %857, align 8
  %859 = load %struct.DState*, %struct.DState** %3, align 8
  %860 = getelementptr inbounds %struct.DState, %struct.DState* %859, i32 0, i32 8
  %861 = load i32, i32* %860, align 4
  %862 = sub nsw i32 %861, 8
  %863 = lshr i32 %858, %862
  %864 = and i32 %863, 255
  store i32 %864, i32* %39, align 4
  %865 = load %struct.DState*, %struct.DState** %3, align 8
  %866 = getelementptr inbounds %struct.DState, %struct.DState* %865, i32 0, i32 8
  %867 = load i32, i32* %866, align 4
  %868 = sub nsw i32 %867, 8
  store i32 %868, i32* %866, align 4
  %869 = load i32, i32* %39, align 4
  %870 = trunc i32 %869 to i8
  store i8 %870, i8* %4, align 1
  br label %930

; <label>:871:                                    ; preds = %850
  %872 = load %struct.DState*, %struct.DState** %3, align 8
  %873 = getelementptr inbounds %struct.DState, %struct.DState* %872, i32 0, i32 0
  %874 = load %struct.bz_stream*, %struct.bz_stream** %873, align 8
  %875 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %874, i32 0, i32 1
  %876 = load i32, i32* %875, align 8
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %879

; <label>:878:                                    ; preds = %871
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:879:                                    ; preds = %871
  %880 = load %struct.DState*, %struct.DState** %3, align 8
  %881 = getelementptr inbounds %struct.DState, %struct.DState* %880, i32 0, i32 7
  %882 = load i32, i32* %881, align 8
  %883 = shl i32 %882, 8
  %884 = load %struct.DState*, %struct.DState** %3, align 8
  %885 = getelementptr inbounds %struct.DState, %struct.DState* %884, i32 0, i32 0
  %886 = load %struct.bz_stream*, %struct.bz_stream** %885, align 8
  %887 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %886, i32 0, i32 0
  %888 = load i8*, i8** %887, align 8
  %889 = load i8, i8* %888, align 1
  %890 = zext i8 %889 to i32
  %891 = or i32 %883, %890
  %892 = load %struct.DState*, %struct.DState** %3, align 8
  %893 = getelementptr inbounds %struct.DState, %struct.DState* %892, i32 0, i32 7
  store i32 %891, i32* %893, align 8
  %894 = load %struct.DState*, %struct.DState** %3, align 8
  %895 = getelementptr inbounds %struct.DState, %struct.DState* %894, i32 0, i32 8
  %896 = load i32, i32* %895, align 4
  %897 = add nsw i32 %896, 8
  store i32 %897, i32* %895, align 4
  %898 = load %struct.DState*, %struct.DState** %3, align 8
  %899 = getelementptr inbounds %struct.DState, %struct.DState* %898, i32 0, i32 0
  %900 = load %struct.bz_stream*, %struct.bz_stream** %899, align 8
  %901 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %900, i32 0, i32 0
  %902 = load i8*, i8** %901, align 8
  %903 = getelementptr inbounds i8, i8* %902, i32 1
  store i8* %903, i8** %901, align 8
  %904 = load %struct.DState*, %struct.DState** %3, align 8
  %905 = getelementptr inbounds %struct.DState, %struct.DState* %904, i32 0, i32 0
  %906 = load %struct.bz_stream*, %struct.bz_stream** %905, align 8
  %907 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %906, i32 0, i32 1
  %908 = load i32, i32* %907, align 8
  %909 = add i32 %908, -1
  store i32 %909, i32* %907, align 8
  %910 = load %struct.DState*, %struct.DState** %3, align 8
  %911 = getelementptr inbounds %struct.DState, %struct.DState* %910, i32 0, i32 0
  %912 = load %struct.bz_stream*, %struct.bz_stream** %911, align 8
  %913 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %912, i32 0, i32 2
  %914 = load i32, i32* %913, align 4
  %915 = add i32 %914, 1
  store i32 %915, i32* %913, align 4
  %916 = load %struct.DState*, %struct.DState** %3, align 8
  %917 = getelementptr inbounds %struct.DState, %struct.DState* %916, i32 0, i32 0
  %918 = load %struct.bz_stream*, %struct.bz_stream** %917, align 8
  %919 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %918, i32 0, i32 2
  %920 = load i32, i32* %919, align 4
  %921 = icmp eq i32 %920, 0
  br i1 %921, label %922, label %929

; <label>:922:                                    ; preds = %879
  %923 = load %struct.DState*, %struct.DState** %3, align 8
  %924 = getelementptr inbounds %struct.DState, %struct.DState* %923, i32 0, i32 0
  %925 = load %struct.bz_stream*, %struct.bz_stream** %924, align 8
  %926 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %925, i32 0, i32 3
  %927 = load i32, i32* %926, align 8
  %928 = add i32 %927, 1
  store i32 %928, i32* %926, align 8
  br label %929

; <label>:929:                                    ; preds = %922, %879
  br label %850

; <label>:930:                                    ; preds = %855
  %931 = load i8, i8* %4, align 1
  %932 = zext i8 %931 to i32
  %933 = icmp ne i32 %932, 89
  br i1 %933, label %934, label %935

; <label>:934:                                    ; preds = %930
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:935:                                    ; preds = %930
  br label %936

; <label>:936:                                    ; preds = %145, %935
  %937 = load %struct.DState*, %struct.DState** %3, align 8
  %938 = getelementptr inbounds %struct.DState, %struct.DState* %937, i32 0, i32 1
  store i32 17, i32* %938, align 8
  br label %939

; <label>:939:                                    ; preds = %936, %1018
  %940 = load %struct.DState*, %struct.DState** %3, align 8
  %941 = getelementptr inbounds %struct.DState, %struct.DState* %940, i32 0, i32 8
  %942 = load i32, i32* %941, align 4
  %943 = icmp sge i32 %942, 8
  br i1 %943, label %944, label %960

; <label>:944:                                    ; preds = %939
  %945 = load %struct.DState*, %struct.DState** %3, align 8
  %946 = getelementptr inbounds %struct.DState, %struct.DState* %945, i32 0, i32 7
  %947 = load i32, i32* %946, align 8
  %948 = load %struct.DState*, %struct.DState** %3, align 8
  %949 = getelementptr inbounds %struct.DState, %struct.DState* %948, i32 0, i32 8
  %950 = load i32, i32* %949, align 4
  %951 = sub nsw i32 %950, 8
  %952 = lshr i32 %947, %951
  %953 = and i32 %952, 255
  store i32 %953, i32* %40, align 4
  %954 = load %struct.DState*, %struct.DState** %3, align 8
  %955 = getelementptr inbounds %struct.DState, %struct.DState* %954, i32 0, i32 8
  %956 = load i32, i32* %955, align 4
  %957 = sub nsw i32 %956, 8
  store i32 %957, i32* %955, align 4
  %958 = load i32, i32* %40, align 4
  %959 = trunc i32 %958 to i8
  store i8 %959, i8* %4, align 1
  br label %1019

; <label>:960:                                    ; preds = %939
  %961 = load %struct.DState*, %struct.DState** %3, align 8
  %962 = getelementptr inbounds %struct.DState, %struct.DState* %961, i32 0, i32 0
  %963 = load %struct.bz_stream*, %struct.bz_stream** %962, align 8
  %964 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %963, i32 0, i32 1
  %965 = load i32, i32* %964, align 8
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %968

; <label>:967:                                    ; preds = %960
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:968:                                    ; preds = %960
  %969 = load %struct.DState*, %struct.DState** %3, align 8
  %970 = getelementptr inbounds %struct.DState, %struct.DState* %969, i32 0, i32 7
  %971 = load i32, i32* %970, align 8
  %972 = shl i32 %971, 8
  %973 = load %struct.DState*, %struct.DState** %3, align 8
  %974 = getelementptr inbounds %struct.DState, %struct.DState* %973, i32 0, i32 0
  %975 = load %struct.bz_stream*, %struct.bz_stream** %974, align 8
  %976 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %975, i32 0, i32 0
  %977 = load i8*, i8** %976, align 8
  %978 = load i8, i8* %977, align 1
  %979 = zext i8 %978 to i32
  %980 = or i32 %972, %979
  %981 = load %struct.DState*, %struct.DState** %3, align 8
  %982 = getelementptr inbounds %struct.DState, %struct.DState* %981, i32 0, i32 7
  store i32 %980, i32* %982, align 8
  %983 = load %struct.DState*, %struct.DState** %3, align 8
  %984 = getelementptr inbounds %struct.DState, %struct.DState* %983, i32 0, i32 8
  %985 = load i32, i32* %984, align 4
  %986 = add nsw i32 %985, 8
  store i32 %986, i32* %984, align 4
  %987 = load %struct.DState*, %struct.DState** %3, align 8
  %988 = getelementptr inbounds %struct.DState, %struct.DState* %987, i32 0, i32 0
  %989 = load %struct.bz_stream*, %struct.bz_stream** %988, align 8
  %990 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %989, i32 0, i32 0
  %991 = load i8*, i8** %990, align 8
  %992 = getelementptr inbounds i8, i8* %991, i32 1
  store i8* %992, i8** %990, align 8
  %993 = load %struct.DState*, %struct.DState** %3, align 8
  %994 = getelementptr inbounds %struct.DState, %struct.DState* %993, i32 0, i32 0
  %995 = load %struct.bz_stream*, %struct.bz_stream** %994, align 8
  %996 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %995, i32 0, i32 1
  %997 = load i32, i32* %996, align 8
  %998 = add i32 %997, -1
  store i32 %998, i32* %996, align 8
  %999 = load %struct.DState*, %struct.DState** %3, align 8
  %1000 = getelementptr inbounds %struct.DState, %struct.DState* %999, i32 0, i32 0
  %1001 = load %struct.bz_stream*, %struct.bz_stream** %1000, align 8
  %1002 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1001, i32 0, i32 2
  %1003 = load i32, i32* %1002, align 4
  %1004 = add i32 %1003, 1
  store i32 %1004, i32* %1002, align 4
  %1005 = load %struct.DState*, %struct.DState** %3, align 8
  %1006 = getelementptr inbounds %struct.DState, %struct.DState* %1005, i32 0, i32 0
  %1007 = load %struct.bz_stream*, %struct.bz_stream** %1006, align 8
  %1008 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1007, i32 0, i32 2
  %1009 = load i32, i32* %1008, align 4
  %1010 = icmp eq i32 %1009, 0
  br i1 %1010, label %1011, label %1018

; <label>:1011:                                   ; preds = %968
  %1012 = load %struct.DState*, %struct.DState** %3, align 8
  %1013 = getelementptr inbounds %struct.DState, %struct.DState* %1012, i32 0, i32 0
  %1014 = load %struct.bz_stream*, %struct.bz_stream** %1013, align 8
  %1015 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1014, i32 0, i32 3
  %1016 = load i32, i32* %1015, align 8
  %1017 = add i32 %1016, 1
  store i32 %1017, i32* %1015, align 8
  br label %1018

; <label>:1018:                                   ; preds = %1011, %968
  br label %939

; <label>:1019:                                   ; preds = %944
  %1020 = load i8, i8* %4, align 1
  %1021 = zext i8 %1020 to i32
  %1022 = icmp ne i32 %1021, 38
  br i1 %1022, label %1023, label %1024

; <label>:1023:                                   ; preds = %1019
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:1024:                                   ; preds = %1019
  br label %1025

; <label>:1025:                                   ; preds = %145, %1024
  %1026 = load %struct.DState*, %struct.DState** %3, align 8
  %1027 = getelementptr inbounds %struct.DState, %struct.DState* %1026, i32 0, i32 1
  store i32 18, i32* %1027, align 8
  br label %1028

; <label>:1028:                                   ; preds = %1025, %1107
  %1029 = load %struct.DState*, %struct.DState** %3, align 8
  %1030 = getelementptr inbounds %struct.DState, %struct.DState* %1029, i32 0, i32 8
  %1031 = load i32, i32* %1030, align 4
  %1032 = icmp sge i32 %1031, 8
  br i1 %1032, label %1033, label %1049

; <label>:1033:                                   ; preds = %1028
  %1034 = load %struct.DState*, %struct.DState** %3, align 8
  %1035 = getelementptr inbounds %struct.DState, %struct.DState* %1034, i32 0, i32 7
  %1036 = load i32, i32* %1035, align 8
  %1037 = load %struct.DState*, %struct.DState** %3, align 8
  %1038 = getelementptr inbounds %struct.DState, %struct.DState* %1037, i32 0, i32 8
  %1039 = load i32, i32* %1038, align 4
  %1040 = sub nsw i32 %1039, 8
  %1041 = lshr i32 %1036, %1040
  %1042 = and i32 %1041, 255
  store i32 %1042, i32* %41, align 4
  %1043 = load %struct.DState*, %struct.DState** %3, align 8
  %1044 = getelementptr inbounds %struct.DState, %struct.DState* %1043, i32 0, i32 8
  %1045 = load i32, i32* %1044, align 4
  %1046 = sub nsw i32 %1045, 8
  store i32 %1046, i32* %1044, align 4
  %1047 = load i32, i32* %41, align 4
  %1048 = trunc i32 %1047 to i8
  store i8 %1048, i8* %4, align 1
  br label %1108

; <label>:1049:                                   ; preds = %1028
  %1050 = load %struct.DState*, %struct.DState** %3, align 8
  %1051 = getelementptr inbounds %struct.DState, %struct.DState* %1050, i32 0, i32 0
  %1052 = load %struct.bz_stream*, %struct.bz_stream** %1051, align 8
  %1053 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1052, i32 0, i32 1
  %1054 = load i32, i32* %1053, align 8
  %1055 = icmp eq i32 %1054, 0
  br i1 %1055, label %1056, label %1057

; <label>:1056:                                   ; preds = %1049
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1057:                                   ; preds = %1049
  %1058 = load %struct.DState*, %struct.DState** %3, align 8
  %1059 = getelementptr inbounds %struct.DState, %struct.DState* %1058, i32 0, i32 7
  %1060 = load i32, i32* %1059, align 8
  %1061 = shl i32 %1060, 8
  %1062 = load %struct.DState*, %struct.DState** %3, align 8
  %1063 = getelementptr inbounds %struct.DState, %struct.DState* %1062, i32 0, i32 0
  %1064 = load %struct.bz_stream*, %struct.bz_stream** %1063, align 8
  %1065 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1064, i32 0, i32 0
  %1066 = load i8*, i8** %1065, align 8
  %1067 = load i8, i8* %1066, align 1
  %1068 = zext i8 %1067 to i32
  %1069 = or i32 %1061, %1068
  %1070 = load %struct.DState*, %struct.DState** %3, align 8
  %1071 = getelementptr inbounds %struct.DState, %struct.DState* %1070, i32 0, i32 7
  store i32 %1069, i32* %1071, align 8
  %1072 = load %struct.DState*, %struct.DState** %3, align 8
  %1073 = getelementptr inbounds %struct.DState, %struct.DState* %1072, i32 0, i32 8
  %1074 = load i32, i32* %1073, align 4
  %1075 = add nsw i32 %1074, 8
  store i32 %1075, i32* %1073, align 4
  %1076 = load %struct.DState*, %struct.DState** %3, align 8
  %1077 = getelementptr inbounds %struct.DState, %struct.DState* %1076, i32 0, i32 0
  %1078 = load %struct.bz_stream*, %struct.bz_stream** %1077, align 8
  %1079 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1078, i32 0, i32 0
  %1080 = load i8*, i8** %1079, align 8
  %1081 = getelementptr inbounds i8, i8* %1080, i32 1
  store i8* %1081, i8** %1079, align 8
  %1082 = load %struct.DState*, %struct.DState** %3, align 8
  %1083 = getelementptr inbounds %struct.DState, %struct.DState* %1082, i32 0, i32 0
  %1084 = load %struct.bz_stream*, %struct.bz_stream** %1083, align 8
  %1085 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1084, i32 0, i32 1
  %1086 = load i32, i32* %1085, align 8
  %1087 = add i32 %1086, -1
  store i32 %1087, i32* %1085, align 8
  %1088 = load %struct.DState*, %struct.DState** %3, align 8
  %1089 = getelementptr inbounds %struct.DState, %struct.DState* %1088, i32 0, i32 0
  %1090 = load %struct.bz_stream*, %struct.bz_stream** %1089, align 8
  %1091 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1090, i32 0, i32 2
  %1092 = load i32, i32* %1091, align 4
  %1093 = add i32 %1092, 1
  store i32 %1093, i32* %1091, align 4
  %1094 = load %struct.DState*, %struct.DState** %3, align 8
  %1095 = getelementptr inbounds %struct.DState, %struct.DState* %1094, i32 0, i32 0
  %1096 = load %struct.bz_stream*, %struct.bz_stream** %1095, align 8
  %1097 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1096, i32 0, i32 2
  %1098 = load i32, i32* %1097, align 4
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1100, label %1107

; <label>:1100:                                   ; preds = %1057
  %1101 = load %struct.DState*, %struct.DState** %3, align 8
  %1102 = getelementptr inbounds %struct.DState, %struct.DState* %1101, i32 0, i32 0
  %1103 = load %struct.bz_stream*, %struct.bz_stream** %1102, align 8
  %1104 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1103, i32 0, i32 3
  %1105 = load i32, i32* %1104, align 8
  %1106 = add i32 %1105, 1
  store i32 %1106, i32* %1104, align 8
  br label %1107

; <label>:1107:                                   ; preds = %1100, %1057
  br label %1028

; <label>:1108:                                   ; preds = %1033
  %1109 = load i8, i8* %4, align 1
  %1110 = zext i8 %1109 to i32
  %1111 = icmp ne i32 %1110, 83
  br i1 %1111, label %1112, label %1113

; <label>:1112:                                   ; preds = %1108
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:1113:                                   ; preds = %1108
  br label %1114

; <label>:1114:                                   ; preds = %145, %1113
  %1115 = load %struct.DState*, %struct.DState** %3, align 8
  %1116 = getelementptr inbounds %struct.DState, %struct.DState* %1115, i32 0, i32 1
  store i32 19, i32* %1116, align 8
  br label %1117

; <label>:1117:                                   ; preds = %1114, %1196
  %1118 = load %struct.DState*, %struct.DState** %3, align 8
  %1119 = getelementptr inbounds %struct.DState, %struct.DState* %1118, i32 0, i32 8
  %1120 = load i32, i32* %1119, align 4
  %1121 = icmp sge i32 %1120, 8
  br i1 %1121, label %1122, label %1138

; <label>:1122:                                   ; preds = %1117
  %1123 = load %struct.DState*, %struct.DState** %3, align 8
  %1124 = getelementptr inbounds %struct.DState, %struct.DState* %1123, i32 0, i32 7
  %1125 = load i32, i32* %1124, align 8
  %1126 = load %struct.DState*, %struct.DState** %3, align 8
  %1127 = getelementptr inbounds %struct.DState, %struct.DState* %1126, i32 0, i32 8
  %1128 = load i32, i32* %1127, align 4
  %1129 = sub nsw i32 %1128, 8
  %1130 = lshr i32 %1125, %1129
  %1131 = and i32 %1130, 255
  store i32 %1131, i32* %42, align 4
  %1132 = load %struct.DState*, %struct.DState** %3, align 8
  %1133 = getelementptr inbounds %struct.DState, %struct.DState* %1132, i32 0, i32 8
  %1134 = load i32, i32* %1133, align 4
  %1135 = sub nsw i32 %1134, 8
  store i32 %1135, i32* %1133, align 4
  %1136 = load i32, i32* %42, align 4
  %1137 = trunc i32 %1136 to i8
  store i8 %1137, i8* %4, align 1
  br label %1197

; <label>:1138:                                   ; preds = %1117
  %1139 = load %struct.DState*, %struct.DState** %3, align 8
  %1140 = getelementptr inbounds %struct.DState, %struct.DState* %1139, i32 0, i32 0
  %1141 = load %struct.bz_stream*, %struct.bz_stream** %1140, align 8
  %1142 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1141, i32 0, i32 1
  %1143 = load i32, i32* %1142, align 8
  %1144 = icmp eq i32 %1143, 0
  br i1 %1144, label %1145, label %1146

; <label>:1145:                                   ; preds = %1138
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1146:                                   ; preds = %1138
  %1147 = load %struct.DState*, %struct.DState** %3, align 8
  %1148 = getelementptr inbounds %struct.DState, %struct.DState* %1147, i32 0, i32 7
  %1149 = load i32, i32* %1148, align 8
  %1150 = shl i32 %1149, 8
  %1151 = load %struct.DState*, %struct.DState** %3, align 8
  %1152 = getelementptr inbounds %struct.DState, %struct.DState* %1151, i32 0, i32 0
  %1153 = load %struct.bz_stream*, %struct.bz_stream** %1152, align 8
  %1154 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1153, i32 0, i32 0
  %1155 = load i8*, i8** %1154, align 8
  %1156 = load i8, i8* %1155, align 1
  %1157 = zext i8 %1156 to i32
  %1158 = or i32 %1150, %1157
  %1159 = load %struct.DState*, %struct.DState** %3, align 8
  %1160 = getelementptr inbounds %struct.DState, %struct.DState* %1159, i32 0, i32 7
  store i32 %1158, i32* %1160, align 8
  %1161 = load %struct.DState*, %struct.DState** %3, align 8
  %1162 = getelementptr inbounds %struct.DState, %struct.DState* %1161, i32 0, i32 8
  %1163 = load i32, i32* %1162, align 4
  %1164 = add nsw i32 %1163, 8
  store i32 %1164, i32* %1162, align 4
  %1165 = load %struct.DState*, %struct.DState** %3, align 8
  %1166 = getelementptr inbounds %struct.DState, %struct.DState* %1165, i32 0, i32 0
  %1167 = load %struct.bz_stream*, %struct.bz_stream** %1166, align 8
  %1168 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1167, i32 0, i32 0
  %1169 = load i8*, i8** %1168, align 8
  %1170 = getelementptr inbounds i8, i8* %1169, i32 1
  store i8* %1170, i8** %1168, align 8
  %1171 = load %struct.DState*, %struct.DState** %3, align 8
  %1172 = getelementptr inbounds %struct.DState, %struct.DState* %1171, i32 0, i32 0
  %1173 = load %struct.bz_stream*, %struct.bz_stream** %1172, align 8
  %1174 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1173, i32 0, i32 1
  %1175 = load i32, i32* %1174, align 8
  %1176 = add i32 %1175, -1
  store i32 %1176, i32* %1174, align 8
  %1177 = load %struct.DState*, %struct.DState** %3, align 8
  %1178 = getelementptr inbounds %struct.DState, %struct.DState* %1177, i32 0, i32 0
  %1179 = load %struct.bz_stream*, %struct.bz_stream** %1178, align 8
  %1180 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1179, i32 0, i32 2
  %1181 = load i32, i32* %1180, align 4
  %1182 = add i32 %1181, 1
  store i32 %1182, i32* %1180, align 4
  %1183 = load %struct.DState*, %struct.DState** %3, align 8
  %1184 = getelementptr inbounds %struct.DState, %struct.DState* %1183, i32 0, i32 0
  %1185 = load %struct.bz_stream*, %struct.bz_stream** %1184, align 8
  %1186 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1185, i32 0, i32 2
  %1187 = load i32, i32* %1186, align 4
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1189, label %1196

; <label>:1189:                                   ; preds = %1146
  %1190 = load %struct.DState*, %struct.DState** %3, align 8
  %1191 = getelementptr inbounds %struct.DState, %struct.DState* %1190, i32 0, i32 0
  %1192 = load %struct.bz_stream*, %struct.bz_stream** %1191, align 8
  %1193 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1192, i32 0, i32 3
  %1194 = load i32, i32* %1193, align 8
  %1195 = add i32 %1194, 1
  store i32 %1195, i32* %1193, align 8
  br label %1196

; <label>:1196:                                   ; preds = %1189, %1146
  br label %1117

; <label>:1197:                                   ; preds = %1122
  %1198 = load i8, i8* %4, align 1
  %1199 = zext i8 %1198 to i32
  %1200 = icmp ne i32 %1199, 89
  br i1 %1200, label %1201, label %1202

; <label>:1201:                                   ; preds = %1197
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:1202:                                   ; preds = %1197
  %1203 = load %struct.DState*, %struct.DState** %3, align 8
  %1204 = getelementptr inbounds %struct.DState, %struct.DState* %1203, i32 0, i32 11
  %1205 = load i32, i32* %1204, align 8
  %1206 = add nsw i32 %1205, 1
  store i32 %1206, i32* %1204, align 8
  %1207 = load %struct.DState*, %struct.DState** %3, align 8
  %1208 = getelementptr inbounds %struct.DState, %struct.DState* %1207, i32 0, i32 12
  %1209 = load i32, i32* %1208, align 4
  %1210 = icmp sge i32 %1209, 2
  br i1 %1210, label %1211, label %1217

; <label>:1211:                                   ; preds = %1202
  %1212 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %1213 = load %struct.DState*, %struct.DState** %3, align 8
  %1214 = getelementptr inbounds %struct.DState, %struct.DState* %1213, i32 0, i32 11
  %1215 = load i32, i32* %1214, align 8
  %1216 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1212, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 %1215)
  br label %1217

; <label>:1217:                                   ; preds = %1211, %1202
  %1218 = load %struct.DState*, %struct.DState** %3, align 8
  %1219 = getelementptr inbounds %struct.DState, %struct.DState* %1218, i32 0, i32 23
  store i32 0, i32* %1219, align 8
  br label %1220

; <label>:1220:                                   ; preds = %145, %1217
  %1221 = load %struct.DState*, %struct.DState** %3, align 8
  %1222 = getelementptr inbounds %struct.DState, %struct.DState* %1221, i32 0, i32 1
  store i32 20, i32* %1222, align 8
  br label %1223

; <label>:1223:                                   ; preds = %1220, %1302
  %1224 = load %struct.DState*, %struct.DState** %3, align 8
  %1225 = getelementptr inbounds %struct.DState, %struct.DState* %1224, i32 0, i32 8
  %1226 = load i32, i32* %1225, align 4
  %1227 = icmp sge i32 %1226, 8
  br i1 %1227, label %1228, label %1244

; <label>:1228:                                   ; preds = %1223
  %1229 = load %struct.DState*, %struct.DState** %3, align 8
  %1230 = getelementptr inbounds %struct.DState, %struct.DState* %1229, i32 0, i32 7
  %1231 = load i32, i32* %1230, align 8
  %1232 = load %struct.DState*, %struct.DState** %3, align 8
  %1233 = getelementptr inbounds %struct.DState, %struct.DState* %1232, i32 0, i32 8
  %1234 = load i32, i32* %1233, align 4
  %1235 = sub nsw i32 %1234, 8
  %1236 = lshr i32 %1231, %1235
  %1237 = and i32 %1236, 255
  store i32 %1237, i32* %43, align 4
  %1238 = load %struct.DState*, %struct.DState** %3, align 8
  %1239 = getelementptr inbounds %struct.DState, %struct.DState* %1238, i32 0, i32 8
  %1240 = load i32, i32* %1239, align 4
  %1241 = sub nsw i32 %1240, 8
  store i32 %1241, i32* %1239, align 4
  %1242 = load i32, i32* %43, align 4
  %1243 = trunc i32 %1242 to i8
  store i8 %1243, i8* %4, align 1
  br label %1303

; <label>:1244:                                   ; preds = %1223
  %1245 = load %struct.DState*, %struct.DState** %3, align 8
  %1246 = getelementptr inbounds %struct.DState, %struct.DState* %1245, i32 0, i32 0
  %1247 = load %struct.bz_stream*, %struct.bz_stream** %1246, align 8
  %1248 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1247, i32 0, i32 1
  %1249 = load i32, i32* %1248, align 8
  %1250 = icmp eq i32 %1249, 0
  br i1 %1250, label %1251, label %1252

; <label>:1251:                                   ; preds = %1244
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1252:                                   ; preds = %1244
  %1253 = load %struct.DState*, %struct.DState** %3, align 8
  %1254 = getelementptr inbounds %struct.DState, %struct.DState* %1253, i32 0, i32 7
  %1255 = load i32, i32* %1254, align 8
  %1256 = shl i32 %1255, 8
  %1257 = load %struct.DState*, %struct.DState** %3, align 8
  %1258 = getelementptr inbounds %struct.DState, %struct.DState* %1257, i32 0, i32 0
  %1259 = load %struct.bz_stream*, %struct.bz_stream** %1258, align 8
  %1260 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1259, i32 0, i32 0
  %1261 = load i8*, i8** %1260, align 8
  %1262 = load i8, i8* %1261, align 1
  %1263 = zext i8 %1262 to i32
  %1264 = or i32 %1256, %1263
  %1265 = load %struct.DState*, %struct.DState** %3, align 8
  %1266 = getelementptr inbounds %struct.DState, %struct.DState* %1265, i32 0, i32 7
  store i32 %1264, i32* %1266, align 8
  %1267 = load %struct.DState*, %struct.DState** %3, align 8
  %1268 = getelementptr inbounds %struct.DState, %struct.DState* %1267, i32 0, i32 8
  %1269 = load i32, i32* %1268, align 4
  %1270 = add nsw i32 %1269, 8
  store i32 %1270, i32* %1268, align 4
  %1271 = load %struct.DState*, %struct.DState** %3, align 8
  %1272 = getelementptr inbounds %struct.DState, %struct.DState* %1271, i32 0, i32 0
  %1273 = load %struct.bz_stream*, %struct.bz_stream** %1272, align 8
  %1274 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1273, i32 0, i32 0
  %1275 = load i8*, i8** %1274, align 8
  %1276 = getelementptr inbounds i8, i8* %1275, i32 1
  store i8* %1276, i8** %1274, align 8
  %1277 = load %struct.DState*, %struct.DState** %3, align 8
  %1278 = getelementptr inbounds %struct.DState, %struct.DState* %1277, i32 0, i32 0
  %1279 = load %struct.bz_stream*, %struct.bz_stream** %1278, align 8
  %1280 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1279, i32 0, i32 1
  %1281 = load i32, i32* %1280, align 8
  %1282 = add i32 %1281, -1
  store i32 %1282, i32* %1280, align 8
  %1283 = load %struct.DState*, %struct.DState** %3, align 8
  %1284 = getelementptr inbounds %struct.DState, %struct.DState* %1283, i32 0, i32 0
  %1285 = load %struct.bz_stream*, %struct.bz_stream** %1284, align 8
  %1286 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1285, i32 0, i32 2
  %1287 = load i32, i32* %1286, align 4
  %1288 = add i32 %1287, 1
  store i32 %1288, i32* %1286, align 4
  %1289 = load %struct.DState*, %struct.DState** %3, align 8
  %1290 = getelementptr inbounds %struct.DState, %struct.DState* %1289, i32 0, i32 0
  %1291 = load %struct.bz_stream*, %struct.bz_stream** %1290, align 8
  %1292 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1291, i32 0, i32 2
  %1293 = load i32, i32* %1292, align 4
  %1294 = icmp eq i32 %1293, 0
  br i1 %1294, label %1295, label %1302

; <label>:1295:                                   ; preds = %1252
  %1296 = load %struct.DState*, %struct.DState** %3, align 8
  %1297 = getelementptr inbounds %struct.DState, %struct.DState* %1296, i32 0, i32 0
  %1298 = load %struct.bz_stream*, %struct.bz_stream** %1297, align 8
  %1299 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1298, i32 0, i32 3
  %1300 = load i32, i32* %1299, align 8
  %1301 = add i32 %1300, 1
  store i32 %1301, i32* %1299, align 8
  br label %1302

; <label>:1302:                                   ; preds = %1295, %1252
  br label %1223

; <label>:1303:                                   ; preds = %1228
  %1304 = load %struct.DState*, %struct.DState** %3, align 8
  %1305 = getelementptr inbounds %struct.DState, %struct.DState* %1304, i32 0, i32 23
  %1306 = load i32, i32* %1305, align 8
  %1307 = shl i32 %1306, 8
  %1308 = load i8, i8* %4, align 1
  %1309 = zext i8 %1308 to i32
  %1310 = or i32 %1307, %1309
  %1311 = load %struct.DState*, %struct.DState** %3, align 8
  %1312 = getelementptr inbounds %struct.DState, %struct.DState* %1311, i32 0, i32 23
  store i32 %1310, i32* %1312, align 8
  br label %1313

; <label>:1313:                                   ; preds = %145, %1303
  %1314 = load %struct.DState*, %struct.DState** %3, align 8
  %1315 = getelementptr inbounds %struct.DState, %struct.DState* %1314, i32 0, i32 1
  store i32 21, i32* %1315, align 8
  br label %1316

; <label>:1316:                                   ; preds = %1313, %1395
  %1317 = load %struct.DState*, %struct.DState** %3, align 8
  %1318 = getelementptr inbounds %struct.DState, %struct.DState* %1317, i32 0, i32 8
  %1319 = load i32, i32* %1318, align 4
  %1320 = icmp sge i32 %1319, 8
  br i1 %1320, label %1321, label %1337

; <label>:1321:                                   ; preds = %1316
  %1322 = load %struct.DState*, %struct.DState** %3, align 8
  %1323 = getelementptr inbounds %struct.DState, %struct.DState* %1322, i32 0, i32 7
  %1324 = load i32, i32* %1323, align 8
  %1325 = load %struct.DState*, %struct.DState** %3, align 8
  %1326 = getelementptr inbounds %struct.DState, %struct.DState* %1325, i32 0, i32 8
  %1327 = load i32, i32* %1326, align 4
  %1328 = sub nsw i32 %1327, 8
  %1329 = lshr i32 %1324, %1328
  %1330 = and i32 %1329, 255
  store i32 %1330, i32* %44, align 4
  %1331 = load %struct.DState*, %struct.DState** %3, align 8
  %1332 = getelementptr inbounds %struct.DState, %struct.DState* %1331, i32 0, i32 8
  %1333 = load i32, i32* %1332, align 4
  %1334 = sub nsw i32 %1333, 8
  store i32 %1334, i32* %1332, align 4
  %1335 = load i32, i32* %44, align 4
  %1336 = trunc i32 %1335 to i8
  store i8 %1336, i8* %4, align 1
  br label %1396

; <label>:1337:                                   ; preds = %1316
  %1338 = load %struct.DState*, %struct.DState** %3, align 8
  %1339 = getelementptr inbounds %struct.DState, %struct.DState* %1338, i32 0, i32 0
  %1340 = load %struct.bz_stream*, %struct.bz_stream** %1339, align 8
  %1341 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1340, i32 0, i32 1
  %1342 = load i32, i32* %1341, align 8
  %1343 = icmp eq i32 %1342, 0
  br i1 %1343, label %1344, label %1345

; <label>:1344:                                   ; preds = %1337
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1345:                                   ; preds = %1337
  %1346 = load %struct.DState*, %struct.DState** %3, align 8
  %1347 = getelementptr inbounds %struct.DState, %struct.DState* %1346, i32 0, i32 7
  %1348 = load i32, i32* %1347, align 8
  %1349 = shl i32 %1348, 8
  %1350 = load %struct.DState*, %struct.DState** %3, align 8
  %1351 = getelementptr inbounds %struct.DState, %struct.DState* %1350, i32 0, i32 0
  %1352 = load %struct.bz_stream*, %struct.bz_stream** %1351, align 8
  %1353 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1352, i32 0, i32 0
  %1354 = load i8*, i8** %1353, align 8
  %1355 = load i8, i8* %1354, align 1
  %1356 = zext i8 %1355 to i32
  %1357 = or i32 %1349, %1356
  %1358 = load %struct.DState*, %struct.DState** %3, align 8
  %1359 = getelementptr inbounds %struct.DState, %struct.DState* %1358, i32 0, i32 7
  store i32 %1357, i32* %1359, align 8
  %1360 = load %struct.DState*, %struct.DState** %3, align 8
  %1361 = getelementptr inbounds %struct.DState, %struct.DState* %1360, i32 0, i32 8
  %1362 = load i32, i32* %1361, align 4
  %1363 = add nsw i32 %1362, 8
  store i32 %1363, i32* %1361, align 4
  %1364 = load %struct.DState*, %struct.DState** %3, align 8
  %1365 = getelementptr inbounds %struct.DState, %struct.DState* %1364, i32 0, i32 0
  %1366 = load %struct.bz_stream*, %struct.bz_stream** %1365, align 8
  %1367 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1366, i32 0, i32 0
  %1368 = load i8*, i8** %1367, align 8
  %1369 = getelementptr inbounds i8, i8* %1368, i32 1
  store i8* %1369, i8** %1367, align 8
  %1370 = load %struct.DState*, %struct.DState** %3, align 8
  %1371 = getelementptr inbounds %struct.DState, %struct.DState* %1370, i32 0, i32 0
  %1372 = load %struct.bz_stream*, %struct.bz_stream** %1371, align 8
  %1373 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1372, i32 0, i32 1
  %1374 = load i32, i32* %1373, align 8
  %1375 = add i32 %1374, -1
  store i32 %1375, i32* %1373, align 8
  %1376 = load %struct.DState*, %struct.DState** %3, align 8
  %1377 = getelementptr inbounds %struct.DState, %struct.DState* %1376, i32 0, i32 0
  %1378 = load %struct.bz_stream*, %struct.bz_stream** %1377, align 8
  %1379 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1378, i32 0, i32 2
  %1380 = load i32, i32* %1379, align 4
  %1381 = add i32 %1380, 1
  store i32 %1381, i32* %1379, align 4
  %1382 = load %struct.DState*, %struct.DState** %3, align 8
  %1383 = getelementptr inbounds %struct.DState, %struct.DState* %1382, i32 0, i32 0
  %1384 = load %struct.bz_stream*, %struct.bz_stream** %1383, align 8
  %1385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1384, i32 0, i32 2
  %1386 = load i32, i32* %1385, align 4
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1388, label %1395

; <label>:1388:                                   ; preds = %1345
  %1389 = load %struct.DState*, %struct.DState** %3, align 8
  %1390 = getelementptr inbounds %struct.DState, %struct.DState* %1389, i32 0, i32 0
  %1391 = load %struct.bz_stream*, %struct.bz_stream** %1390, align 8
  %1392 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1391, i32 0, i32 3
  %1393 = load i32, i32* %1392, align 8
  %1394 = add i32 %1393, 1
  store i32 %1394, i32* %1392, align 8
  br label %1395

; <label>:1395:                                   ; preds = %1388, %1345
  br label %1316

; <label>:1396:                                   ; preds = %1321
  %1397 = load %struct.DState*, %struct.DState** %3, align 8
  %1398 = getelementptr inbounds %struct.DState, %struct.DState* %1397, i32 0, i32 23
  %1399 = load i32, i32* %1398, align 8
  %1400 = shl i32 %1399, 8
  %1401 = load i8, i8* %4, align 1
  %1402 = zext i8 %1401 to i32
  %1403 = or i32 %1400, %1402
  %1404 = load %struct.DState*, %struct.DState** %3, align 8
  %1405 = getelementptr inbounds %struct.DState, %struct.DState* %1404, i32 0, i32 23
  store i32 %1403, i32* %1405, align 8
  br label %1406

; <label>:1406:                                   ; preds = %145, %1396
  %1407 = load %struct.DState*, %struct.DState** %3, align 8
  %1408 = getelementptr inbounds %struct.DState, %struct.DState* %1407, i32 0, i32 1
  store i32 22, i32* %1408, align 8
  br label %1409

; <label>:1409:                                   ; preds = %1406, %1488
  %1410 = load %struct.DState*, %struct.DState** %3, align 8
  %1411 = getelementptr inbounds %struct.DState, %struct.DState* %1410, i32 0, i32 8
  %1412 = load i32, i32* %1411, align 4
  %1413 = icmp sge i32 %1412, 8
  br i1 %1413, label %1414, label %1430

; <label>:1414:                                   ; preds = %1409
  %1415 = load %struct.DState*, %struct.DState** %3, align 8
  %1416 = getelementptr inbounds %struct.DState, %struct.DState* %1415, i32 0, i32 7
  %1417 = load i32, i32* %1416, align 8
  %1418 = load %struct.DState*, %struct.DState** %3, align 8
  %1419 = getelementptr inbounds %struct.DState, %struct.DState* %1418, i32 0, i32 8
  %1420 = load i32, i32* %1419, align 4
  %1421 = sub nsw i32 %1420, 8
  %1422 = lshr i32 %1417, %1421
  %1423 = and i32 %1422, 255
  store i32 %1423, i32* %45, align 4
  %1424 = load %struct.DState*, %struct.DState** %3, align 8
  %1425 = getelementptr inbounds %struct.DState, %struct.DState* %1424, i32 0, i32 8
  %1426 = load i32, i32* %1425, align 4
  %1427 = sub nsw i32 %1426, 8
  store i32 %1427, i32* %1425, align 4
  %1428 = load i32, i32* %45, align 4
  %1429 = trunc i32 %1428 to i8
  store i8 %1429, i8* %4, align 1
  br label %1489

; <label>:1430:                                   ; preds = %1409
  %1431 = load %struct.DState*, %struct.DState** %3, align 8
  %1432 = getelementptr inbounds %struct.DState, %struct.DState* %1431, i32 0, i32 0
  %1433 = load %struct.bz_stream*, %struct.bz_stream** %1432, align 8
  %1434 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1433, i32 0, i32 1
  %1435 = load i32, i32* %1434, align 8
  %1436 = icmp eq i32 %1435, 0
  br i1 %1436, label %1437, label %1438

; <label>:1437:                                   ; preds = %1430
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1438:                                   ; preds = %1430
  %1439 = load %struct.DState*, %struct.DState** %3, align 8
  %1440 = getelementptr inbounds %struct.DState, %struct.DState* %1439, i32 0, i32 7
  %1441 = load i32, i32* %1440, align 8
  %1442 = shl i32 %1441, 8
  %1443 = load %struct.DState*, %struct.DState** %3, align 8
  %1444 = getelementptr inbounds %struct.DState, %struct.DState* %1443, i32 0, i32 0
  %1445 = load %struct.bz_stream*, %struct.bz_stream** %1444, align 8
  %1446 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1445, i32 0, i32 0
  %1447 = load i8*, i8** %1446, align 8
  %1448 = load i8, i8* %1447, align 1
  %1449 = zext i8 %1448 to i32
  %1450 = or i32 %1442, %1449
  %1451 = load %struct.DState*, %struct.DState** %3, align 8
  %1452 = getelementptr inbounds %struct.DState, %struct.DState* %1451, i32 0, i32 7
  store i32 %1450, i32* %1452, align 8
  %1453 = load %struct.DState*, %struct.DState** %3, align 8
  %1454 = getelementptr inbounds %struct.DState, %struct.DState* %1453, i32 0, i32 8
  %1455 = load i32, i32* %1454, align 4
  %1456 = add nsw i32 %1455, 8
  store i32 %1456, i32* %1454, align 4
  %1457 = load %struct.DState*, %struct.DState** %3, align 8
  %1458 = getelementptr inbounds %struct.DState, %struct.DState* %1457, i32 0, i32 0
  %1459 = load %struct.bz_stream*, %struct.bz_stream** %1458, align 8
  %1460 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1459, i32 0, i32 0
  %1461 = load i8*, i8** %1460, align 8
  %1462 = getelementptr inbounds i8, i8* %1461, i32 1
  store i8* %1462, i8** %1460, align 8
  %1463 = load %struct.DState*, %struct.DState** %3, align 8
  %1464 = getelementptr inbounds %struct.DState, %struct.DState* %1463, i32 0, i32 0
  %1465 = load %struct.bz_stream*, %struct.bz_stream** %1464, align 8
  %1466 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1465, i32 0, i32 1
  %1467 = load i32, i32* %1466, align 8
  %1468 = add i32 %1467, -1
  store i32 %1468, i32* %1466, align 8
  %1469 = load %struct.DState*, %struct.DState** %3, align 8
  %1470 = getelementptr inbounds %struct.DState, %struct.DState* %1469, i32 0, i32 0
  %1471 = load %struct.bz_stream*, %struct.bz_stream** %1470, align 8
  %1472 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1471, i32 0, i32 2
  %1473 = load i32, i32* %1472, align 4
  %1474 = add i32 %1473, 1
  store i32 %1474, i32* %1472, align 4
  %1475 = load %struct.DState*, %struct.DState** %3, align 8
  %1476 = getelementptr inbounds %struct.DState, %struct.DState* %1475, i32 0, i32 0
  %1477 = load %struct.bz_stream*, %struct.bz_stream** %1476, align 8
  %1478 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1477, i32 0, i32 2
  %1479 = load i32, i32* %1478, align 4
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1481, label %1488

; <label>:1481:                                   ; preds = %1438
  %1482 = load %struct.DState*, %struct.DState** %3, align 8
  %1483 = getelementptr inbounds %struct.DState, %struct.DState* %1482, i32 0, i32 0
  %1484 = load %struct.bz_stream*, %struct.bz_stream** %1483, align 8
  %1485 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1484, i32 0, i32 3
  %1486 = load i32, i32* %1485, align 8
  %1487 = add i32 %1486, 1
  store i32 %1487, i32* %1485, align 8
  br label %1488

; <label>:1488:                                   ; preds = %1481, %1438
  br label %1409

; <label>:1489:                                   ; preds = %1414
  %1490 = load %struct.DState*, %struct.DState** %3, align 8
  %1491 = getelementptr inbounds %struct.DState, %struct.DState* %1490, i32 0, i32 23
  %1492 = load i32, i32* %1491, align 8
  %1493 = shl i32 %1492, 8
  %1494 = load i8, i8* %4, align 1
  %1495 = zext i8 %1494 to i32
  %1496 = or i32 %1493, %1495
  %1497 = load %struct.DState*, %struct.DState** %3, align 8
  %1498 = getelementptr inbounds %struct.DState, %struct.DState* %1497, i32 0, i32 23
  store i32 %1496, i32* %1498, align 8
  br label %1499

; <label>:1499:                                   ; preds = %145, %1489
  %1500 = load %struct.DState*, %struct.DState** %3, align 8
  %1501 = getelementptr inbounds %struct.DState, %struct.DState* %1500, i32 0, i32 1
  store i32 23, i32* %1501, align 8
  br label %1502

; <label>:1502:                                   ; preds = %1499, %1581
  %1503 = load %struct.DState*, %struct.DState** %3, align 8
  %1504 = getelementptr inbounds %struct.DState, %struct.DState* %1503, i32 0, i32 8
  %1505 = load i32, i32* %1504, align 4
  %1506 = icmp sge i32 %1505, 8
  br i1 %1506, label %1507, label %1523

; <label>:1507:                                   ; preds = %1502
  %1508 = load %struct.DState*, %struct.DState** %3, align 8
  %1509 = getelementptr inbounds %struct.DState, %struct.DState* %1508, i32 0, i32 7
  %1510 = load i32, i32* %1509, align 8
  %1511 = load %struct.DState*, %struct.DState** %3, align 8
  %1512 = getelementptr inbounds %struct.DState, %struct.DState* %1511, i32 0, i32 8
  %1513 = load i32, i32* %1512, align 4
  %1514 = sub nsw i32 %1513, 8
  %1515 = lshr i32 %1510, %1514
  %1516 = and i32 %1515, 255
  store i32 %1516, i32* %46, align 4
  %1517 = load %struct.DState*, %struct.DState** %3, align 8
  %1518 = getelementptr inbounds %struct.DState, %struct.DState* %1517, i32 0, i32 8
  %1519 = load i32, i32* %1518, align 4
  %1520 = sub nsw i32 %1519, 8
  store i32 %1520, i32* %1518, align 4
  %1521 = load i32, i32* %46, align 4
  %1522 = trunc i32 %1521 to i8
  store i8 %1522, i8* %4, align 1
  br label %1582

; <label>:1523:                                   ; preds = %1502
  %1524 = load %struct.DState*, %struct.DState** %3, align 8
  %1525 = getelementptr inbounds %struct.DState, %struct.DState* %1524, i32 0, i32 0
  %1526 = load %struct.bz_stream*, %struct.bz_stream** %1525, align 8
  %1527 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1526, i32 0, i32 1
  %1528 = load i32, i32* %1527, align 8
  %1529 = icmp eq i32 %1528, 0
  br i1 %1529, label %1530, label %1531

; <label>:1530:                                   ; preds = %1523
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1531:                                   ; preds = %1523
  %1532 = load %struct.DState*, %struct.DState** %3, align 8
  %1533 = getelementptr inbounds %struct.DState, %struct.DState* %1532, i32 0, i32 7
  %1534 = load i32, i32* %1533, align 8
  %1535 = shl i32 %1534, 8
  %1536 = load %struct.DState*, %struct.DState** %3, align 8
  %1537 = getelementptr inbounds %struct.DState, %struct.DState* %1536, i32 0, i32 0
  %1538 = load %struct.bz_stream*, %struct.bz_stream** %1537, align 8
  %1539 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1538, i32 0, i32 0
  %1540 = load i8*, i8** %1539, align 8
  %1541 = load i8, i8* %1540, align 1
  %1542 = zext i8 %1541 to i32
  %1543 = or i32 %1535, %1542
  %1544 = load %struct.DState*, %struct.DState** %3, align 8
  %1545 = getelementptr inbounds %struct.DState, %struct.DState* %1544, i32 0, i32 7
  store i32 %1543, i32* %1545, align 8
  %1546 = load %struct.DState*, %struct.DState** %3, align 8
  %1547 = getelementptr inbounds %struct.DState, %struct.DState* %1546, i32 0, i32 8
  %1548 = load i32, i32* %1547, align 4
  %1549 = add nsw i32 %1548, 8
  store i32 %1549, i32* %1547, align 4
  %1550 = load %struct.DState*, %struct.DState** %3, align 8
  %1551 = getelementptr inbounds %struct.DState, %struct.DState* %1550, i32 0, i32 0
  %1552 = load %struct.bz_stream*, %struct.bz_stream** %1551, align 8
  %1553 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1552, i32 0, i32 0
  %1554 = load i8*, i8** %1553, align 8
  %1555 = getelementptr inbounds i8, i8* %1554, i32 1
  store i8* %1555, i8** %1553, align 8
  %1556 = load %struct.DState*, %struct.DState** %3, align 8
  %1557 = getelementptr inbounds %struct.DState, %struct.DState* %1556, i32 0, i32 0
  %1558 = load %struct.bz_stream*, %struct.bz_stream** %1557, align 8
  %1559 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1558, i32 0, i32 1
  %1560 = load i32, i32* %1559, align 8
  %1561 = add i32 %1560, -1
  store i32 %1561, i32* %1559, align 8
  %1562 = load %struct.DState*, %struct.DState** %3, align 8
  %1563 = getelementptr inbounds %struct.DState, %struct.DState* %1562, i32 0, i32 0
  %1564 = load %struct.bz_stream*, %struct.bz_stream** %1563, align 8
  %1565 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1564, i32 0, i32 2
  %1566 = load i32, i32* %1565, align 4
  %1567 = add i32 %1566, 1
  store i32 %1567, i32* %1565, align 4
  %1568 = load %struct.DState*, %struct.DState** %3, align 8
  %1569 = getelementptr inbounds %struct.DState, %struct.DState* %1568, i32 0, i32 0
  %1570 = load %struct.bz_stream*, %struct.bz_stream** %1569, align 8
  %1571 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1570, i32 0, i32 2
  %1572 = load i32, i32* %1571, align 4
  %1573 = icmp eq i32 %1572, 0
  br i1 %1573, label %1574, label %1581

; <label>:1574:                                   ; preds = %1531
  %1575 = load %struct.DState*, %struct.DState** %3, align 8
  %1576 = getelementptr inbounds %struct.DState, %struct.DState* %1575, i32 0, i32 0
  %1577 = load %struct.bz_stream*, %struct.bz_stream** %1576, align 8
  %1578 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1577, i32 0, i32 3
  %1579 = load i32, i32* %1578, align 8
  %1580 = add i32 %1579, 1
  store i32 %1580, i32* %1578, align 8
  br label %1581

; <label>:1581:                                   ; preds = %1574, %1531
  br label %1502

; <label>:1582:                                   ; preds = %1507
  %1583 = load %struct.DState*, %struct.DState** %3, align 8
  %1584 = getelementptr inbounds %struct.DState, %struct.DState* %1583, i32 0, i32 23
  %1585 = load i32, i32* %1584, align 8
  %1586 = shl i32 %1585, 8
  %1587 = load i8, i8* %4, align 1
  %1588 = zext i8 %1587 to i32
  %1589 = or i32 %1586, %1588
  %1590 = load %struct.DState*, %struct.DState** %3, align 8
  %1591 = getelementptr inbounds %struct.DState, %struct.DState* %1590, i32 0, i32 23
  store i32 %1589, i32* %1591, align 8
  br label %1592

; <label>:1592:                                   ; preds = %145, %1582
  %1593 = load %struct.DState*, %struct.DState** %3, align 8
  %1594 = getelementptr inbounds %struct.DState, %struct.DState* %1593, i32 0, i32 1
  store i32 24, i32* %1594, align 8
  br label %1595

; <label>:1595:                                   ; preds = %1592, %1676
  %1596 = load %struct.DState*, %struct.DState** %3, align 8
  %1597 = getelementptr inbounds %struct.DState, %struct.DState* %1596, i32 0, i32 8
  %1598 = load i32, i32* %1597, align 4
  %1599 = icmp sge i32 %1598, 1
  br i1 %1599, label %1600, label %1618

; <label>:1600:                                   ; preds = %1595
  %1601 = load %struct.DState*, %struct.DState** %3, align 8
  %1602 = getelementptr inbounds %struct.DState, %struct.DState* %1601, i32 0, i32 7
  %1603 = load i32, i32* %1602, align 8
  %1604 = load %struct.DState*, %struct.DState** %3, align 8
  %1605 = getelementptr inbounds %struct.DState, %struct.DState* %1604, i32 0, i32 8
  %1606 = load i32, i32* %1605, align 4
  %1607 = sub nsw i32 %1606, 1
  %1608 = lshr i32 %1603, %1607
  %1609 = and i32 %1608, 1
  store i32 %1609, i32* %47, align 4
  %1610 = load %struct.DState*, %struct.DState** %3, align 8
  %1611 = getelementptr inbounds %struct.DState, %struct.DState* %1610, i32 0, i32 8
  %1612 = load i32, i32* %1611, align 4
  %1613 = sub nsw i32 %1612, 1
  store i32 %1613, i32* %1611, align 4
  %1614 = load i32, i32* %47, align 4
  %1615 = trunc i32 %1614 to i8
  %1616 = load %struct.DState*, %struct.DState** %3, align 8
  %1617 = getelementptr inbounds %struct.DState, %struct.DState* %1616, i32 0, i32 4
  store i8 %1615, i8* %1617, align 4
  br label %1677

; <label>:1618:                                   ; preds = %1595
  %1619 = load %struct.DState*, %struct.DState** %3, align 8
  %1620 = getelementptr inbounds %struct.DState, %struct.DState* %1619, i32 0, i32 0
  %1621 = load %struct.bz_stream*, %struct.bz_stream** %1620, align 8
  %1622 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1621, i32 0, i32 1
  %1623 = load i32, i32* %1622, align 8
  %1624 = icmp eq i32 %1623, 0
  br i1 %1624, label %1625, label %1626

; <label>:1625:                                   ; preds = %1618
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1626:                                   ; preds = %1618
  %1627 = load %struct.DState*, %struct.DState** %3, align 8
  %1628 = getelementptr inbounds %struct.DState, %struct.DState* %1627, i32 0, i32 7
  %1629 = load i32, i32* %1628, align 8
  %1630 = shl i32 %1629, 8
  %1631 = load %struct.DState*, %struct.DState** %3, align 8
  %1632 = getelementptr inbounds %struct.DState, %struct.DState* %1631, i32 0, i32 0
  %1633 = load %struct.bz_stream*, %struct.bz_stream** %1632, align 8
  %1634 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1633, i32 0, i32 0
  %1635 = load i8*, i8** %1634, align 8
  %1636 = load i8, i8* %1635, align 1
  %1637 = zext i8 %1636 to i32
  %1638 = or i32 %1630, %1637
  %1639 = load %struct.DState*, %struct.DState** %3, align 8
  %1640 = getelementptr inbounds %struct.DState, %struct.DState* %1639, i32 0, i32 7
  store i32 %1638, i32* %1640, align 8
  %1641 = load %struct.DState*, %struct.DState** %3, align 8
  %1642 = getelementptr inbounds %struct.DState, %struct.DState* %1641, i32 0, i32 8
  %1643 = load i32, i32* %1642, align 4
  %1644 = add nsw i32 %1643, 8
  store i32 %1644, i32* %1642, align 4
  %1645 = load %struct.DState*, %struct.DState** %3, align 8
  %1646 = getelementptr inbounds %struct.DState, %struct.DState* %1645, i32 0, i32 0
  %1647 = load %struct.bz_stream*, %struct.bz_stream** %1646, align 8
  %1648 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1647, i32 0, i32 0
  %1649 = load i8*, i8** %1648, align 8
  %1650 = getelementptr inbounds i8, i8* %1649, i32 1
  store i8* %1650, i8** %1648, align 8
  %1651 = load %struct.DState*, %struct.DState** %3, align 8
  %1652 = getelementptr inbounds %struct.DState, %struct.DState* %1651, i32 0, i32 0
  %1653 = load %struct.bz_stream*, %struct.bz_stream** %1652, align 8
  %1654 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1653, i32 0, i32 1
  %1655 = load i32, i32* %1654, align 8
  %1656 = add i32 %1655, -1
  store i32 %1656, i32* %1654, align 8
  %1657 = load %struct.DState*, %struct.DState** %3, align 8
  %1658 = getelementptr inbounds %struct.DState, %struct.DState* %1657, i32 0, i32 0
  %1659 = load %struct.bz_stream*, %struct.bz_stream** %1658, align 8
  %1660 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1659, i32 0, i32 2
  %1661 = load i32, i32* %1660, align 4
  %1662 = add i32 %1661, 1
  store i32 %1662, i32* %1660, align 4
  %1663 = load %struct.DState*, %struct.DState** %3, align 8
  %1664 = getelementptr inbounds %struct.DState, %struct.DState* %1663, i32 0, i32 0
  %1665 = load %struct.bz_stream*, %struct.bz_stream** %1664, align 8
  %1666 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1665, i32 0, i32 2
  %1667 = load i32, i32* %1666, align 4
  %1668 = icmp eq i32 %1667, 0
  br i1 %1668, label %1669, label %1676

; <label>:1669:                                   ; preds = %1626
  %1670 = load %struct.DState*, %struct.DState** %3, align 8
  %1671 = getelementptr inbounds %struct.DState, %struct.DState* %1670, i32 0, i32 0
  %1672 = load %struct.bz_stream*, %struct.bz_stream** %1671, align 8
  %1673 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1672, i32 0, i32 3
  %1674 = load i32, i32* %1673, align 8
  %1675 = add i32 %1674, 1
  store i32 %1675, i32* %1673, align 8
  br label %1676

; <label>:1676:                                   ; preds = %1669, %1626
  br label %1595

; <label>:1677:                                   ; preds = %1600
  %1678 = load %struct.DState*, %struct.DState** %3, align 8
  %1679 = getelementptr inbounds %struct.DState, %struct.DState* %1678, i32 0, i32 13
  store i32 0, i32* %1679, align 8
  br label %1680

; <label>:1680:                                   ; preds = %145, %1677
  %1681 = load %struct.DState*, %struct.DState** %3, align 8
  %1682 = getelementptr inbounds %struct.DState, %struct.DState* %1681, i32 0, i32 1
  store i32 25, i32* %1682, align 8
  br label %1683

; <label>:1683:                                   ; preds = %1680, %1762
  %1684 = load %struct.DState*, %struct.DState** %3, align 8
  %1685 = getelementptr inbounds %struct.DState, %struct.DState* %1684, i32 0, i32 8
  %1686 = load i32, i32* %1685, align 4
  %1687 = icmp sge i32 %1686, 8
  br i1 %1687, label %1688, label %1704

; <label>:1688:                                   ; preds = %1683
  %1689 = load %struct.DState*, %struct.DState** %3, align 8
  %1690 = getelementptr inbounds %struct.DState, %struct.DState* %1689, i32 0, i32 7
  %1691 = load i32, i32* %1690, align 8
  %1692 = load %struct.DState*, %struct.DState** %3, align 8
  %1693 = getelementptr inbounds %struct.DState, %struct.DState* %1692, i32 0, i32 8
  %1694 = load i32, i32* %1693, align 4
  %1695 = sub nsw i32 %1694, 8
  %1696 = lshr i32 %1691, %1695
  %1697 = and i32 %1696, 255
  store i32 %1697, i32* %48, align 4
  %1698 = load %struct.DState*, %struct.DState** %3, align 8
  %1699 = getelementptr inbounds %struct.DState, %struct.DState* %1698, i32 0, i32 8
  %1700 = load i32, i32* %1699, align 4
  %1701 = sub nsw i32 %1700, 8
  store i32 %1701, i32* %1699, align 4
  %1702 = load i32, i32* %48, align 4
  %1703 = trunc i32 %1702 to i8
  store i8 %1703, i8* %4, align 1
  br label %1763

; <label>:1704:                                   ; preds = %1683
  %1705 = load %struct.DState*, %struct.DState** %3, align 8
  %1706 = getelementptr inbounds %struct.DState, %struct.DState* %1705, i32 0, i32 0
  %1707 = load %struct.bz_stream*, %struct.bz_stream** %1706, align 8
  %1708 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1707, i32 0, i32 1
  %1709 = load i32, i32* %1708, align 8
  %1710 = icmp eq i32 %1709, 0
  br i1 %1710, label %1711, label %1712

; <label>:1711:                                   ; preds = %1704
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1712:                                   ; preds = %1704
  %1713 = load %struct.DState*, %struct.DState** %3, align 8
  %1714 = getelementptr inbounds %struct.DState, %struct.DState* %1713, i32 0, i32 7
  %1715 = load i32, i32* %1714, align 8
  %1716 = shl i32 %1715, 8
  %1717 = load %struct.DState*, %struct.DState** %3, align 8
  %1718 = getelementptr inbounds %struct.DState, %struct.DState* %1717, i32 0, i32 0
  %1719 = load %struct.bz_stream*, %struct.bz_stream** %1718, align 8
  %1720 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1719, i32 0, i32 0
  %1721 = load i8*, i8** %1720, align 8
  %1722 = load i8, i8* %1721, align 1
  %1723 = zext i8 %1722 to i32
  %1724 = or i32 %1716, %1723
  %1725 = load %struct.DState*, %struct.DState** %3, align 8
  %1726 = getelementptr inbounds %struct.DState, %struct.DState* %1725, i32 0, i32 7
  store i32 %1724, i32* %1726, align 8
  %1727 = load %struct.DState*, %struct.DState** %3, align 8
  %1728 = getelementptr inbounds %struct.DState, %struct.DState* %1727, i32 0, i32 8
  %1729 = load i32, i32* %1728, align 4
  %1730 = add nsw i32 %1729, 8
  store i32 %1730, i32* %1728, align 4
  %1731 = load %struct.DState*, %struct.DState** %3, align 8
  %1732 = getelementptr inbounds %struct.DState, %struct.DState* %1731, i32 0, i32 0
  %1733 = load %struct.bz_stream*, %struct.bz_stream** %1732, align 8
  %1734 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1733, i32 0, i32 0
  %1735 = load i8*, i8** %1734, align 8
  %1736 = getelementptr inbounds i8, i8* %1735, i32 1
  store i8* %1736, i8** %1734, align 8
  %1737 = load %struct.DState*, %struct.DState** %3, align 8
  %1738 = getelementptr inbounds %struct.DState, %struct.DState* %1737, i32 0, i32 0
  %1739 = load %struct.bz_stream*, %struct.bz_stream** %1738, align 8
  %1740 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1739, i32 0, i32 1
  %1741 = load i32, i32* %1740, align 8
  %1742 = add i32 %1741, -1
  store i32 %1742, i32* %1740, align 8
  %1743 = load %struct.DState*, %struct.DState** %3, align 8
  %1744 = getelementptr inbounds %struct.DState, %struct.DState* %1743, i32 0, i32 0
  %1745 = load %struct.bz_stream*, %struct.bz_stream** %1744, align 8
  %1746 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1745, i32 0, i32 2
  %1747 = load i32, i32* %1746, align 4
  %1748 = add i32 %1747, 1
  store i32 %1748, i32* %1746, align 4
  %1749 = load %struct.DState*, %struct.DState** %3, align 8
  %1750 = getelementptr inbounds %struct.DState, %struct.DState* %1749, i32 0, i32 0
  %1751 = load %struct.bz_stream*, %struct.bz_stream** %1750, align 8
  %1752 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1751, i32 0, i32 2
  %1753 = load i32, i32* %1752, align 4
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %1755, label %1762

; <label>:1755:                                   ; preds = %1712
  %1756 = load %struct.DState*, %struct.DState** %3, align 8
  %1757 = getelementptr inbounds %struct.DState, %struct.DState* %1756, i32 0, i32 0
  %1758 = load %struct.bz_stream*, %struct.bz_stream** %1757, align 8
  %1759 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1758, i32 0, i32 3
  %1760 = load i32, i32* %1759, align 8
  %1761 = add i32 %1760, 1
  store i32 %1761, i32* %1759, align 8
  br label %1762

; <label>:1762:                                   ; preds = %1755, %1712
  br label %1683

; <label>:1763:                                   ; preds = %1688
  %1764 = load %struct.DState*, %struct.DState** %3, align 8
  %1765 = getelementptr inbounds %struct.DState, %struct.DState* %1764, i32 0, i32 13
  %1766 = load i32, i32* %1765, align 8
  %1767 = shl i32 %1766, 8
  %1768 = load i8, i8* %4, align 1
  %1769 = zext i8 %1768 to i32
  %1770 = or i32 %1767, %1769
  %1771 = load %struct.DState*, %struct.DState** %3, align 8
  %1772 = getelementptr inbounds %struct.DState, %struct.DState* %1771, i32 0, i32 13
  store i32 %1770, i32* %1772, align 8
  br label %1773

; <label>:1773:                                   ; preds = %145, %1763
  %1774 = load %struct.DState*, %struct.DState** %3, align 8
  %1775 = getelementptr inbounds %struct.DState, %struct.DState* %1774, i32 0, i32 1
  store i32 26, i32* %1775, align 8
  br label %1776

; <label>:1776:                                   ; preds = %1773, %1855
  %1777 = load %struct.DState*, %struct.DState** %3, align 8
  %1778 = getelementptr inbounds %struct.DState, %struct.DState* %1777, i32 0, i32 8
  %1779 = load i32, i32* %1778, align 4
  %1780 = icmp sge i32 %1779, 8
  br i1 %1780, label %1781, label %1797

; <label>:1781:                                   ; preds = %1776
  %1782 = load %struct.DState*, %struct.DState** %3, align 8
  %1783 = getelementptr inbounds %struct.DState, %struct.DState* %1782, i32 0, i32 7
  %1784 = load i32, i32* %1783, align 8
  %1785 = load %struct.DState*, %struct.DState** %3, align 8
  %1786 = getelementptr inbounds %struct.DState, %struct.DState* %1785, i32 0, i32 8
  %1787 = load i32, i32* %1786, align 4
  %1788 = sub nsw i32 %1787, 8
  %1789 = lshr i32 %1784, %1788
  %1790 = and i32 %1789, 255
  store i32 %1790, i32* %49, align 4
  %1791 = load %struct.DState*, %struct.DState** %3, align 8
  %1792 = getelementptr inbounds %struct.DState, %struct.DState* %1791, i32 0, i32 8
  %1793 = load i32, i32* %1792, align 4
  %1794 = sub nsw i32 %1793, 8
  store i32 %1794, i32* %1792, align 4
  %1795 = load i32, i32* %49, align 4
  %1796 = trunc i32 %1795 to i8
  store i8 %1796, i8* %4, align 1
  br label %1856

; <label>:1797:                                   ; preds = %1776
  %1798 = load %struct.DState*, %struct.DState** %3, align 8
  %1799 = getelementptr inbounds %struct.DState, %struct.DState* %1798, i32 0, i32 0
  %1800 = load %struct.bz_stream*, %struct.bz_stream** %1799, align 8
  %1801 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1800, i32 0, i32 1
  %1802 = load i32, i32* %1801, align 8
  %1803 = icmp eq i32 %1802, 0
  br i1 %1803, label %1804, label %1805

; <label>:1804:                                   ; preds = %1797
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1805:                                   ; preds = %1797
  %1806 = load %struct.DState*, %struct.DState** %3, align 8
  %1807 = getelementptr inbounds %struct.DState, %struct.DState* %1806, i32 0, i32 7
  %1808 = load i32, i32* %1807, align 8
  %1809 = shl i32 %1808, 8
  %1810 = load %struct.DState*, %struct.DState** %3, align 8
  %1811 = getelementptr inbounds %struct.DState, %struct.DState* %1810, i32 0, i32 0
  %1812 = load %struct.bz_stream*, %struct.bz_stream** %1811, align 8
  %1813 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1812, i32 0, i32 0
  %1814 = load i8*, i8** %1813, align 8
  %1815 = load i8, i8* %1814, align 1
  %1816 = zext i8 %1815 to i32
  %1817 = or i32 %1809, %1816
  %1818 = load %struct.DState*, %struct.DState** %3, align 8
  %1819 = getelementptr inbounds %struct.DState, %struct.DState* %1818, i32 0, i32 7
  store i32 %1817, i32* %1819, align 8
  %1820 = load %struct.DState*, %struct.DState** %3, align 8
  %1821 = getelementptr inbounds %struct.DState, %struct.DState* %1820, i32 0, i32 8
  %1822 = load i32, i32* %1821, align 4
  %1823 = add nsw i32 %1822, 8
  store i32 %1823, i32* %1821, align 4
  %1824 = load %struct.DState*, %struct.DState** %3, align 8
  %1825 = getelementptr inbounds %struct.DState, %struct.DState* %1824, i32 0, i32 0
  %1826 = load %struct.bz_stream*, %struct.bz_stream** %1825, align 8
  %1827 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1826, i32 0, i32 0
  %1828 = load i8*, i8** %1827, align 8
  %1829 = getelementptr inbounds i8, i8* %1828, i32 1
  store i8* %1829, i8** %1827, align 8
  %1830 = load %struct.DState*, %struct.DState** %3, align 8
  %1831 = getelementptr inbounds %struct.DState, %struct.DState* %1830, i32 0, i32 0
  %1832 = load %struct.bz_stream*, %struct.bz_stream** %1831, align 8
  %1833 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1832, i32 0, i32 1
  %1834 = load i32, i32* %1833, align 8
  %1835 = add i32 %1834, -1
  store i32 %1835, i32* %1833, align 8
  %1836 = load %struct.DState*, %struct.DState** %3, align 8
  %1837 = getelementptr inbounds %struct.DState, %struct.DState* %1836, i32 0, i32 0
  %1838 = load %struct.bz_stream*, %struct.bz_stream** %1837, align 8
  %1839 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1838, i32 0, i32 2
  %1840 = load i32, i32* %1839, align 4
  %1841 = add i32 %1840, 1
  store i32 %1841, i32* %1839, align 4
  %1842 = load %struct.DState*, %struct.DState** %3, align 8
  %1843 = getelementptr inbounds %struct.DState, %struct.DState* %1842, i32 0, i32 0
  %1844 = load %struct.bz_stream*, %struct.bz_stream** %1843, align 8
  %1845 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1844, i32 0, i32 2
  %1846 = load i32, i32* %1845, align 4
  %1847 = icmp eq i32 %1846, 0
  br i1 %1847, label %1848, label %1855

; <label>:1848:                                   ; preds = %1805
  %1849 = load %struct.DState*, %struct.DState** %3, align 8
  %1850 = getelementptr inbounds %struct.DState, %struct.DState* %1849, i32 0, i32 0
  %1851 = load %struct.bz_stream*, %struct.bz_stream** %1850, align 8
  %1852 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1851, i32 0, i32 3
  %1853 = load i32, i32* %1852, align 8
  %1854 = add i32 %1853, 1
  store i32 %1854, i32* %1852, align 8
  br label %1855

; <label>:1855:                                   ; preds = %1848, %1805
  br label %1776

; <label>:1856:                                   ; preds = %1781
  %1857 = load %struct.DState*, %struct.DState** %3, align 8
  %1858 = getelementptr inbounds %struct.DState, %struct.DState* %1857, i32 0, i32 13
  %1859 = load i32, i32* %1858, align 8
  %1860 = shl i32 %1859, 8
  %1861 = load i8, i8* %4, align 1
  %1862 = zext i8 %1861 to i32
  %1863 = or i32 %1860, %1862
  %1864 = load %struct.DState*, %struct.DState** %3, align 8
  %1865 = getelementptr inbounds %struct.DState, %struct.DState* %1864, i32 0, i32 13
  store i32 %1863, i32* %1865, align 8
  br label %1866

; <label>:1866:                                   ; preds = %145, %1856
  %1867 = load %struct.DState*, %struct.DState** %3, align 8
  %1868 = getelementptr inbounds %struct.DState, %struct.DState* %1867, i32 0, i32 1
  store i32 27, i32* %1868, align 8
  br label %1869

; <label>:1869:                                   ; preds = %1866, %1948
  %1870 = load %struct.DState*, %struct.DState** %3, align 8
  %1871 = getelementptr inbounds %struct.DState, %struct.DState* %1870, i32 0, i32 8
  %1872 = load i32, i32* %1871, align 4
  %1873 = icmp sge i32 %1872, 8
  br i1 %1873, label %1874, label %1890

; <label>:1874:                                   ; preds = %1869
  %1875 = load %struct.DState*, %struct.DState** %3, align 8
  %1876 = getelementptr inbounds %struct.DState, %struct.DState* %1875, i32 0, i32 7
  %1877 = load i32, i32* %1876, align 8
  %1878 = load %struct.DState*, %struct.DState** %3, align 8
  %1879 = getelementptr inbounds %struct.DState, %struct.DState* %1878, i32 0, i32 8
  %1880 = load i32, i32* %1879, align 4
  %1881 = sub nsw i32 %1880, 8
  %1882 = lshr i32 %1877, %1881
  %1883 = and i32 %1882, 255
  store i32 %1883, i32* %50, align 4
  %1884 = load %struct.DState*, %struct.DState** %3, align 8
  %1885 = getelementptr inbounds %struct.DState, %struct.DState* %1884, i32 0, i32 8
  %1886 = load i32, i32* %1885, align 4
  %1887 = sub nsw i32 %1886, 8
  store i32 %1887, i32* %1885, align 4
  %1888 = load i32, i32* %50, align 4
  %1889 = trunc i32 %1888 to i8
  store i8 %1889, i8* %4, align 1
  br label %1949

; <label>:1890:                                   ; preds = %1869
  %1891 = load %struct.DState*, %struct.DState** %3, align 8
  %1892 = getelementptr inbounds %struct.DState, %struct.DState* %1891, i32 0, i32 0
  %1893 = load %struct.bz_stream*, %struct.bz_stream** %1892, align 8
  %1894 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1893, i32 0, i32 1
  %1895 = load i32, i32* %1894, align 8
  %1896 = icmp eq i32 %1895, 0
  br i1 %1896, label %1897, label %1898

; <label>:1897:                                   ; preds = %1890
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:1898:                                   ; preds = %1890
  %1899 = load %struct.DState*, %struct.DState** %3, align 8
  %1900 = getelementptr inbounds %struct.DState, %struct.DState* %1899, i32 0, i32 7
  %1901 = load i32, i32* %1900, align 8
  %1902 = shl i32 %1901, 8
  %1903 = load %struct.DState*, %struct.DState** %3, align 8
  %1904 = getelementptr inbounds %struct.DState, %struct.DState* %1903, i32 0, i32 0
  %1905 = load %struct.bz_stream*, %struct.bz_stream** %1904, align 8
  %1906 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1905, i32 0, i32 0
  %1907 = load i8*, i8** %1906, align 8
  %1908 = load i8, i8* %1907, align 1
  %1909 = zext i8 %1908 to i32
  %1910 = or i32 %1902, %1909
  %1911 = load %struct.DState*, %struct.DState** %3, align 8
  %1912 = getelementptr inbounds %struct.DState, %struct.DState* %1911, i32 0, i32 7
  store i32 %1910, i32* %1912, align 8
  %1913 = load %struct.DState*, %struct.DState** %3, align 8
  %1914 = getelementptr inbounds %struct.DState, %struct.DState* %1913, i32 0, i32 8
  %1915 = load i32, i32* %1914, align 4
  %1916 = add nsw i32 %1915, 8
  store i32 %1916, i32* %1914, align 4
  %1917 = load %struct.DState*, %struct.DState** %3, align 8
  %1918 = getelementptr inbounds %struct.DState, %struct.DState* %1917, i32 0, i32 0
  %1919 = load %struct.bz_stream*, %struct.bz_stream** %1918, align 8
  %1920 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1919, i32 0, i32 0
  %1921 = load i8*, i8** %1920, align 8
  %1922 = getelementptr inbounds i8, i8* %1921, i32 1
  store i8* %1922, i8** %1920, align 8
  %1923 = load %struct.DState*, %struct.DState** %3, align 8
  %1924 = getelementptr inbounds %struct.DState, %struct.DState* %1923, i32 0, i32 0
  %1925 = load %struct.bz_stream*, %struct.bz_stream** %1924, align 8
  %1926 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1925, i32 0, i32 1
  %1927 = load i32, i32* %1926, align 8
  %1928 = add i32 %1927, -1
  store i32 %1928, i32* %1926, align 8
  %1929 = load %struct.DState*, %struct.DState** %3, align 8
  %1930 = getelementptr inbounds %struct.DState, %struct.DState* %1929, i32 0, i32 0
  %1931 = load %struct.bz_stream*, %struct.bz_stream** %1930, align 8
  %1932 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1931, i32 0, i32 2
  %1933 = load i32, i32* %1932, align 4
  %1934 = add i32 %1933, 1
  store i32 %1934, i32* %1932, align 4
  %1935 = load %struct.DState*, %struct.DState** %3, align 8
  %1936 = getelementptr inbounds %struct.DState, %struct.DState* %1935, i32 0, i32 0
  %1937 = load %struct.bz_stream*, %struct.bz_stream** %1936, align 8
  %1938 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1937, i32 0, i32 2
  %1939 = load i32, i32* %1938, align 4
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %1941, label %1948

; <label>:1941:                                   ; preds = %1898
  %1942 = load %struct.DState*, %struct.DState** %3, align 8
  %1943 = getelementptr inbounds %struct.DState, %struct.DState* %1942, i32 0, i32 0
  %1944 = load %struct.bz_stream*, %struct.bz_stream** %1943, align 8
  %1945 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %1944, i32 0, i32 3
  %1946 = load i32, i32* %1945, align 8
  %1947 = add i32 %1946, 1
  store i32 %1947, i32* %1945, align 8
  br label %1948

; <label>:1948:                                   ; preds = %1941, %1898
  br label %1869

; <label>:1949:                                   ; preds = %1874
  %1950 = load %struct.DState*, %struct.DState** %3, align 8
  %1951 = getelementptr inbounds %struct.DState, %struct.DState* %1950, i32 0, i32 13
  %1952 = load i32, i32* %1951, align 8
  %1953 = shl i32 %1952, 8
  %1954 = load i8, i8* %4, align 1
  %1955 = zext i8 %1954 to i32
  %1956 = or i32 %1953, %1955
  %1957 = load %struct.DState*, %struct.DState** %3, align 8
  %1958 = getelementptr inbounds %struct.DState, %struct.DState* %1957, i32 0, i32 13
  store i32 %1956, i32* %1958, align 8
  %1959 = load %struct.DState*, %struct.DState** %3, align 8
  %1960 = getelementptr inbounds %struct.DState, %struct.DState* %1959, i32 0, i32 13
  %1961 = load i32, i32* %1960, align 8
  %1962 = icmp slt i32 %1961, 0
  br i1 %1962, label %1963, label %1964

; <label>:1963:                                   ; preds = %1949
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:1964:                                   ; preds = %1949
  %1965 = load %struct.DState*, %struct.DState** %3, align 8
  %1966 = getelementptr inbounds %struct.DState, %struct.DState* %1965, i32 0, i32 13
  %1967 = load i32, i32* %1966, align 8
  %1968 = load %struct.DState*, %struct.DState** %3, align 8
  %1969 = getelementptr inbounds %struct.DState, %struct.DState* %1968, i32 0, i32 9
  %1970 = load i32, i32* %1969, align 8
  %1971 = mul nsw i32 100000, %1970
  %1972 = add nsw i32 10, %1971
  %1973 = icmp sgt i32 %1967, %1972
  br i1 %1973, label %1974, label %1975

; <label>:1974:                                   ; preds = %1964
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:1975:                                   ; preds = %1964
  store i32 0, i32* %9, align 4
  br label %1976

; <label>:1976:                                   ; preds = %2080, %1975
  %1977 = load i32, i32* %9, align 4
  %1978 = icmp slt i32 %1977, 16
  br i1 %1978, label %1979, label %2083

; <label>:1979:                                   ; preds = %1976
  br label %1980

; <label>:1980:                                   ; preds = %145, %1979
  %1981 = load %struct.DState*, %struct.DState** %3, align 8
  %1982 = getelementptr inbounds %struct.DState, %struct.DState* %1981, i32 0, i32 1
  store i32 28, i32* %1982, align 8
  br label %1983

; <label>:1983:                                   ; preds = %1980, %2062
  %1984 = load %struct.DState*, %struct.DState** %3, align 8
  %1985 = getelementptr inbounds %struct.DState, %struct.DState* %1984, i32 0, i32 8
  %1986 = load i32, i32* %1985, align 4
  %1987 = icmp sge i32 %1986, 1
  br i1 %1987, label %1988, label %2004

; <label>:1988:                                   ; preds = %1983
  %1989 = load %struct.DState*, %struct.DState** %3, align 8
  %1990 = getelementptr inbounds %struct.DState, %struct.DState* %1989, i32 0, i32 7
  %1991 = load i32, i32* %1990, align 8
  %1992 = load %struct.DState*, %struct.DState** %3, align 8
  %1993 = getelementptr inbounds %struct.DState, %struct.DState* %1992, i32 0, i32 8
  %1994 = load i32, i32* %1993, align 4
  %1995 = sub nsw i32 %1994, 1
  %1996 = lshr i32 %1991, %1995
  %1997 = and i32 %1996, 1
  store i32 %1997, i32* %51, align 4
  %1998 = load %struct.DState*, %struct.DState** %3, align 8
  %1999 = getelementptr inbounds %struct.DState, %struct.DState* %1998, i32 0, i32 8
  %2000 = load i32, i32* %1999, align 4
  %2001 = sub nsw i32 %2000, 1
  store i32 %2001, i32* %1999, align 4
  %2002 = load i32, i32* %51, align 4
  %2003 = trunc i32 %2002 to i8
  store i8 %2003, i8* %4, align 1
  br label %2063

; <label>:2004:                                   ; preds = %1983
  %2005 = load %struct.DState*, %struct.DState** %3, align 8
  %2006 = getelementptr inbounds %struct.DState, %struct.DState* %2005, i32 0, i32 0
  %2007 = load %struct.bz_stream*, %struct.bz_stream** %2006, align 8
  %2008 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2007, i32 0, i32 1
  %2009 = load i32, i32* %2008, align 8
  %2010 = icmp eq i32 %2009, 0
  br i1 %2010, label %2011, label %2012

; <label>:2011:                                   ; preds = %2004
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2012:                                   ; preds = %2004
  %2013 = load %struct.DState*, %struct.DState** %3, align 8
  %2014 = getelementptr inbounds %struct.DState, %struct.DState* %2013, i32 0, i32 7
  %2015 = load i32, i32* %2014, align 8
  %2016 = shl i32 %2015, 8
  %2017 = load %struct.DState*, %struct.DState** %3, align 8
  %2018 = getelementptr inbounds %struct.DState, %struct.DState* %2017, i32 0, i32 0
  %2019 = load %struct.bz_stream*, %struct.bz_stream** %2018, align 8
  %2020 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2019, i32 0, i32 0
  %2021 = load i8*, i8** %2020, align 8
  %2022 = load i8, i8* %2021, align 1
  %2023 = zext i8 %2022 to i32
  %2024 = or i32 %2016, %2023
  %2025 = load %struct.DState*, %struct.DState** %3, align 8
  %2026 = getelementptr inbounds %struct.DState, %struct.DState* %2025, i32 0, i32 7
  store i32 %2024, i32* %2026, align 8
  %2027 = load %struct.DState*, %struct.DState** %3, align 8
  %2028 = getelementptr inbounds %struct.DState, %struct.DState* %2027, i32 0, i32 8
  %2029 = load i32, i32* %2028, align 4
  %2030 = add nsw i32 %2029, 8
  store i32 %2030, i32* %2028, align 4
  %2031 = load %struct.DState*, %struct.DState** %3, align 8
  %2032 = getelementptr inbounds %struct.DState, %struct.DState* %2031, i32 0, i32 0
  %2033 = load %struct.bz_stream*, %struct.bz_stream** %2032, align 8
  %2034 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2033, i32 0, i32 0
  %2035 = load i8*, i8** %2034, align 8
  %2036 = getelementptr inbounds i8, i8* %2035, i32 1
  store i8* %2036, i8** %2034, align 8
  %2037 = load %struct.DState*, %struct.DState** %3, align 8
  %2038 = getelementptr inbounds %struct.DState, %struct.DState* %2037, i32 0, i32 0
  %2039 = load %struct.bz_stream*, %struct.bz_stream** %2038, align 8
  %2040 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2039, i32 0, i32 1
  %2041 = load i32, i32* %2040, align 8
  %2042 = add i32 %2041, -1
  store i32 %2042, i32* %2040, align 8
  %2043 = load %struct.DState*, %struct.DState** %3, align 8
  %2044 = getelementptr inbounds %struct.DState, %struct.DState* %2043, i32 0, i32 0
  %2045 = load %struct.bz_stream*, %struct.bz_stream** %2044, align 8
  %2046 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2045, i32 0, i32 2
  %2047 = load i32, i32* %2046, align 4
  %2048 = add i32 %2047, 1
  store i32 %2048, i32* %2046, align 4
  %2049 = load %struct.DState*, %struct.DState** %3, align 8
  %2050 = getelementptr inbounds %struct.DState, %struct.DState* %2049, i32 0, i32 0
  %2051 = load %struct.bz_stream*, %struct.bz_stream** %2050, align 8
  %2052 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2051, i32 0, i32 2
  %2053 = load i32, i32* %2052, align 4
  %2054 = icmp eq i32 %2053, 0
  br i1 %2054, label %2055, label %2062

; <label>:2055:                                   ; preds = %2012
  %2056 = load %struct.DState*, %struct.DState** %3, align 8
  %2057 = getelementptr inbounds %struct.DState, %struct.DState* %2056, i32 0, i32 0
  %2058 = load %struct.bz_stream*, %struct.bz_stream** %2057, align 8
  %2059 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2058, i32 0, i32 3
  %2060 = load i32, i32* %2059, align 8
  %2061 = add i32 %2060, 1
  store i32 %2061, i32* %2059, align 8
  br label %2062

; <label>:2062:                                   ; preds = %2055, %2012
  br label %1983

; <label>:2063:                                   ; preds = %1988
  %2064 = load i8, i8* %4, align 1
  %2065 = zext i8 %2064 to i32
  %2066 = icmp eq i32 %2065, 1
  br i1 %2066, label %2067, label %2073

; <label>:2067:                                   ; preds = %2063
  %2068 = load %struct.DState*, %struct.DState** %3, align 8
  %2069 = getelementptr inbounds %struct.DState, %struct.DState* %2068, i32 0, i32 29
  %2070 = load i32, i32* %9, align 4
  %2071 = sext i32 %2070 to i64
  %2072 = getelementptr inbounds [16 x i8], [16 x i8]* %2069, i64 0, i64 %2071
  store i8 1, i8* %2072, align 1
  br label %2079

; <label>:2073:                                   ; preds = %2063
  %2074 = load %struct.DState*, %struct.DState** %3, align 8
  %2075 = getelementptr inbounds %struct.DState, %struct.DState* %2074, i32 0, i32 29
  %2076 = load i32, i32* %9, align 4
  %2077 = sext i32 %2076 to i64
  %2078 = getelementptr inbounds [16 x i8], [16 x i8]* %2075, i64 0, i64 %2077
  store i8 0, i8* %2078, align 1
  br label %2079

; <label>:2079:                                   ; preds = %2073, %2067
  br label %2080

; <label>:2080:                                   ; preds = %2079
  %2081 = load i32, i32* %9, align 4
  %2082 = add nsw i32 %2081, 1
  store i32 %2082, i32* %9, align 4
  br label %1976

; <label>:2083:                                   ; preds = %1976
  store i32 0, i32* %9, align 4
  br label %2084

; <label>:2084:                                   ; preds = %2093, %2083
  %2085 = load i32, i32* %9, align 4
  %2086 = icmp slt i32 %2085, 256
  br i1 %2086, label %2087, label %2096

; <label>:2087:                                   ; preds = %2084
  %2088 = load %struct.DState*, %struct.DState** %3, align 8
  %2089 = getelementptr inbounds %struct.DState, %struct.DState* %2088, i32 0, i32 28
  %2090 = load i32, i32* %9, align 4
  %2091 = sext i32 %2090 to i64
  %2092 = getelementptr inbounds [256 x i8], [256 x i8]* %2089, i64 0, i64 %2091
  store i8 0, i8* %2092, align 1
  br label %2093

; <label>:2093:                                   ; preds = %2087
  %2094 = load i32, i32* %9, align 4
  %2095 = add nsw i32 %2094, 1
  store i32 %2095, i32* %9, align 4
  br label %2084

; <label>:2096:                                   ; preds = %2084
  store i32 0, i32* %9, align 4
  br label %2097

; <label>:2097:                                   ; preds = %2215, %2096
  %2098 = load i32, i32* %9, align 4
  %2099 = icmp slt i32 %2098, 16
  br i1 %2099, label %2100, label %2218

; <label>:2100:                                   ; preds = %2097
  %2101 = load %struct.DState*, %struct.DState** %3, align 8
  %2102 = getelementptr inbounds %struct.DState, %struct.DState* %2101, i32 0, i32 29
  %2103 = load i32, i32* %9, align 4
  %2104 = sext i32 %2103 to i64
  %2105 = getelementptr inbounds [16 x i8], [16 x i8]* %2102, i64 0, i64 %2104
  %2106 = load i8, i8* %2105, align 1
  %2107 = icmp ne i8 %2106, 0
  br i1 %2107, label %2108, label %2214

; <label>:2108:                                   ; preds = %2100
  store i32 0, i32* %10, align 4
  br label %2109

; <label>:2109:                                   ; preds = %2210, %2108
  %2110 = load i32, i32* %10, align 4
  %2111 = icmp slt i32 %2110, 16
  br i1 %2111, label %2112, label %2213

; <label>:2112:                                   ; preds = %2109
  br label %2113

; <label>:2113:                                   ; preds = %145, %2112
  %2114 = load %struct.DState*, %struct.DState** %3, align 8
  %2115 = getelementptr inbounds %struct.DState, %struct.DState* %2114, i32 0, i32 1
  store i32 29, i32* %2115, align 8
  br label %2116

; <label>:2116:                                   ; preds = %2113, %2195
  %2117 = load %struct.DState*, %struct.DState** %3, align 8
  %2118 = getelementptr inbounds %struct.DState, %struct.DState* %2117, i32 0, i32 8
  %2119 = load i32, i32* %2118, align 4
  %2120 = icmp sge i32 %2119, 1
  br i1 %2120, label %2121, label %2137

; <label>:2121:                                   ; preds = %2116
  %2122 = load %struct.DState*, %struct.DState** %3, align 8
  %2123 = getelementptr inbounds %struct.DState, %struct.DState* %2122, i32 0, i32 7
  %2124 = load i32, i32* %2123, align 8
  %2125 = load %struct.DState*, %struct.DState** %3, align 8
  %2126 = getelementptr inbounds %struct.DState, %struct.DState* %2125, i32 0, i32 8
  %2127 = load i32, i32* %2126, align 4
  %2128 = sub nsw i32 %2127, 1
  %2129 = lshr i32 %2124, %2128
  %2130 = and i32 %2129, 1
  store i32 %2130, i32* %52, align 4
  %2131 = load %struct.DState*, %struct.DState** %3, align 8
  %2132 = getelementptr inbounds %struct.DState, %struct.DState* %2131, i32 0, i32 8
  %2133 = load i32, i32* %2132, align 4
  %2134 = sub nsw i32 %2133, 1
  store i32 %2134, i32* %2132, align 4
  %2135 = load i32, i32* %52, align 4
  %2136 = trunc i32 %2135 to i8
  store i8 %2136, i8* %4, align 1
  br label %2196

; <label>:2137:                                   ; preds = %2116
  %2138 = load %struct.DState*, %struct.DState** %3, align 8
  %2139 = getelementptr inbounds %struct.DState, %struct.DState* %2138, i32 0, i32 0
  %2140 = load %struct.bz_stream*, %struct.bz_stream** %2139, align 8
  %2141 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2140, i32 0, i32 1
  %2142 = load i32, i32* %2141, align 8
  %2143 = icmp eq i32 %2142, 0
  br i1 %2143, label %2144, label %2145

; <label>:2144:                                   ; preds = %2137
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2145:                                   ; preds = %2137
  %2146 = load %struct.DState*, %struct.DState** %3, align 8
  %2147 = getelementptr inbounds %struct.DState, %struct.DState* %2146, i32 0, i32 7
  %2148 = load i32, i32* %2147, align 8
  %2149 = shl i32 %2148, 8
  %2150 = load %struct.DState*, %struct.DState** %3, align 8
  %2151 = getelementptr inbounds %struct.DState, %struct.DState* %2150, i32 0, i32 0
  %2152 = load %struct.bz_stream*, %struct.bz_stream** %2151, align 8
  %2153 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2152, i32 0, i32 0
  %2154 = load i8*, i8** %2153, align 8
  %2155 = load i8, i8* %2154, align 1
  %2156 = zext i8 %2155 to i32
  %2157 = or i32 %2149, %2156
  %2158 = load %struct.DState*, %struct.DState** %3, align 8
  %2159 = getelementptr inbounds %struct.DState, %struct.DState* %2158, i32 0, i32 7
  store i32 %2157, i32* %2159, align 8
  %2160 = load %struct.DState*, %struct.DState** %3, align 8
  %2161 = getelementptr inbounds %struct.DState, %struct.DState* %2160, i32 0, i32 8
  %2162 = load i32, i32* %2161, align 4
  %2163 = add nsw i32 %2162, 8
  store i32 %2163, i32* %2161, align 4
  %2164 = load %struct.DState*, %struct.DState** %3, align 8
  %2165 = getelementptr inbounds %struct.DState, %struct.DState* %2164, i32 0, i32 0
  %2166 = load %struct.bz_stream*, %struct.bz_stream** %2165, align 8
  %2167 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2166, i32 0, i32 0
  %2168 = load i8*, i8** %2167, align 8
  %2169 = getelementptr inbounds i8, i8* %2168, i32 1
  store i8* %2169, i8** %2167, align 8
  %2170 = load %struct.DState*, %struct.DState** %3, align 8
  %2171 = getelementptr inbounds %struct.DState, %struct.DState* %2170, i32 0, i32 0
  %2172 = load %struct.bz_stream*, %struct.bz_stream** %2171, align 8
  %2173 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2172, i32 0, i32 1
  %2174 = load i32, i32* %2173, align 8
  %2175 = add i32 %2174, -1
  store i32 %2175, i32* %2173, align 8
  %2176 = load %struct.DState*, %struct.DState** %3, align 8
  %2177 = getelementptr inbounds %struct.DState, %struct.DState* %2176, i32 0, i32 0
  %2178 = load %struct.bz_stream*, %struct.bz_stream** %2177, align 8
  %2179 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2178, i32 0, i32 2
  %2180 = load i32, i32* %2179, align 4
  %2181 = add i32 %2180, 1
  store i32 %2181, i32* %2179, align 4
  %2182 = load %struct.DState*, %struct.DState** %3, align 8
  %2183 = getelementptr inbounds %struct.DState, %struct.DState* %2182, i32 0, i32 0
  %2184 = load %struct.bz_stream*, %struct.bz_stream** %2183, align 8
  %2185 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2184, i32 0, i32 2
  %2186 = load i32, i32* %2185, align 4
  %2187 = icmp eq i32 %2186, 0
  br i1 %2187, label %2188, label %2195

; <label>:2188:                                   ; preds = %2145
  %2189 = load %struct.DState*, %struct.DState** %3, align 8
  %2190 = getelementptr inbounds %struct.DState, %struct.DState* %2189, i32 0, i32 0
  %2191 = load %struct.bz_stream*, %struct.bz_stream** %2190, align 8
  %2192 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2191, i32 0, i32 3
  %2193 = load i32, i32* %2192, align 8
  %2194 = add i32 %2193, 1
  store i32 %2194, i32* %2192, align 8
  br label %2195

; <label>:2195:                                   ; preds = %2188, %2145
  br label %2116

; <label>:2196:                                   ; preds = %2121
  %2197 = load i8, i8* %4, align 1
  %2198 = zext i8 %2197 to i32
  %2199 = icmp eq i32 %2198, 1
  br i1 %2199, label %2200, label %2209

; <label>:2200:                                   ; preds = %2196
  %2201 = load %struct.DState*, %struct.DState** %3, align 8
  %2202 = getelementptr inbounds %struct.DState, %struct.DState* %2201, i32 0, i32 28
  %2203 = load i32, i32* %9, align 4
  %2204 = mul nsw i32 %2203, 16
  %2205 = load i32, i32* %10, align 4
  %2206 = add nsw i32 %2204, %2205
  %2207 = sext i32 %2206 to i64
  %2208 = getelementptr inbounds [256 x i8], [256 x i8]* %2202, i64 0, i64 %2207
  store i8 1, i8* %2208, align 1
  br label %2209

; <label>:2209:                                   ; preds = %2200, %2196
  br label %2210

; <label>:2210:                                   ; preds = %2209
  %2211 = load i32, i32* %10, align 4
  %2212 = add nsw i32 %2211, 1
  store i32 %2212, i32* %10, align 4
  br label %2109

; <label>:2213:                                   ; preds = %2109
  br label %2214

; <label>:2214:                                   ; preds = %2213, %2100
  br label %2215

; <label>:2215:                                   ; preds = %2214
  %2216 = load i32, i32* %9, align 4
  %2217 = add nsw i32 %2216, 1
  store i32 %2217, i32* %9, align 4
  br label %2097

; <label>:2218:                                   ; preds = %2097
  %2219 = load %struct.DState*, %struct.DState** %3, align 8
  call void @makeMaps_d(%struct.DState* %2219)
  %2220 = load %struct.DState*, %struct.DState** %3, align 8
  %2221 = getelementptr inbounds %struct.DState, %struct.DState* %2220, i32 0, i32 27
  %2222 = load i32, i32* %2221, align 8
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2224, label %2225

; <label>:2224:                                   ; preds = %2218
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:2225:                                   ; preds = %2218
  %2226 = load %struct.DState*, %struct.DState** %3, align 8
  %2227 = getelementptr inbounds %struct.DState, %struct.DState* %2226, i32 0, i32 27
  %2228 = load i32, i32* %2227, align 8
  %2229 = add nsw i32 %2228, 2
  store i32 %2229, i32* %12, align 4
  br label %2230

; <label>:2230:                                   ; preds = %145, %2225
  %2231 = load %struct.DState*, %struct.DState** %3, align 8
  %2232 = getelementptr inbounds %struct.DState, %struct.DState* %2231, i32 0, i32 1
  store i32 30, i32* %2232, align 8
  br label %2233

; <label>:2233:                                   ; preds = %2230, %2311
  %2234 = load %struct.DState*, %struct.DState** %3, align 8
  %2235 = getelementptr inbounds %struct.DState, %struct.DState* %2234, i32 0, i32 8
  %2236 = load i32, i32* %2235, align 4
  %2237 = icmp sge i32 %2236, 3
  br i1 %2237, label %2238, label %2253

; <label>:2238:                                   ; preds = %2233
  %2239 = load %struct.DState*, %struct.DState** %3, align 8
  %2240 = getelementptr inbounds %struct.DState, %struct.DState* %2239, i32 0, i32 7
  %2241 = load i32, i32* %2240, align 8
  %2242 = load %struct.DState*, %struct.DState** %3, align 8
  %2243 = getelementptr inbounds %struct.DState, %struct.DState* %2242, i32 0, i32 8
  %2244 = load i32, i32* %2243, align 4
  %2245 = sub nsw i32 %2244, 3
  %2246 = lshr i32 %2241, %2245
  %2247 = and i32 %2246, 7
  store i32 %2247, i32* %53, align 4
  %2248 = load %struct.DState*, %struct.DState** %3, align 8
  %2249 = getelementptr inbounds %struct.DState, %struct.DState* %2248, i32 0, i32 8
  %2250 = load i32, i32* %2249, align 4
  %2251 = sub nsw i32 %2250, 3
  store i32 %2251, i32* %2249, align 4
  %2252 = load i32, i32* %53, align 4
  store i32 %2252, i32* %13, align 4
  br label %2312

; <label>:2253:                                   ; preds = %2233
  %2254 = load %struct.DState*, %struct.DState** %3, align 8
  %2255 = getelementptr inbounds %struct.DState, %struct.DState* %2254, i32 0, i32 0
  %2256 = load %struct.bz_stream*, %struct.bz_stream** %2255, align 8
  %2257 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2256, i32 0, i32 1
  %2258 = load i32, i32* %2257, align 8
  %2259 = icmp eq i32 %2258, 0
  br i1 %2259, label %2260, label %2261

; <label>:2260:                                   ; preds = %2253
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2261:                                   ; preds = %2253
  %2262 = load %struct.DState*, %struct.DState** %3, align 8
  %2263 = getelementptr inbounds %struct.DState, %struct.DState* %2262, i32 0, i32 7
  %2264 = load i32, i32* %2263, align 8
  %2265 = shl i32 %2264, 8
  %2266 = load %struct.DState*, %struct.DState** %3, align 8
  %2267 = getelementptr inbounds %struct.DState, %struct.DState* %2266, i32 0, i32 0
  %2268 = load %struct.bz_stream*, %struct.bz_stream** %2267, align 8
  %2269 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2268, i32 0, i32 0
  %2270 = load i8*, i8** %2269, align 8
  %2271 = load i8, i8* %2270, align 1
  %2272 = zext i8 %2271 to i32
  %2273 = or i32 %2265, %2272
  %2274 = load %struct.DState*, %struct.DState** %3, align 8
  %2275 = getelementptr inbounds %struct.DState, %struct.DState* %2274, i32 0, i32 7
  store i32 %2273, i32* %2275, align 8
  %2276 = load %struct.DState*, %struct.DState** %3, align 8
  %2277 = getelementptr inbounds %struct.DState, %struct.DState* %2276, i32 0, i32 8
  %2278 = load i32, i32* %2277, align 4
  %2279 = add nsw i32 %2278, 8
  store i32 %2279, i32* %2277, align 4
  %2280 = load %struct.DState*, %struct.DState** %3, align 8
  %2281 = getelementptr inbounds %struct.DState, %struct.DState* %2280, i32 0, i32 0
  %2282 = load %struct.bz_stream*, %struct.bz_stream** %2281, align 8
  %2283 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2282, i32 0, i32 0
  %2284 = load i8*, i8** %2283, align 8
  %2285 = getelementptr inbounds i8, i8* %2284, i32 1
  store i8* %2285, i8** %2283, align 8
  %2286 = load %struct.DState*, %struct.DState** %3, align 8
  %2287 = getelementptr inbounds %struct.DState, %struct.DState* %2286, i32 0, i32 0
  %2288 = load %struct.bz_stream*, %struct.bz_stream** %2287, align 8
  %2289 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2288, i32 0, i32 1
  %2290 = load i32, i32* %2289, align 8
  %2291 = add i32 %2290, -1
  store i32 %2291, i32* %2289, align 8
  %2292 = load %struct.DState*, %struct.DState** %3, align 8
  %2293 = getelementptr inbounds %struct.DState, %struct.DState* %2292, i32 0, i32 0
  %2294 = load %struct.bz_stream*, %struct.bz_stream** %2293, align 8
  %2295 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2294, i32 0, i32 2
  %2296 = load i32, i32* %2295, align 4
  %2297 = add i32 %2296, 1
  store i32 %2297, i32* %2295, align 4
  %2298 = load %struct.DState*, %struct.DState** %3, align 8
  %2299 = getelementptr inbounds %struct.DState, %struct.DState* %2298, i32 0, i32 0
  %2300 = load %struct.bz_stream*, %struct.bz_stream** %2299, align 8
  %2301 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2300, i32 0, i32 2
  %2302 = load i32, i32* %2301, align 4
  %2303 = icmp eq i32 %2302, 0
  br i1 %2303, label %2304, label %2311

; <label>:2304:                                   ; preds = %2261
  %2305 = load %struct.DState*, %struct.DState** %3, align 8
  %2306 = getelementptr inbounds %struct.DState, %struct.DState* %2305, i32 0, i32 0
  %2307 = load %struct.bz_stream*, %struct.bz_stream** %2306, align 8
  %2308 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2307, i32 0, i32 3
  %2309 = load i32, i32* %2308, align 8
  %2310 = add i32 %2309, 1
  store i32 %2310, i32* %2308, align 8
  br label %2311

; <label>:2311:                                   ; preds = %2304, %2261
  br label %2233

; <label>:2312:                                   ; preds = %2238
  %2313 = load i32, i32* %13, align 4
  %2314 = icmp slt i32 %2313, 2
  br i1 %2314, label %2318, label %2315

; <label>:2315:                                   ; preds = %2312
  %2316 = load i32, i32* %13, align 4
  %2317 = icmp sgt i32 %2316, 6
  br i1 %2317, label %2318, label %2319

; <label>:2318:                                   ; preds = %2315, %2312
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:2319:                                   ; preds = %2315
  br label %2320

; <label>:2320:                                   ; preds = %145, %2319
  %2321 = load %struct.DState*, %struct.DState** %3, align 8
  %2322 = getelementptr inbounds %struct.DState, %struct.DState* %2321, i32 0, i32 1
  store i32 31, i32* %2322, align 8
  br label %2323

; <label>:2323:                                   ; preds = %2320, %2401
  %2324 = load %struct.DState*, %struct.DState** %3, align 8
  %2325 = getelementptr inbounds %struct.DState, %struct.DState* %2324, i32 0, i32 8
  %2326 = load i32, i32* %2325, align 4
  %2327 = icmp sge i32 %2326, 15
  br i1 %2327, label %2328, label %2343

; <label>:2328:                                   ; preds = %2323
  %2329 = load %struct.DState*, %struct.DState** %3, align 8
  %2330 = getelementptr inbounds %struct.DState, %struct.DState* %2329, i32 0, i32 7
  %2331 = load i32, i32* %2330, align 8
  %2332 = load %struct.DState*, %struct.DState** %3, align 8
  %2333 = getelementptr inbounds %struct.DState, %struct.DState* %2332, i32 0, i32 8
  %2334 = load i32, i32* %2333, align 4
  %2335 = sub nsw i32 %2334, 15
  %2336 = lshr i32 %2331, %2335
  %2337 = and i32 %2336, 32767
  store i32 %2337, i32* %54, align 4
  %2338 = load %struct.DState*, %struct.DState** %3, align 8
  %2339 = getelementptr inbounds %struct.DState, %struct.DState* %2338, i32 0, i32 8
  %2340 = load i32, i32* %2339, align 4
  %2341 = sub nsw i32 %2340, 15
  store i32 %2341, i32* %2339, align 4
  %2342 = load i32, i32* %54, align 4
  store i32 %2342, i32* %14, align 4
  br label %2402

; <label>:2343:                                   ; preds = %2323
  %2344 = load %struct.DState*, %struct.DState** %3, align 8
  %2345 = getelementptr inbounds %struct.DState, %struct.DState* %2344, i32 0, i32 0
  %2346 = load %struct.bz_stream*, %struct.bz_stream** %2345, align 8
  %2347 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2346, i32 0, i32 1
  %2348 = load i32, i32* %2347, align 8
  %2349 = icmp eq i32 %2348, 0
  br i1 %2349, label %2350, label %2351

; <label>:2350:                                   ; preds = %2343
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2351:                                   ; preds = %2343
  %2352 = load %struct.DState*, %struct.DState** %3, align 8
  %2353 = getelementptr inbounds %struct.DState, %struct.DState* %2352, i32 0, i32 7
  %2354 = load i32, i32* %2353, align 8
  %2355 = shl i32 %2354, 8
  %2356 = load %struct.DState*, %struct.DState** %3, align 8
  %2357 = getelementptr inbounds %struct.DState, %struct.DState* %2356, i32 0, i32 0
  %2358 = load %struct.bz_stream*, %struct.bz_stream** %2357, align 8
  %2359 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2358, i32 0, i32 0
  %2360 = load i8*, i8** %2359, align 8
  %2361 = load i8, i8* %2360, align 1
  %2362 = zext i8 %2361 to i32
  %2363 = or i32 %2355, %2362
  %2364 = load %struct.DState*, %struct.DState** %3, align 8
  %2365 = getelementptr inbounds %struct.DState, %struct.DState* %2364, i32 0, i32 7
  store i32 %2363, i32* %2365, align 8
  %2366 = load %struct.DState*, %struct.DState** %3, align 8
  %2367 = getelementptr inbounds %struct.DState, %struct.DState* %2366, i32 0, i32 8
  %2368 = load i32, i32* %2367, align 4
  %2369 = add nsw i32 %2368, 8
  store i32 %2369, i32* %2367, align 4
  %2370 = load %struct.DState*, %struct.DState** %3, align 8
  %2371 = getelementptr inbounds %struct.DState, %struct.DState* %2370, i32 0, i32 0
  %2372 = load %struct.bz_stream*, %struct.bz_stream** %2371, align 8
  %2373 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2372, i32 0, i32 0
  %2374 = load i8*, i8** %2373, align 8
  %2375 = getelementptr inbounds i8, i8* %2374, i32 1
  store i8* %2375, i8** %2373, align 8
  %2376 = load %struct.DState*, %struct.DState** %3, align 8
  %2377 = getelementptr inbounds %struct.DState, %struct.DState* %2376, i32 0, i32 0
  %2378 = load %struct.bz_stream*, %struct.bz_stream** %2377, align 8
  %2379 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2378, i32 0, i32 1
  %2380 = load i32, i32* %2379, align 8
  %2381 = add i32 %2380, -1
  store i32 %2381, i32* %2379, align 8
  %2382 = load %struct.DState*, %struct.DState** %3, align 8
  %2383 = getelementptr inbounds %struct.DState, %struct.DState* %2382, i32 0, i32 0
  %2384 = load %struct.bz_stream*, %struct.bz_stream** %2383, align 8
  %2385 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2384, i32 0, i32 2
  %2386 = load i32, i32* %2385, align 4
  %2387 = add i32 %2386, 1
  store i32 %2387, i32* %2385, align 4
  %2388 = load %struct.DState*, %struct.DState** %3, align 8
  %2389 = getelementptr inbounds %struct.DState, %struct.DState* %2388, i32 0, i32 0
  %2390 = load %struct.bz_stream*, %struct.bz_stream** %2389, align 8
  %2391 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2390, i32 0, i32 2
  %2392 = load i32, i32* %2391, align 4
  %2393 = icmp eq i32 %2392, 0
  br i1 %2393, label %2394, label %2401

; <label>:2394:                                   ; preds = %2351
  %2395 = load %struct.DState*, %struct.DState** %3, align 8
  %2396 = getelementptr inbounds %struct.DState, %struct.DState* %2395, i32 0, i32 0
  %2397 = load %struct.bz_stream*, %struct.bz_stream** %2396, align 8
  %2398 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2397, i32 0, i32 3
  %2399 = load i32, i32* %2398, align 8
  %2400 = add i32 %2399, 1
  store i32 %2400, i32* %2398, align 8
  br label %2401

; <label>:2401:                                   ; preds = %2394, %2351
  br label %2323

; <label>:2402:                                   ; preds = %2328
  %2403 = load i32, i32* %14, align 4
  %2404 = icmp slt i32 %2403, 1
  br i1 %2404, label %2405, label %2406

; <label>:2405:                                   ; preds = %2402
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:2406:                                   ; preds = %2402
  store i32 0, i32* %9, align 4
  br label %2407

; <label>:2407:                                   ; preds = %2517, %2406
  %2408 = load i32, i32* %9, align 4
  %2409 = load i32, i32* %14, align 4
  %2410 = icmp slt i32 %2408, %2409
  br i1 %2410, label %2411, label %2520

; <label>:2411:                                   ; preds = %2407
  store i32 0, i32* %10, align 4
  br label %2412

; <label>:2412:                                   ; preds = %2411, %2508
  br label %2413

; <label>:2413:                                   ; preds = %145, %2412
  %2414 = load %struct.DState*, %struct.DState** %3, align 8
  %2415 = getelementptr inbounds %struct.DState, %struct.DState* %2414, i32 0, i32 1
  store i32 32, i32* %2415, align 8
  br label %2416

; <label>:2416:                                   ; preds = %2413, %2495
  %2417 = load %struct.DState*, %struct.DState** %3, align 8
  %2418 = getelementptr inbounds %struct.DState, %struct.DState* %2417, i32 0, i32 8
  %2419 = load i32, i32* %2418, align 4
  %2420 = icmp sge i32 %2419, 1
  br i1 %2420, label %2421, label %2437

; <label>:2421:                                   ; preds = %2416
  %2422 = load %struct.DState*, %struct.DState** %3, align 8
  %2423 = getelementptr inbounds %struct.DState, %struct.DState* %2422, i32 0, i32 7
  %2424 = load i32, i32* %2423, align 8
  %2425 = load %struct.DState*, %struct.DState** %3, align 8
  %2426 = getelementptr inbounds %struct.DState, %struct.DState* %2425, i32 0, i32 8
  %2427 = load i32, i32* %2426, align 4
  %2428 = sub nsw i32 %2427, 1
  %2429 = lshr i32 %2424, %2428
  %2430 = and i32 %2429, 1
  store i32 %2430, i32* %55, align 4
  %2431 = load %struct.DState*, %struct.DState** %3, align 8
  %2432 = getelementptr inbounds %struct.DState, %struct.DState* %2431, i32 0, i32 8
  %2433 = load i32, i32* %2432, align 4
  %2434 = sub nsw i32 %2433, 1
  store i32 %2434, i32* %2432, align 4
  %2435 = load i32, i32* %55, align 4
  %2436 = trunc i32 %2435 to i8
  store i8 %2436, i8* %4, align 1
  br label %2496

; <label>:2437:                                   ; preds = %2416
  %2438 = load %struct.DState*, %struct.DState** %3, align 8
  %2439 = getelementptr inbounds %struct.DState, %struct.DState* %2438, i32 0, i32 0
  %2440 = load %struct.bz_stream*, %struct.bz_stream** %2439, align 8
  %2441 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2440, i32 0, i32 1
  %2442 = load i32, i32* %2441, align 8
  %2443 = icmp eq i32 %2442, 0
  br i1 %2443, label %2444, label %2445

; <label>:2444:                                   ; preds = %2437
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2445:                                   ; preds = %2437
  %2446 = load %struct.DState*, %struct.DState** %3, align 8
  %2447 = getelementptr inbounds %struct.DState, %struct.DState* %2446, i32 0, i32 7
  %2448 = load i32, i32* %2447, align 8
  %2449 = shl i32 %2448, 8
  %2450 = load %struct.DState*, %struct.DState** %3, align 8
  %2451 = getelementptr inbounds %struct.DState, %struct.DState* %2450, i32 0, i32 0
  %2452 = load %struct.bz_stream*, %struct.bz_stream** %2451, align 8
  %2453 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2452, i32 0, i32 0
  %2454 = load i8*, i8** %2453, align 8
  %2455 = load i8, i8* %2454, align 1
  %2456 = zext i8 %2455 to i32
  %2457 = or i32 %2449, %2456
  %2458 = load %struct.DState*, %struct.DState** %3, align 8
  %2459 = getelementptr inbounds %struct.DState, %struct.DState* %2458, i32 0, i32 7
  store i32 %2457, i32* %2459, align 8
  %2460 = load %struct.DState*, %struct.DState** %3, align 8
  %2461 = getelementptr inbounds %struct.DState, %struct.DState* %2460, i32 0, i32 8
  %2462 = load i32, i32* %2461, align 4
  %2463 = add nsw i32 %2462, 8
  store i32 %2463, i32* %2461, align 4
  %2464 = load %struct.DState*, %struct.DState** %3, align 8
  %2465 = getelementptr inbounds %struct.DState, %struct.DState* %2464, i32 0, i32 0
  %2466 = load %struct.bz_stream*, %struct.bz_stream** %2465, align 8
  %2467 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2466, i32 0, i32 0
  %2468 = load i8*, i8** %2467, align 8
  %2469 = getelementptr inbounds i8, i8* %2468, i32 1
  store i8* %2469, i8** %2467, align 8
  %2470 = load %struct.DState*, %struct.DState** %3, align 8
  %2471 = getelementptr inbounds %struct.DState, %struct.DState* %2470, i32 0, i32 0
  %2472 = load %struct.bz_stream*, %struct.bz_stream** %2471, align 8
  %2473 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2472, i32 0, i32 1
  %2474 = load i32, i32* %2473, align 8
  %2475 = add i32 %2474, -1
  store i32 %2475, i32* %2473, align 8
  %2476 = load %struct.DState*, %struct.DState** %3, align 8
  %2477 = getelementptr inbounds %struct.DState, %struct.DState* %2476, i32 0, i32 0
  %2478 = load %struct.bz_stream*, %struct.bz_stream** %2477, align 8
  %2479 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2478, i32 0, i32 2
  %2480 = load i32, i32* %2479, align 4
  %2481 = add i32 %2480, 1
  store i32 %2481, i32* %2479, align 4
  %2482 = load %struct.DState*, %struct.DState** %3, align 8
  %2483 = getelementptr inbounds %struct.DState, %struct.DState* %2482, i32 0, i32 0
  %2484 = load %struct.bz_stream*, %struct.bz_stream** %2483, align 8
  %2485 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2484, i32 0, i32 2
  %2486 = load i32, i32* %2485, align 4
  %2487 = icmp eq i32 %2486, 0
  br i1 %2487, label %2488, label %2495

; <label>:2488:                                   ; preds = %2445
  %2489 = load %struct.DState*, %struct.DState** %3, align 8
  %2490 = getelementptr inbounds %struct.DState, %struct.DState* %2489, i32 0, i32 0
  %2491 = load %struct.bz_stream*, %struct.bz_stream** %2490, align 8
  %2492 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2491, i32 0, i32 3
  %2493 = load i32, i32* %2492, align 8
  %2494 = add i32 %2493, 1
  store i32 %2494, i32* %2492, align 8
  br label %2495

; <label>:2495:                                   ; preds = %2488, %2445
  br label %2416

; <label>:2496:                                   ; preds = %2421
  %2497 = load i8, i8* %4, align 1
  %2498 = zext i8 %2497 to i32
  %2499 = icmp eq i32 %2498, 0
  br i1 %2499, label %2500, label %2501

; <label>:2500:                                   ; preds = %2496
  br label %2509

; <label>:2501:                                   ; preds = %2496
  %2502 = load i32, i32* %10, align 4
  %2503 = add nsw i32 %2502, 1
  store i32 %2503, i32* %10, align 4
  %2504 = load i32, i32* %10, align 4
  %2505 = load i32, i32* %13, align 4
  %2506 = icmp sge i32 %2504, %2505
  br i1 %2506, label %2507, label %2508

; <label>:2507:                                   ; preds = %2501
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:2508:                                   ; preds = %2501
  br label %2412

; <label>:2509:                                   ; preds = %2500
  %2510 = load i32, i32* %10, align 4
  %2511 = trunc i32 %2510 to i8
  %2512 = load %struct.DState*, %struct.DState** %3, align 8
  %2513 = getelementptr inbounds %struct.DState, %struct.DState* %2512, i32 0, i32 34
  %2514 = load i32, i32* %9, align 4
  %2515 = sext i32 %2514 to i64
  %2516 = getelementptr inbounds [18002 x i8], [18002 x i8]* %2513, i64 0, i64 %2515
  store i8 %2511, i8* %2516, align 1
  br label %2517

; <label>:2517:                                   ; preds = %2509
  %2518 = load i32, i32* %9, align 4
  %2519 = add nsw i32 %2518, 1
  store i32 %2519, i32* %9, align 4
  br label %2407

; <label>:2520:                                   ; preds = %2407
  store i8 0, i8* %58, align 1
  br label %2521

; <label>:2521:                                   ; preds = %2531, %2520
  %2522 = load i8, i8* %58, align 1
  %2523 = zext i8 %2522 to i32
  %2524 = load i32, i32* %13, align 4
  %2525 = icmp slt i32 %2523, %2524
  br i1 %2525, label %2526, label %2534

; <label>:2526:                                   ; preds = %2521
  %2527 = load i8, i8* %58, align 1
  %2528 = load i8, i8* %58, align 1
  %2529 = zext i8 %2528 to i64
  %2530 = getelementptr inbounds [6 x i8], [6 x i8]* %56, i64 0, i64 %2529
  store i8 %2527, i8* %2530, align 1
  br label %2531

; <label>:2531:                                   ; preds = %2526
  %2532 = load i8, i8* %58, align 1
  %2533 = add i8 %2532, 1
  store i8 %2533, i8* %58, align 1
  br label %2521

; <label>:2534:                                   ; preds = %2521
  store i32 0, i32* %9, align 4
  br label %2535

; <label>:2535:                                   ; preds = %2575, %2534
  %2536 = load i32, i32* %9, align 4
  %2537 = load i32, i32* %14, align 4
  %2538 = icmp slt i32 %2536, %2537
  br i1 %2538, label %2539, label %2578

; <label>:2539:                                   ; preds = %2535
  %2540 = load %struct.DState*, %struct.DState** %3, align 8
  %2541 = getelementptr inbounds %struct.DState, %struct.DState* %2540, i32 0, i32 34
  %2542 = load i32, i32* %9, align 4
  %2543 = sext i32 %2542 to i64
  %2544 = getelementptr inbounds [18002 x i8], [18002 x i8]* %2541, i64 0, i64 %2543
  %2545 = load i8, i8* %2544, align 1
  store i8 %2545, i8* %58, align 1
  %2546 = load i8, i8* %58, align 1
  %2547 = zext i8 %2546 to i64
  %2548 = getelementptr inbounds [6 x i8], [6 x i8]* %56, i64 0, i64 %2547
  %2549 = load i8, i8* %2548, align 1
  store i8 %2549, i8* %57, align 1
  br label %2550

; <label>:2550:                                   ; preds = %2554, %2539
  %2551 = load i8, i8* %58, align 1
  %2552 = zext i8 %2551 to i32
  %2553 = icmp sgt i32 %2552, 0
  br i1 %2553, label %2554, label %2566

; <label>:2554:                                   ; preds = %2550
  %2555 = load i8, i8* %58, align 1
  %2556 = zext i8 %2555 to i32
  %2557 = sub nsw i32 %2556, 1
  %2558 = sext i32 %2557 to i64
  %2559 = getelementptr inbounds [6 x i8], [6 x i8]* %56, i64 0, i64 %2558
  %2560 = load i8, i8* %2559, align 1
  %2561 = load i8, i8* %58, align 1
  %2562 = zext i8 %2561 to i64
  %2563 = getelementptr inbounds [6 x i8], [6 x i8]* %56, i64 0, i64 %2562
  store i8 %2560, i8* %2563, align 1
  %2564 = load i8, i8* %58, align 1
  %2565 = add i8 %2564, -1
  store i8 %2565, i8* %58, align 1
  br label %2550

; <label>:2566:                                   ; preds = %2550
  %2567 = load i8, i8* %57, align 1
  %2568 = getelementptr inbounds [6 x i8], [6 x i8]* %56, i64 0, i64 0
  store i8 %2567, i8* %2568, align 1
  %2569 = load i8, i8* %57, align 1
  %2570 = load %struct.DState*, %struct.DState** %3, align 8
  %2571 = getelementptr inbounds %struct.DState, %struct.DState* %2570, i32 0, i32 33
  %2572 = load i32, i32* %9, align 4
  %2573 = sext i32 %2572 to i64
  %2574 = getelementptr inbounds [18002 x i8], [18002 x i8]* %2571, i64 0, i64 %2573
  store i8 %2569, i8* %2574, align 1
  br label %2575

; <label>:2575:                                   ; preds = %2566
  %2576 = load i32, i32* %9, align 4
  %2577 = add nsw i32 %2576, 1
  store i32 %2577, i32* %9, align 4
  br label %2535

; <label>:2578:                                   ; preds = %2535
  store i32 0, i32* %11, align 4
  br label %2579

; <label>:2579:                                   ; preds = %2878, %2578
  %2580 = load i32, i32* %11, align 4
  %2581 = load i32, i32* %13, align 4
  %2582 = icmp slt i32 %2580, %2581
  br i1 %2582, label %2583, label %2881

; <label>:2583:                                   ; preds = %2579
  br label %2584

; <label>:2584:                                   ; preds = %145, %2583
  %2585 = load %struct.DState*, %struct.DState** %3, align 8
  %2586 = getelementptr inbounds %struct.DState, %struct.DState* %2585, i32 0, i32 1
  store i32 33, i32* %2586, align 8
  br label %2587

; <label>:2587:                                   ; preds = %2584, %2665
  %2588 = load %struct.DState*, %struct.DState** %3, align 8
  %2589 = getelementptr inbounds %struct.DState, %struct.DState* %2588, i32 0, i32 8
  %2590 = load i32, i32* %2589, align 4
  %2591 = icmp sge i32 %2590, 5
  br i1 %2591, label %2592, label %2607

; <label>:2592:                                   ; preds = %2587
  %2593 = load %struct.DState*, %struct.DState** %3, align 8
  %2594 = getelementptr inbounds %struct.DState, %struct.DState* %2593, i32 0, i32 7
  %2595 = load i32, i32* %2594, align 8
  %2596 = load %struct.DState*, %struct.DState** %3, align 8
  %2597 = getelementptr inbounds %struct.DState, %struct.DState* %2596, i32 0, i32 8
  %2598 = load i32, i32* %2597, align 4
  %2599 = sub nsw i32 %2598, 5
  %2600 = lshr i32 %2595, %2599
  %2601 = and i32 %2600, 31
  store i32 %2601, i32* %59, align 4
  %2602 = load %struct.DState*, %struct.DState** %3, align 8
  %2603 = getelementptr inbounds %struct.DState, %struct.DState* %2602, i32 0, i32 8
  %2604 = load i32, i32* %2603, align 4
  %2605 = sub nsw i32 %2604, 5
  store i32 %2605, i32* %2603, align 4
  %2606 = load i32, i32* %59, align 4
  store i32 %2606, i32* %23, align 4
  br label %2666

; <label>:2607:                                   ; preds = %2587
  %2608 = load %struct.DState*, %struct.DState** %3, align 8
  %2609 = getelementptr inbounds %struct.DState, %struct.DState* %2608, i32 0, i32 0
  %2610 = load %struct.bz_stream*, %struct.bz_stream** %2609, align 8
  %2611 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2610, i32 0, i32 1
  %2612 = load i32, i32* %2611, align 8
  %2613 = icmp eq i32 %2612, 0
  br i1 %2613, label %2614, label %2615

; <label>:2614:                                   ; preds = %2607
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2615:                                   ; preds = %2607
  %2616 = load %struct.DState*, %struct.DState** %3, align 8
  %2617 = getelementptr inbounds %struct.DState, %struct.DState* %2616, i32 0, i32 7
  %2618 = load i32, i32* %2617, align 8
  %2619 = shl i32 %2618, 8
  %2620 = load %struct.DState*, %struct.DState** %3, align 8
  %2621 = getelementptr inbounds %struct.DState, %struct.DState* %2620, i32 0, i32 0
  %2622 = load %struct.bz_stream*, %struct.bz_stream** %2621, align 8
  %2623 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2622, i32 0, i32 0
  %2624 = load i8*, i8** %2623, align 8
  %2625 = load i8, i8* %2624, align 1
  %2626 = zext i8 %2625 to i32
  %2627 = or i32 %2619, %2626
  %2628 = load %struct.DState*, %struct.DState** %3, align 8
  %2629 = getelementptr inbounds %struct.DState, %struct.DState* %2628, i32 0, i32 7
  store i32 %2627, i32* %2629, align 8
  %2630 = load %struct.DState*, %struct.DState** %3, align 8
  %2631 = getelementptr inbounds %struct.DState, %struct.DState* %2630, i32 0, i32 8
  %2632 = load i32, i32* %2631, align 4
  %2633 = add nsw i32 %2632, 8
  store i32 %2633, i32* %2631, align 4
  %2634 = load %struct.DState*, %struct.DState** %3, align 8
  %2635 = getelementptr inbounds %struct.DState, %struct.DState* %2634, i32 0, i32 0
  %2636 = load %struct.bz_stream*, %struct.bz_stream** %2635, align 8
  %2637 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2636, i32 0, i32 0
  %2638 = load i8*, i8** %2637, align 8
  %2639 = getelementptr inbounds i8, i8* %2638, i32 1
  store i8* %2639, i8** %2637, align 8
  %2640 = load %struct.DState*, %struct.DState** %3, align 8
  %2641 = getelementptr inbounds %struct.DState, %struct.DState* %2640, i32 0, i32 0
  %2642 = load %struct.bz_stream*, %struct.bz_stream** %2641, align 8
  %2643 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2642, i32 0, i32 1
  %2644 = load i32, i32* %2643, align 8
  %2645 = add i32 %2644, -1
  store i32 %2645, i32* %2643, align 8
  %2646 = load %struct.DState*, %struct.DState** %3, align 8
  %2647 = getelementptr inbounds %struct.DState, %struct.DState* %2646, i32 0, i32 0
  %2648 = load %struct.bz_stream*, %struct.bz_stream** %2647, align 8
  %2649 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2648, i32 0, i32 2
  %2650 = load i32, i32* %2649, align 4
  %2651 = add i32 %2650, 1
  store i32 %2651, i32* %2649, align 4
  %2652 = load %struct.DState*, %struct.DState** %3, align 8
  %2653 = getelementptr inbounds %struct.DState, %struct.DState* %2652, i32 0, i32 0
  %2654 = load %struct.bz_stream*, %struct.bz_stream** %2653, align 8
  %2655 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2654, i32 0, i32 2
  %2656 = load i32, i32* %2655, align 4
  %2657 = icmp eq i32 %2656, 0
  br i1 %2657, label %2658, label %2665

; <label>:2658:                                   ; preds = %2615
  %2659 = load %struct.DState*, %struct.DState** %3, align 8
  %2660 = getelementptr inbounds %struct.DState, %struct.DState* %2659, i32 0, i32 0
  %2661 = load %struct.bz_stream*, %struct.bz_stream** %2660, align 8
  %2662 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2661, i32 0, i32 3
  %2663 = load i32, i32* %2662, align 8
  %2664 = add i32 %2663, 1
  store i32 %2664, i32* %2662, align 8
  br label %2665

; <label>:2665:                                   ; preds = %2658, %2615
  br label %2587

; <label>:2666:                                   ; preds = %2592
  store i32 0, i32* %9, align 4
  br label %2667

; <label>:2667:                                   ; preds = %2874, %2666
  %2668 = load i32, i32* %9, align 4
  %2669 = load i32, i32* %12, align 4
  %2670 = icmp slt i32 %2668, %2669
  br i1 %2670, label %2671, label %2877

; <label>:2671:                                   ; preds = %2667
  br label %2672

; <label>:2672:                                   ; preds = %2671, %2862
  %2673 = load i32, i32* %23, align 4
  %2674 = icmp slt i32 %2673, 1
  br i1 %2674, label %2678, label %2675

; <label>:2675:                                   ; preds = %2672
  %2676 = load i32, i32* %23, align 4
  %2677 = icmp sgt i32 %2676, 20
  br i1 %2677, label %2678, label %2679

; <label>:2678:                                   ; preds = %2675, %2672
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:2679:                                   ; preds = %2675
  br label %2680

; <label>:2680:                                   ; preds = %145, %2679
  %2681 = load %struct.DState*, %struct.DState** %3, align 8
  %2682 = getelementptr inbounds %struct.DState, %struct.DState* %2681, i32 0, i32 1
  store i32 34, i32* %2682, align 8
  br label %2683

; <label>:2683:                                   ; preds = %2680, %2762
  %2684 = load %struct.DState*, %struct.DState** %3, align 8
  %2685 = getelementptr inbounds %struct.DState, %struct.DState* %2684, i32 0, i32 8
  %2686 = load i32, i32* %2685, align 4
  %2687 = icmp sge i32 %2686, 1
  br i1 %2687, label %2688, label %2704

; <label>:2688:                                   ; preds = %2683
  %2689 = load %struct.DState*, %struct.DState** %3, align 8
  %2690 = getelementptr inbounds %struct.DState, %struct.DState* %2689, i32 0, i32 7
  %2691 = load i32, i32* %2690, align 8
  %2692 = load %struct.DState*, %struct.DState** %3, align 8
  %2693 = getelementptr inbounds %struct.DState, %struct.DState* %2692, i32 0, i32 8
  %2694 = load i32, i32* %2693, align 4
  %2695 = sub nsw i32 %2694, 1
  %2696 = lshr i32 %2691, %2695
  %2697 = and i32 %2696, 1
  store i32 %2697, i32* %60, align 4
  %2698 = load %struct.DState*, %struct.DState** %3, align 8
  %2699 = getelementptr inbounds %struct.DState, %struct.DState* %2698, i32 0, i32 8
  %2700 = load i32, i32* %2699, align 4
  %2701 = sub nsw i32 %2700, 1
  store i32 %2701, i32* %2699, align 4
  %2702 = load i32, i32* %60, align 4
  %2703 = trunc i32 %2702 to i8
  store i8 %2703, i8* %4, align 1
  br label %2763

; <label>:2704:                                   ; preds = %2683
  %2705 = load %struct.DState*, %struct.DState** %3, align 8
  %2706 = getelementptr inbounds %struct.DState, %struct.DState* %2705, i32 0, i32 0
  %2707 = load %struct.bz_stream*, %struct.bz_stream** %2706, align 8
  %2708 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2707, i32 0, i32 1
  %2709 = load i32, i32* %2708, align 8
  %2710 = icmp eq i32 %2709, 0
  br i1 %2710, label %2711, label %2712

; <label>:2711:                                   ; preds = %2704
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2712:                                   ; preds = %2704
  %2713 = load %struct.DState*, %struct.DState** %3, align 8
  %2714 = getelementptr inbounds %struct.DState, %struct.DState* %2713, i32 0, i32 7
  %2715 = load i32, i32* %2714, align 8
  %2716 = shl i32 %2715, 8
  %2717 = load %struct.DState*, %struct.DState** %3, align 8
  %2718 = getelementptr inbounds %struct.DState, %struct.DState* %2717, i32 0, i32 0
  %2719 = load %struct.bz_stream*, %struct.bz_stream** %2718, align 8
  %2720 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2719, i32 0, i32 0
  %2721 = load i8*, i8** %2720, align 8
  %2722 = load i8, i8* %2721, align 1
  %2723 = zext i8 %2722 to i32
  %2724 = or i32 %2716, %2723
  %2725 = load %struct.DState*, %struct.DState** %3, align 8
  %2726 = getelementptr inbounds %struct.DState, %struct.DState* %2725, i32 0, i32 7
  store i32 %2724, i32* %2726, align 8
  %2727 = load %struct.DState*, %struct.DState** %3, align 8
  %2728 = getelementptr inbounds %struct.DState, %struct.DState* %2727, i32 0, i32 8
  %2729 = load i32, i32* %2728, align 4
  %2730 = add nsw i32 %2729, 8
  store i32 %2730, i32* %2728, align 4
  %2731 = load %struct.DState*, %struct.DState** %3, align 8
  %2732 = getelementptr inbounds %struct.DState, %struct.DState* %2731, i32 0, i32 0
  %2733 = load %struct.bz_stream*, %struct.bz_stream** %2732, align 8
  %2734 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2733, i32 0, i32 0
  %2735 = load i8*, i8** %2734, align 8
  %2736 = getelementptr inbounds i8, i8* %2735, i32 1
  store i8* %2736, i8** %2734, align 8
  %2737 = load %struct.DState*, %struct.DState** %3, align 8
  %2738 = getelementptr inbounds %struct.DState, %struct.DState* %2737, i32 0, i32 0
  %2739 = load %struct.bz_stream*, %struct.bz_stream** %2738, align 8
  %2740 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2739, i32 0, i32 1
  %2741 = load i32, i32* %2740, align 8
  %2742 = add i32 %2741, -1
  store i32 %2742, i32* %2740, align 8
  %2743 = load %struct.DState*, %struct.DState** %3, align 8
  %2744 = getelementptr inbounds %struct.DState, %struct.DState* %2743, i32 0, i32 0
  %2745 = load %struct.bz_stream*, %struct.bz_stream** %2744, align 8
  %2746 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2745, i32 0, i32 2
  %2747 = load i32, i32* %2746, align 4
  %2748 = add i32 %2747, 1
  store i32 %2748, i32* %2746, align 4
  %2749 = load %struct.DState*, %struct.DState** %3, align 8
  %2750 = getelementptr inbounds %struct.DState, %struct.DState* %2749, i32 0, i32 0
  %2751 = load %struct.bz_stream*, %struct.bz_stream** %2750, align 8
  %2752 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2751, i32 0, i32 2
  %2753 = load i32, i32* %2752, align 4
  %2754 = icmp eq i32 %2753, 0
  br i1 %2754, label %2755, label %2762

; <label>:2755:                                   ; preds = %2712
  %2756 = load %struct.DState*, %struct.DState** %3, align 8
  %2757 = getelementptr inbounds %struct.DState, %struct.DState* %2756, i32 0, i32 0
  %2758 = load %struct.bz_stream*, %struct.bz_stream** %2757, align 8
  %2759 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2758, i32 0, i32 3
  %2760 = load i32, i32* %2759, align 8
  %2761 = add i32 %2760, 1
  store i32 %2761, i32* %2759, align 8
  br label %2762

; <label>:2762:                                   ; preds = %2755, %2712
  br label %2683

; <label>:2763:                                   ; preds = %2688
  %2764 = load i8, i8* %4, align 1
  %2765 = zext i8 %2764 to i32
  %2766 = icmp eq i32 %2765, 0
  br i1 %2766, label %2767, label %2768

; <label>:2767:                                   ; preds = %2763
  br label %2863

; <label>:2768:                                   ; preds = %2763
  br label %2769

; <label>:2769:                                   ; preds = %145, %2768
  %2770 = load %struct.DState*, %struct.DState** %3, align 8
  %2771 = getelementptr inbounds %struct.DState, %struct.DState* %2770, i32 0, i32 1
  store i32 35, i32* %2771, align 8
  br label %2772

; <label>:2772:                                   ; preds = %2769, %2851
  %2773 = load %struct.DState*, %struct.DState** %3, align 8
  %2774 = getelementptr inbounds %struct.DState, %struct.DState* %2773, i32 0, i32 8
  %2775 = load i32, i32* %2774, align 4
  %2776 = icmp sge i32 %2775, 1
  br i1 %2776, label %2777, label %2793

; <label>:2777:                                   ; preds = %2772
  %2778 = load %struct.DState*, %struct.DState** %3, align 8
  %2779 = getelementptr inbounds %struct.DState, %struct.DState* %2778, i32 0, i32 7
  %2780 = load i32, i32* %2779, align 8
  %2781 = load %struct.DState*, %struct.DState** %3, align 8
  %2782 = getelementptr inbounds %struct.DState, %struct.DState* %2781, i32 0, i32 8
  %2783 = load i32, i32* %2782, align 4
  %2784 = sub nsw i32 %2783, 1
  %2785 = lshr i32 %2780, %2784
  %2786 = and i32 %2785, 1
  store i32 %2786, i32* %61, align 4
  %2787 = load %struct.DState*, %struct.DState** %3, align 8
  %2788 = getelementptr inbounds %struct.DState, %struct.DState* %2787, i32 0, i32 8
  %2789 = load i32, i32* %2788, align 4
  %2790 = sub nsw i32 %2789, 1
  store i32 %2790, i32* %2788, align 4
  %2791 = load i32, i32* %61, align 4
  %2792 = trunc i32 %2791 to i8
  store i8 %2792, i8* %4, align 1
  br label %2852

; <label>:2793:                                   ; preds = %2772
  %2794 = load %struct.DState*, %struct.DState** %3, align 8
  %2795 = getelementptr inbounds %struct.DState, %struct.DState* %2794, i32 0, i32 0
  %2796 = load %struct.bz_stream*, %struct.bz_stream** %2795, align 8
  %2797 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2796, i32 0, i32 1
  %2798 = load i32, i32* %2797, align 8
  %2799 = icmp eq i32 %2798, 0
  br i1 %2799, label %2800, label %2801

; <label>:2800:                                   ; preds = %2793
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:2801:                                   ; preds = %2793
  %2802 = load %struct.DState*, %struct.DState** %3, align 8
  %2803 = getelementptr inbounds %struct.DState, %struct.DState* %2802, i32 0, i32 7
  %2804 = load i32, i32* %2803, align 8
  %2805 = shl i32 %2804, 8
  %2806 = load %struct.DState*, %struct.DState** %3, align 8
  %2807 = getelementptr inbounds %struct.DState, %struct.DState* %2806, i32 0, i32 0
  %2808 = load %struct.bz_stream*, %struct.bz_stream** %2807, align 8
  %2809 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2808, i32 0, i32 0
  %2810 = load i8*, i8** %2809, align 8
  %2811 = load i8, i8* %2810, align 1
  %2812 = zext i8 %2811 to i32
  %2813 = or i32 %2805, %2812
  %2814 = load %struct.DState*, %struct.DState** %3, align 8
  %2815 = getelementptr inbounds %struct.DState, %struct.DState* %2814, i32 0, i32 7
  store i32 %2813, i32* %2815, align 8
  %2816 = load %struct.DState*, %struct.DState** %3, align 8
  %2817 = getelementptr inbounds %struct.DState, %struct.DState* %2816, i32 0, i32 8
  %2818 = load i32, i32* %2817, align 4
  %2819 = add nsw i32 %2818, 8
  store i32 %2819, i32* %2817, align 4
  %2820 = load %struct.DState*, %struct.DState** %3, align 8
  %2821 = getelementptr inbounds %struct.DState, %struct.DState* %2820, i32 0, i32 0
  %2822 = load %struct.bz_stream*, %struct.bz_stream** %2821, align 8
  %2823 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2822, i32 0, i32 0
  %2824 = load i8*, i8** %2823, align 8
  %2825 = getelementptr inbounds i8, i8* %2824, i32 1
  store i8* %2825, i8** %2823, align 8
  %2826 = load %struct.DState*, %struct.DState** %3, align 8
  %2827 = getelementptr inbounds %struct.DState, %struct.DState* %2826, i32 0, i32 0
  %2828 = load %struct.bz_stream*, %struct.bz_stream** %2827, align 8
  %2829 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2828, i32 0, i32 1
  %2830 = load i32, i32* %2829, align 8
  %2831 = add i32 %2830, -1
  store i32 %2831, i32* %2829, align 8
  %2832 = load %struct.DState*, %struct.DState** %3, align 8
  %2833 = getelementptr inbounds %struct.DState, %struct.DState* %2832, i32 0, i32 0
  %2834 = load %struct.bz_stream*, %struct.bz_stream** %2833, align 8
  %2835 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2834, i32 0, i32 2
  %2836 = load i32, i32* %2835, align 4
  %2837 = add i32 %2836, 1
  store i32 %2837, i32* %2835, align 4
  %2838 = load %struct.DState*, %struct.DState** %3, align 8
  %2839 = getelementptr inbounds %struct.DState, %struct.DState* %2838, i32 0, i32 0
  %2840 = load %struct.bz_stream*, %struct.bz_stream** %2839, align 8
  %2841 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2840, i32 0, i32 2
  %2842 = load i32, i32* %2841, align 4
  %2843 = icmp eq i32 %2842, 0
  br i1 %2843, label %2844, label %2851

; <label>:2844:                                   ; preds = %2801
  %2845 = load %struct.DState*, %struct.DState** %3, align 8
  %2846 = getelementptr inbounds %struct.DState, %struct.DState* %2845, i32 0, i32 0
  %2847 = load %struct.bz_stream*, %struct.bz_stream** %2846, align 8
  %2848 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %2847, i32 0, i32 3
  %2849 = load i32, i32* %2848, align 8
  %2850 = add i32 %2849, 1
  store i32 %2850, i32* %2848, align 8
  br label %2851

; <label>:2851:                                   ; preds = %2844, %2801
  br label %2772

; <label>:2852:                                   ; preds = %2777
  %2853 = load i8, i8* %4, align 1
  %2854 = zext i8 %2853 to i32
  %2855 = icmp eq i32 %2854, 0
  br i1 %2855, label %2856, label %2859

; <label>:2856:                                   ; preds = %2852
  %2857 = load i32, i32* %23, align 4
  %2858 = add nsw i32 %2857, 1
  store i32 %2858, i32* %23, align 4
  br label %2862

; <label>:2859:                                   ; preds = %2852
  %2860 = load i32, i32* %23, align 4
  %2861 = add nsw i32 %2860, -1
  store i32 %2861, i32* %23, align 4
  br label %2862

; <label>:2862:                                   ; preds = %2859, %2856
  br label %2672

; <label>:2863:                                   ; preds = %2767
  %2864 = load i32, i32* %23, align 4
  %2865 = trunc i32 %2864 to i8
  %2866 = load %struct.DState*, %struct.DState** %3, align 8
  %2867 = getelementptr inbounds %struct.DState, %struct.DState* %2866, i32 0, i32 35
  %2868 = load i32, i32* %11, align 4
  %2869 = sext i32 %2868 to i64
  %2870 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2867, i64 0, i64 %2869
  %2871 = load i32, i32* %9, align 4
  %2872 = sext i32 %2871 to i64
  %2873 = getelementptr inbounds [258 x i8], [258 x i8]* %2870, i64 0, i64 %2872
  store i8 %2865, i8* %2873, align 1
  br label %2874

; <label>:2874:                                   ; preds = %2863
  %2875 = load i32, i32* %9, align 4
  %2876 = add nsw i32 %2875, 1
  store i32 %2876, i32* %9, align 4
  br label %2667

; <label>:2877:                                   ; preds = %2667
  br label %2878

; <label>:2878:                                   ; preds = %2877
  %2879 = load i32, i32* %11, align 4
  %2880 = add nsw i32 %2879, 1
  store i32 %2880, i32* %11, align 4
  br label %2579

; <label>:2881:                                   ; preds = %2579
  store i32 0, i32* %11, align 4
  br label %2882

; <label>:2882:                                   ; preds = %2977, %2881
  %2883 = load i32, i32* %11, align 4
  %2884 = load i32, i32* %13, align 4
  %2885 = icmp slt i32 %2883, %2884
  br i1 %2885, label %2886, label %2980

; <label>:2886:                                   ; preds = %2882
  store i32 32, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %2887

; <label>:2887:                                   ; preds = %2940, %2886
  %2888 = load i32, i32* %9, align 4
  %2889 = load i32, i32* %12, align 4
  %2890 = icmp slt i32 %2888, %2889
  br i1 %2890, label %2891, label %2943

; <label>:2891:                                   ; preds = %2887
  %2892 = load %struct.DState*, %struct.DState** %3, align 8
  %2893 = getelementptr inbounds %struct.DState, %struct.DState* %2892, i32 0, i32 35
  %2894 = load i32, i32* %11, align 4
  %2895 = sext i32 %2894 to i64
  %2896 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2893, i64 0, i64 %2895
  %2897 = load i32, i32* %9, align 4
  %2898 = sext i32 %2897 to i64
  %2899 = getelementptr inbounds [258 x i8], [258 x i8]* %2896, i64 0, i64 %2898
  %2900 = load i8, i8* %2899, align 1
  %2901 = zext i8 %2900 to i32
  %2902 = load i32, i32* %7, align 4
  %2903 = icmp sgt i32 %2901, %2902
  br i1 %2903, label %2904, label %2915

; <label>:2904:                                   ; preds = %2891
  %2905 = load %struct.DState*, %struct.DState** %3, align 8
  %2906 = getelementptr inbounds %struct.DState, %struct.DState* %2905, i32 0, i32 35
  %2907 = load i32, i32* %11, align 4
  %2908 = sext i32 %2907 to i64
  %2909 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2906, i64 0, i64 %2908
  %2910 = load i32, i32* %9, align 4
  %2911 = sext i32 %2910 to i64
  %2912 = getelementptr inbounds [258 x i8], [258 x i8]* %2909, i64 0, i64 %2911
  %2913 = load i8, i8* %2912, align 1
  %2914 = zext i8 %2913 to i32
  store i32 %2914, i32* %7, align 4
  br label %2915

; <label>:2915:                                   ; preds = %2904, %2891
  %2916 = load %struct.DState*, %struct.DState** %3, align 8
  %2917 = getelementptr inbounds %struct.DState, %struct.DState* %2916, i32 0, i32 35
  %2918 = load i32, i32* %11, align 4
  %2919 = sext i32 %2918 to i64
  %2920 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2917, i64 0, i64 %2919
  %2921 = load i32, i32* %9, align 4
  %2922 = sext i32 %2921 to i64
  %2923 = getelementptr inbounds [258 x i8], [258 x i8]* %2920, i64 0, i64 %2922
  %2924 = load i8, i8* %2923, align 1
  %2925 = zext i8 %2924 to i32
  %2926 = load i32, i32* %6, align 4
  %2927 = icmp slt i32 %2925, %2926
  br i1 %2927, label %2928, label %2939

; <label>:2928:                                   ; preds = %2915
  %2929 = load %struct.DState*, %struct.DState** %3, align 8
  %2930 = getelementptr inbounds %struct.DState, %struct.DState* %2929, i32 0, i32 35
  %2931 = load i32, i32* %11, align 4
  %2932 = sext i32 %2931 to i64
  %2933 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2930, i64 0, i64 %2932
  %2934 = load i32, i32* %9, align 4
  %2935 = sext i32 %2934 to i64
  %2936 = getelementptr inbounds [258 x i8], [258 x i8]* %2933, i64 0, i64 %2935
  %2937 = load i8, i8* %2936, align 1
  %2938 = zext i8 %2937 to i32
  store i32 %2938, i32* %6, align 4
  br label %2939

; <label>:2939:                                   ; preds = %2928, %2915
  br label %2940

; <label>:2940:                                   ; preds = %2939
  %2941 = load i32, i32* %9, align 4
  %2942 = add nsw i32 %2941, 1
  store i32 %2942, i32* %9, align 4
  br label %2887

; <label>:2943:                                   ; preds = %2887
  %2944 = load %struct.DState*, %struct.DState** %3, align 8
  %2945 = getelementptr inbounds %struct.DState, %struct.DState* %2944, i32 0, i32 36
  %2946 = load i32, i32* %11, align 4
  %2947 = sext i32 %2946 to i64
  %2948 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %2945, i64 0, i64 %2947
  %2949 = getelementptr inbounds [258 x i32], [258 x i32]* %2948, i64 0, i64 0
  %2950 = load %struct.DState*, %struct.DState** %3, align 8
  %2951 = getelementptr inbounds %struct.DState, %struct.DState* %2950, i32 0, i32 37
  %2952 = load i32, i32* %11, align 4
  %2953 = sext i32 %2952 to i64
  %2954 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %2951, i64 0, i64 %2953
  %2955 = getelementptr inbounds [258 x i32], [258 x i32]* %2954, i64 0, i64 0
  %2956 = load %struct.DState*, %struct.DState** %3, align 8
  %2957 = getelementptr inbounds %struct.DState, %struct.DState* %2956, i32 0, i32 38
  %2958 = load i32, i32* %11, align 4
  %2959 = sext i32 %2958 to i64
  %2960 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %2957, i64 0, i64 %2959
  %2961 = getelementptr inbounds [258 x i32], [258 x i32]* %2960, i64 0, i64 0
  %2962 = load %struct.DState*, %struct.DState** %3, align 8
  %2963 = getelementptr inbounds %struct.DState, %struct.DState* %2962, i32 0, i32 35
  %2964 = load i32, i32* %11, align 4
  %2965 = sext i32 %2964 to i64
  %2966 = getelementptr inbounds [6 x [258 x i8]], [6 x [258 x i8]]* %2963, i64 0, i64 %2965
  %2967 = getelementptr inbounds [258 x i8], [258 x i8]* %2966, i64 0, i64 0
  %2968 = load i32, i32* %6, align 4
  %2969 = load i32, i32* %7, align 4
  %2970 = load i32, i32* %12, align 4
  call void @BZ2_hbCreateDecodeTables(i32* %2949, i32* %2955, i32* %2961, i8* %2967, i32 %2968, i32 %2969, i32 %2970)
  %2971 = load i32, i32* %6, align 4
  %2972 = load %struct.DState*, %struct.DState** %3, align 8
  %2973 = getelementptr inbounds %struct.DState, %struct.DState* %2972, i32 0, i32 39
  %2974 = load i32, i32* %11, align 4
  %2975 = sext i32 %2974 to i64
  %2976 = getelementptr inbounds [6 x i32], [6 x i32]* %2973, i64 0, i64 %2975
  store i32 %2971, i32* %2976, align 4
  br label %2977

; <label>:2977:                                   ; preds = %2943
  %2978 = load i32, i32* %11, align 4
  %2979 = add nsw i32 %2978, 1
  store i32 %2979, i32* %11, align 4
  br label %2882

; <label>:2980:                                   ; preds = %2882
  %2981 = load %struct.DState*, %struct.DState** %3, align 8
  %2982 = getelementptr inbounds %struct.DState, %struct.DState* %2981, i32 0, i32 27
  %2983 = load i32, i32* %2982, align 8
  %2984 = add nsw i32 %2983, 1
  store i32 %2984, i32* %15, align 4
  %2985 = load %struct.DState*, %struct.DState** %3, align 8
  %2986 = getelementptr inbounds %struct.DState, %struct.DState* %2985, i32 0, i32 9
  %2987 = load i32, i32* %2986, align 8
  %2988 = mul nsw i32 100000, %2987
  store i32 %2988, i32* %19, align 4
  store i32 -1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %9, align 4
  br label %2989

; <label>:2989:                                   ; preds = %2998, %2980
  %2990 = load i32, i32* %9, align 4
  %2991 = icmp sle i32 %2990, 255
  br i1 %2991, label %2992, label %3001

; <label>:2992:                                   ; preds = %2989
  %2993 = load %struct.DState*, %struct.DState** %3, align 8
  %2994 = getelementptr inbounds %struct.DState, %struct.DState* %2993, i32 0, i32 16
  %2995 = load i32, i32* %9, align 4
  %2996 = sext i32 %2995 to i64
  %2997 = getelementptr inbounds [256 x i32], [256 x i32]* %2994, i64 0, i64 %2996
  store i32 0, i32* %2997, align 4
  br label %2998

; <label>:2998:                                   ; preds = %2992
  %2999 = load i32, i32* %9, align 4
  %3000 = add nsw i32 %2999, 1
  store i32 %3000, i32* %9, align 4
  br label %2989

; <label>:3001:                                   ; preds = %2989
  store i32 4095, i32* %64, align 4
  store i32 15, i32* %62, align 4
  br label %3002

; <label>:3002:                                   ; preds = %3033, %3001
  %3003 = load i32, i32* %62, align 4
  %3004 = icmp sge i32 %3003, 0
  br i1 %3004, label %3005, label %3036

; <label>:3005:                                   ; preds = %3002
  store i32 15, i32* %63, align 4
  br label %3006

; <label>:3006:                                   ; preds = %3022, %3005
  %3007 = load i32, i32* %63, align 4
  %3008 = icmp sge i32 %3007, 0
  br i1 %3008, label %3009, label %3025

; <label>:3009:                                   ; preds = %3006
  %3010 = load i32, i32* %62, align 4
  %3011 = mul nsw i32 %3010, 16
  %3012 = load i32, i32* %63, align 4
  %3013 = add nsw i32 %3011, %3012
  %3014 = trunc i32 %3013 to i8
  %3015 = load %struct.DState*, %struct.DState** %3, align 8
  %3016 = getelementptr inbounds %struct.DState, %struct.DState* %3015, i32 0, i32 31
  %3017 = load i32, i32* %64, align 4
  %3018 = sext i32 %3017 to i64
  %3019 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3016, i64 0, i64 %3018
  store i8 %3014, i8* %3019, align 1
  %3020 = load i32, i32* %64, align 4
  %3021 = add nsw i32 %3020, -1
  store i32 %3021, i32* %64, align 4
  br label %3022

; <label>:3022:                                   ; preds = %3009
  %3023 = load i32, i32* %63, align 4
  %3024 = add nsw i32 %3023, -1
  store i32 %3024, i32* %63, align 4
  br label %3006

; <label>:3025:                                   ; preds = %3006
  %3026 = load i32, i32* %64, align 4
  %3027 = add nsw i32 %3026, 1
  %3028 = load %struct.DState*, %struct.DState** %3, align 8
  %3029 = getelementptr inbounds %struct.DState, %struct.DState* %3028, i32 0, i32 32
  %3030 = load i32, i32* %62, align 4
  %3031 = sext i32 %3030 to i64
  %3032 = getelementptr inbounds [16 x i32], [16 x i32]* %3029, i64 0, i64 %3031
  store i32 %3027, i32* %3032, align 4
  br label %3033

; <label>:3033:                                   ; preds = %3025
  %3034 = load i32, i32* %62, align 4
  %3035 = add nsw i32 %3034, -1
  store i32 %3035, i32* %62, align 4
  br label %3002

; <label>:3036:                                   ; preds = %3002
  store i32 0, i32* %20, align 4
  %3037 = load i32, i32* %17, align 4
  %3038 = icmp eq i32 %3037, 0
  br i1 %3038, label %3039, label %3078

; <label>:3039:                                   ; preds = %3036
  %3040 = load i32, i32* %16, align 4
  %3041 = add nsw i32 %3040, 1
  store i32 %3041, i32* %16, align 4
  %3042 = load i32, i32* %16, align 4
  %3043 = load i32, i32* %14, align 4
  %3044 = icmp sge i32 %3042, %3043
  br i1 %3044, label %3045, label %3046

; <label>:3045:                                   ; preds = %3039
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3046:                                   ; preds = %3039
  store i32 50, i32* %17, align 4
  %3047 = load %struct.DState*, %struct.DState** %3, align 8
  %3048 = getelementptr inbounds %struct.DState, %struct.DState* %3047, i32 0, i32 33
  %3049 = load i32, i32* %16, align 4
  %3050 = sext i32 %3049 to i64
  %3051 = getelementptr inbounds [18002 x i8], [18002 x i8]* %3048, i64 0, i64 %3050
  %3052 = load i8, i8* %3051, align 1
  %3053 = zext i8 %3052 to i32
  store i32 %3053, i32* %28, align 4
  %3054 = load %struct.DState*, %struct.DState** %3, align 8
  %3055 = getelementptr inbounds %struct.DState, %struct.DState* %3054, i32 0, i32 39
  %3056 = load i32, i32* %28, align 4
  %3057 = sext i32 %3056 to i64
  %3058 = getelementptr inbounds [6 x i32], [6 x i32]* %3055, i64 0, i64 %3057
  %3059 = load i32, i32* %3058, align 4
  store i32 %3059, i32* %29, align 4
  %3060 = load %struct.DState*, %struct.DState** %3, align 8
  %3061 = getelementptr inbounds %struct.DState, %struct.DState* %3060, i32 0, i32 36
  %3062 = load i32, i32* %28, align 4
  %3063 = sext i32 %3062 to i64
  %3064 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3061, i64 0, i64 %3063
  %3065 = getelementptr inbounds [258 x i32], [258 x i32]* %3064, i64 0, i64 0
  store i32* %3065, i32** %30, align 8
  %3066 = load %struct.DState*, %struct.DState** %3, align 8
  %3067 = getelementptr inbounds %struct.DState, %struct.DState* %3066, i32 0, i32 38
  %3068 = load i32, i32* %28, align 4
  %3069 = sext i32 %3068 to i64
  %3070 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3067, i64 0, i64 %3069
  %3071 = getelementptr inbounds [258 x i32], [258 x i32]* %3070, i64 0, i64 0
  store i32* %3071, i32** %32, align 8
  %3072 = load %struct.DState*, %struct.DState** %3, align 8
  %3073 = getelementptr inbounds %struct.DState, %struct.DState* %3072, i32 0, i32 37
  %3074 = load i32, i32* %28, align 4
  %3075 = sext i32 %3074 to i64
  %3076 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3073, i64 0, i64 %3075
  %3077 = getelementptr inbounds [258 x i32], [258 x i32]* %3076, i64 0, i64 0
  store i32* %3077, i32** %31, align 8
  br label %3078

; <label>:3078:                                   ; preds = %3046, %3036
  %3079 = load i32, i32* %17, align 4
  %3080 = add nsw i32 %3079, -1
  store i32 %3080, i32* %17, align 4
  %3081 = load i32, i32* %29, align 4
  store i32 %3081, i32* %25, align 4
  br label %3082

; <label>:3082:                                   ; preds = %145, %3078
  %3083 = load %struct.DState*, %struct.DState** %3, align 8
  %3084 = getelementptr inbounds %struct.DState, %struct.DState* %3083, i32 0, i32 1
  store i32 36, i32* %3084, align 8
  br label %3085

; <label>:3085:                                   ; preds = %3082, %3169
  %3086 = load %struct.DState*, %struct.DState** %3, align 8
  %3087 = getelementptr inbounds %struct.DState, %struct.DState* %3086, i32 0, i32 8
  %3088 = load i32, i32* %3087, align 4
  %3089 = load i32, i32* %25, align 4
  %3090 = icmp sge i32 %3088, %3089
  br i1 %3090, label %3091, label %3111

; <label>:3091:                                   ; preds = %3085
  %3092 = load %struct.DState*, %struct.DState** %3, align 8
  %3093 = getelementptr inbounds %struct.DState, %struct.DState* %3092, i32 0, i32 7
  %3094 = load i32, i32* %3093, align 8
  %3095 = load %struct.DState*, %struct.DState** %3, align 8
  %3096 = getelementptr inbounds %struct.DState, %struct.DState* %3095, i32 0, i32 8
  %3097 = load i32, i32* %3096, align 4
  %3098 = load i32, i32* %25, align 4
  %3099 = sub nsw i32 %3097, %3098
  %3100 = lshr i32 %3094, %3099
  %3101 = load i32, i32* %25, align 4
  %3102 = shl i32 1, %3101
  %3103 = sub nsw i32 %3102, 1
  %3104 = and i32 %3100, %3103
  store i32 %3104, i32* %65, align 4
  %3105 = load i32, i32* %25, align 4
  %3106 = load %struct.DState*, %struct.DState** %3, align 8
  %3107 = getelementptr inbounds %struct.DState, %struct.DState* %3106, i32 0, i32 8
  %3108 = load i32, i32* %3107, align 4
  %3109 = sub nsw i32 %3108, %3105
  store i32 %3109, i32* %3107, align 4
  %3110 = load i32, i32* %65, align 4
  store i32 %3110, i32* %26, align 4
  br label %3170

; <label>:3111:                                   ; preds = %3085
  %3112 = load %struct.DState*, %struct.DState** %3, align 8
  %3113 = getelementptr inbounds %struct.DState, %struct.DState* %3112, i32 0, i32 0
  %3114 = load %struct.bz_stream*, %struct.bz_stream** %3113, align 8
  %3115 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3114, i32 0, i32 1
  %3116 = load i32, i32* %3115, align 8
  %3117 = icmp eq i32 %3116, 0
  br i1 %3117, label %3118, label %3119

; <label>:3118:                                   ; preds = %3111
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:3119:                                   ; preds = %3111
  %3120 = load %struct.DState*, %struct.DState** %3, align 8
  %3121 = getelementptr inbounds %struct.DState, %struct.DState* %3120, i32 0, i32 7
  %3122 = load i32, i32* %3121, align 8
  %3123 = shl i32 %3122, 8
  %3124 = load %struct.DState*, %struct.DState** %3, align 8
  %3125 = getelementptr inbounds %struct.DState, %struct.DState* %3124, i32 0, i32 0
  %3126 = load %struct.bz_stream*, %struct.bz_stream** %3125, align 8
  %3127 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3126, i32 0, i32 0
  %3128 = load i8*, i8** %3127, align 8
  %3129 = load i8, i8* %3128, align 1
  %3130 = zext i8 %3129 to i32
  %3131 = or i32 %3123, %3130
  %3132 = load %struct.DState*, %struct.DState** %3, align 8
  %3133 = getelementptr inbounds %struct.DState, %struct.DState* %3132, i32 0, i32 7
  store i32 %3131, i32* %3133, align 8
  %3134 = load %struct.DState*, %struct.DState** %3, align 8
  %3135 = getelementptr inbounds %struct.DState, %struct.DState* %3134, i32 0, i32 8
  %3136 = load i32, i32* %3135, align 4
  %3137 = add nsw i32 %3136, 8
  store i32 %3137, i32* %3135, align 4
  %3138 = load %struct.DState*, %struct.DState** %3, align 8
  %3139 = getelementptr inbounds %struct.DState, %struct.DState* %3138, i32 0, i32 0
  %3140 = load %struct.bz_stream*, %struct.bz_stream** %3139, align 8
  %3141 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3140, i32 0, i32 0
  %3142 = load i8*, i8** %3141, align 8
  %3143 = getelementptr inbounds i8, i8* %3142, i32 1
  store i8* %3143, i8** %3141, align 8
  %3144 = load %struct.DState*, %struct.DState** %3, align 8
  %3145 = getelementptr inbounds %struct.DState, %struct.DState* %3144, i32 0, i32 0
  %3146 = load %struct.bz_stream*, %struct.bz_stream** %3145, align 8
  %3147 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3146, i32 0, i32 1
  %3148 = load i32, i32* %3147, align 8
  %3149 = add i32 %3148, -1
  store i32 %3149, i32* %3147, align 8
  %3150 = load %struct.DState*, %struct.DState** %3, align 8
  %3151 = getelementptr inbounds %struct.DState, %struct.DState* %3150, i32 0, i32 0
  %3152 = load %struct.bz_stream*, %struct.bz_stream** %3151, align 8
  %3153 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3152, i32 0, i32 2
  %3154 = load i32, i32* %3153, align 4
  %3155 = add i32 %3154, 1
  store i32 %3155, i32* %3153, align 4
  %3156 = load %struct.DState*, %struct.DState** %3, align 8
  %3157 = getelementptr inbounds %struct.DState, %struct.DState* %3156, i32 0, i32 0
  %3158 = load %struct.bz_stream*, %struct.bz_stream** %3157, align 8
  %3159 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3158, i32 0, i32 2
  %3160 = load i32, i32* %3159, align 4
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3162, label %3169

; <label>:3162:                                   ; preds = %3119
  %3163 = load %struct.DState*, %struct.DState** %3, align 8
  %3164 = getelementptr inbounds %struct.DState, %struct.DState* %3163, i32 0, i32 0
  %3165 = load %struct.bz_stream*, %struct.bz_stream** %3164, align 8
  %3166 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3165, i32 0, i32 3
  %3167 = load i32, i32* %3166, align 8
  %3168 = add i32 %3167, 1
  store i32 %3168, i32* %3166, align 8
  br label %3169

; <label>:3169:                                   ; preds = %3162, %3119
  br label %3085

; <label>:3170:                                   ; preds = %3091
  br label %3171

; <label>:3171:                                   ; preds = %3170, %3269
  %3172 = load i32, i32* %25, align 4
  %3173 = icmp sgt i32 %3172, 20
  br i1 %3173, label %3174, label %3175

; <label>:3174:                                   ; preds = %3171
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3175:                                   ; preds = %3171
  %3176 = load i32, i32* %26, align 4
  %3177 = load i32*, i32** %30, align 8
  %3178 = load i32, i32* %25, align 4
  %3179 = sext i32 %3178 to i64
  %3180 = getelementptr inbounds i32, i32* %3177, i64 %3179
  %3181 = load i32, i32* %3180, align 4
  %3182 = icmp sle i32 %3176, %3181
  br i1 %3182, label %3183, label %3184

; <label>:3183:                                   ; preds = %3175
  br label %3274

; <label>:3184:                                   ; preds = %3175
  %3185 = load i32, i32* %25, align 4
  %3186 = add nsw i32 %3185, 1
  store i32 %3186, i32* %25, align 4
  br label %3187

; <label>:3187:                                   ; preds = %145, %3184
  %3188 = load %struct.DState*, %struct.DState** %3, align 8
  %3189 = getelementptr inbounds %struct.DState, %struct.DState* %3188, i32 0, i32 1
  store i32 37, i32* %3189, align 8
  br label %3190

; <label>:3190:                                   ; preds = %3187, %3268
  %3191 = load %struct.DState*, %struct.DState** %3, align 8
  %3192 = getelementptr inbounds %struct.DState, %struct.DState* %3191, i32 0, i32 8
  %3193 = load i32, i32* %3192, align 4
  %3194 = icmp sge i32 %3193, 1
  br i1 %3194, label %3195, label %3210

; <label>:3195:                                   ; preds = %3190
  %3196 = load %struct.DState*, %struct.DState** %3, align 8
  %3197 = getelementptr inbounds %struct.DState, %struct.DState* %3196, i32 0, i32 7
  %3198 = load i32, i32* %3197, align 8
  %3199 = load %struct.DState*, %struct.DState** %3, align 8
  %3200 = getelementptr inbounds %struct.DState, %struct.DState* %3199, i32 0, i32 8
  %3201 = load i32, i32* %3200, align 4
  %3202 = sub nsw i32 %3201, 1
  %3203 = lshr i32 %3198, %3202
  %3204 = and i32 %3203, 1
  store i32 %3204, i32* %66, align 4
  %3205 = load %struct.DState*, %struct.DState** %3, align 8
  %3206 = getelementptr inbounds %struct.DState, %struct.DState* %3205, i32 0, i32 8
  %3207 = load i32, i32* %3206, align 4
  %3208 = sub nsw i32 %3207, 1
  store i32 %3208, i32* %3206, align 4
  %3209 = load i32, i32* %66, align 4
  store i32 %3209, i32* %27, align 4
  br label %3269

; <label>:3210:                                   ; preds = %3190
  %3211 = load %struct.DState*, %struct.DState** %3, align 8
  %3212 = getelementptr inbounds %struct.DState, %struct.DState* %3211, i32 0, i32 0
  %3213 = load %struct.bz_stream*, %struct.bz_stream** %3212, align 8
  %3214 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3213, i32 0, i32 1
  %3215 = load i32, i32* %3214, align 8
  %3216 = icmp eq i32 %3215, 0
  br i1 %3216, label %3217, label %3218

; <label>:3217:                                   ; preds = %3210
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:3218:                                   ; preds = %3210
  %3219 = load %struct.DState*, %struct.DState** %3, align 8
  %3220 = getelementptr inbounds %struct.DState, %struct.DState* %3219, i32 0, i32 7
  %3221 = load i32, i32* %3220, align 8
  %3222 = shl i32 %3221, 8
  %3223 = load %struct.DState*, %struct.DState** %3, align 8
  %3224 = getelementptr inbounds %struct.DState, %struct.DState* %3223, i32 0, i32 0
  %3225 = load %struct.bz_stream*, %struct.bz_stream** %3224, align 8
  %3226 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3225, i32 0, i32 0
  %3227 = load i8*, i8** %3226, align 8
  %3228 = load i8, i8* %3227, align 1
  %3229 = zext i8 %3228 to i32
  %3230 = or i32 %3222, %3229
  %3231 = load %struct.DState*, %struct.DState** %3, align 8
  %3232 = getelementptr inbounds %struct.DState, %struct.DState* %3231, i32 0, i32 7
  store i32 %3230, i32* %3232, align 8
  %3233 = load %struct.DState*, %struct.DState** %3, align 8
  %3234 = getelementptr inbounds %struct.DState, %struct.DState* %3233, i32 0, i32 8
  %3235 = load i32, i32* %3234, align 4
  %3236 = add nsw i32 %3235, 8
  store i32 %3236, i32* %3234, align 4
  %3237 = load %struct.DState*, %struct.DState** %3, align 8
  %3238 = getelementptr inbounds %struct.DState, %struct.DState* %3237, i32 0, i32 0
  %3239 = load %struct.bz_stream*, %struct.bz_stream** %3238, align 8
  %3240 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3239, i32 0, i32 0
  %3241 = load i8*, i8** %3240, align 8
  %3242 = getelementptr inbounds i8, i8* %3241, i32 1
  store i8* %3242, i8** %3240, align 8
  %3243 = load %struct.DState*, %struct.DState** %3, align 8
  %3244 = getelementptr inbounds %struct.DState, %struct.DState* %3243, i32 0, i32 0
  %3245 = load %struct.bz_stream*, %struct.bz_stream** %3244, align 8
  %3246 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3245, i32 0, i32 1
  %3247 = load i32, i32* %3246, align 8
  %3248 = add i32 %3247, -1
  store i32 %3248, i32* %3246, align 8
  %3249 = load %struct.DState*, %struct.DState** %3, align 8
  %3250 = getelementptr inbounds %struct.DState, %struct.DState* %3249, i32 0, i32 0
  %3251 = load %struct.bz_stream*, %struct.bz_stream** %3250, align 8
  %3252 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3251, i32 0, i32 2
  %3253 = load i32, i32* %3252, align 4
  %3254 = add i32 %3253, 1
  store i32 %3254, i32* %3252, align 4
  %3255 = load %struct.DState*, %struct.DState** %3, align 8
  %3256 = getelementptr inbounds %struct.DState, %struct.DState* %3255, i32 0, i32 0
  %3257 = load %struct.bz_stream*, %struct.bz_stream** %3256, align 8
  %3258 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3257, i32 0, i32 2
  %3259 = load i32, i32* %3258, align 4
  %3260 = icmp eq i32 %3259, 0
  br i1 %3260, label %3261, label %3268

; <label>:3261:                                   ; preds = %3218
  %3262 = load %struct.DState*, %struct.DState** %3, align 8
  %3263 = getelementptr inbounds %struct.DState, %struct.DState* %3262, i32 0, i32 0
  %3264 = load %struct.bz_stream*, %struct.bz_stream** %3263, align 8
  %3265 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3264, i32 0, i32 3
  %3266 = load i32, i32* %3265, align 8
  %3267 = add i32 %3266, 1
  store i32 %3267, i32* %3265, align 8
  br label %3268

; <label>:3268:                                   ; preds = %3261, %3218
  br label %3190

; <label>:3269:                                   ; preds = %3195
  %3270 = load i32, i32* %26, align 4
  %3271 = shl i32 %3270, 1
  %3272 = load i32, i32* %27, align 4
  %3273 = or i32 %3271, %3272
  store i32 %3273, i32* %26, align 4
  br label %3171

; <label>:3274:                                   ; preds = %3183
  %3275 = load i32, i32* %26, align 4
  %3276 = load i32*, i32** %31, align 8
  %3277 = load i32, i32* %25, align 4
  %3278 = sext i32 %3277 to i64
  %3279 = getelementptr inbounds i32, i32* %3276, i64 %3278
  %3280 = load i32, i32* %3279, align 4
  %3281 = sub nsw i32 %3275, %3280
  %3282 = icmp slt i32 %3281, 0
  br i1 %3282, label %3292, label %3283

; <label>:3283:                                   ; preds = %3274
  %3284 = load i32, i32* %26, align 4
  %3285 = load i32*, i32** %31, align 8
  %3286 = load i32, i32* %25, align 4
  %3287 = sext i32 %3286 to i64
  %3288 = getelementptr inbounds i32, i32* %3285, i64 %3287
  %3289 = load i32, i32* %3288, align 4
  %3290 = sub nsw i32 %3284, %3289
  %3291 = icmp sge i32 %3290, 258
  br i1 %3291, label %3292, label %3293

; <label>:3292:                                   ; preds = %3283, %3274
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3293:                                   ; preds = %3283
  %3294 = load i32*, i32** %32, align 8
  %3295 = load i32, i32* %26, align 4
  %3296 = load i32*, i32** %31, align 8
  %3297 = load i32, i32* %25, align 4
  %3298 = sext i32 %3297 to i64
  %3299 = getelementptr inbounds i32, i32* %3296, i64 %3298
  %3300 = load i32, i32* %3299, align 4
  %3301 = sub nsw i32 %3295, %3300
  %3302 = sext i32 %3301 to i64
  %3303 = getelementptr inbounds i32, i32* %3294, i64 %3302
  %3304 = load i32, i32* %3303, align 4
  store i32 %3304, i32* %18, align 4
  br label %3305

; <label>:3305:                                   ; preds = %3293, %3692, %4263
  %3306 = load i32, i32* %18, align 4
  %3307 = load i32, i32* %15, align 4
  %3308 = icmp eq i32 %3306, %3307
  br i1 %3308, label %3309, label %3310

; <label>:3309:                                   ; preds = %3305
  br label %4275

; <label>:3310:                                   ; preds = %3305
  %3311 = load i32, i32* %18, align 4
  %3312 = icmp eq i32 %3311, 0
  br i1 %3312, label %3316, label %3313

; <label>:3313:                                   ; preds = %3310
  %3314 = load i32, i32* %18, align 4
  %3315 = icmp eq i32 %3314, 1
  br i1 %3315, label %3316, label %3693

; <label>:3316:                                   ; preds = %3313, %3310
  store i32 -1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  br label %3317

; <label>:3317:                                   ; preds = %3615, %3316
  %3318 = load i32, i32* %22, align 4
  %3319 = icmp sge i32 %3318, 2097152
  br i1 %3319, label %3320, label %3321

; <label>:3320:                                   ; preds = %3317
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3321:                                   ; preds = %3317
  %3322 = load i32, i32* %18, align 4
  %3323 = icmp eq i32 %3322, 0
  br i1 %3323, label %3324, label %3329

; <label>:3324:                                   ; preds = %3321
  %3325 = load i32, i32* %21, align 4
  %3326 = load i32, i32* %22, align 4
  %3327 = mul nsw i32 1, %3326
  %3328 = add nsw i32 %3325, %3327
  store i32 %3328, i32* %21, align 4
  br label %3338

; <label>:3329:                                   ; preds = %3321
  %3330 = load i32, i32* %18, align 4
  %3331 = icmp eq i32 %3330, 1
  br i1 %3331, label %3332, label %3337

; <label>:3332:                                   ; preds = %3329
  %3333 = load i32, i32* %21, align 4
  %3334 = load i32, i32* %22, align 4
  %3335 = mul nsw i32 2, %3334
  %3336 = add nsw i32 %3333, %3335
  store i32 %3336, i32* %21, align 4
  br label %3337

; <label>:3337:                                   ; preds = %3332, %3329
  br label %3338

; <label>:3338:                                   ; preds = %3337, %3324
  %3339 = load i32, i32* %22, align 4
  %3340 = mul nsw i32 %3339, 2
  store i32 %3340, i32* %22, align 4
  %3341 = load i32, i32* %17, align 4
  %3342 = icmp eq i32 %3341, 0
  br i1 %3342, label %3343, label %3382

; <label>:3343:                                   ; preds = %3338
  %3344 = load i32, i32* %16, align 4
  %3345 = add nsw i32 %3344, 1
  store i32 %3345, i32* %16, align 4
  %3346 = load i32, i32* %16, align 4
  %3347 = load i32, i32* %14, align 4
  %3348 = icmp sge i32 %3346, %3347
  br i1 %3348, label %3349, label %3350

; <label>:3349:                                   ; preds = %3343
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3350:                                   ; preds = %3343
  store i32 50, i32* %17, align 4
  %3351 = load %struct.DState*, %struct.DState** %3, align 8
  %3352 = getelementptr inbounds %struct.DState, %struct.DState* %3351, i32 0, i32 33
  %3353 = load i32, i32* %16, align 4
  %3354 = sext i32 %3353 to i64
  %3355 = getelementptr inbounds [18002 x i8], [18002 x i8]* %3352, i64 0, i64 %3354
  %3356 = load i8, i8* %3355, align 1
  %3357 = zext i8 %3356 to i32
  store i32 %3357, i32* %28, align 4
  %3358 = load %struct.DState*, %struct.DState** %3, align 8
  %3359 = getelementptr inbounds %struct.DState, %struct.DState* %3358, i32 0, i32 39
  %3360 = load i32, i32* %28, align 4
  %3361 = sext i32 %3360 to i64
  %3362 = getelementptr inbounds [6 x i32], [6 x i32]* %3359, i64 0, i64 %3361
  %3363 = load i32, i32* %3362, align 4
  store i32 %3363, i32* %29, align 4
  %3364 = load %struct.DState*, %struct.DState** %3, align 8
  %3365 = getelementptr inbounds %struct.DState, %struct.DState* %3364, i32 0, i32 36
  %3366 = load i32, i32* %28, align 4
  %3367 = sext i32 %3366 to i64
  %3368 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3365, i64 0, i64 %3367
  %3369 = getelementptr inbounds [258 x i32], [258 x i32]* %3368, i64 0, i64 0
  store i32* %3369, i32** %30, align 8
  %3370 = load %struct.DState*, %struct.DState** %3, align 8
  %3371 = getelementptr inbounds %struct.DState, %struct.DState* %3370, i32 0, i32 38
  %3372 = load i32, i32* %28, align 4
  %3373 = sext i32 %3372 to i64
  %3374 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3371, i64 0, i64 %3373
  %3375 = getelementptr inbounds [258 x i32], [258 x i32]* %3374, i64 0, i64 0
  store i32* %3375, i32** %32, align 8
  %3376 = load %struct.DState*, %struct.DState** %3, align 8
  %3377 = getelementptr inbounds %struct.DState, %struct.DState* %3376, i32 0, i32 37
  %3378 = load i32, i32* %28, align 4
  %3379 = sext i32 %3378 to i64
  %3380 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %3377, i64 0, i64 %3379
  %3381 = getelementptr inbounds [258 x i32], [258 x i32]* %3380, i64 0, i64 0
  store i32* %3381, i32** %31, align 8
  br label %3382

; <label>:3382:                                   ; preds = %3350, %3338
  %3383 = load i32, i32* %17, align 4
  %3384 = add nsw i32 %3383, -1
  store i32 %3384, i32* %17, align 4
  %3385 = load i32, i32* %29, align 4
  store i32 %3385, i32* %25, align 4
  br label %3386

; <label>:3386:                                   ; preds = %145, %3382
  %3387 = load %struct.DState*, %struct.DState** %3, align 8
  %3388 = getelementptr inbounds %struct.DState, %struct.DState* %3387, i32 0, i32 1
  store i32 38, i32* %3388, align 8
  br label %3389

; <label>:3389:                                   ; preds = %3386, %3473
  %3390 = load %struct.DState*, %struct.DState** %3, align 8
  %3391 = getelementptr inbounds %struct.DState, %struct.DState* %3390, i32 0, i32 8
  %3392 = load i32, i32* %3391, align 4
  %3393 = load i32, i32* %25, align 4
  %3394 = icmp sge i32 %3392, %3393
  br i1 %3394, label %3395, label %3415

; <label>:3395:                                   ; preds = %3389
  %3396 = load %struct.DState*, %struct.DState** %3, align 8
  %3397 = getelementptr inbounds %struct.DState, %struct.DState* %3396, i32 0, i32 7
  %3398 = load i32, i32* %3397, align 8
  %3399 = load %struct.DState*, %struct.DState** %3, align 8
  %3400 = getelementptr inbounds %struct.DState, %struct.DState* %3399, i32 0, i32 8
  %3401 = load i32, i32* %3400, align 4
  %3402 = load i32, i32* %25, align 4
  %3403 = sub nsw i32 %3401, %3402
  %3404 = lshr i32 %3398, %3403
  %3405 = load i32, i32* %25, align 4
  %3406 = shl i32 1, %3405
  %3407 = sub nsw i32 %3406, 1
  %3408 = and i32 %3404, %3407
  store i32 %3408, i32* %67, align 4
  %3409 = load i32, i32* %25, align 4
  %3410 = load %struct.DState*, %struct.DState** %3, align 8
  %3411 = getelementptr inbounds %struct.DState, %struct.DState* %3410, i32 0, i32 8
  %3412 = load i32, i32* %3411, align 4
  %3413 = sub nsw i32 %3412, %3409
  store i32 %3413, i32* %3411, align 4
  %3414 = load i32, i32* %67, align 4
  store i32 %3414, i32* %26, align 4
  br label %3474

; <label>:3415:                                   ; preds = %3389
  %3416 = load %struct.DState*, %struct.DState** %3, align 8
  %3417 = getelementptr inbounds %struct.DState, %struct.DState* %3416, i32 0, i32 0
  %3418 = load %struct.bz_stream*, %struct.bz_stream** %3417, align 8
  %3419 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3418, i32 0, i32 1
  %3420 = load i32, i32* %3419, align 8
  %3421 = icmp eq i32 %3420, 0
  br i1 %3421, label %3422, label %3423

; <label>:3422:                                   ; preds = %3415
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:3423:                                   ; preds = %3415
  %3424 = load %struct.DState*, %struct.DState** %3, align 8
  %3425 = getelementptr inbounds %struct.DState, %struct.DState* %3424, i32 0, i32 7
  %3426 = load i32, i32* %3425, align 8
  %3427 = shl i32 %3426, 8
  %3428 = load %struct.DState*, %struct.DState** %3, align 8
  %3429 = getelementptr inbounds %struct.DState, %struct.DState* %3428, i32 0, i32 0
  %3430 = load %struct.bz_stream*, %struct.bz_stream** %3429, align 8
  %3431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3430, i32 0, i32 0
  %3432 = load i8*, i8** %3431, align 8
  %3433 = load i8, i8* %3432, align 1
  %3434 = zext i8 %3433 to i32
  %3435 = or i32 %3427, %3434
  %3436 = load %struct.DState*, %struct.DState** %3, align 8
  %3437 = getelementptr inbounds %struct.DState, %struct.DState* %3436, i32 0, i32 7
  store i32 %3435, i32* %3437, align 8
  %3438 = load %struct.DState*, %struct.DState** %3, align 8
  %3439 = getelementptr inbounds %struct.DState, %struct.DState* %3438, i32 0, i32 8
  %3440 = load i32, i32* %3439, align 4
  %3441 = add nsw i32 %3440, 8
  store i32 %3441, i32* %3439, align 4
  %3442 = load %struct.DState*, %struct.DState** %3, align 8
  %3443 = getelementptr inbounds %struct.DState, %struct.DState* %3442, i32 0, i32 0
  %3444 = load %struct.bz_stream*, %struct.bz_stream** %3443, align 8
  %3445 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3444, i32 0, i32 0
  %3446 = load i8*, i8** %3445, align 8
  %3447 = getelementptr inbounds i8, i8* %3446, i32 1
  store i8* %3447, i8** %3445, align 8
  %3448 = load %struct.DState*, %struct.DState** %3, align 8
  %3449 = getelementptr inbounds %struct.DState, %struct.DState* %3448, i32 0, i32 0
  %3450 = load %struct.bz_stream*, %struct.bz_stream** %3449, align 8
  %3451 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3450, i32 0, i32 1
  %3452 = load i32, i32* %3451, align 8
  %3453 = add i32 %3452, -1
  store i32 %3453, i32* %3451, align 8
  %3454 = load %struct.DState*, %struct.DState** %3, align 8
  %3455 = getelementptr inbounds %struct.DState, %struct.DState* %3454, i32 0, i32 0
  %3456 = load %struct.bz_stream*, %struct.bz_stream** %3455, align 8
  %3457 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3456, i32 0, i32 2
  %3458 = load i32, i32* %3457, align 4
  %3459 = add i32 %3458, 1
  store i32 %3459, i32* %3457, align 4
  %3460 = load %struct.DState*, %struct.DState** %3, align 8
  %3461 = getelementptr inbounds %struct.DState, %struct.DState* %3460, i32 0, i32 0
  %3462 = load %struct.bz_stream*, %struct.bz_stream** %3461, align 8
  %3463 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3462, i32 0, i32 2
  %3464 = load i32, i32* %3463, align 4
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3466, label %3473

; <label>:3466:                                   ; preds = %3423
  %3467 = load %struct.DState*, %struct.DState** %3, align 8
  %3468 = getelementptr inbounds %struct.DState, %struct.DState* %3467, i32 0, i32 0
  %3469 = load %struct.bz_stream*, %struct.bz_stream** %3468, align 8
  %3470 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3469, i32 0, i32 3
  %3471 = load i32, i32* %3470, align 8
  %3472 = add i32 %3471, 1
  store i32 %3472, i32* %3470, align 8
  br label %3473

; <label>:3473:                                   ; preds = %3466, %3423
  br label %3389

; <label>:3474:                                   ; preds = %3395
  br label %3475

; <label>:3475:                                   ; preds = %3474, %3573
  %3476 = load i32, i32* %25, align 4
  %3477 = icmp sgt i32 %3476, 20
  br i1 %3477, label %3478, label %3479

; <label>:3478:                                   ; preds = %3475
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3479:                                   ; preds = %3475
  %3480 = load i32, i32* %26, align 4
  %3481 = load i32*, i32** %30, align 8
  %3482 = load i32, i32* %25, align 4
  %3483 = sext i32 %3482 to i64
  %3484 = getelementptr inbounds i32, i32* %3481, i64 %3483
  %3485 = load i32, i32* %3484, align 4
  %3486 = icmp sle i32 %3480, %3485
  br i1 %3486, label %3487, label %3488

; <label>:3487:                                   ; preds = %3479
  br label %3578

; <label>:3488:                                   ; preds = %3479
  %3489 = load i32, i32* %25, align 4
  %3490 = add nsw i32 %3489, 1
  store i32 %3490, i32* %25, align 4
  br label %3491

; <label>:3491:                                   ; preds = %145, %3488
  %3492 = load %struct.DState*, %struct.DState** %3, align 8
  %3493 = getelementptr inbounds %struct.DState, %struct.DState* %3492, i32 0, i32 1
  store i32 39, i32* %3493, align 8
  br label %3494

; <label>:3494:                                   ; preds = %3491, %3572
  %3495 = load %struct.DState*, %struct.DState** %3, align 8
  %3496 = getelementptr inbounds %struct.DState, %struct.DState* %3495, i32 0, i32 8
  %3497 = load i32, i32* %3496, align 4
  %3498 = icmp sge i32 %3497, 1
  br i1 %3498, label %3499, label %3514

; <label>:3499:                                   ; preds = %3494
  %3500 = load %struct.DState*, %struct.DState** %3, align 8
  %3501 = getelementptr inbounds %struct.DState, %struct.DState* %3500, i32 0, i32 7
  %3502 = load i32, i32* %3501, align 8
  %3503 = load %struct.DState*, %struct.DState** %3, align 8
  %3504 = getelementptr inbounds %struct.DState, %struct.DState* %3503, i32 0, i32 8
  %3505 = load i32, i32* %3504, align 4
  %3506 = sub nsw i32 %3505, 1
  %3507 = lshr i32 %3502, %3506
  %3508 = and i32 %3507, 1
  store i32 %3508, i32* %68, align 4
  %3509 = load %struct.DState*, %struct.DState** %3, align 8
  %3510 = getelementptr inbounds %struct.DState, %struct.DState* %3509, i32 0, i32 8
  %3511 = load i32, i32* %3510, align 4
  %3512 = sub nsw i32 %3511, 1
  store i32 %3512, i32* %3510, align 4
  %3513 = load i32, i32* %68, align 4
  store i32 %3513, i32* %27, align 4
  br label %3573

; <label>:3514:                                   ; preds = %3494
  %3515 = load %struct.DState*, %struct.DState** %3, align 8
  %3516 = getelementptr inbounds %struct.DState, %struct.DState* %3515, i32 0, i32 0
  %3517 = load %struct.bz_stream*, %struct.bz_stream** %3516, align 8
  %3518 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3517, i32 0, i32 1
  %3519 = load i32, i32* %3518, align 8
  %3520 = icmp eq i32 %3519, 0
  br i1 %3520, label %3521, label %3522

; <label>:3521:                                   ; preds = %3514
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:3522:                                   ; preds = %3514
  %3523 = load %struct.DState*, %struct.DState** %3, align 8
  %3524 = getelementptr inbounds %struct.DState, %struct.DState* %3523, i32 0, i32 7
  %3525 = load i32, i32* %3524, align 8
  %3526 = shl i32 %3525, 8
  %3527 = load %struct.DState*, %struct.DState** %3, align 8
  %3528 = getelementptr inbounds %struct.DState, %struct.DState* %3527, i32 0, i32 0
  %3529 = load %struct.bz_stream*, %struct.bz_stream** %3528, align 8
  %3530 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3529, i32 0, i32 0
  %3531 = load i8*, i8** %3530, align 8
  %3532 = load i8, i8* %3531, align 1
  %3533 = zext i8 %3532 to i32
  %3534 = or i32 %3526, %3533
  %3535 = load %struct.DState*, %struct.DState** %3, align 8
  %3536 = getelementptr inbounds %struct.DState, %struct.DState* %3535, i32 0, i32 7
  store i32 %3534, i32* %3536, align 8
  %3537 = load %struct.DState*, %struct.DState** %3, align 8
  %3538 = getelementptr inbounds %struct.DState, %struct.DState* %3537, i32 0, i32 8
  %3539 = load i32, i32* %3538, align 4
  %3540 = add nsw i32 %3539, 8
  store i32 %3540, i32* %3538, align 4
  %3541 = load %struct.DState*, %struct.DState** %3, align 8
  %3542 = getelementptr inbounds %struct.DState, %struct.DState* %3541, i32 0, i32 0
  %3543 = load %struct.bz_stream*, %struct.bz_stream** %3542, align 8
  %3544 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3543, i32 0, i32 0
  %3545 = load i8*, i8** %3544, align 8
  %3546 = getelementptr inbounds i8, i8* %3545, i32 1
  store i8* %3546, i8** %3544, align 8
  %3547 = load %struct.DState*, %struct.DState** %3, align 8
  %3548 = getelementptr inbounds %struct.DState, %struct.DState* %3547, i32 0, i32 0
  %3549 = load %struct.bz_stream*, %struct.bz_stream** %3548, align 8
  %3550 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3549, i32 0, i32 1
  %3551 = load i32, i32* %3550, align 8
  %3552 = add i32 %3551, -1
  store i32 %3552, i32* %3550, align 8
  %3553 = load %struct.DState*, %struct.DState** %3, align 8
  %3554 = getelementptr inbounds %struct.DState, %struct.DState* %3553, i32 0, i32 0
  %3555 = load %struct.bz_stream*, %struct.bz_stream** %3554, align 8
  %3556 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3555, i32 0, i32 2
  %3557 = load i32, i32* %3556, align 4
  %3558 = add i32 %3557, 1
  store i32 %3558, i32* %3556, align 4
  %3559 = load %struct.DState*, %struct.DState** %3, align 8
  %3560 = getelementptr inbounds %struct.DState, %struct.DState* %3559, i32 0, i32 0
  %3561 = load %struct.bz_stream*, %struct.bz_stream** %3560, align 8
  %3562 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3561, i32 0, i32 2
  %3563 = load i32, i32* %3562, align 4
  %3564 = icmp eq i32 %3563, 0
  br i1 %3564, label %3565, label %3572

; <label>:3565:                                   ; preds = %3522
  %3566 = load %struct.DState*, %struct.DState** %3, align 8
  %3567 = getelementptr inbounds %struct.DState, %struct.DState* %3566, i32 0, i32 0
  %3568 = load %struct.bz_stream*, %struct.bz_stream** %3567, align 8
  %3569 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %3568, i32 0, i32 3
  %3570 = load i32, i32* %3569, align 8
  %3571 = add i32 %3570, 1
  store i32 %3571, i32* %3569, align 8
  br label %3572

; <label>:3572:                                   ; preds = %3565, %3522
  br label %3494

; <label>:3573:                                   ; preds = %3499
  %3574 = load i32, i32* %26, align 4
  %3575 = shl i32 %3574, 1
  %3576 = load i32, i32* %27, align 4
  %3577 = or i32 %3575, %3576
  store i32 %3577, i32* %26, align 4
  br label %3475

; <label>:3578:                                   ; preds = %3487
  %3579 = load i32, i32* %26, align 4
  %3580 = load i32*, i32** %31, align 8
  %3581 = load i32, i32* %25, align 4
  %3582 = sext i32 %3581 to i64
  %3583 = getelementptr inbounds i32, i32* %3580, i64 %3582
  %3584 = load i32, i32* %3583, align 4
  %3585 = sub nsw i32 %3579, %3584
  %3586 = icmp slt i32 %3585, 0
  br i1 %3586, label %3596, label %3587

; <label>:3587:                                   ; preds = %3578
  %3588 = load i32, i32* %26, align 4
  %3589 = load i32*, i32** %31, align 8
  %3590 = load i32, i32* %25, align 4
  %3591 = sext i32 %3590 to i64
  %3592 = getelementptr inbounds i32, i32* %3589, i64 %3591
  %3593 = load i32, i32* %3592, align 4
  %3594 = sub nsw i32 %3588, %3593
  %3595 = icmp sge i32 %3594, 258
  br i1 %3595, label %3596, label %3597

; <label>:3596:                                   ; preds = %3587, %3578
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3597:                                   ; preds = %3587
  %3598 = load i32*, i32** %32, align 8
  %3599 = load i32, i32* %26, align 4
  %3600 = load i32*, i32** %31, align 8
  %3601 = load i32, i32* %25, align 4
  %3602 = sext i32 %3601 to i64
  %3603 = getelementptr inbounds i32, i32* %3600, i64 %3602
  %3604 = load i32, i32* %3603, align 4
  %3605 = sub nsw i32 %3599, %3604
  %3606 = sext i32 %3605 to i64
  %3607 = getelementptr inbounds i32, i32* %3598, i64 %3606
  %3608 = load i32, i32* %3607, align 4
  store i32 %3608, i32* %18, align 4
  br label %3609

; <label>:3609:                                   ; preds = %3597
  %3610 = load i32, i32* %18, align 4
  %3611 = icmp eq i32 %3610, 0
  br i1 %3611, label %3615, label %3612

; <label>:3612:                                   ; preds = %3609
  %3613 = load i32, i32* %18, align 4
  %3614 = icmp eq i32 %3613, 1
  br label %3615

; <label>:3615:                                   ; preds = %3612, %3609
  %3616 = phi i1 [ true, %3609 ], [ %3614, %3612 ]
  br i1 %3616, label %3317, label %3617

; <label>:3617:                                   ; preds = %3615
  %3618 = load i32, i32* %21, align 4
  %3619 = add nsw i32 %3618, 1
  store i32 %3619, i32* %21, align 4
  %3620 = load %struct.DState*, %struct.DState** %3, align 8
  %3621 = getelementptr inbounds %struct.DState, %struct.DState* %3620, i32 0, i32 30
  %3622 = load %struct.DState*, %struct.DState** %3, align 8
  %3623 = getelementptr inbounds %struct.DState, %struct.DState* %3622, i32 0, i32 31
  %3624 = load %struct.DState*, %struct.DState** %3, align 8
  %3625 = getelementptr inbounds %struct.DState, %struct.DState* %3624, i32 0, i32 32
  %3626 = getelementptr inbounds [16 x i32], [16 x i32]* %3625, i64 0, i64 0
  %3627 = load i32, i32* %3626, align 4
  %3628 = sext i32 %3627 to i64
  %3629 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3623, i64 0, i64 %3628
  %3630 = load i8, i8* %3629, align 1
  %3631 = zext i8 %3630 to i64
  %3632 = getelementptr inbounds [256 x i8], [256 x i8]* %3621, i64 0, i64 %3631
  %3633 = load i8, i8* %3632, align 1
  store i8 %3633, i8* %4, align 1
  %3634 = load i32, i32* %21, align 4
  %3635 = load %struct.DState*, %struct.DState** %3, align 8
  %3636 = getelementptr inbounds %struct.DState, %struct.DState* %3635, i32 0, i32 16
  %3637 = load i8, i8* %4, align 1
  %3638 = zext i8 %3637 to i64
  %3639 = getelementptr inbounds [256 x i32], [256 x i32]* %3636, i64 0, i64 %3638
  %3640 = load i32, i32* %3639, align 4
  %3641 = add nsw i32 %3640, %3634
  store i32 %3641, i32* %3639, align 4
  %3642 = load %struct.DState*, %struct.DState** %3, align 8
  %3643 = getelementptr inbounds %struct.DState, %struct.DState* %3642, i32 0, i32 10
  %3644 = load i8, i8* %3643, align 4
  %3645 = icmp ne i8 %3644, 0
  br i1 %3645, label %3646, label %3669

; <label>:3646:                                   ; preds = %3617
  br label %3647

; <label>:3647:                                   ; preds = %3655, %3646
  %3648 = load i32, i32* %21, align 4
  %3649 = icmp sgt i32 %3648, 0
  br i1 %3649, label %3650, label %3668

; <label>:3650:                                   ; preds = %3647
  %3651 = load i32, i32* %20, align 4
  %3652 = load i32, i32* %19, align 4
  %3653 = icmp sge i32 %3651, %3652
  br i1 %3653, label %3654, label %3655

; <label>:3654:                                   ; preds = %3650
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3655:                                   ; preds = %3650
  %3656 = load i8, i8* %4, align 1
  %3657 = zext i8 %3656 to i16
  %3658 = load %struct.DState*, %struct.DState** %3, align 8
  %3659 = getelementptr inbounds %struct.DState, %struct.DState* %3658, i32 0, i32 21
  %3660 = load i16*, i16** %3659, align 8
  %3661 = load i32, i32* %20, align 4
  %3662 = sext i32 %3661 to i64
  %3663 = getelementptr inbounds i16, i16* %3660, i64 %3662
  store i16 %3657, i16* %3663, align 2
  %3664 = load i32, i32* %20, align 4
  %3665 = add nsw i32 %3664, 1
  store i32 %3665, i32* %20, align 4
  %3666 = load i32, i32* %21, align 4
  %3667 = add nsw i32 %3666, -1
  store i32 %3667, i32* %21, align 4
  br label %3647

; <label>:3668:                                   ; preds = %3647
  br label %3692

; <label>:3669:                                   ; preds = %3617
  br label %3670

; <label>:3670:                                   ; preds = %3678, %3669
  %3671 = load i32, i32* %21, align 4
  %3672 = icmp sgt i32 %3671, 0
  br i1 %3672, label %3673, label %3691

; <label>:3673:                                   ; preds = %3670
  %3674 = load i32, i32* %20, align 4
  %3675 = load i32, i32* %19, align 4
  %3676 = icmp sge i32 %3674, %3675
  br i1 %3676, label %3677, label %3678

; <label>:3677:                                   ; preds = %3673
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3678:                                   ; preds = %3673
  %3679 = load i8, i8* %4, align 1
  %3680 = zext i8 %3679 to i32
  %3681 = load %struct.DState*, %struct.DState** %3, align 8
  %3682 = getelementptr inbounds %struct.DState, %struct.DState* %3681, i32 0, i32 20
  %3683 = load i32*, i32** %3682, align 8
  %3684 = load i32, i32* %20, align 4
  %3685 = sext i32 %3684 to i64
  %3686 = getelementptr inbounds i32, i32* %3683, i64 %3685
  store i32 %3680, i32* %3686, align 4
  %3687 = load i32, i32* %20, align 4
  %3688 = add nsw i32 %3687, 1
  store i32 %3688, i32* %20, align 4
  %3689 = load i32, i32* %21, align 4
  %3690 = add nsw i32 %3689, -1
  store i32 %3690, i32* %21, align 4
  br label %3670

; <label>:3691:                                   ; preds = %3670
  br label %3692

; <label>:3692:                                   ; preds = %3691, %3668
  br label %3305

; <label>:3693:                                   ; preds = %3313
  %3694 = load i32, i32* %20, align 4
  %3695 = load i32, i32* %19, align 4
  %3696 = icmp sge i32 %3694, %3695
  br i1 %3696, label %3697, label %3698

; <label>:3697:                                   ; preds = %3693
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:3698:                                   ; preds = %3693
  %3699 = load i32, i32* %18, align 4
  %3700 = sub nsw i32 %3699, 1
  store i32 %3700, i32* %75, align 4
  %3701 = load i32, i32* %75, align 4
  %3702 = icmp ult i32 %3701, 16
  br i1 %3702, label %3703, label %3806

; <label>:3703:                                   ; preds = %3698
  %3704 = load %struct.DState*, %struct.DState** %3, align 8
  %3705 = getelementptr inbounds %struct.DState, %struct.DState* %3704, i32 0, i32 32
  %3706 = getelementptr inbounds [16 x i32], [16 x i32]* %3705, i64 0, i64 0
  %3707 = load i32, i32* %3706, align 4
  store i32 %3707, i32* %72, align 4
  %3708 = load %struct.DState*, %struct.DState** %3, align 8
  %3709 = getelementptr inbounds %struct.DState, %struct.DState* %3708, i32 0, i32 31
  %3710 = load i32, i32* %72, align 4
  %3711 = load i32, i32* %75, align 4
  %3712 = add i32 %3710, %3711
  %3713 = zext i32 %3712 to i64
  %3714 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3709, i64 0, i64 %3713
  %3715 = load i8, i8* %3714, align 1
  store i8 %3715, i8* %4, align 1
  br label %3716

; <label>:3716:                                   ; preds = %3719, %3703
  %3717 = load i32, i32* %75, align 4
  %3718 = icmp ugt i32 %3717, 3
  br i1 %3718, label %3719, label %3776

; <label>:3719:                                   ; preds = %3716
  %3720 = load i32, i32* %72, align 4
  %3721 = load i32, i32* %75, align 4
  %3722 = add i32 %3720, %3721
  store i32 %3722, i32* %76, align 4
  %3723 = load %struct.DState*, %struct.DState** %3, align 8
  %3724 = getelementptr inbounds %struct.DState, %struct.DState* %3723, i32 0, i32 31
  %3725 = load i32, i32* %76, align 4
  %3726 = sub nsw i32 %3725, 1
  %3727 = sext i32 %3726 to i64
  %3728 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3724, i64 0, i64 %3727
  %3729 = load i8, i8* %3728, align 1
  %3730 = load %struct.DState*, %struct.DState** %3, align 8
  %3731 = getelementptr inbounds %struct.DState, %struct.DState* %3730, i32 0, i32 31
  %3732 = load i32, i32* %76, align 4
  %3733 = sext i32 %3732 to i64
  %3734 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3731, i64 0, i64 %3733
  store i8 %3729, i8* %3734, align 1
  %3735 = load %struct.DState*, %struct.DState** %3, align 8
  %3736 = getelementptr inbounds %struct.DState, %struct.DState* %3735, i32 0, i32 31
  %3737 = load i32, i32* %76, align 4
  %3738 = sub nsw i32 %3737, 2
  %3739 = sext i32 %3738 to i64
  %3740 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3736, i64 0, i64 %3739
  %3741 = load i8, i8* %3740, align 1
  %3742 = load %struct.DState*, %struct.DState** %3, align 8
  %3743 = getelementptr inbounds %struct.DState, %struct.DState* %3742, i32 0, i32 31
  %3744 = load i32, i32* %76, align 4
  %3745 = sub nsw i32 %3744, 1
  %3746 = sext i32 %3745 to i64
  %3747 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3743, i64 0, i64 %3746
  store i8 %3741, i8* %3747, align 1
  %3748 = load %struct.DState*, %struct.DState** %3, align 8
  %3749 = getelementptr inbounds %struct.DState, %struct.DState* %3748, i32 0, i32 31
  %3750 = load i32, i32* %76, align 4
  %3751 = sub nsw i32 %3750, 3
  %3752 = sext i32 %3751 to i64
  %3753 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3749, i64 0, i64 %3752
  %3754 = load i8, i8* %3753, align 1
  %3755 = load %struct.DState*, %struct.DState** %3, align 8
  %3756 = getelementptr inbounds %struct.DState, %struct.DState* %3755, i32 0, i32 31
  %3757 = load i32, i32* %76, align 4
  %3758 = sub nsw i32 %3757, 2
  %3759 = sext i32 %3758 to i64
  %3760 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3756, i64 0, i64 %3759
  store i8 %3754, i8* %3760, align 1
  %3761 = load %struct.DState*, %struct.DState** %3, align 8
  %3762 = getelementptr inbounds %struct.DState, %struct.DState* %3761, i32 0, i32 31
  %3763 = load i32, i32* %76, align 4
  %3764 = sub nsw i32 %3763, 4
  %3765 = sext i32 %3764 to i64
  %3766 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3762, i64 0, i64 %3765
  %3767 = load i8, i8* %3766, align 1
  %3768 = load %struct.DState*, %struct.DState** %3, align 8
  %3769 = getelementptr inbounds %struct.DState, %struct.DState* %3768, i32 0, i32 31
  %3770 = load i32, i32* %76, align 4
  %3771 = sub nsw i32 %3770, 3
  %3772 = sext i32 %3771 to i64
  %3773 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3769, i64 0, i64 %3772
  store i8 %3767, i8* %3773, align 1
  %3774 = load i32, i32* %75, align 4
  %3775 = sub i32 %3774, 4
  store i32 %3775, i32* %75, align 4
  br label %3716

; <label>:3776:                                   ; preds = %3716
  br label %3777

; <label>:3777:                                   ; preds = %3780, %3776
  %3778 = load i32, i32* %75, align 4
  %3779 = icmp ugt i32 %3778, 0
  br i1 %3779, label %3780, label %3799

; <label>:3780:                                   ; preds = %3777
  %3781 = load %struct.DState*, %struct.DState** %3, align 8
  %3782 = getelementptr inbounds %struct.DState, %struct.DState* %3781, i32 0, i32 31
  %3783 = load i32, i32* %72, align 4
  %3784 = load i32, i32* %75, align 4
  %3785 = add i32 %3783, %3784
  %3786 = sub i32 %3785, 1
  %3787 = zext i32 %3786 to i64
  %3788 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3782, i64 0, i64 %3787
  %3789 = load i8, i8* %3788, align 1
  %3790 = load %struct.DState*, %struct.DState** %3, align 8
  %3791 = getelementptr inbounds %struct.DState, %struct.DState* %3790, i32 0, i32 31
  %3792 = load i32, i32* %72, align 4
  %3793 = load i32, i32* %75, align 4
  %3794 = add i32 %3792, %3793
  %3795 = zext i32 %3794 to i64
  %3796 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3791, i64 0, i64 %3795
  store i8 %3789, i8* %3796, align 1
  %3797 = load i32, i32* %75, align 4
  %3798 = add i32 %3797, -1
  store i32 %3798, i32* %75, align 4
  br label %3777

; <label>:3799:                                   ; preds = %3777
  %3800 = load i8, i8* %4, align 1
  %3801 = load %struct.DState*, %struct.DState** %3, align 8
  %3802 = getelementptr inbounds %struct.DState, %struct.DState* %3801, i32 0, i32 31
  %3803 = load i32, i32* %72, align 4
  %3804 = sext i32 %3803 to i64
  %3805 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3802, i64 0, i64 %3804
  store i8 %3800, i8* %3805, align 1
  br label %3959

; <label>:3806:                                   ; preds = %3698
  %3807 = load i32, i32* %75, align 4
  %3808 = udiv i32 %3807, 16
  store i32 %3808, i32* %73, align 4
  %3809 = load i32, i32* %75, align 4
  %3810 = urem i32 %3809, 16
  store i32 %3810, i32* %74, align 4
  %3811 = load %struct.DState*, %struct.DState** %3, align 8
  %3812 = getelementptr inbounds %struct.DState, %struct.DState* %3811, i32 0, i32 32
  %3813 = load i32, i32* %73, align 4
  %3814 = sext i32 %3813 to i64
  %3815 = getelementptr inbounds [16 x i32], [16 x i32]* %3812, i64 0, i64 %3814
  %3816 = load i32, i32* %3815, align 4
  %3817 = load i32, i32* %74, align 4
  %3818 = add nsw i32 %3816, %3817
  store i32 %3818, i32* %72, align 4
  %3819 = load %struct.DState*, %struct.DState** %3, align 8
  %3820 = getelementptr inbounds %struct.DState, %struct.DState* %3819, i32 0, i32 31
  %3821 = load i32, i32* %72, align 4
  %3822 = sext i32 %3821 to i64
  %3823 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3820, i64 0, i64 %3822
  %3824 = load i8, i8* %3823, align 1
  store i8 %3824, i8* %4, align 1
  br label %3825

; <label>:3825:                                   ; preds = %3834, %3806
  %3826 = load i32, i32* %72, align 4
  %3827 = load %struct.DState*, %struct.DState** %3, align 8
  %3828 = getelementptr inbounds %struct.DState, %struct.DState* %3827, i32 0, i32 32
  %3829 = load i32, i32* %73, align 4
  %3830 = sext i32 %3829 to i64
  %3831 = getelementptr inbounds [16 x i32], [16 x i32]* %3828, i64 0, i64 %3830
  %3832 = load i32, i32* %3831, align 4
  %3833 = icmp sgt i32 %3826, %3832
  br i1 %3833, label %3834, label %3849

; <label>:3834:                                   ; preds = %3825
  %3835 = load %struct.DState*, %struct.DState** %3, align 8
  %3836 = getelementptr inbounds %struct.DState, %struct.DState* %3835, i32 0, i32 31
  %3837 = load i32, i32* %72, align 4
  %3838 = sub nsw i32 %3837, 1
  %3839 = sext i32 %3838 to i64
  %3840 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3836, i64 0, i64 %3839
  %3841 = load i8, i8* %3840, align 1
  %3842 = load %struct.DState*, %struct.DState** %3, align 8
  %3843 = getelementptr inbounds %struct.DState, %struct.DState* %3842, i32 0, i32 31
  %3844 = load i32, i32* %72, align 4
  %3845 = sext i32 %3844 to i64
  %3846 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3843, i64 0, i64 %3845
  store i8 %3841, i8* %3846, align 1
  %3847 = load i32, i32* %72, align 4
  %3848 = add nsw i32 %3847, -1
  store i32 %3848, i32* %72, align 4
  br label %3825

; <label>:3849:                                   ; preds = %3825
  %3850 = load %struct.DState*, %struct.DState** %3, align 8
  %3851 = getelementptr inbounds %struct.DState, %struct.DState* %3850, i32 0, i32 32
  %3852 = load i32, i32* %73, align 4
  %3853 = sext i32 %3852 to i64
  %3854 = getelementptr inbounds [16 x i32], [16 x i32]* %3851, i64 0, i64 %3853
  %3855 = load i32, i32* %3854, align 4
  %3856 = add nsw i32 %3855, 1
  store i32 %3856, i32* %3854, align 4
  br label %3857

; <label>:3857:                                   ; preds = %3860, %3849
  %3858 = load i32, i32* %73, align 4
  %3859 = icmp sgt i32 %3858, 0
  br i1 %3859, label %3860, label %3894

; <label>:3860:                                   ; preds = %3857
  %3861 = load %struct.DState*, %struct.DState** %3, align 8
  %3862 = getelementptr inbounds %struct.DState, %struct.DState* %3861, i32 0, i32 32
  %3863 = load i32, i32* %73, align 4
  %3864 = sext i32 %3863 to i64
  %3865 = getelementptr inbounds [16 x i32], [16 x i32]* %3862, i64 0, i64 %3864
  %3866 = load i32, i32* %3865, align 4
  %3867 = add nsw i32 %3866, -1
  store i32 %3867, i32* %3865, align 4
  %3868 = load %struct.DState*, %struct.DState** %3, align 8
  %3869 = getelementptr inbounds %struct.DState, %struct.DState* %3868, i32 0, i32 31
  %3870 = load %struct.DState*, %struct.DState** %3, align 8
  %3871 = getelementptr inbounds %struct.DState, %struct.DState* %3870, i32 0, i32 32
  %3872 = load i32, i32* %73, align 4
  %3873 = sub nsw i32 %3872, 1
  %3874 = sext i32 %3873 to i64
  %3875 = getelementptr inbounds [16 x i32], [16 x i32]* %3871, i64 0, i64 %3874
  %3876 = load i32, i32* %3875, align 4
  %3877 = add nsw i32 %3876, 16
  %3878 = sub nsw i32 %3877, 1
  %3879 = sext i32 %3878 to i64
  %3880 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3869, i64 0, i64 %3879
  %3881 = load i8, i8* %3880, align 1
  %3882 = load %struct.DState*, %struct.DState** %3, align 8
  %3883 = getelementptr inbounds %struct.DState, %struct.DState* %3882, i32 0, i32 31
  %3884 = load %struct.DState*, %struct.DState** %3, align 8
  %3885 = getelementptr inbounds %struct.DState, %struct.DState* %3884, i32 0, i32 32
  %3886 = load i32, i32* %73, align 4
  %3887 = sext i32 %3886 to i64
  %3888 = getelementptr inbounds [16 x i32], [16 x i32]* %3885, i64 0, i64 %3887
  %3889 = load i32, i32* %3888, align 4
  %3890 = sext i32 %3889 to i64
  %3891 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3883, i64 0, i64 %3890
  store i8 %3881, i8* %3891, align 1
  %3892 = load i32, i32* %73, align 4
  %3893 = add nsw i32 %3892, -1
  store i32 %3893, i32* %73, align 4
  br label %3857

; <label>:3894:                                   ; preds = %3857
  %3895 = load %struct.DState*, %struct.DState** %3, align 8
  %3896 = getelementptr inbounds %struct.DState, %struct.DState* %3895, i32 0, i32 32
  %3897 = getelementptr inbounds [16 x i32], [16 x i32]* %3896, i64 0, i64 0
  %3898 = load i32, i32* %3897, align 4
  %3899 = add nsw i32 %3898, -1
  store i32 %3899, i32* %3897, align 4
  %3900 = load i8, i8* %4, align 1
  %3901 = load %struct.DState*, %struct.DState** %3, align 8
  %3902 = getelementptr inbounds %struct.DState, %struct.DState* %3901, i32 0, i32 31
  %3903 = load %struct.DState*, %struct.DState** %3, align 8
  %3904 = getelementptr inbounds %struct.DState, %struct.DState* %3903, i32 0, i32 32
  %3905 = getelementptr inbounds [16 x i32], [16 x i32]* %3904, i64 0, i64 0
  %3906 = load i32, i32* %3905, align 4
  %3907 = sext i32 %3906 to i64
  %3908 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3902, i64 0, i64 %3907
  store i8 %3900, i8* %3908, align 1
  %3909 = load %struct.DState*, %struct.DState** %3, align 8
  %3910 = getelementptr inbounds %struct.DState, %struct.DState* %3909, i32 0, i32 32
  %3911 = getelementptr inbounds [16 x i32], [16 x i32]* %3910, i64 0, i64 0
  %3912 = load i32, i32* %3911, align 4
  %3913 = icmp eq i32 %3912, 0
  br i1 %3913, label %3914, label %3958

; <label>:3914:                                   ; preds = %3894
  store i32 4095, i32* %71, align 4
  store i32 15, i32* %69, align 4
  br label %3915

; <label>:3915:                                   ; preds = %3954, %3914
  %3916 = load i32, i32* %69, align 4
  %3917 = icmp sge i32 %3916, 0
  br i1 %3917, label %3918, label %3957

; <label>:3918:                                   ; preds = %3915
  store i32 15, i32* %70, align 4
  br label %3919

; <label>:3919:                                   ; preds = %3943, %3918
  %3920 = load i32, i32* %70, align 4
  %3921 = icmp sge i32 %3920, 0
  br i1 %3921, label %3922, label %3946

; <label>:3922:                                   ; preds = %3919
  %3923 = load %struct.DState*, %struct.DState** %3, align 8
  %3924 = getelementptr inbounds %struct.DState, %struct.DState* %3923, i32 0, i32 31
  %3925 = load %struct.DState*, %struct.DState** %3, align 8
  %3926 = getelementptr inbounds %struct.DState, %struct.DState* %3925, i32 0, i32 32
  %3927 = load i32, i32* %69, align 4
  %3928 = sext i32 %3927 to i64
  %3929 = getelementptr inbounds [16 x i32], [16 x i32]* %3926, i64 0, i64 %3928
  %3930 = load i32, i32* %3929, align 4
  %3931 = load i32, i32* %70, align 4
  %3932 = add nsw i32 %3930, %3931
  %3933 = sext i32 %3932 to i64
  %3934 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3924, i64 0, i64 %3933
  %3935 = load i8, i8* %3934, align 1
  %3936 = load %struct.DState*, %struct.DState** %3, align 8
  %3937 = getelementptr inbounds %struct.DState, %struct.DState* %3936, i32 0, i32 31
  %3938 = load i32, i32* %71, align 4
  %3939 = sext i32 %3938 to i64
  %3940 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3937, i64 0, i64 %3939
  store i8 %3935, i8* %3940, align 1
  %3941 = load i32, i32* %71, align 4
  %3942 = add nsw i32 %3941, -1
  store i32 %3942, i32* %71, align 4
  br label %3943

; <label>:3943:                                   ; preds = %3922
  %3944 = load i32, i32* %70, align 4
  %3945 = add nsw i32 %3944, -1
  store i32 %3945, i32* %70, align 4
  br label %3919

; <label>:3946:                                   ; preds = %3919
  %3947 = load i32, i32* %71, align 4
  %3948 = add nsw i32 %3947, 1
  %3949 = load %struct.DState*, %struct.DState** %3, align 8
  %3950 = getelementptr inbounds %struct.DState, %struct.DState* %3949, i32 0, i32 32
  %3951 = load i32, i32* %69, align 4
  %3952 = sext i32 %3951 to i64
  %3953 = getelementptr inbounds [16 x i32], [16 x i32]* %3950, i64 0, i64 %3952
  store i32 %3948, i32* %3953, align 4
  br label %3954

; <label>:3954:                                   ; preds = %3946
  %3955 = load i32, i32* %69, align 4
  %3956 = add nsw i32 %3955, -1
  store i32 %3956, i32* %69, align 4
  br label %3915

; <label>:3957:                                   ; preds = %3915
  br label %3958

; <label>:3958:                                   ; preds = %3957, %3894
  br label %3959

; <label>:3959:                                   ; preds = %3958, %3799
  %3960 = load %struct.DState*, %struct.DState** %3, align 8
  %3961 = getelementptr inbounds %struct.DState, %struct.DState* %3960, i32 0, i32 16
  %3962 = load %struct.DState*, %struct.DState** %3, align 8
  %3963 = getelementptr inbounds %struct.DState, %struct.DState* %3962, i32 0, i32 30
  %3964 = load i8, i8* %4, align 1
  %3965 = zext i8 %3964 to i64
  %3966 = getelementptr inbounds [256 x i8], [256 x i8]* %3963, i64 0, i64 %3965
  %3967 = load i8, i8* %3966, align 1
  %3968 = zext i8 %3967 to i64
  %3969 = getelementptr inbounds [256 x i32], [256 x i32]* %3961, i64 0, i64 %3968
  %3970 = load i32, i32* %3969, align 4
  %3971 = add nsw i32 %3970, 1
  store i32 %3971, i32* %3969, align 4
  %3972 = load %struct.DState*, %struct.DState** %3, align 8
  %3973 = getelementptr inbounds %struct.DState, %struct.DState* %3972, i32 0, i32 10
  %3974 = load i8, i8* %3973, align 4
  %3975 = icmp ne i8 %3974, 0
  br i1 %3975, label %3976, label %3990

; <label>:3976:                                   ; preds = %3959
  %3977 = load %struct.DState*, %struct.DState** %3, align 8
  %3978 = getelementptr inbounds %struct.DState, %struct.DState* %3977, i32 0, i32 30
  %3979 = load i8, i8* %4, align 1
  %3980 = zext i8 %3979 to i64
  %3981 = getelementptr inbounds [256 x i8], [256 x i8]* %3978, i64 0, i64 %3980
  %3982 = load i8, i8* %3981, align 1
  %3983 = zext i8 %3982 to i16
  %3984 = load %struct.DState*, %struct.DState** %3, align 8
  %3985 = getelementptr inbounds %struct.DState, %struct.DState* %3984, i32 0, i32 21
  %3986 = load i16*, i16** %3985, align 8
  %3987 = load i32, i32* %20, align 4
  %3988 = sext i32 %3987 to i64
  %3989 = getelementptr inbounds i16, i16* %3986, i64 %3988
  store i16 %3983, i16* %3989, align 2
  br label %4004

; <label>:3990:                                   ; preds = %3959
  %3991 = load %struct.DState*, %struct.DState** %3, align 8
  %3992 = getelementptr inbounds %struct.DState, %struct.DState* %3991, i32 0, i32 30
  %3993 = load i8, i8* %4, align 1
  %3994 = zext i8 %3993 to i64
  %3995 = getelementptr inbounds [256 x i8], [256 x i8]* %3992, i64 0, i64 %3994
  %3996 = load i8, i8* %3995, align 1
  %3997 = zext i8 %3996 to i32
  %3998 = load %struct.DState*, %struct.DState** %3, align 8
  %3999 = getelementptr inbounds %struct.DState, %struct.DState* %3998, i32 0, i32 20
  %4000 = load i32*, i32** %3999, align 8
  %4001 = load i32, i32* %20, align 4
  %4002 = sext i32 %4001 to i64
  %4003 = getelementptr inbounds i32, i32* %4000, i64 %4002
  store i32 %3997, i32* %4003, align 4
  br label %4004

; <label>:4004:                                   ; preds = %3990, %3976
  %4005 = load i32, i32* %20, align 4
  %4006 = add nsw i32 %4005, 1
  store i32 %4006, i32* %20, align 4
  %4007 = load i32, i32* %17, align 4
  %4008 = icmp eq i32 %4007, 0
  br i1 %4008, label %4009, label %4048

; <label>:4009:                                   ; preds = %4004
  %4010 = load i32, i32* %16, align 4
  %4011 = add nsw i32 %4010, 1
  store i32 %4011, i32* %16, align 4
  %4012 = load i32, i32* %16, align 4
  %4013 = load i32, i32* %14, align 4
  %4014 = icmp sge i32 %4012, %4013
  br i1 %4014, label %4015, label %4016

; <label>:4015:                                   ; preds = %4009
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4016:                                   ; preds = %4009
  store i32 50, i32* %17, align 4
  %4017 = load %struct.DState*, %struct.DState** %3, align 8
  %4018 = getelementptr inbounds %struct.DState, %struct.DState* %4017, i32 0, i32 33
  %4019 = load i32, i32* %16, align 4
  %4020 = sext i32 %4019 to i64
  %4021 = getelementptr inbounds [18002 x i8], [18002 x i8]* %4018, i64 0, i64 %4020
  %4022 = load i8, i8* %4021, align 1
  %4023 = zext i8 %4022 to i32
  store i32 %4023, i32* %28, align 4
  %4024 = load %struct.DState*, %struct.DState** %3, align 8
  %4025 = getelementptr inbounds %struct.DState, %struct.DState* %4024, i32 0, i32 39
  %4026 = load i32, i32* %28, align 4
  %4027 = sext i32 %4026 to i64
  %4028 = getelementptr inbounds [6 x i32], [6 x i32]* %4025, i64 0, i64 %4027
  %4029 = load i32, i32* %4028, align 4
  store i32 %4029, i32* %29, align 4
  %4030 = load %struct.DState*, %struct.DState** %3, align 8
  %4031 = getelementptr inbounds %struct.DState, %struct.DState* %4030, i32 0, i32 36
  %4032 = load i32, i32* %28, align 4
  %4033 = sext i32 %4032 to i64
  %4034 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %4031, i64 0, i64 %4033
  %4035 = getelementptr inbounds [258 x i32], [258 x i32]* %4034, i64 0, i64 0
  store i32* %4035, i32** %30, align 8
  %4036 = load %struct.DState*, %struct.DState** %3, align 8
  %4037 = getelementptr inbounds %struct.DState, %struct.DState* %4036, i32 0, i32 38
  %4038 = load i32, i32* %28, align 4
  %4039 = sext i32 %4038 to i64
  %4040 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %4037, i64 0, i64 %4039
  %4041 = getelementptr inbounds [258 x i32], [258 x i32]* %4040, i64 0, i64 0
  store i32* %4041, i32** %32, align 8
  %4042 = load %struct.DState*, %struct.DState** %3, align 8
  %4043 = getelementptr inbounds %struct.DState, %struct.DState* %4042, i32 0, i32 37
  %4044 = load i32, i32* %28, align 4
  %4045 = sext i32 %4044 to i64
  %4046 = getelementptr inbounds [6 x [258 x i32]], [6 x [258 x i32]]* %4043, i64 0, i64 %4045
  %4047 = getelementptr inbounds [258 x i32], [258 x i32]* %4046, i64 0, i64 0
  store i32* %4047, i32** %31, align 8
  br label %4048

; <label>:4048:                                   ; preds = %4016, %4004
  %4049 = load i32, i32* %17, align 4
  %4050 = add nsw i32 %4049, -1
  store i32 %4050, i32* %17, align 4
  %4051 = load i32, i32* %29, align 4
  store i32 %4051, i32* %25, align 4
  br label %4052

; <label>:4052:                                   ; preds = %145, %4048
  %4053 = load %struct.DState*, %struct.DState** %3, align 8
  %4054 = getelementptr inbounds %struct.DState, %struct.DState* %4053, i32 0, i32 1
  store i32 40, i32* %4054, align 8
  br label %4055

; <label>:4055:                                   ; preds = %4052, %4139
  %4056 = load %struct.DState*, %struct.DState** %3, align 8
  %4057 = getelementptr inbounds %struct.DState, %struct.DState* %4056, i32 0, i32 8
  %4058 = load i32, i32* %4057, align 4
  %4059 = load i32, i32* %25, align 4
  %4060 = icmp sge i32 %4058, %4059
  br i1 %4060, label %4061, label %4081

; <label>:4061:                                   ; preds = %4055
  %4062 = load %struct.DState*, %struct.DState** %3, align 8
  %4063 = getelementptr inbounds %struct.DState, %struct.DState* %4062, i32 0, i32 7
  %4064 = load i32, i32* %4063, align 8
  %4065 = load %struct.DState*, %struct.DState** %3, align 8
  %4066 = getelementptr inbounds %struct.DState, %struct.DState* %4065, i32 0, i32 8
  %4067 = load i32, i32* %4066, align 4
  %4068 = load i32, i32* %25, align 4
  %4069 = sub nsw i32 %4067, %4068
  %4070 = lshr i32 %4064, %4069
  %4071 = load i32, i32* %25, align 4
  %4072 = shl i32 1, %4071
  %4073 = sub nsw i32 %4072, 1
  %4074 = and i32 %4070, %4073
  store i32 %4074, i32* %77, align 4
  %4075 = load i32, i32* %25, align 4
  %4076 = load %struct.DState*, %struct.DState** %3, align 8
  %4077 = getelementptr inbounds %struct.DState, %struct.DState* %4076, i32 0, i32 8
  %4078 = load i32, i32* %4077, align 4
  %4079 = sub nsw i32 %4078, %4075
  store i32 %4079, i32* %4077, align 4
  %4080 = load i32, i32* %77, align 4
  store i32 %4080, i32* %26, align 4
  br label %4140

; <label>:4081:                                   ; preds = %4055
  %4082 = load %struct.DState*, %struct.DState** %3, align 8
  %4083 = getelementptr inbounds %struct.DState, %struct.DState* %4082, i32 0, i32 0
  %4084 = load %struct.bz_stream*, %struct.bz_stream** %4083, align 8
  %4085 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4084, i32 0, i32 1
  %4086 = load i32, i32* %4085, align 8
  %4087 = icmp eq i32 %4086, 0
  br i1 %4087, label %4088, label %4089

; <label>:4088:                                   ; preds = %4081
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:4089:                                   ; preds = %4081
  %4090 = load %struct.DState*, %struct.DState** %3, align 8
  %4091 = getelementptr inbounds %struct.DState, %struct.DState* %4090, i32 0, i32 7
  %4092 = load i32, i32* %4091, align 8
  %4093 = shl i32 %4092, 8
  %4094 = load %struct.DState*, %struct.DState** %3, align 8
  %4095 = getelementptr inbounds %struct.DState, %struct.DState* %4094, i32 0, i32 0
  %4096 = load %struct.bz_stream*, %struct.bz_stream** %4095, align 8
  %4097 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4096, i32 0, i32 0
  %4098 = load i8*, i8** %4097, align 8
  %4099 = load i8, i8* %4098, align 1
  %4100 = zext i8 %4099 to i32
  %4101 = or i32 %4093, %4100
  %4102 = load %struct.DState*, %struct.DState** %3, align 8
  %4103 = getelementptr inbounds %struct.DState, %struct.DState* %4102, i32 0, i32 7
  store i32 %4101, i32* %4103, align 8
  %4104 = load %struct.DState*, %struct.DState** %3, align 8
  %4105 = getelementptr inbounds %struct.DState, %struct.DState* %4104, i32 0, i32 8
  %4106 = load i32, i32* %4105, align 4
  %4107 = add nsw i32 %4106, 8
  store i32 %4107, i32* %4105, align 4
  %4108 = load %struct.DState*, %struct.DState** %3, align 8
  %4109 = getelementptr inbounds %struct.DState, %struct.DState* %4108, i32 0, i32 0
  %4110 = load %struct.bz_stream*, %struct.bz_stream** %4109, align 8
  %4111 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4110, i32 0, i32 0
  %4112 = load i8*, i8** %4111, align 8
  %4113 = getelementptr inbounds i8, i8* %4112, i32 1
  store i8* %4113, i8** %4111, align 8
  %4114 = load %struct.DState*, %struct.DState** %3, align 8
  %4115 = getelementptr inbounds %struct.DState, %struct.DState* %4114, i32 0, i32 0
  %4116 = load %struct.bz_stream*, %struct.bz_stream** %4115, align 8
  %4117 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4116, i32 0, i32 1
  %4118 = load i32, i32* %4117, align 8
  %4119 = add i32 %4118, -1
  store i32 %4119, i32* %4117, align 8
  %4120 = load %struct.DState*, %struct.DState** %3, align 8
  %4121 = getelementptr inbounds %struct.DState, %struct.DState* %4120, i32 0, i32 0
  %4122 = load %struct.bz_stream*, %struct.bz_stream** %4121, align 8
  %4123 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4122, i32 0, i32 2
  %4124 = load i32, i32* %4123, align 4
  %4125 = add i32 %4124, 1
  store i32 %4125, i32* %4123, align 4
  %4126 = load %struct.DState*, %struct.DState** %3, align 8
  %4127 = getelementptr inbounds %struct.DState, %struct.DState* %4126, i32 0, i32 0
  %4128 = load %struct.bz_stream*, %struct.bz_stream** %4127, align 8
  %4129 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4128, i32 0, i32 2
  %4130 = load i32, i32* %4129, align 4
  %4131 = icmp eq i32 %4130, 0
  br i1 %4131, label %4132, label %4139

; <label>:4132:                                   ; preds = %4089
  %4133 = load %struct.DState*, %struct.DState** %3, align 8
  %4134 = getelementptr inbounds %struct.DState, %struct.DState* %4133, i32 0, i32 0
  %4135 = load %struct.bz_stream*, %struct.bz_stream** %4134, align 8
  %4136 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4135, i32 0, i32 3
  %4137 = load i32, i32* %4136, align 8
  %4138 = add i32 %4137, 1
  store i32 %4138, i32* %4136, align 8
  br label %4139

; <label>:4139:                                   ; preds = %4132, %4089
  br label %4055

; <label>:4140:                                   ; preds = %4061
  br label %4141

; <label>:4141:                                   ; preds = %4140, %4239
  %4142 = load i32, i32* %25, align 4
  %4143 = icmp sgt i32 %4142, 20
  br i1 %4143, label %4144, label %4145

; <label>:4144:                                   ; preds = %4141
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4145:                                   ; preds = %4141
  %4146 = load i32, i32* %26, align 4
  %4147 = load i32*, i32** %30, align 8
  %4148 = load i32, i32* %25, align 4
  %4149 = sext i32 %4148 to i64
  %4150 = getelementptr inbounds i32, i32* %4147, i64 %4149
  %4151 = load i32, i32* %4150, align 4
  %4152 = icmp sle i32 %4146, %4151
  br i1 %4152, label %4153, label %4154

; <label>:4153:                                   ; preds = %4145
  br label %4244

; <label>:4154:                                   ; preds = %4145
  %4155 = load i32, i32* %25, align 4
  %4156 = add nsw i32 %4155, 1
  store i32 %4156, i32* %25, align 4
  br label %4157

; <label>:4157:                                   ; preds = %145, %4154
  %4158 = load %struct.DState*, %struct.DState** %3, align 8
  %4159 = getelementptr inbounds %struct.DState, %struct.DState* %4158, i32 0, i32 1
  store i32 41, i32* %4159, align 8
  br label %4160

; <label>:4160:                                   ; preds = %4157, %4238
  %4161 = load %struct.DState*, %struct.DState** %3, align 8
  %4162 = getelementptr inbounds %struct.DState, %struct.DState* %4161, i32 0, i32 8
  %4163 = load i32, i32* %4162, align 4
  %4164 = icmp sge i32 %4163, 1
  br i1 %4164, label %4165, label %4180

; <label>:4165:                                   ; preds = %4160
  %4166 = load %struct.DState*, %struct.DState** %3, align 8
  %4167 = getelementptr inbounds %struct.DState, %struct.DState* %4166, i32 0, i32 7
  %4168 = load i32, i32* %4167, align 8
  %4169 = load %struct.DState*, %struct.DState** %3, align 8
  %4170 = getelementptr inbounds %struct.DState, %struct.DState* %4169, i32 0, i32 8
  %4171 = load i32, i32* %4170, align 4
  %4172 = sub nsw i32 %4171, 1
  %4173 = lshr i32 %4168, %4172
  %4174 = and i32 %4173, 1
  store i32 %4174, i32* %78, align 4
  %4175 = load %struct.DState*, %struct.DState** %3, align 8
  %4176 = getelementptr inbounds %struct.DState, %struct.DState* %4175, i32 0, i32 8
  %4177 = load i32, i32* %4176, align 4
  %4178 = sub nsw i32 %4177, 1
  store i32 %4178, i32* %4176, align 4
  %4179 = load i32, i32* %78, align 4
  store i32 %4179, i32* %27, align 4
  br label %4239

; <label>:4180:                                   ; preds = %4160
  %4181 = load %struct.DState*, %struct.DState** %3, align 8
  %4182 = getelementptr inbounds %struct.DState, %struct.DState* %4181, i32 0, i32 0
  %4183 = load %struct.bz_stream*, %struct.bz_stream** %4182, align 8
  %4184 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4183, i32 0, i32 1
  %4185 = load i32, i32* %4184, align 8
  %4186 = icmp eq i32 %4185, 0
  br i1 %4186, label %4187, label %4188

; <label>:4187:                                   ; preds = %4180
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:4188:                                   ; preds = %4180
  %4189 = load %struct.DState*, %struct.DState** %3, align 8
  %4190 = getelementptr inbounds %struct.DState, %struct.DState* %4189, i32 0, i32 7
  %4191 = load i32, i32* %4190, align 8
  %4192 = shl i32 %4191, 8
  %4193 = load %struct.DState*, %struct.DState** %3, align 8
  %4194 = getelementptr inbounds %struct.DState, %struct.DState* %4193, i32 0, i32 0
  %4195 = load %struct.bz_stream*, %struct.bz_stream** %4194, align 8
  %4196 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4195, i32 0, i32 0
  %4197 = load i8*, i8** %4196, align 8
  %4198 = load i8, i8* %4197, align 1
  %4199 = zext i8 %4198 to i32
  %4200 = or i32 %4192, %4199
  %4201 = load %struct.DState*, %struct.DState** %3, align 8
  %4202 = getelementptr inbounds %struct.DState, %struct.DState* %4201, i32 0, i32 7
  store i32 %4200, i32* %4202, align 8
  %4203 = load %struct.DState*, %struct.DState** %3, align 8
  %4204 = getelementptr inbounds %struct.DState, %struct.DState* %4203, i32 0, i32 8
  %4205 = load i32, i32* %4204, align 4
  %4206 = add nsw i32 %4205, 8
  store i32 %4206, i32* %4204, align 4
  %4207 = load %struct.DState*, %struct.DState** %3, align 8
  %4208 = getelementptr inbounds %struct.DState, %struct.DState* %4207, i32 0, i32 0
  %4209 = load %struct.bz_stream*, %struct.bz_stream** %4208, align 8
  %4210 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4209, i32 0, i32 0
  %4211 = load i8*, i8** %4210, align 8
  %4212 = getelementptr inbounds i8, i8* %4211, i32 1
  store i8* %4212, i8** %4210, align 8
  %4213 = load %struct.DState*, %struct.DState** %3, align 8
  %4214 = getelementptr inbounds %struct.DState, %struct.DState* %4213, i32 0, i32 0
  %4215 = load %struct.bz_stream*, %struct.bz_stream** %4214, align 8
  %4216 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4215, i32 0, i32 1
  %4217 = load i32, i32* %4216, align 8
  %4218 = add i32 %4217, -1
  store i32 %4218, i32* %4216, align 8
  %4219 = load %struct.DState*, %struct.DState** %3, align 8
  %4220 = getelementptr inbounds %struct.DState, %struct.DState* %4219, i32 0, i32 0
  %4221 = load %struct.bz_stream*, %struct.bz_stream** %4220, align 8
  %4222 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4221, i32 0, i32 2
  %4223 = load i32, i32* %4222, align 4
  %4224 = add i32 %4223, 1
  store i32 %4224, i32* %4222, align 4
  %4225 = load %struct.DState*, %struct.DState** %3, align 8
  %4226 = getelementptr inbounds %struct.DState, %struct.DState* %4225, i32 0, i32 0
  %4227 = load %struct.bz_stream*, %struct.bz_stream** %4226, align 8
  %4228 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4227, i32 0, i32 2
  %4229 = load i32, i32* %4228, align 4
  %4230 = icmp eq i32 %4229, 0
  br i1 %4230, label %4231, label %4238

; <label>:4231:                                   ; preds = %4188
  %4232 = load %struct.DState*, %struct.DState** %3, align 8
  %4233 = getelementptr inbounds %struct.DState, %struct.DState* %4232, i32 0, i32 0
  %4234 = load %struct.bz_stream*, %struct.bz_stream** %4233, align 8
  %4235 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %4234, i32 0, i32 3
  %4236 = load i32, i32* %4235, align 8
  %4237 = add i32 %4236, 1
  store i32 %4237, i32* %4235, align 8
  br label %4238

; <label>:4238:                                   ; preds = %4231, %4188
  br label %4160

; <label>:4239:                                   ; preds = %4165
  %4240 = load i32, i32* %26, align 4
  %4241 = shl i32 %4240, 1
  %4242 = load i32, i32* %27, align 4
  %4243 = or i32 %4241, %4242
  store i32 %4243, i32* %26, align 4
  br label %4141

; <label>:4244:                                   ; preds = %4153
  %4245 = load i32, i32* %26, align 4
  %4246 = load i32*, i32** %31, align 8
  %4247 = load i32, i32* %25, align 4
  %4248 = sext i32 %4247 to i64
  %4249 = getelementptr inbounds i32, i32* %4246, i64 %4248
  %4250 = load i32, i32* %4249, align 4
  %4251 = sub nsw i32 %4245, %4250
  %4252 = icmp slt i32 %4251, 0
  br i1 %4252, label %4262, label %4253

; <label>:4253:                                   ; preds = %4244
  %4254 = load i32, i32* %26, align 4
  %4255 = load i32*, i32** %31, align 8
  %4256 = load i32, i32* %25, align 4
  %4257 = sext i32 %4256 to i64
  %4258 = getelementptr inbounds i32, i32* %4255, i64 %4257
  %4259 = load i32, i32* %4258, align 4
  %4260 = sub nsw i32 %4254, %4259
  %4261 = icmp sge i32 %4260, 258
  br i1 %4261, label %4262, label %4263

; <label>:4262:                                   ; preds = %4253, %4244
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4263:                                   ; preds = %4253
  %4264 = load i32*, i32** %32, align 8
  %4265 = load i32, i32* %26, align 4
  %4266 = load i32*, i32** %31, align 8
  %4267 = load i32, i32* %25, align 4
  %4268 = sext i32 %4267 to i64
  %4269 = getelementptr inbounds i32, i32* %4266, i64 %4268
  %4270 = load i32, i32* %4269, align 4
  %4271 = sub nsw i32 %4265, %4270
  %4272 = sext i32 %4271 to i64
  %4273 = getelementptr inbounds i32, i32* %4264, i64 %4272
  %4274 = load i32, i32* %4273, align 4
  store i32 %4274, i32* %18, align 4
  br label %3305

; <label>:4275:                                   ; preds = %3309
  %4276 = load %struct.DState*, %struct.DState** %3, align 8
  %4277 = getelementptr inbounds %struct.DState, %struct.DState* %4276, i32 0, i32 13
  %4278 = load i32, i32* %4277, align 8
  %4279 = icmp slt i32 %4278, 0
  br i1 %4279, label %4286, label %4280

; <label>:4280:                                   ; preds = %4275
  %4281 = load %struct.DState*, %struct.DState** %3, align 8
  %4282 = getelementptr inbounds %struct.DState, %struct.DState* %4281, i32 0, i32 13
  %4283 = load i32, i32* %4282, align 8
  %4284 = load i32, i32* %20, align 4
  %4285 = icmp sge i32 %4283, %4284
  br i1 %4285, label %4286, label %4287

; <label>:4286:                                   ; preds = %4280, %4275
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4287:                                   ; preds = %4280
  store i32 0, i32* %9, align 4
  br label %4288

; <label>:4288:                                   ; preds = %4310, %4287
  %4289 = load i32, i32* %9, align 4
  %4290 = icmp sle i32 %4289, 255
  br i1 %4290, label %4291, label %4313

; <label>:4291:                                   ; preds = %4288
  %4292 = load %struct.DState*, %struct.DState** %3, align 8
  %4293 = getelementptr inbounds %struct.DState, %struct.DState* %4292, i32 0, i32 16
  %4294 = load i32, i32* %9, align 4
  %4295 = sext i32 %4294 to i64
  %4296 = getelementptr inbounds [256 x i32], [256 x i32]* %4293, i64 0, i64 %4295
  %4297 = load i32, i32* %4296, align 4
  %4298 = icmp slt i32 %4297, 0
  br i1 %4298, label %4308, label %4299

; <label>:4299:                                   ; preds = %4291
  %4300 = load %struct.DState*, %struct.DState** %3, align 8
  %4301 = getelementptr inbounds %struct.DState, %struct.DState* %4300, i32 0, i32 16
  %4302 = load i32, i32* %9, align 4
  %4303 = sext i32 %4302 to i64
  %4304 = getelementptr inbounds [256 x i32], [256 x i32]* %4301, i64 0, i64 %4303
  %4305 = load i32, i32* %4304, align 4
  %4306 = load i32, i32* %20, align 4
  %4307 = icmp sgt i32 %4305, %4306
  br i1 %4307, label %4308, label %4309

; <label>:4308:                                   ; preds = %4299, %4291
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4309:                                   ; preds = %4299
  br label %4310

; <label>:4310:                                   ; preds = %4309
  %4311 = load i32, i32* %9, align 4
  %4312 = add nsw i32 %4311, 1
  store i32 %4312, i32* %9, align 4
  br label %4288

; <label>:4313:                                   ; preds = %4288
  %4314 = load %struct.DState*, %struct.DState** %3, align 8
  %4315 = getelementptr inbounds %struct.DState, %struct.DState* %4314, i32 0, i32 18
  %4316 = getelementptr inbounds [257 x i32], [257 x i32]* %4315, i64 0, i64 0
  store i32 0, i32* %4316, align 8
  store i32 1, i32* %9, align 4
  br label %4317

; <label>:4317:                                   ; preds = %4333, %4313
  %4318 = load i32, i32* %9, align 4
  %4319 = icmp sle i32 %4318, 256
  br i1 %4319, label %4320, label %4336

; <label>:4320:                                   ; preds = %4317
  %4321 = load %struct.DState*, %struct.DState** %3, align 8
  %4322 = getelementptr inbounds %struct.DState, %struct.DState* %4321, i32 0, i32 16
  %4323 = load i32, i32* %9, align 4
  %4324 = sub nsw i32 %4323, 1
  %4325 = sext i32 %4324 to i64
  %4326 = getelementptr inbounds [256 x i32], [256 x i32]* %4322, i64 0, i64 %4325
  %4327 = load i32, i32* %4326, align 4
  %4328 = load %struct.DState*, %struct.DState** %3, align 8
  %4329 = getelementptr inbounds %struct.DState, %struct.DState* %4328, i32 0, i32 18
  %4330 = load i32, i32* %9, align 4
  %4331 = sext i32 %4330 to i64
  %4332 = getelementptr inbounds [257 x i32], [257 x i32]* %4329, i64 0, i64 %4331
  store i32 %4327, i32* %4332, align 4
  br label %4333

; <label>:4333:                                   ; preds = %4320
  %4334 = load i32, i32* %9, align 4
  %4335 = add nsw i32 %4334, 1
  store i32 %4335, i32* %9, align 4
  br label %4317

; <label>:4336:                                   ; preds = %4317
  store i32 1, i32* %9, align 4
  br label %4337

; <label>:4337:                                   ; preds = %4355, %4336
  %4338 = load i32, i32* %9, align 4
  %4339 = icmp sle i32 %4338, 256
  br i1 %4339, label %4340, label %4358

; <label>:4340:                                   ; preds = %4337
  %4341 = load %struct.DState*, %struct.DState** %3, align 8
  %4342 = getelementptr inbounds %struct.DState, %struct.DState* %4341, i32 0, i32 18
  %4343 = load i32, i32* %9, align 4
  %4344 = sub nsw i32 %4343, 1
  %4345 = sext i32 %4344 to i64
  %4346 = getelementptr inbounds [257 x i32], [257 x i32]* %4342, i64 0, i64 %4345
  %4347 = load i32, i32* %4346, align 4
  %4348 = load %struct.DState*, %struct.DState** %3, align 8
  %4349 = getelementptr inbounds %struct.DState, %struct.DState* %4348, i32 0, i32 18
  %4350 = load i32, i32* %9, align 4
  %4351 = sext i32 %4350 to i64
  %4352 = getelementptr inbounds [257 x i32], [257 x i32]* %4349, i64 0, i64 %4351
  %4353 = load i32, i32* %4352, align 4
  %4354 = add nsw i32 %4353, %4347
  store i32 %4354, i32* %4352, align 4
  br label %4355

; <label>:4355:                                   ; preds = %4340
  %4356 = load i32, i32* %9, align 4
  %4357 = add nsw i32 %4356, 1
  store i32 %4357, i32* %9, align 4
  br label %4337

; <label>:4358:                                   ; preds = %4337
  store i32 0, i32* %9, align 4
  br label %4359

; <label>:4359:                                   ; preds = %4381, %4358
  %4360 = load i32, i32* %9, align 4
  %4361 = icmp sle i32 %4360, 256
  br i1 %4361, label %4362, label %4384

; <label>:4362:                                   ; preds = %4359
  %4363 = load %struct.DState*, %struct.DState** %3, align 8
  %4364 = getelementptr inbounds %struct.DState, %struct.DState* %4363, i32 0, i32 18
  %4365 = load i32, i32* %9, align 4
  %4366 = sext i32 %4365 to i64
  %4367 = getelementptr inbounds [257 x i32], [257 x i32]* %4364, i64 0, i64 %4366
  %4368 = load i32, i32* %4367, align 4
  %4369 = icmp slt i32 %4368, 0
  br i1 %4369, label %4379, label %4370

; <label>:4370:                                   ; preds = %4362
  %4371 = load %struct.DState*, %struct.DState** %3, align 8
  %4372 = getelementptr inbounds %struct.DState, %struct.DState* %4371, i32 0, i32 18
  %4373 = load i32, i32* %9, align 4
  %4374 = sext i32 %4373 to i64
  %4375 = getelementptr inbounds [257 x i32], [257 x i32]* %4372, i64 0, i64 %4374
  %4376 = load i32, i32* %4375, align 4
  %4377 = load i32, i32* %20, align 4
  %4378 = icmp sgt i32 %4376, %4377
  br i1 %4378, label %4379, label %4380

; <label>:4379:                                   ; preds = %4370, %4362
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4380:                                   ; preds = %4370
  br label %4381

; <label>:4381:                                   ; preds = %4380
  %4382 = load i32, i32* %9, align 4
  %4383 = add nsw i32 %4382, 1
  store i32 %4383, i32* %9, align 4
  br label %4359

; <label>:4384:                                   ; preds = %4359
  store i32 1, i32* %9, align 4
  br label %4385

; <label>:4385:                                   ; preds = %4405, %4384
  %4386 = load i32, i32* %9, align 4
  %4387 = icmp sle i32 %4386, 256
  br i1 %4387, label %4388, label %4408

; <label>:4388:                                   ; preds = %4385
  %4389 = load %struct.DState*, %struct.DState** %3, align 8
  %4390 = getelementptr inbounds %struct.DState, %struct.DState* %4389, i32 0, i32 18
  %4391 = load i32, i32* %9, align 4
  %4392 = sub nsw i32 %4391, 1
  %4393 = sext i32 %4392 to i64
  %4394 = getelementptr inbounds [257 x i32], [257 x i32]* %4390, i64 0, i64 %4393
  %4395 = load i32, i32* %4394, align 4
  %4396 = load %struct.DState*, %struct.DState** %3, align 8
  %4397 = getelementptr inbounds %struct.DState, %struct.DState* %4396, i32 0, i32 18
  %4398 = load i32, i32* %9, align 4
  %4399 = sext i32 %4398 to i64
  %4400 = getelementptr inbounds [257 x i32], [257 x i32]* %4397, i64 0, i64 %4399
  %4401 = load i32, i32* %4400, align 4
  %4402 = icmp sgt i32 %4395, %4401
  br i1 %4402, label %4403, label %4404

; <label>:4403:                                   ; preds = %4388
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:4404:                                   ; preds = %4388
  br label %4405

; <label>:4405:                                   ; preds = %4404
  %4406 = load i32, i32* %9, align 4
  %4407 = add nsw i32 %4406, 1
  store i32 %4407, i32* %9, align 4
  br label %4385

; <label>:4408:                                   ; preds = %4385
  %4409 = load %struct.DState*, %struct.DState** %3, align 8
  %4410 = getelementptr inbounds %struct.DState, %struct.DState* %4409, i32 0, i32 3
  store i32 0, i32* %4410, align 8
  %4411 = load %struct.DState*, %struct.DState** %3, align 8
  %4412 = getelementptr inbounds %struct.DState, %struct.DState* %4411, i32 0, i32 2
  store i8 0, i8* %4412, align 4
  %4413 = load %struct.DState*, %struct.DState** %3, align 8
  %4414 = getelementptr inbounds %struct.DState, %struct.DState* %4413, i32 0, i32 25
  store i32 -1, i32* %4414, align 8
  %4415 = load %struct.DState*, %struct.DState** %3, align 8
  %4416 = getelementptr inbounds %struct.DState, %struct.DState* %4415, i32 0, i32 1
  store i32 2, i32* %4416, align 8
  %4417 = load %struct.DState*, %struct.DState** %3, align 8
  %4418 = getelementptr inbounds %struct.DState, %struct.DState* %4417, i32 0, i32 12
  %4419 = load i32, i32* %4418, align 4
  %4420 = icmp sge i32 %4419, 2
  br i1 %4420, label %4421, label %4424

; <label>:4421:                                   ; preds = %4408
  %4422 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8
  %4423 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4422, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0))
  br label %4424

; <label>:4424:                                   ; preds = %4421, %4408
  %4425 = load %struct.DState*, %struct.DState** %3, align 8
  %4426 = getelementptr inbounds %struct.DState, %struct.DState* %4425, i32 0, i32 10
  %4427 = load i8, i8* %4426, align 4
  %4428 = icmp ne i8 %4427, 0
  br i1 %4428, label %4429, label %4833

; <label>:4429:                                   ; preds = %4424
  store i32 0, i32* %9, align 4
  br label %4430

; <label>:4430:                                   ; preds = %4445, %4429
  %4431 = load i32, i32* %9, align 4
  %4432 = icmp sle i32 %4431, 256
  br i1 %4432, label %4433, label %4448

; <label>:4433:                                   ; preds = %4430
  %4434 = load %struct.DState*, %struct.DState** %3, align 8
  %4435 = getelementptr inbounds %struct.DState, %struct.DState* %4434, i32 0, i32 18
  %4436 = load i32, i32* %9, align 4
  %4437 = sext i32 %4436 to i64
  %4438 = getelementptr inbounds [257 x i32], [257 x i32]* %4435, i64 0, i64 %4437
  %4439 = load i32, i32* %4438, align 4
  %4440 = load %struct.DState*, %struct.DState** %3, align 8
  %4441 = getelementptr inbounds %struct.DState, %struct.DState* %4440, i32 0, i32 19
  %4442 = load i32, i32* %9, align 4
  %4443 = sext i32 %4442 to i64
  %4444 = getelementptr inbounds [257 x i32], [257 x i32]* %4441, i64 0, i64 %4443
  store i32 %4439, i32* %4444, align 4
  br label %4445

; <label>:4445:                                   ; preds = %4433
  %4446 = load i32, i32* %9, align 4
  %4447 = add nsw i32 %4446, 1
  store i32 %4447, i32* %9, align 4
  br label %4430

; <label>:4448:                                   ; preds = %4430
  store i32 0, i32* %9, align 4
  br label %4449

; <label>:4449:                                   ; preds = %4542, %4448
  %4450 = load i32, i32* %9, align 4
  %4451 = load i32, i32* %20, align 4
  %4452 = icmp slt i32 %4450, %4451
  br i1 %4452, label %4453, label %4545

; <label>:4453:                                   ; preds = %4449
  %4454 = load %struct.DState*, %struct.DState** %3, align 8
  %4455 = getelementptr inbounds %struct.DState, %struct.DState* %4454, i32 0, i32 21
  %4456 = load i16*, i16** %4455, align 8
  %4457 = load i32, i32* %9, align 4
  %4458 = sext i32 %4457 to i64
  %4459 = getelementptr inbounds i16, i16* %4456, i64 %4458
  %4460 = load i16, i16* %4459, align 2
  %4461 = trunc i16 %4460 to i8
  store i8 %4461, i8* %4, align 1
  %4462 = load %struct.DState*, %struct.DState** %3, align 8
  %4463 = getelementptr inbounds %struct.DState, %struct.DState* %4462, i32 0, i32 19
  %4464 = load i8, i8* %4, align 1
  %4465 = zext i8 %4464 to i64
  %4466 = getelementptr inbounds [257 x i32], [257 x i32]* %4463, i64 0, i64 %4465
  %4467 = load i32, i32* %4466, align 4
  %4468 = and i32 %4467, 65535
  %4469 = trunc i32 %4468 to i16
  %4470 = load %struct.DState*, %struct.DState** %3, align 8
  %4471 = getelementptr inbounds %struct.DState, %struct.DState* %4470, i32 0, i32 21
  %4472 = load i16*, i16** %4471, align 8
  %4473 = load i32, i32* %9, align 4
  %4474 = sext i32 %4473 to i64
  %4475 = getelementptr inbounds i16, i16* %4472, i64 %4474
  store i16 %4469, i16* %4475, align 2
  %4476 = load i32, i32* %9, align 4
  %4477 = and i32 %4476, 1
  %4478 = icmp eq i32 %4477, 0
  br i1 %4478, label %4479, label %4506

; <label>:4479:                                   ; preds = %4453
  %4480 = load %struct.DState*, %struct.DState** %3, align 8
  %4481 = getelementptr inbounds %struct.DState, %struct.DState* %4480, i32 0, i32 22
  %4482 = load i8*, i8** %4481, align 8
  %4483 = load i32, i32* %9, align 4
  %4484 = ashr i32 %4483, 1
  %4485 = sext i32 %4484 to i64
  %4486 = getelementptr inbounds i8, i8* %4482, i64 %4485
  %4487 = load i8, i8* %4486, align 1
  %4488 = zext i8 %4487 to i32
  %4489 = and i32 %4488, 240
  %4490 = load %struct.DState*, %struct.DState** %3, align 8
  %4491 = getelementptr inbounds %struct.DState, %struct.DState* %4490, i32 0, i32 19
  %4492 = load i8, i8* %4, align 1
  %4493 = zext i8 %4492 to i64
  %4494 = getelementptr inbounds [257 x i32], [257 x i32]* %4491, i64 0, i64 %4493
  %4495 = load i32, i32* %4494, align 4
  %4496 = ashr i32 %4495, 16
  %4497 = or i32 %4489, %4496
  %4498 = trunc i32 %4497 to i8
  %4499 = load %struct.DState*, %struct.DState** %3, align 8
  %4500 = getelementptr inbounds %struct.DState, %struct.DState* %4499, i32 0, i32 22
  %4501 = load i8*, i8** %4500, align 8
  %4502 = load i32, i32* %9, align 4
  %4503 = ashr i32 %4502, 1
  %4504 = sext i32 %4503 to i64
  %4505 = getelementptr inbounds i8, i8* %4501, i64 %4504
  store i8 %4498, i8* %4505, align 1
  br label %4534

; <label>:4506:                                   ; preds = %4453
  %4507 = load %struct.DState*, %struct.DState** %3, align 8
  %4508 = getelementptr inbounds %struct.DState, %struct.DState* %4507, i32 0, i32 22
  %4509 = load i8*, i8** %4508, align 8
  %4510 = load i32, i32* %9, align 4
  %4511 = ashr i32 %4510, 1
  %4512 = sext i32 %4511 to i64
  %4513 = getelementptr inbounds i8, i8* %4509, i64 %4512
  %4514 = load i8, i8* %4513, align 1
  %4515 = zext i8 %4514 to i32
  %4516 = and i32 %4515, 15
  %4517 = load %struct.DState*, %struct.DState** %3, align 8
  %4518 = getelementptr inbounds %struct.DState, %struct.DState* %4517, i32 0, i32 19
  %4519 = load i8, i8* %4, align 1
  %4520 = zext i8 %4519 to i64
  %4521 = getelementptr inbounds [257 x i32], [257 x i32]* %4518, i64 0, i64 %4520
  %4522 = load i32, i32* %4521, align 4
  %4523 = ashr i32 %4522, 16
  %4524 = shl i32 %4523, 4
  %4525 = or i32 %4516, %4524
  %4526 = trunc i32 %4525 to i8
  %4527 = load %struct.DState*, %struct.DState** %3, align 8
  %4528 = getelementptr inbounds %struct.DState, %struct.DState* %4527, i32 0, i32 22
  %4529 = load i8*, i8** %4528, align 8
  %4530 = load i32, i32* %9, align 4
  %4531 = ashr i32 %4530, 1
  %4532 = sext i32 %4531 to i64
  %4533 = getelementptr inbounds i8, i8* %4529, i64 %4532
  store i8 %4526, i8* %4533, align 1
  br label %4534

; <label>:4534:                                   ; preds = %4506, %4479
  %4535 = load %struct.DState*, %struct.DState** %3, align 8
  %4536 = getelementptr inbounds %struct.DState, %struct.DState* %4535, i32 0, i32 19
  %4537 = load i8, i8* %4, align 1
  %4538 = zext i8 %4537 to i64
  %4539 = getelementptr inbounds [257 x i32], [257 x i32]* %4536, i64 0, i64 %4538
  %4540 = load i32, i32* %4539, align 4
  %4541 = add nsw i32 %4540, 1
  store i32 %4541, i32* %4539, align 4
  br label %4542

; <label>:4542:                                   ; preds = %4534
  %4543 = load i32, i32* %9, align 4
  %4544 = add nsw i32 %4543, 1
  store i32 %4544, i32* %9, align 4
  br label %4449

; <label>:4545:                                   ; preds = %4449
  %4546 = load %struct.DState*, %struct.DState** %3, align 8
  %4547 = getelementptr inbounds %struct.DState, %struct.DState* %4546, i32 0, i32 13
  %4548 = load i32, i32* %4547, align 8
  store i32 %4548, i32* %9, align 4
  %4549 = load %struct.DState*, %struct.DState** %3, align 8
  %4550 = getelementptr inbounds %struct.DState, %struct.DState* %4549, i32 0, i32 21
  %4551 = load i16*, i16** %4550, align 8
  %4552 = load i32, i32* %9, align 4
  %4553 = sext i32 %4552 to i64
  %4554 = getelementptr inbounds i16, i16* %4551, i64 %4553
  %4555 = load i16, i16* %4554, align 2
  %4556 = zext i16 %4555 to i32
  %4557 = load %struct.DState*, %struct.DState** %3, align 8
  %4558 = getelementptr inbounds %struct.DState, %struct.DState* %4557, i32 0, i32 22
  %4559 = load i8*, i8** %4558, align 8
  %4560 = load i32, i32* %9, align 4
  %4561 = ashr i32 %4560, 1
  %4562 = sext i32 %4561 to i64
  %4563 = getelementptr inbounds i8, i8* %4559, i64 %4562
  %4564 = load i8, i8* %4563, align 1
  %4565 = zext i8 %4564 to i32
  %4566 = load i32, i32* %9, align 4
  %4567 = shl i32 %4566, 2
  %4568 = and i32 %4567, 4
  %4569 = lshr i32 %4565, %4568
  %4570 = and i32 %4569, 15
  %4571 = shl i32 %4570, 16
  %4572 = or i32 %4556, %4571
  store i32 %4572, i32* %10, align 4
  br label %4573

; <label>:4573:                                   ; preds = %4658, %4545
  %4574 = load %struct.DState*, %struct.DState** %3, align 8
  %4575 = getelementptr inbounds %struct.DState, %struct.DState* %4574, i32 0, i32 21
  %4576 = load i16*, i16** %4575, align 8
  %4577 = load i32, i32* %10, align 4
  %4578 = sext i32 %4577 to i64
  %4579 = getelementptr inbounds i16, i16* %4576, i64 %4578
  %4580 = load i16, i16* %4579, align 2
  %4581 = zext i16 %4580 to i32
  %4582 = load %struct.DState*, %struct.DState** %3, align 8
  %4583 = getelementptr inbounds %struct.DState, %struct.DState* %4582, i32 0, i32 22
  %4584 = load i8*, i8** %4583, align 8
  %4585 = load i32, i32* %10, align 4
  %4586 = ashr i32 %4585, 1
  %4587 = sext i32 %4586 to i64
  %4588 = getelementptr inbounds i8, i8* %4584, i64 %4587
  %4589 = load i8, i8* %4588, align 1
  %4590 = zext i8 %4589 to i32
  %4591 = load i32, i32* %10, align 4
  %4592 = shl i32 %4591, 2
  %4593 = and i32 %4592, 4
  %4594 = lshr i32 %4590, %4593
  %4595 = and i32 %4594, 15
  %4596 = shl i32 %4595, 16
  %4597 = or i32 %4581, %4596
  store i32 %4597, i32* %79, align 4
  %4598 = load i32, i32* %9, align 4
  %4599 = and i32 %4598, 65535
  %4600 = trunc i32 %4599 to i16
  %4601 = load %struct.DState*, %struct.DState** %3, align 8
  %4602 = getelementptr inbounds %struct.DState, %struct.DState* %4601, i32 0, i32 21
  %4603 = load i16*, i16** %4602, align 8
  %4604 = load i32, i32* %10, align 4
  %4605 = sext i32 %4604 to i64
  %4606 = getelementptr inbounds i16, i16* %4603, i64 %4605
  store i16 %4600, i16* %4606, align 2
  %4607 = load i32, i32* %10, align 4
  %4608 = and i32 %4607, 1
  %4609 = icmp eq i32 %4608, 0
  br i1 %4609, label %4610, label %4632

; <label>:4610:                                   ; preds = %4573
  %4611 = load %struct.DState*, %struct.DState** %3, align 8
  %4612 = getelementptr inbounds %struct.DState, %struct.DState* %4611, i32 0, i32 22
  %4613 = load i8*, i8** %4612, align 8
  %4614 = load i32, i32* %10, align 4
  %4615 = ashr i32 %4614, 1
  %4616 = sext i32 %4615 to i64
  %4617 = getelementptr inbounds i8, i8* %4613, i64 %4616
  %4618 = load i8, i8* %4617, align 1
  %4619 = zext i8 %4618 to i32
  %4620 = and i32 %4619, 240
  %4621 = load i32, i32* %9, align 4
  %4622 = ashr i32 %4621, 16
  %4623 = or i32 %4620, %4622
  %4624 = trunc i32 %4623 to i8
  %4625 = load %struct.DState*, %struct.DState** %3, align 8
  %4626 = getelementptr inbounds %struct.DState, %struct.DState* %4625, i32 0, i32 22
  %4627 = load i8*, i8** %4626, align 8
  %4628 = load i32, i32* %10, align 4
  %4629 = ashr i32 %4628, 1
  %4630 = sext i32 %4629 to i64
  %4631 = getelementptr inbounds i8, i8* %4627, i64 %4630
  store i8 %4624, i8* %4631, align 1
  br label %4655

; <label>:4632:                                   ; preds = %4573
  %4633 = load %struct.DState*, %struct.DState** %3, align 8
  %4634 = getelementptr inbounds %struct.DState, %struct.DState* %4633, i32 0, i32 22
  %4635 = load i8*, i8** %4634, align 8
  %4636 = load i32, i32* %10, align 4
  %4637 = ashr i32 %4636, 1
  %4638 = sext i32 %4637 to i64
  %4639 = getelementptr inbounds i8, i8* %4635, i64 %4638
  %4640 = load i8, i8* %4639, align 1
  %4641 = zext i8 %4640 to i32
  %4642 = and i32 %4641, 15
  %4643 = load i32, i32* %9, align 4
  %4644 = ashr i32 %4643, 16
  %4645 = shl i32 %4644, 4
  %4646 = or i32 %4642, %4645
  %4647 = trunc i32 %4646 to i8
  %4648 = load %struct.DState*, %struct.DState** %3, align 8
  %4649 = getelementptr inbounds %struct.DState, %struct.DState* %4648, i32 0, i32 22
  %4650 = load i8*, i8** %4649, align 8
  %4651 = load i32, i32* %10, align 4
  %4652 = ashr i32 %4651, 1
  %4653 = sext i32 %4652 to i64
  %4654 = getelementptr inbounds i8, i8* %4650, i64 %4653
  store i8 %4647, i8* %4654, align 1
  br label %4655

; <label>:4655:                                   ; preds = %4632, %4610
  %4656 = load i32, i32* %10, align 4
  store i32 %4656, i32* %9, align 4
  %4657 = load i32, i32* %79, align 4
  store i32 %4657, i32* %10, align 4
  br label %4658

; <label>:4658:                                   ; preds = %4655
  %4659 = load i32, i32* %9, align 4
  %4660 = load %struct.DState*, %struct.DState** %3, align 8
  %4661 = getelementptr inbounds %struct.DState, %struct.DState* %4660, i32 0, i32 13
  %4662 = load i32, i32* %4661, align 8
  %4663 = icmp ne i32 %4659, %4662
  br i1 %4663, label %4573, label %4664

; <label>:4664:                                   ; preds = %4658
  %4665 = load %struct.DState*, %struct.DState** %3, align 8
  %4666 = getelementptr inbounds %struct.DState, %struct.DState* %4665, i32 0, i32 13
  %4667 = load i32, i32* %4666, align 8
  %4668 = load %struct.DState*, %struct.DState** %3, align 8
  %4669 = getelementptr inbounds %struct.DState, %struct.DState* %4668, i32 0, i32 14
  store i32 %4667, i32* %4669, align 4
  %4670 = load %struct.DState*, %struct.DState** %3, align 8
  %4671 = getelementptr inbounds %struct.DState, %struct.DState* %4670, i32 0, i32 17
  store i32 0, i32* %4671, align 4
  %4672 = load %struct.DState*, %struct.DState** %3, align 8
  %4673 = getelementptr inbounds %struct.DState, %struct.DState* %4672, i32 0, i32 4
  %4674 = load i8, i8* %4673, align 4
  %4675 = icmp ne i8 %4674, 0
  br i1 %4675, label %4676, label %4776

; <label>:4676:                                   ; preds = %4664
  %4677 = load %struct.DState*, %struct.DState** %3, align 8
  %4678 = getelementptr inbounds %struct.DState, %struct.DState* %4677, i32 0, i32 5
  store i32 0, i32* %4678, align 8
  %4679 = load %struct.DState*, %struct.DState** %3, align 8
  %4680 = getelementptr inbounds %struct.DState, %struct.DState* %4679, i32 0, i32 6
  store i32 0, i32* %4680, align 4
  %4681 = load %struct.DState*, %struct.DState** %3, align 8
  %4682 = getelementptr inbounds %struct.DState, %struct.DState* %4681, i32 0, i32 14
  %4683 = load i32, i32* %4682, align 4
  %4684 = load %struct.DState*, %struct.DState** %3, align 8
  %4685 = getelementptr inbounds %struct.DState, %struct.DState* %4684, i32 0, i32 9
  %4686 = load i32, i32* %4685, align 8
  %4687 = mul i32 100000, %4686
  %4688 = icmp uge i32 %4683, %4687
  br i1 %4688, label %4689, label %4690

; <label>:4689:                                   ; preds = %4676
  store i32 1, i32* %2, align 4
  br label %5912

; <label>:4690:                                   ; preds = %4676
  %4691 = load %struct.DState*, %struct.DState** %3, align 8
  %4692 = getelementptr inbounds %struct.DState, %struct.DState* %4691, i32 0, i32 14
  %4693 = load i32, i32* %4692, align 4
  %4694 = load %struct.DState*, %struct.DState** %3, align 8
  %4695 = getelementptr inbounds %struct.DState, %struct.DState* %4694, i32 0, i32 18
  %4696 = getelementptr inbounds [257 x i32], [257 x i32]* %4695, i32 0, i32 0
  %4697 = call i32 @BZ2_indexIntoF(i32 %4693, i32* %4696)
  %4698 = load %struct.DState*, %struct.DState** %3, align 8
  %4699 = getelementptr inbounds %struct.DState, %struct.DState* %4698, i32 0, i32 15
  store i32 %4697, i32* %4699, align 8
  %4700 = load %struct.DState*, %struct.DState** %3, align 8
  %4701 = getelementptr inbounds %struct.DState, %struct.DState* %4700, i32 0, i32 21
  %4702 = load i16*, i16** %4701, align 8
  %4703 = load %struct.DState*, %struct.DState** %3, align 8
  %4704 = getelementptr inbounds %struct.DState, %struct.DState* %4703, i32 0, i32 14
  %4705 = load i32, i32* %4704, align 4
  %4706 = zext i32 %4705 to i64
  %4707 = getelementptr inbounds i16, i16* %4702, i64 %4706
  %4708 = load i16, i16* %4707, align 2
  %4709 = zext i16 %4708 to i32
  %4710 = load %struct.DState*, %struct.DState** %3, align 8
  %4711 = getelementptr inbounds %struct.DState, %struct.DState* %4710, i32 0, i32 22
  %4712 = load i8*, i8** %4711, align 8
  %4713 = load %struct.DState*, %struct.DState** %3, align 8
  %4714 = getelementptr inbounds %struct.DState, %struct.DState* %4713, i32 0, i32 14
  %4715 = load i32, i32* %4714, align 4
  %4716 = lshr i32 %4715, 1
  %4717 = zext i32 %4716 to i64
  %4718 = getelementptr inbounds i8, i8* %4712, i64 %4717
  %4719 = load i8, i8* %4718, align 1
  %4720 = zext i8 %4719 to i32
  %4721 = load %struct.DState*, %struct.DState** %3, align 8
  %4722 = getelementptr inbounds %struct.DState, %struct.DState* %4721, i32 0, i32 14
  %4723 = load i32, i32* %4722, align 4
  %4724 = shl i32 %4723, 2
  %4725 = and i32 %4724, 4
  %4726 = lshr i32 %4720, %4725
  %4727 = and i32 %4726, 15
  %4728 = shl i32 %4727, 16
  %4729 = or i32 %4709, %4728
  %4730 = load %struct.DState*, %struct.DState** %3, align 8
  %4731 = getelementptr inbounds %struct.DState, %struct.DState* %4730, i32 0, i32 14
  store i32 %4729, i32* %4731, align 4
  %4732 = load %struct.DState*, %struct.DState** %3, align 8
  %4733 = getelementptr inbounds %struct.DState, %struct.DState* %4732, i32 0, i32 17
  %4734 = load i32, i32* %4733, align 4
  %4735 = add nsw i32 %4734, 1
  store i32 %4735, i32* %4733, align 4
  %4736 = load %struct.DState*, %struct.DState** %3, align 8
  %4737 = getelementptr inbounds %struct.DState, %struct.DState* %4736, i32 0, i32 5
  %4738 = load i32, i32* %4737, align 8
  %4739 = icmp eq i32 %4738, 0
  br i1 %4739, label %4740, label %4761

; <label>:4740:                                   ; preds = %4690
  %4741 = load %struct.DState*, %struct.DState** %3, align 8
  %4742 = getelementptr inbounds %struct.DState, %struct.DState* %4741, i32 0, i32 6
  %4743 = load i32, i32* %4742, align 4
  %4744 = sext i32 %4743 to i64
  %4745 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %4744
  %4746 = load i32, i32* %4745, align 4
  %4747 = load %struct.DState*, %struct.DState** %3, align 8
  %4748 = getelementptr inbounds %struct.DState, %struct.DState* %4747, i32 0, i32 5
  store i32 %4746, i32* %4748, align 8
  %4749 = load %struct.DState*, %struct.DState** %3, align 8
  %4750 = getelementptr inbounds %struct.DState, %struct.DState* %4749, i32 0, i32 6
  %4751 = load i32, i32* %4750, align 4
  %4752 = add nsw i32 %4751, 1
  store i32 %4752, i32* %4750, align 4
  %4753 = load %struct.DState*, %struct.DState** %3, align 8
  %4754 = getelementptr inbounds %struct.DState, %struct.DState* %4753, i32 0, i32 6
  %4755 = load i32, i32* %4754, align 4
  %4756 = icmp eq i32 %4755, 512
  br i1 %4756, label %4757, label %4760

; <label>:4757:                                   ; preds = %4740
  %4758 = load %struct.DState*, %struct.DState** %3, align 8
  %4759 = getelementptr inbounds %struct.DState, %struct.DState* %4758, i32 0, i32 6
  store i32 0, i32* %4759, align 4
  br label %4760

; <label>:4760:                                   ; preds = %4757, %4740
  br label %4761

; <label>:4761:                                   ; preds = %4760, %4690
  %4762 = load %struct.DState*, %struct.DState** %3, align 8
  %4763 = getelementptr inbounds %struct.DState, %struct.DState* %4762, i32 0, i32 5
  %4764 = load i32, i32* %4763, align 8
  %4765 = add nsw i32 %4764, -1
  store i32 %4765, i32* %4763, align 8
  %4766 = load %struct.DState*, %struct.DState** %3, align 8
  %4767 = getelementptr inbounds %struct.DState, %struct.DState* %4766, i32 0, i32 5
  %4768 = load i32, i32* %4767, align 8
  %4769 = icmp eq i32 %4768, 1
  %4770 = zext i1 %4769 to i64
  %4771 = select i1 %4769, i32 1, i32 0
  %4772 = load %struct.DState*, %struct.DState** %3, align 8
  %4773 = getelementptr inbounds %struct.DState, %struct.DState* %4772, i32 0, i32 15
  %4774 = load i32, i32* %4773, align 8
  %4775 = xor i32 %4774, %4771
  store i32 %4775, i32* %4773, align 8
  br label %4832

; <label>:4776:                                   ; preds = %4664
  %4777 = load %struct.DState*, %struct.DState** %3, align 8
  %4778 = getelementptr inbounds %struct.DState, %struct.DState* %4777, i32 0, i32 14
  %4779 = load i32, i32* %4778, align 4
  %4780 = load %struct.DState*, %struct.DState** %3, align 8
  %4781 = getelementptr inbounds %struct.DState, %struct.DState* %4780, i32 0, i32 9
  %4782 = load i32, i32* %4781, align 8
  %4783 = mul i32 100000, %4782
  %4784 = icmp uge i32 %4779, %4783
  br i1 %4784, label %4785, label %4786

; <label>:4785:                                   ; preds = %4776
  store i32 1, i32* %2, align 4
  br label %5912

; <label>:4786:                                   ; preds = %4776
  %4787 = load %struct.DState*, %struct.DState** %3, align 8
  %4788 = getelementptr inbounds %struct.DState, %struct.DState* %4787, i32 0, i32 14
  %4789 = load i32, i32* %4788, align 4
  %4790 = load %struct.DState*, %struct.DState** %3, align 8
  %4791 = getelementptr inbounds %struct.DState, %struct.DState* %4790, i32 0, i32 18
  %4792 = getelementptr inbounds [257 x i32], [257 x i32]* %4791, i32 0, i32 0
  %4793 = call i32 @BZ2_indexIntoF(i32 %4789, i32* %4792)
  %4794 = load %struct.DState*, %struct.DState** %3, align 8
  %4795 = getelementptr inbounds %struct.DState, %struct.DState* %4794, i32 0, i32 15
  store i32 %4793, i32* %4795, align 8
  %4796 = load %struct.DState*, %struct.DState** %3, align 8
  %4797 = getelementptr inbounds %struct.DState, %struct.DState* %4796, i32 0, i32 21
  %4798 = load i16*, i16** %4797, align 8
  %4799 = load %struct.DState*, %struct.DState** %3, align 8
  %4800 = getelementptr inbounds %struct.DState, %struct.DState* %4799, i32 0, i32 14
  %4801 = load i32, i32* %4800, align 4
  %4802 = zext i32 %4801 to i64
  %4803 = getelementptr inbounds i16, i16* %4798, i64 %4802
  %4804 = load i16, i16* %4803, align 2
  %4805 = zext i16 %4804 to i32
  %4806 = load %struct.DState*, %struct.DState** %3, align 8
  %4807 = getelementptr inbounds %struct.DState, %struct.DState* %4806, i32 0, i32 22
  %4808 = load i8*, i8** %4807, align 8
  %4809 = load %struct.DState*, %struct.DState** %3, align 8
  %4810 = getelementptr inbounds %struct.DState, %struct.DState* %4809, i32 0, i32 14
  %4811 = load i32, i32* %4810, align 4
  %4812 = lshr i32 %4811, 1
  %4813 = zext i32 %4812 to i64
  %4814 = getelementptr inbounds i8, i8* %4808, i64 %4813
  %4815 = load i8, i8* %4814, align 1
  %4816 = zext i8 %4815 to i32
  %4817 = load %struct.DState*, %struct.DState** %3, align 8
  %4818 = getelementptr inbounds %struct.DState, %struct.DState* %4817, i32 0, i32 14
  %4819 = load i32, i32* %4818, align 4
  %4820 = shl i32 %4819, 2
  %4821 = and i32 %4820, 4
  %4822 = lshr i32 %4816, %4821
  %4823 = and i32 %4822, 15
  %4824 = shl i32 %4823, 16
  %4825 = or i32 %4805, %4824
  %4826 = load %struct.DState*, %struct.DState** %3, align 8
  %4827 = getelementptr inbounds %struct.DState, %struct.DState* %4826, i32 0, i32 14
  store i32 %4825, i32* %4827, align 4
  %4828 = load %struct.DState*, %struct.DState** %3, align 8
  %4829 = getelementptr inbounds %struct.DState, %struct.DState* %4828, i32 0, i32 17
  %4830 = load i32, i32* %4829, align 4
  %4831 = add nsw i32 %4830, 1
  store i32 %4831, i32* %4829, align 4
  br label %4832

; <label>:4832:                                   ; preds = %4786, %4761
  br label %5013

; <label>:4833:                                   ; preds = %4424
  store i32 0, i32* %9, align 4
  br label %4834

; <label>:4834:                                   ; preds = %4870, %4833
  %4835 = load i32, i32* %9, align 4
  %4836 = load i32, i32* %20, align 4
  %4837 = icmp slt i32 %4835, %4836
  br i1 %4837, label %4838, label %4873

; <label>:4838:                                   ; preds = %4834
  %4839 = load %struct.DState*, %struct.DState** %3, align 8
  %4840 = getelementptr inbounds %struct.DState, %struct.DState* %4839, i32 0, i32 20
  %4841 = load i32*, i32** %4840, align 8
  %4842 = load i32, i32* %9, align 4
  %4843 = sext i32 %4842 to i64
  %4844 = getelementptr inbounds i32, i32* %4841, i64 %4843
  %4845 = load i32, i32* %4844, align 4
  %4846 = and i32 %4845, 255
  %4847 = trunc i32 %4846 to i8
  store i8 %4847, i8* %4, align 1
  %4848 = load i32, i32* %9, align 4
  %4849 = shl i32 %4848, 8
  %4850 = load %struct.DState*, %struct.DState** %3, align 8
  %4851 = getelementptr inbounds %struct.DState, %struct.DState* %4850, i32 0, i32 20
  %4852 = load i32*, i32** %4851, align 8
  %4853 = load %struct.DState*, %struct.DState** %3, align 8
  %4854 = getelementptr inbounds %struct.DState, %struct.DState* %4853, i32 0, i32 18
  %4855 = load i8, i8* %4, align 1
  %4856 = zext i8 %4855 to i64
  %4857 = getelementptr inbounds [257 x i32], [257 x i32]* %4854, i64 0, i64 %4856
  %4858 = load i32, i32* %4857, align 4
  %4859 = sext i32 %4858 to i64
  %4860 = getelementptr inbounds i32, i32* %4852, i64 %4859
  %4861 = load i32, i32* %4860, align 4
  %4862 = or i32 %4861, %4849
  store i32 %4862, i32* %4860, align 4
  %4863 = load %struct.DState*, %struct.DState** %3, align 8
  %4864 = getelementptr inbounds %struct.DState, %struct.DState* %4863, i32 0, i32 18
  %4865 = load i8, i8* %4, align 1
  %4866 = zext i8 %4865 to i64
  %4867 = getelementptr inbounds [257 x i32], [257 x i32]* %4864, i64 0, i64 %4866
  %4868 = load i32, i32* %4867, align 4
  %4869 = add nsw i32 %4868, 1
  store i32 %4869, i32* %4867, align 4
  br label %4870

; <label>:4870:                                   ; preds = %4838
  %4871 = load i32, i32* %9, align 4
  %4872 = add nsw i32 %4871, 1
  store i32 %4872, i32* %9, align 4
  br label %4834

; <label>:4873:                                   ; preds = %4834
  %4874 = load %struct.DState*, %struct.DState** %3, align 8
  %4875 = getelementptr inbounds %struct.DState, %struct.DState* %4874, i32 0, i32 20
  %4876 = load i32*, i32** %4875, align 8
  %4877 = load %struct.DState*, %struct.DState** %3, align 8
  %4878 = getelementptr inbounds %struct.DState, %struct.DState* %4877, i32 0, i32 13
  %4879 = load i32, i32* %4878, align 8
  %4880 = sext i32 %4879 to i64
  %4881 = getelementptr inbounds i32, i32* %4876, i64 %4880
  %4882 = load i32, i32* %4881, align 4
  %4883 = lshr i32 %4882, 8
  %4884 = load %struct.DState*, %struct.DState** %3, align 8
  %4885 = getelementptr inbounds %struct.DState, %struct.DState* %4884, i32 0, i32 14
  store i32 %4883, i32* %4885, align 4
  %4886 = load %struct.DState*, %struct.DState** %3, align 8
  %4887 = getelementptr inbounds %struct.DState, %struct.DState* %4886, i32 0, i32 17
  store i32 0, i32* %4887, align 4
  %4888 = load %struct.DState*, %struct.DState** %3, align 8
  %4889 = getelementptr inbounds %struct.DState, %struct.DState* %4888, i32 0, i32 4
  %4890 = load i8, i8* %4889, align 4
  %4891 = icmp ne i8 %4890, 0
  br i1 %4891, label %4892, label %4974

; <label>:4892:                                   ; preds = %4873
  %4893 = load %struct.DState*, %struct.DState** %3, align 8
  %4894 = getelementptr inbounds %struct.DState, %struct.DState* %4893, i32 0, i32 5
  store i32 0, i32* %4894, align 8
  %4895 = load %struct.DState*, %struct.DState** %3, align 8
  %4896 = getelementptr inbounds %struct.DState, %struct.DState* %4895, i32 0, i32 6
  store i32 0, i32* %4896, align 4
  %4897 = load %struct.DState*, %struct.DState** %3, align 8
  %4898 = getelementptr inbounds %struct.DState, %struct.DState* %4897, i32 0, i32 14
  %4899 = load i32, i32* %4898, align 4
  %4900 = load %struct.DState*, %struct.DState** %3, align 8
  %4901 = getelementptr inbounds %struct.DState, %struct.DState* %4900, i32 0, i32 9
  %4902 = load i32, i32* %4901, align 8
  %4903 = mul i32 100000, %4902
  %4904 = icmp uge i32 %4899, %4903
  br i1 %4904, label %4905, label %4906

; <label>:4905:                                   ; preds = %4892
  store i32 1, i32* %2, align 4
  br label %5912

; <label>:4906:                                   ; preds = %4892
  %4907 = load %struct.DState*, %struct.DState** %3, align 8
  %4908 = getelementptr inbounds %struct.DState, %struct.DState* %4907, i32 0, i32 20
  %4909 = load i32*, i32** %4908, align 8
  %4910 = load %struct.DState*, %struct.DState** %3, align 8
  %4911 = getelementptr inbounds %struct.DState, %struct.DState* %4910, i32 0, i32 14
  %4912 = load i32, i32* %4911, align 4
  %4913 = zext i32 %4912 to i64
  %4914 = getelementptr inbounds i32, i32* %4909, i64 %4913
  %4915 = load i32, i32* %4914, align 4
  %4916 = load %struct.DState*, %struct.DState** %3, align 8
  %4917 = getelementptr inbounds %struct.DState, %struct.DState* %4916, i32 0, i32 14
  store i32 %4915, i32* %4917, align 4
  %4918 = load %struct.DState*, %struct.DState** %3, align 8
  %4919 = getelementptr inbounds %struct.DState, %struct.DState* %4918, i32 0, i32 14
  %4920 = load i32, i32* %4919, align 4
  %4921 = and i32 %4920, 255
  %4922 = trunc i32 %4921 to i8
  %4923 = zext i8 %4922 to i32
  %4924 = load %struct.DState*, %struct.DState** %3, align 8
  %4925 = getelementptr inbounds %struct.DState, %struct.DState* %4924, i32 0, i32 15
  store i32 %4923, i32* %4925, align 8
  %4926 = load %struct.DState*, %struct.DState** %3, align 8
  %4927 = getelementptr inbounds %struct.DState, %struct.DState* %4926, i32 0, i32 14
  %4928 = load i32, i32* %4927, align 4
  %4929 = lshr i32 %4928, 8
  store i32 %4929, i32* %4927, align 4
  %4930 = load %struct.DState*, %struct.DState** %3, align 8
  %4931 = getelementptr inbounds %struct.DState, %struct.DState* %4930, i32 0, i32 17
  %4932 = load i32, i32* %4931, align 4
  %4933 = add nsw i32 %4932, 1
  store i32 %4933, i32* %4931, align 4
  %4934 = load %struct.DState*, %struct.DState** %3, align 8
  %4935 = getelementptr inbounds %struct.DState, %struct.DState* %4934, i32 0, i32 5
  %4936 = load i32, i32* %4935, align 8
  %4937 = icmp eq i32 %4936, 0
  br i1 %4937, label %4938, label %4959

; <label>:4938:                                   ; preds = %4906
  %4939 = load %struct.DState*, %struct.DState** %3, align 8
  %4940 = getelementptr inbounds %struct.DState, %struct.DState* %4939, i32 0, i32 6
  %4941 = load i32, i32* %4940, align 4
  %4942 = sext i32 %4941 to i64
  %4943 = getelementptr inbounds [512 x i32], [512 x i32]* @BZ2_rNums, i64 0, i64 %4942
  %4944 = load i32, i32* %4943, align 4
  %4945 = load %struct.DState*, %struct.DState** %3, align 8
  %4946 = getelementptr inbounds %struct.DState, %struct.DState* %4945, i32 0, i32 5
  store i32 %4944, i32* %4946, align 8
  %4947 = load %struct.DState*, %struct.DState** %3, align 8
  %4948 = getelementptr inbounds %struct.DState, %struct.DState* %4947, i32 0, i32 6
  %4949 = load i32, i32* %4948, align 4
  %4950 = add nsw i32 %4949, 1
  store i32 %4950, i32* %4948, align 4
  %4951 = load %struct.DState*, %struct.DState** %3, align 8
  %4952 = getelementptr inbounds %struct.DState, %struct.DState* %4951, i32 0, i32 6
  %4953 = load i32, i32* %4952, align 4
  %4954 = icmp eq i32 %4953, 512
  br i1 %4954, label %4955, label %4958

; <label>:4955:                                   ; preds = %4938
  %4956 = load %struct.DState*, %struct.DState** %3, align 8
  %4957 = getelementptr inbounds %struct.DState, %struct.DState* %4956, i32 0, i32 6
  store i32 0, i32* %4957, align 4
  br label %4958

; <label>:4958:                                   ; preds = %4955, %4938
  br label %4959

; <label>:4959:                                   ; preds = %4958, %4906
  %4960 = load %struct.DState*, %struct.DState** %3, align 8
  %4961 = getelementptr inbounds %struct.DState, %struct.DState* %4960, i32 0, i32 5
  %4962 = load i32, i32* %4961, align 8
  %4963 = add nsw i32 %4962, -1
  store i32 %4963, i32* %4961, align 8
  %4964 = load %struct.DState*, %struct.DState** %3, align 8
  %4965 = getelementptr inbounds %struct.DState, %struct.DState* %4964, i32 0, i32 5
  %4966 = load i32, i32* %4965, align 8
  %4967 = icmp eq i32 %4966, 1
  %4968 = zext i1 %4967 to i64
  %4969 = select i1 %4967, i32 1, i32 0
  %4970 = load %struct.DState*, %struct.DState** %3, align 8
  %4971 = getelementptr inbounds %struct.DState, %struct.DState* %4970, i32 0, i32 15
  %4972 = load i32, i32* %4971, align 8
  %4973 = xor i32 %4972, %4969
  store i32 %4973, i32* %4971, align 8
  br label %5012

; <label>:4974:                                   ; preds = %4873
  %4975 = load %struct.DState*, %struct.DState** %3, align 8
  %4976 = getelementptr inbounds %struct.DState, %struct.DState* %4975, i32 0, i32 14
  %4977 = load i32, i32* %4976, align 4
  %4978 = load %struct.DState*, %struct.DState** %3, align 8
  %4979 = getelementptr inbounds %struct.DState, %struct.DState* %4978, i32 0, i32 9
  %4980 = load i32, i32* %4979, align 8
  %4981 = mul i32 100000, %4980
  %4982 = icmp uge i32 %4977, %4981
  br i1 %4982, label %4983, label %4984

; <label>:4983:                                   ; preds = %4974
  store i32 1, i32* %2, align 4
  br label %5912

; <label>:4984:                                   ; preds = %4974
  %4985 = load %struct.DState*, %struct.DState** %3, align 8
  %4986 = getelementptr inbounds %struct.DState, %struct.DState* %4985, i32 0, i32 20
  %4987 = load i32*, i32** %4986, align 8
  %4988 = load %struct.DState*, %struct.DState** %3, align 8
  %4989 = getelementptr inbounds %struct.DState, %struct.DState* %4988, i32 0, i32 14
  %4990 = load i32, i32* %4989, align 4
  %4991 = zext i32 %4990 to i64
  %4992 = getelementptr inbounds i32, i32* %4987, i64 %4991
  %4993 = load i32, i32* %4992, align 4
  %4994 = load %struct.DState*, %struct.DState** %3, align 8
  %4995 = getelementptr inbounds %struct.DState, %struct.DState* %4994, i32 0, i32 14
  store i32 %4993, i32* %4995, align 4
  %4996 = load %struct.DState*, %struct.DState** %3, align 8
  %4997 = getelementptr inbounds %struct.DState, %struct.DState* %4996, i32 0, i32 14
  %4998 = load i32, i32* %4997, align 4
  %4999 = and i32 %4998, 255
  %5000 = trunc i32 %4999 to i8
  %5001 = zext i8 %5000 to i32
  %5002 = load %struct.DState*, %struct.DState** %3, align 8
  %5003 = getelementptr inbounds %struct.DState, %struct.DState* %5002, i32 0, i32 15
  store i32 %5001, i32* %5003, align 8
  %5004 = load %struct.DState*, %struct.DState** %3, align 8
  %5005 = getelementptr inbounds %struct.DState, %struct.DState* %5004, i32 0, i32 14
  %5006 = load i32, i32* %5005, align 4
  %5007 = lshr i32 %5006, 8
  store i32 %5007, i32* %5005, align 4
  %5008 = load %struct.DState*, %struct.DState** %3, align 8
  %5009 = getelementptr inbounds %struct.DState, %struct.DState* %5008, i32 0, i32 17
  %5010 = load i32, i32* %5009, align 4
  %5011 = add nsw i32 %5010, 1
  store i32 %5011, i32* %5009, align 4
  br label %5012

; <label>:5012:                                   ; preds = %4984, %4959
  br label %5013

; <label>:5013:                                   ; preds = %5012, %4832
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5014:                                   ; preds = %751
  br label %5015

; <label>:5015:                                   ; preds = %145, %5014
  %5016 = load %struct.DState*, %struct.DState** %3, align 8
  %5017 = getelementptr inbounds %struct.DState, %struct.DState* %5016, i32 0, i32 1
  store i32 42, i32* %5017, align 8
  br label %5018

; <label>:5018:                                   ; preds = %5015, %5097
  %5019 = load %struct.DState*, %struct.DState** %3, align 8
  %5020 = getelementptr inbounds %struct.DState, %struct.DState* %5019, i32 0, i32 8
  %5021 = load i32, i32* %5020, align 4
  %5022 = icmp sge i32 %5021, 8
  br i1 %5022, label %5023, label %5039

; <label>:5023:                                   ; preds = %5018
  %5024 = load %struct.DState*, %struct.DState** %3, align 8
  %5025 = getelementptr inbounds %struct.DState, %struct.DState* %5024, i32 0, i32 7
  %5026 = load i32, i32* %5025, align 8
  %5027 = load %struct.DState*, %struct.DState** %3, align 8
  %5028 = getelementptr inbounds %struct.DState, %struct.DState* %5027, i32 0, i32 8
  %5029 = load i32, i32* %5028, align 4
  %5030 = sub nsw i32 %5029, 8
  %5031 = lshr i32 %5026, %5030
  %5032 = and i32 %5031, 255
  store i32 %5032, i32* %80, align 4
  %5033 = load %struct.DState*, %struct.DState** %3, align 8
  %5034 = getelementptr inbounds %struct.DState, %struct.DState* %5033, i32 0, i32 8
  %5035 = load i32, i32* %5034, align 4
  %5036 = sub nsw i32 %5035, 8
  store i32 %5036, i32* %5034, align 4
  %5037 = load i32, i32* %80, align 4
  %5038 = trunc i32 %5037 to i8
  store i8 %5038, i8* %4, align 1
  br label %5098

; <label>:5039:                                   ; preds = %5018
  %5040 = load %struct.DState*, %struct.DState** %3, align 8
  %5041 = getelementptr inbounds %struct.DState, %struct.DState* %5040, i32 0, i32 0
  %5042 = load %struct.bz_stream*, %struct.bz_stream** %5041, align 8
  %5043 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5042, i32 0, i32 1
  %5044 = load i32, i32* %5043, align 8
  %5045 = icmp eq i32 %5044, 0
  br i1 %5045, label %5046, label %5047

; <label>:5046:                                   ; preds = %5039
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5047:                                   ; preds = %5039
  %5048 = load %struct.DState*, %struct.DState** %3, align 8
  %5049 = getelementptr inbounds %struct.DState, %struct.DState* %5048, i32 0, i32 7
  %5050 = load i32, i32* %5049, align 8
  %5051 = shl i32 %5050, 8
  %5052 = load %struct.DState*, %struct.DState** %3, align 8
  %5053 = getelementptr inbounds %struct.DState, %struct.DState* %5052, i32 0, i32 0
  %5054 = load %struct.bz_stream*, %struct.bz_stream** %5053, align 8
  %5055 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5054, i32 0, i32 0
  %5056 = load i8*, i8** %5055, align 8
  %5057 = load i8, i8* %5056, align 1
  %5058 = zext i8 %5057 to i32
  %5059 = or i32 %5051, %5058
  %5060 = load %struct.DState*, %struct.DState** %3, align 8
  %5061 = getelementptr inbounds %struct.DState, %struct.DState* %5060, i32 0, i32 7
  store i32 %5059, i32* %5061, align 8
  %5062 = load %struct.DState*, %struct.DState** %3, align 8
  %5063 = getelementptr inbounds %struct.DState, %struct.DState* %5062, i32 0, i32 8
  %5064 = load i32, i32* %5063, align 4
  %5065 = add nsw i32 %5064, 8
  store i32 %5065, i32* %5063, align 4
  %5066 = load %struct.DState*, %struct.DState** %3, align 8
  %5067 = getelementptr inbounds %struct.DState, %struct.DState* %5066, i32 0, i32 0
  %5068 = load %struct.bz_stream*, %struct.bz_stream** %5067, align 8
  %5069 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5068, i32 0, i32 0
  %5070 = load i8*, i8** %5069, align 8
  %5071 = getelementptr inbounds i8, i8* %5070, i32 1
  store i8* %5071, i8** %5069, align 8
  %5072 = load %struct.DState*, %struct.DState** %3, align 8
  %5073 = getelementptr inbounds %struct.DState, %struct.DState* %5072, i32 0, i32 0
  %5074 = load %struct.bz_stream*, %struct.bz_stream** %5073, align 8
  %5075 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5074, i32 0, i32 1
  %5076 = load i32, i32* %5075, align 8
  %5077 = add i32 %5076, -1
  store i32 %5077, i32* %5075, align 8
  %5078 = load %struct.DState*, %struct.DState** %3, align 8
  %5079 = getelementptr inbounds %struct.DState, %struct.DState* %5078, i32 0, i32 0
  %5080 = load %struct.bz_stream*, %struct.bz_stream** %5079, align 8
  %5081 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5080, i32 0, i32 2
  %5082 = load i32, i32* %5081, align 4
  %5083 = add i32 %5082, 1
  store i32 %5083, i32* %5081, align 4
  %5084 = load %struct.DState*, %struct.DState** %3, align 8
  %5085 = getelementptr inbounds %struct.DState, %struct.DState* %5084, i32 0, i32 0
  %5086 = load %struct.bz_stream*, %struct.bz_stream** %5085, align 8
  %5087 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5086, i32 0, i32 2
  %5088 = load i32, i32* %5087, align 4
  %5089 = icmp eq i32 %5088, 0
  br i1 %5089, label %5090, label %5097

; <label>:5090:                                   ; preds = %5047
  %5091 = load %struct.DState*, %struct.DState** %3, align 8
  %5092 = getelementptr inbounds %struct.DState, %struct.DState* %5091, i32 0, i32 0
  %5093 = load %struct.bz_stream*, %struct.bz_stream** %5092, align 8
  %5094 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5093, i32 0, i32 3
  %5095 = load i32, i32* %5094, align 8
  %5096 = add i32 %5095, 1
  store i32 %5096, i32* %5094, align 8
  br label %5097

; <label>:5097:                                   ; preds = %5090, %5047
  br label %5018

; <label>:5098:                                   ; preds = %5023
  %5099 = load i8, i8* %4, align 1
  %5100 = zext i8 %5099 to i32
  %5101 = icmp ne i32 %5100, 114
  br i1 %5101, label %5102, label %5103

; <label>:5102:                                   ; preds = %5098
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:5103:                                   ; preds = %5098
  br label %5104

; <label>:5104:                                   ; preds = %145, %5103
  %5105 = load %struct.DState*, %struct.DState** %3, align 8
  %5106 = getelementptr inbounds %struct.DState, %struct.DState* %5105, i32 0, i32 1
  store i32 43, i32* %5106, align 8
  br label %5107

; <label>:5107:                                   ; preds = %5104, %5186
  %5108 = load %struct.DState*, %struct.DState** %3, align 8
  %5109 = getelementptr inbounds %struct.DState, %struct.DState* %5108, i32 0, i32 8
  %5110 = load i32, i32* %5109, align 4
  %5111 = icmp sge i32 %5110, 8
  br i1 %5111, label %5112, label %5128

; <label>:5112:                                   ; preds = %5107
  %5113 = load %struct.DState*, %struct.DState** %3, align 8
  %5114 = getelementptr inbounds %struct.DState, %struct.DState* %5113, i32 0, i32 7
  %5115 = load i32, i32* %5114, align 8
  %5116 = load %struct.DState*, %struct.DState** %3, align 8
  %5117 = getelementptr inbounds %struct.DState, %struct.DState* %5116, i32 0, i32 8
  %5118 = load i32, i32* %5117, align 4
  %5119 = sub nsw i32 %5118, 8
  %5120 = lshr i32 %5115, %5119
  %5121 = and i32 %5120, 255
  store i32 %5121, i32* %81, align 4
  %5122 = load %struct.DState*, %struct.DState** %3, align 8
  %5123 = getelementptr inbounds %struct.DState, %struct.DState* %5122, i32 0, i32 8
  %5124 = load i32, i32* %5123, align 4
  %5125 = sub nsw i32 %5124, 8
  store i32 %5125, i32* %5123, align 4
  %5126 = load i32, i32* %81, align 4
  %5127 = trunc i32 %5126 to i8
  store i8 %5127, i8* %4, align 1
  br label %5187

; <label>:5128:                                   ; preds = %5107
  %5129 = load %struct.DState*, %struct.DState** %3, align 8
  %5130 = getelementptr inbounds %struct.DState, %struct.DState* %5129, i32 0, i32 0
  %5131 = load %struct.bz_stream*, %struct.bz_stream** %5130, align 8
  %5132 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5131, i32 0, i32 1
  %5133 = load i32, i32* %5132, align 8
  %5134 = icmp eq i32 %5133, 0
  br i1 %5134, label %5135, label %5136

; <label>:5135:                                   ; preds = %5128
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5136:                                   ; preds = %5128
  %5137 = load %struct.DState*, %struct.DState** %3, align 8
  %5138 = getelementptr inbounds %struct.DState, %struct.DState* %5137, i32 0, i32 7
  %5139 = load i32, i32* %5138, align 8
  %5140 = shl i32 %5139, 8
  %5141 = load %struct.DState*, %struct.DState** %3, align 8
  %5142 = getelementptr inbounds %struct.DState, %struct.DState* %5141, i32 0, i32 0
  %5143 = load %struct.bz_stream*, %struct.bz_stream** %5142, align 8
  %5144 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5143, i32 0, i32 0
  %5145 = load i8*, i8** %5144, align 8
  %5146 = load i8, i8* %5145, align 1
  %5147 = zext i8 %5146 to i32
  %5148 = or i32 %5140, %5147
  %5149 = load %struct.DState*, %struct.DState** %3, align 8
  %5150 = getelementptr inbounds %struct.DState, %struct.DState* %5149, i32 0, i32 7
  store i32 %5148, i32* %5150, align 8
  %5151 = load %struct.DState*, %struct.DState** %3, align 8
  %5152 = getelementptr inbounds %struct.DState, %struct.DState* %5151, i32 0, i32 8
  %5153 = load i32, i32* %5152, align 4
  %5154 = add nsw i32 %5153, 8
  store i32 %5154, i32* %5152, align 4
  %5155 = load %struct.DState*, %struct.DState** %3, align 8
  %5156 = getelementptr inbounds %struct.DState, %struct.DState* %5155, i32 0, i32 0
  %5157 = load %struct.bz_stream*, %struct.bz_stream** %5156, align 8
  %5158 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5157, i32 0, i32 0
  %5159 = load i8*, i8** %5158, align 8
  %5160 = getelementptr inbounds i8, i8* %5159, i32 1
  store i8* %5160, i8** %5158, align 8
  %5161 = load %struct.DState*, %struct.DState** %3, align 8
  %5162 = getelementptr inbounds %struct.DState, %struct.DState* %5161, i32 0, i32 0
  %5163 = load %struct.bz_stream*, %struct.bz_stream** %5162, align 8
  %5164 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5163, i32 0, i32 1
  %5165 = load i32, i32* %5164, align 8
  %5166 = add i32 %5165, -1
  store i32 %5166, i32* %5164, align 8
  %5167 = load %struct.DState*, %struct.DState** %3, align 8
  %5168 = getelementptr inbounds %struct.DState, %struct.DState* %5167, i32 0, i32 0
  %5169 = load %struct.bz_stream*, %struct.bz_stream** %5168, align 8
  %5170 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5169, i32 0, i32 2
  %5171 = load i32, i32* %5170, align 4
  %5172 = add i32 %5171, 1
  store i32 %5172, i32* %5170, align 4
  %5173 = load %struct.DState*, %struct.DState** %3, align 8
  %5174 = getelementptr inbounds %struct.DState, %struct.DState* %5173, i32 0, i32 0
  %5175 = load %struct.bz_stream*, %struct.bz_stream** %5174, align 8
  %5176 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5175, i32 0, i32 2
  %5177 = load i32, i32* %5176, align 4
  %5178 = icmp eq i32 %5177, 0
  br i1 %5178, label %5179, label %5186

; <label>:5179:                                   ; preds = %5136
  %5180 = load %struct.DState*, %struct.DState** %3, align 8
  %5181 = getelementptr inbounds %struct.DState, %struct.DState* %5180, i32 0, i32 0
  %5182 = load %struct.bz_stream*, %struct.bz_stream** %5181, align 8
  %5183 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5182, i32 0, i32 3
  %5184 = load i32, i32* %5183, align 8
  %5185 = add i32 %5184, 1
  store i32 %5185, i32* %5183, align 8
  br label %5186

; <label>:5186:                                   ; preds = %5179, %5136
  br label %5107

; <label>:5187:                                   ; preds = %5112
  %5188 = load i8, i8* %4, align 1
  %5189 = zext i8 %5188 to i32
  %5190 = icmp ne i32 %5189, 69
  br i1 %5190, label %5191, label %5192

; <label>:5191:                                   ; preds = %5187
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:5192:                                   ; preds = %5187
  br label %5193

; <label>:5193:                                   ; preds = %145, %5192
  %5194 = load %struct.DState*, %struct.DState** %3, align 8
  %5195 = getelementptr inbounds %struct.DState, %struct.DState* %5194, i32 0, i32 1
  store i32 44, i32* %5195, align 8
  br label %5196

; <label>:5196:                                   ; preds = %5193, %5275
  %5197 = load %struct.DState*, %struct.DState** %3, align 8
  %5198 = getelementptr inbounds %struct.DState, %struct.DState* %5197, i32 0, i32 8
  %5199 = load i32, i32* %5198, align 4
  %5200 = icmp sge i32 %5199, 8
  br i1 %5200, label %5201, label %5217

; <label>:5201:                                   ; preds = %5196
  %5202 = load %struct.DState*, %struct.DState** %3, align 8
  %5203 = getelementptr inbounds %struct.DState, %struct.DState* %5202, i32 0, i32 7
  %5204 = load i32, i32* %5203, align 8
  %5205 = load %struct.DState*, %struct.DState** %3, align 8
  %5206 = getelementptr inbounds %struct.DState, %struct.DState* %5205, i32 0, i32 8
  %5207 = load i32, i32* %5206, align 4
  %5208 = sub nsw i32 %5207, 8
  %5209 = lshr i32 %5204, %5208
  %5210 = and i32 %5209, 255
  store i32 %5210, i32* %82, align 4
  %5211 = load %struct.DState*, %struct.DState** %3, align 8
  %5212 = getelementptr inbounds %struct.DState, %struct.DState* %5211, i32 0, i32 8
  %5213 = load i32, i32* %5212, align 4
  %5214 = sub nsw i32 %5213, 8
  store i32 %5214, i32* %5212, align 4
  %5215 = load i32, i32* %82, align 4
  %5216 = trunc i32 %5215 to i8
  store i8 %5216, i8* %4, align 1
  br label %5276

; <label>:5217:                                   ; preds = %5196
  %5218 = load %struct.DState*, %struct.DState** %3, align 8
  %5219 = getelementptr inbounds %struct.DState, %struct.DState* %5218, i32 0, i32 0
  %5220 = load %struct.bz_stream*, %struct.bz_stream** %5219, align 8
  %5221 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5220, i32 0, i32 1
  %5222 = load i32, i32* %5221, align 8
  %5223 = icmp eq i32 %5222, 0
  br i1 %5223, label %5224, label %5225

; <label>:5224:                                   ; preds = %5217
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5225:                                   ; preds = %5217
  %5226 = load %struct.DState*, %struct.DState** %3, align 8
  %5227 = getelementptr inbounds %struct.DState, %struct.DState* %5226, i32 0, i32 7
  %5228 = load i32, i32* %5227, align 8
  %5229 = shl i32 %5228, 8
  %5230 = load %struct.DState*, %struct.DState** %3, align 8
  %5231 = getelementptr inbounds %struct.DState, %struct.DState* %5230, i32 0, i32 0
  %5232 = load %struct.bz_stream*, %struct.bz_stream** %5231, align 8
  %5233 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5232, i32 0, i32 0
  %5234 = load i8*, i8** %5233, align 8
  %5235 = load i8, i8* %5234, align 1
  %5236 = zext i8 %5235 to i32
  %5237 = or i32 %5229, %5236
  %5238 = load %struct.DState*, %struct.DState** %3, align 8
  %5239 = getelementptr inbounds %struct.DState, %struct.DState* %5238, i32 0, i32 7
  store i32 %5237, i32* %5239, align 8
  %5240 = load %struct.DState*, %struct.DState** %3, align 8
  %5241 = getelementptr inbounds %struct.DState, %struct.DState* %5240, i32 0, i32 8
  %5242 = load i32, i32* %5241, align 4
  %5243 = add nsw i32 %5242, 8
  store i32 %5243, i32* %5241, align 4
  %5244 = load %struct.DState*, %struct.DState** %3, align 8
  %5245 = getelementptr inbounds %struct.DState, %struct.DState* %5244, i32 0, i32 0
  %5246 = load %struct.bz_stream*, %struct.bz_stream** %5245, align 8
  %5247 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5246, i32 0, i32 0
  %5248 = load i8*, i8** %5247, align 8
  %5249 = getelementptr inbounds i8, i8* %5248, i32 1
  store i8* %5249, i8** %5247, align 8
  %5250 = load %struct.DState*, %struct.DState** %3, align 8
  %5251 = getelementptr inbounds %struct.DState, %struct.DState* %5250, i32 0, i32 0
  %5252 = load %struct.bz_stream*, %struct.bz_stream** %5251, align 8
  %5253 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5252, i32 0, i32 1
  %5254 = load i32, i32* %5253, align 8
  %5255 = add i32 %5254, -1
  store i32 %5255, i32* %5253, align 8
  %5256 = load %struct.DState*, %struct.DState** %3, align 8
  %5257 = getelementptr inbounds %struct.DState, %struct.DState* %5256, i32 0, i32 0
  %5258 = load %struct.bz_stream*, %struct.bz_stream** %5257, align 8
  %5259 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5258, i32 0, i32 2
  %5260 = load i32, i32* %5259, align 4
  %5261 = add i32 %5260, 1
  store i32 %5261, i32* %5259, align 4
  %5262 = load %struct.DState*, %struct.DState** %3, align 8
  %5263 = getelementptr inbounds %struct.DState, %struct.DState* %5262, i32 0, i32 0
  %5264 = load %struct.bz_stream*, %struct.bz_stream** %5263, align 8
  %5265 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5264, i32 0, i32 2
  %5266 = load i32, i32* %5265, align 4
  %5267 = icmp eq i32 %5266, 0
  br i1 %5267, label %5268, label %5275

; <label>:5268:                                   ; preds = %5225
  %5269 = load %struct.DState*, %struct.DState** %3, align 8
  %5270 = getelementptr inbounds %struct.DState, %struct.DState* %5269, i32 0, i32 0
  %5271 = load %struct.bz_stream*, %struct.bz_stream** %5270, align 8
  %5272 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5271, i32 0, i32 3
  %5273 = load i32, i32* %5272, align 8
  %5274 = add i32 %5273, 1
  store i32 %5274, i32* %5272, align 8
  br label %5275

; <label>:5275:                                   ; preds = %5268, %5225
  br label %5196

; <label>:5276:                                   ; preds = %5201
  %5277 = load i8, i8* %4, align 1
  %5278 = zext i8 %5277 to i32
  %5279 = icmp ne i32 %5278, 56
  br i1 %5279, label %5280, label %5281

; <label>:5280:                                   ; preds = %5276
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:5281:                                   ; preds = %5276
  br label %5282

; <label>:5282:                                   ; preds = %145, %5281
  %5283 = load %struct.DState*, %struct.DState** %3, align 8
  %5284 = getelementptr inbounds %struct.DState, %struct.DState* %5283, i32 0, i32 1
  store i32 45, i32* %5284, align 8
  br label %5285

; <label>:5285:                                   ; preds = %5282, %5364
  %5286 = load %struct.DState*, %struct.DState** %3, align 8
  %5287 = getelementptr inbounds %struct.DState, %struct.DState* %5286, i32 0, i32 8
  %5288 = load i32, i32* %5287, align 4
  %5289 = icmp sge i32 %5288, 8
  br i1 %5289, label %5290, label %5306

; <label>:5290:                                   ; preds = %5285
  %5291 = load %struct.DState*, %struct.DState** %3, align 8
  %5292 = getelementptr inbounds %struct.DState, %struct.DState* %5291, i32 0, i32 7
  %5293 = load i32, i32* %5292, align 8
  %5294 = load %struct.DState*, %struct.DState** %3, align 8
  %5295 = getelementptr inbounds %struct.DState, %struct.DState* %5294, i32 0, i32 8
  %5296 = load i32, i32* %5295, align 4
  %5297 = sub nsw i32 %5296, 8
  %5298 = lshr i32 %5293, %5297
  %5299 = and i32 %5298, 255
  store i32 %5299, i32* %83, align 4
  %5300 = load %struct.DState*, %struct.DState** %3, align 8
  %5301 = getelementptr inbounds %struct.DState, %struct.DState* %5300, i32 0, i32 8
  %5302 = load i32, i32* %5301, align 4
  %5303 = sub nsw i32 %5302, 8
  store i32 %5303, i32* %5301, align 4
  %5304 = load i32, i32* %83, align 4
  %5305 = trunc i32 %5304 to i8
  store i8 %5305, i8* %4, align 1
  br label %5365

; <label>:5306:                                   ; preds = %5285
  %5307 = load %struct.DState*, %struct.DState** %3, align 8
  %5308 = getelementptr inbounds %struct.DState, %struct.DState* %5307, i32 0, i32 0
  %5309 = load %struct.bz_stream*, %struct.bz_stream** %5308, align 8
  %5310 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5309, i32 0, i32 1
  %5311 = load i32, i32* %5310, align 8
  %5312 = icmp eq i32 %5311, 0
  br i1 %5312, label %5313, label %5314

; <label>:5313:                                   ; preds = %5306
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5314:                                   ; preds = %5306
  %5315 = load %struct.DState*, %struct.DState** %3, align 8
  %5316 = getelementptr inbounds %struct.DState, %struct.DState* %5315, i32 0, i32 7
  %5317 = load i32, i32* %5316, align 8
  %5318 = shl i32 %5317, 8
  %5319 = load %struct.DState*, %struct.DState** %3, align 8
  %5320 = getelementptr inbounds %struct.DState, %struct.DState* %5319, i32 0, i32 0
  %5321 = load %struct.bz_stream*, %struct.bz_stream** %5320, align 8
  %5322 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5321, i32 0, i32 0
  %5323 = load i8*, i8** %5322, align 8
  %5324 = load i8, i8* %5323, align 1
  %5325 = zext i8 %5324 to i32
  %5326 = or i32 %5318, %5325
  %5327 = load %struct.DState*, %struct.DState** %3, align 8
  %5328 = getelementptr inbounds %struct.DState, %struct.DState* %5327, i32 0, i32 7
  store i32 %5326, i32* %5328, align 8
  %5329 = load %struct.DState*, %struct.DState** %3, align 8
  %5330 = getelementptr inbounds %struct.DState, %struct.DState* %5329, i32 0, i32 8
  %5331 = load i32, i32* %5330, align 4
  %5332 = add nsw i32 %5331, 8
  store i32 %5332, i32* %5330, align 4
  %5333 = load %struct.DState*, %struct.DState** %3, align 8
  %5334 = getelementptr inbounds %struct.DState, %struct.DState* %5333, i32 0, i32 0
  %5335 = load %struct.bz_stream*, %struct.bz_stream** %5334, align 8
  %5336 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5335, i32 0, i32 0
  %5337 = load i8*, i8** %5336, align 8
  %5338 = getelementptr inbounds i8, i8* %5337, i32 1
  store i8* %5338, i8** %5336, align 8
  %5339 = load %struct.DState*, %struct.DState** %3, align 8
  %5340 = getelementptr inbounds %struct.DState, %struct.DState* %5339, i32 0, i32 0
  %5341 = load %struct.bz_stream*, %struct.bz_stream** %5340, align 8
  %5342 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5341, i32 0, i32 1
  %5343 = load i32, i32* %5342, align 8
  %5344 = add i32 %5343, -1
  store i32 %5344, i32* %5342, align 8
  %5345 = load %struct.DState*, %struct.DState** %3, align 8
  %5346 = getelementptr inbounds %struct.DState, %struct.DState* %5345, i32 0, i32 0
  %5347 = load %struct.bz_stream*, %struct.bz_stream** %5346, align 8
  %5348 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5347, i32 0, i32 2
  %5349 = load i32, i32* %5348, align 4
  %5350 = add i32 %5349, 1
  store i32 %5350, i32* %5348, align 4
  %5351 = load %struct.DState*, %struct.DState** %3, align 8
  %5352 = getelementptr inbounds %struct.DState, %struct.DState* %5351, i32 0, i32 0
  %5353 = load %struct.bz_stream*, %struct.bz_stream** %5352, align 8
  %5354 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5353, i32 0, i32 2
  %5355 = load i32, i32* %5354, align 4
  %5356 = icmp eq i32 %5355, 0
  br i1 %5356, label %5357, label %5364

; <label>:5357:                                   ; preds = %5314
  %5358 = load %struct.DState*, %struct.DState** %3, align 8
  %5359 = getelementptr inbounds %struct.DState, %struct.DState* %5358, i32 0, i32 0
  %5360 = load %struct.bz_stream*, %struct.bz_stream** %5359, align 8
  %5361 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5360, i32 0, i32 3
  %5362 = load i32, i32* %5361, align 8
  %5363 = add i32 %5362, 1
  store i32 %5363, i32* %5361, align 8
  br label %5364

; <label>:5364:                                   ; preds = %5357, %5314
  br label %5285

; <label>:5365:                                   ; preds = %5290
  %5366 = load i8, i8* %4, align 1
  %5367 = zext i8 %5366 to i32
  %5368 = icmp ne i32 %5367, 80
  br i1 %5368, label %5369, label %5370

; <label>:5369:                                   ; preds = %5365
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:5370:                                   ; preds = %5365
  br label %5371

; <label>:5371:                                   ; preds = %145, %5370
  %5372 = load %struct.DState*, %struct.DState** %3, align 8
  %5373 = getelementptr inbounds %struct.DState, %struct.DState* %5372, i32 0, i32 1
  store i32 46, i32* %5373, align 8
  br label %5374

; <label>:5374:                                   ; preds = %5371, %5453
  %5375 = load %struct.DState*, %struct.DState** %3, align 8
  %5376 = getelementptr inbounds %struct.DState, %struct.DState* %5375, i32 0, i32 8
  %5377 = load i32, i32* %5376, align 4
  %5378 = icmp sge i32 %5377, 8
  br i1 %5378, label %5379, label %5395

; <label>:5379:                                   ; preds = %5374
  %5380 = load %struct.DState*, %struct.DState** %3, align 8
  %5381 = getelementptr inbounds %struct.DState, %struct.DState* %5380, i32 0, i32 7
  %5382 = load i32, i32* %5381, align 8
  %5383 = load %struct.DState*, %struct.DState** %3, align 8
  %5384 = getelementptr inbounds %struct.DState, %struct.DState* %5383, i32 0, i32 8
  %5385 = load i32, i32* %5384, align 4
  %5386 = sub nsw i32 %5385, 8
  %5387 = lshr i32 %5382, %5386
  %5388 = and i32 %5387, 255
  store i32 %5388, i32* %84, align 4
  %5389 = load %struct.DState*, %struct.DState** %3, align 8
  %5390 = getelementptr inbounds %struct.DState, %struct.DState* %5389, i32 0, i32 8
  %5391 = load i32, i32* %5390, align 4
  %5392 = sub nsw i32 %5391, 8
  store i32 %5392, i32* %5390, align 4
  %5393 = load i32, i32* %84, align 4
  %5394 = trunc i32 %5393 to i8
  store i8 %5394, i8* %4, align 1
  br label %5454

; <label>:5395:                                   ; preds = %5374
  %5396 = load %struct.DState*, %struct.DState** %3, align 8
  %5397 = getelementptr inbounds %struct.DState, %struct.DState* %5396, i32 0, i32 0
  %5398 = load %struct.bz_stream*, %struct.bz_stream** %5397, align 8
  %5399 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5398, i32 0, i32 1
  %5400 = load i32, i32* %5399, align 8
  %5401 = icmp eq i32 %5400, 0
  br i1 %5401, label %5402, label %5403

; <label>:5402:                                   ; preds = %5395
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5403:                                   ; preds = %5395
  %5404 = load %struct.DState*, %struct.DState** %3, align 8
  %5405 = getelementptr inbounds %struct.DState, %struct.DState* %5404, i32 0, i32 7
  %5406 = load i32, i32* %5405, align 8
  %5407 = shl i32 %5406, 8
  %5408 = load %struct.DState*, %struct.DState** %3, align 8
  %5409 = getelementptr inbounds %struct.DState, %struct.DState* %5408, i32 0, i32 0
  %5410 = load %struct.bz_stream*, %struct.bz_stream** %5409, align 8
  %5411 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5410, i32 0, i32 0
  %5412 = load i8*, i8** %5411, align 8
  %5413 = load i8, i8* %5412, align 1
  %5414 = zext i8 %5413 to i32
  %5415 = or i32 %5407, %5414
  %5416 = load %struct.DState*, %struct.DState** %3, align 8
  %5417 = getelementptr inbounds %struct.DState, %struct.DState* %5416, i32 0, i32 7
  store i32 %5415, i32* %5417, align 8
  %5418 = load %struct.DState*, %struct.DState** %3, align 8
  %5419 = getelementptr inbounds %struct.DState, %struct.DState* %5418, i32 0, i32 8
  %5420 = load i32, i32* %5419, align 4
  %5421 = add nsw i32 %5420, 8
  store i32 %5421, i32* %5419, align 4
  %5422 = load %struct.DState*, %struct.DState** %3, align 8
  %5423 = getelementptr inbounds %struct.DState, %struct.DState* %5422, i32 0, i32 0
  %5424 = load %struct.bz_stream*, %struct.bz_stream** %5423, align 8
  %5425 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5424, i32 0, i32 0
  %5426 = load i8*, i8** %5425, align 8
  %5427 = getelementptr inbounds i8, i8* %5426, i32 1
  store i8* %5427, i8** %5425, align 8
  %5428 = load %struct.DState*, %struct.DState** %3, align 8
  %5429 = getelementptr inbounds %struct.DState, %struct.DState* %5428, i32 0, i32 0
  %5430 = load %struct.bz_stream*, %struct.bz_stream** %5429, align 8
  %5431 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5430, i32 0, i32 1
  %5432 = load i32, i32* %5431, align 8
  %5433 = add i32 %5432, -1
  store i32 %5433, i32* %5431, align 8
  %5434 = load %struct.DState*, %struct.DState** %3, align 8
  %5435 = getelementptr inbounds %struct.DState, %struct.DState* %5434, i32 0, i32 0
  %5436 = load %struct.bz_stream*, %struct.bz_stream** %5435, align 8
  %5437 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5436, i32 0, i32 2
  %5438 = load i32, i32* %5437, align 4
  %5439 = add i32 %5438, 1
  store i32 %5439, i32* %5437, align 4
  %5440 = load %struct.DState*, %struct.DState** %3, align 8
  %5441 = getelementptr inbounds %struct.DState, %struct.DState* %5440, i32 0, i32 0
  %5442 = load %struct.bz_stream*, %struct.bz_stream** %5441, align 8
  %5443 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5442, i32 0, i32 2
  %5444 = load i32, i32* %5443, align 4
  %5445 = icmp eq i32 %5444, 0
  br i1 %5445, label %5446, label %5453

; <label>:5446:                                   ; preds = %5403
  %5447 = load %struct.DState*, %struct.DState** %3, align 8
  %5448 = getelementptr inbounds %struct.DState, %struct.DState* %5447, i32 0, i32 0
  %5449 = load %struct.bz_stream*, %struct.bz_stream** %5448, align 8
  %5450 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5449, i32 0, i32 3
  %5451 = load i32, i32* %5450, align 8
  %5452 = add i32 %5451, 1
  store i32 %5452, i32* %5450, align 8
  br label %5453

; <label>:5453:                                   ; preds = %5446, %5403
  br label %5374

; <label>:5454:                                   ; preds = %5379
  %5455 = load i8, i8* %4, align 1
  %5456 = zext i8 %5455 to i32
  %5457 = icmp ne i32 %5456, 144
  br i1 %5457, label %5458, label %5459

; <label>:5458:                                   ; preds = %5454
  store i32 -4, i32* %5, align 4
  br label %5838

; <label>:5459:                                   ; preds = %5454
  %5460 = load %struct.DState*, %struct.DState** %3, align 8
  %5461 = getelementptr inbounds %struct.DState, %struct.DState* %5460, i32 0, i32 24
  store i32 0, i32* %5461, align 4
  br label %5462

; <label>:5462:                                   ; preds = %145, %5459
  %5463 = load %struct.DState*, %struct.DState** %3, align 8
  %5464 = getelementptr inbounds %struct.DState, %struct.DState* %5463, i32 0, i32 1
  store i32 47, i32* %5464, align 8
  br label %5465

; <label>:5465:                                   ; preds = %5462, %5544
  %5466 = load %struct.DState*, %struct.DState** %3, align 8
  %5467 = getelementptr inbounds %struct.DState, %struct.DState* %5466, i32 0, i32 8
  %5468 = load i32, i32* %5467, align 4
  %5469 = icmp sge i32 %5468, 8
  br i1 %5469, label %5470, label %5486

; <label>:5470:                                   ; preds = %5465
  %5471 = load %struct.DState*, %struct.DState** %3, align 8
  %5472 = getelementptr inbounds %struct.DState, %struct.DState* %5471, i32 0, i32 7
  %5473 = load i32, i32* %5472, align 8
  %5474 = load %struct.DState*, %struct.DState** %3, align 8
  %5475 = getelementptr inbounds %struct.DState, %struct.DState* %5474, i32 0, i32 8
  %5476 = load i32, i32* %5475, align 4
  %5477 = sub nsw i32 %5476, 8
  %5478 = lshr i32 %5473, %5477
  %5479 = and i32 %5478, 255
  store i32 %5479, i32* %85, align 4
  %5480 = load %struct.DState*, %struct.DState** %3, align 8
  %5481 = getelementptr inbounds %struct.DState, %struct.DState* %5480, i32 0, i32 8
  %5482 = load i32, i32* %5481, align 4
  %5483 = sub nsw i32 %5482, 8
  store i32 %5483, i32* %5481, align 4
  %5484 = load i32, i32* %85, align 4
  %5485 = trunc i32 %5484 to i8
  store i8 %5485, i8* %4, align 1
  br label %5545

; <label>:5486:                                   ; preds = %5465
  %5487 = load %struct.DState*, %struct.DState** %3, align 8
  %5488 = getelementptr inbounds %struct.DState, %struct.DState* %5487, i32 0, i32 0
  %5489 = load %struct.bz_stream*, %struct.bz_stream** %5488, align 8
  %5490 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5489, i32 0, i32 1
  %5491 = load i32, i32* %5490, align 8
  %5492 = icmp eq i32 %5491, 0
  br i1 %5492, label %5493, label %5494

; <label>:5493:                                   ; preds = %5486
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5494:                                   ; preds = %5486
  %5495 = load %struct.DState*, %struct.DState** %3, align 8
  %5496 = getelementptr inbounds %struct.DState, %struct.DState* %5495, i32 0, i32 7
  %5497 = load i32, i32* %5496, align 8
  %5498 = shl i32 %5497, 8
  %5499 = load %struct.DState*, %struct.DState** %3, align 8
  %5500 = getelementptr inbounds %struct.DState, %struct.DState* %5499, i32 0, i32 0
  %5501 = load %struct.bz_stream*, %struct.bz_stream** %5500, align 8
  %5502 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5501, i32 0, i32 0
  %5503 = load i8*, i8** %5502, align 8
  %5504 = load i8, i8* %5503, align 1
  %5505 = zext i8 %5504 to i32
  %5506 = or i32 %5498, %5505
  %5507 = load %struct.DState*, %struct.DState** %3, align 8
  %5508 = getelementptr inbounds %struct.DState, %struct.DState* %5507, i32 0, i32 7
  store i32 %5506, i32* %5508, align 8
  %5509 = load %struct.DState*, %struct.DState** %3, align 8
  %5510 = getelementptr inbounds %struct.DState, %struct.DState* %5509, i32 0, i32 8
  %5511 = load i32, i32* %5510, align 4
  %5512 = add nsw i32 %5511, 8
  store i32 %5512, i32* %5510, align 4
  %5513 = load %struct.DState*, %struct.DState** %3, align 8
  %5514 = getelementptr inbounds %struct.DState, %struct.DState* %5513, i32 0, i32 0
  %5515 = load %struct.bz_stream*, %struct.bz_stream** %5514, align 8
  %5516 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5515, i32 0, i32 0
  %5517 = load i8*, i8** %5516, align 8
  %5518 = getelementptr inbounds i8, i8* %5517, i32 1
  store i8* %5518, i8** %5516, align 8
  %5519 = load %struct.DState*, %struct.DState** %3, align 8
  %5520 = getelementptr inbounds %struct.DState, %struct.DState* %5519, i32 0, i32 0
  %5521 = load %struct.bz_stream*, %struct.bz_stream** %5520, align 8
  %5522 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5521, i32 0, i32 1
  %5523 = load i32, i32* %5522, align 8
  %5524 = add i32 %5523, -1
  store i32 %5524, i32* %5522, align 8
  %5525 = load %struct.DState*, %struct.DState** %3, align 8
  %5526 = getelementptr inbounds %struct.DState, %struct.DState* %5525, i32 0, i32 0
  %5527 = load %struct.bz_stream*, %struct.bz_stream** %5526, align 8
  %5528 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5527, i32 0, i32 2
  %5529 = load i32, i32* %5528, align 4
  %5530 = add i32 %5529, 1
  store i32 %5530, i32* %5528, align 4
  %5531 = load %struct.DState*, %struct.DState** %3, align 8
  %5532 = getelementptr inbounds %struct.DState, %struct.DState* %5531, i32 0, i32 0
  %5533 = load %struct.bz_stream*, %struct.bz_stream** %5532, align 8
  %5534 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5533, i32 0, i32 2
  %5535 = load i32, i32* %5534, align 4
  %5536 = icmp eq i32 %5535, 0
  br i1 %5536, label %5537, label %5544

; <label>:5537:                                   ; preds = %5494
  %5538 = load %struct.DState*, %struct.DState** %3, align 8
  %5539 = getelementptr inbounds %struct.DState, %struct.DState* %5538, i32 0, i32 0
  %5540 = load %struct.bz_stream*, %struct.bz_stream** %5539, align 8
  %5541 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5540, i32 0, i32 3
  %5542 = load i32, i32* %5541, align 8
  %5543 = add i32 %5542, 1
  store i32 %5543, i32* %5541, align 8
  br label %5544

; <label>:5544:                                   ; preds = %5537, %5494
  br label %5465

; <label>:5545:                                   ; preds = %5470
  %5546 = load %struct.DState*, %struct.DState** %3, align 8
  %5547 = getelementptr inbounds %struct.DState, %struct.DState* %5546, i32 0, i32 24
  %5548 = load i32, i32* %5547, align 4
  %5549 = shl i32 %5548, 8
  %5550 = load i8, i8* %4, align 1
  %5551 = zext i8 %5550 to i32
  %5552 = or i32 %5549, %5551
  %5553 = load %struct.DState*, %struct.DState** %3, align 8
  %5554 = getelementptr inbounds %struct.DState, %struct.DState* %5553, i32 0, i32 24
  store i32 %5552, i32* %5554, align 4
  br label %5555

; <label>:5555:                                   ; preds = %145, %5545
  %5556 = load %struct.DState*, %struct.DState** %3, align 8
  %5557 = getelementptr inbounds %struct.DState, %struct.DState* %5556, i32 0, i32 1
  store i32 48, i32* %5557, align 8
  br label %5558

; <label>:5558:                                   ; preds = %5555, %5637
  %5559 = load %struct.DState*, %struct.DState** %3, align 8
  %5560 = getelementptr inbounds %struct.DState, %struct.DState* %5559, i32 0, i32 8
  %5561 = load i32, i32* %5560, align 4
  %5562 = icmp sge i32 %5561, 8
  br i1 %5562, label %5563, label %5579

; <label>:5563:                                   ; preds = %5558
  %5564 = load %struct.DState*, %struct.DState** %3, align 8
  %5565 = getelementptr inbounds %struct.DState, %struct.DState* %5564, i32 0, i32 7
  %5566 = load i32, i32* %5565, align 8
  %5567 = load %struct.DState*, %struct.DState** %3, align 8
  %5568 = getelementptr inbounds %struct.DState, %struct.DState* %5567, i32 0, i32 8
  %5569 = load i32, i32* %5568, align 4
  %5570 = sub nsw i32 %5569, 8
  %5571 = lshr i32 %5566, %5570
  %5572 = and i32 %5571, 255
  store i32 %5572, i32* %86, align 4
  %5573 = load %struct.DState*, %struct.DState** %3, align 8
  %5574 = getelementptr inbounds %struct.DState, %struct.DState* %5573, i32 0, i32 8
  %5575 = load i32, i32* %5574, align 4
  %5576 = sub nsw i32 %5575, 8
  store i32 %5576, i32* %5574, align 4
  %5577 = load i32, i32* %86, align 4
  %5578 = trunc i32 %5577 to i8
  store i8 %5578, i8* %4, align 1
  br label %5638

; <label>:5579:                                   ; preds = %5558
  %5580 = load %struct.DState*, %struct.DState** %3, align 8
  %5581 = getelementptr inbounds %struct.DState, %struct.DState* %5580, i32 0, i32 0
  %5582 = load %struct.bz_stream*, %struct.bz_stream** %5581, align 8
  %5583 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5582, i32 0, i32 1
  %5584 = load i32, i32* %5583, align 8
  %5585 = icmp eq i32 %5584, 0
  br i1 %5585, label %5586, label %5587

; <label>:5586:                                   ; preds = %5579
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5587:                                   ; preds = %5579
  %5588 = load %struct.DState*, %struct.DState** %3, align 8
  %5589 = getelementptr inbounds %struct.DState, %struct.DState* %5588, i32 0, i32 7
  %5590 = load i32, i32* %5589, align 8
  %5591 = shl i32 %5590, 8
  %5592 = load %struct.DState*, %struct.DState** %3, align 8
  %5593 = getelementptr inbounds %struct.DState, %struct.DState* %5592, i32 0, i32 0
  %5594 = load %struct.bz_stream*, %struct.bz_stream** %5593, align 8
  %5595 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5594, i32 0, i32 0
  %5596 = load i8*, i8** %5595, align 8
  %5597 = load i8, i8* %5596, align 1
  %5598 = zext i8 %5597 to i32
  %5599 = or i32 %5591, %5598
  %5600 = load %struct.DState*, %struct.DState** %3, align 8
  %5601 = getelementptr inbounds %struct.DState, %struct.DState* %5600, i32 0, i32 7
  store i32 %5599, i32* %5601, align 8
  %5602 = load %struct.DState*, %struct.DState** %3, align 8
  %5603 = getelementptr inbounds %struct.DState, %struct.DState* %5602, i32 0, i32 8
  %5604 = load i32, i32* %5603, align 4
  %5605 = add nsw i32 %5604, 8
  store i32 %5605, i32* %5603, align 4
  %5606 = load %struct.DState*, %struct.DState** %3, align 8
  %5607 = getelementptr inbounds %struct.DState, %struct.DState* %5606, i32 0, i32 0
  %5608 = load %struct.bz_stream*, %struct.bz_stream** %5607, align 8
  %5609 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5608, i32 0, i32 0
  %5610 = load i8*, i8** %5609, align 8
  %5611 = getelementptr inbounds i8, i8* %5610, i32 1
  store i8* %5611, i8** %5609, align 8
  %5612 = load %struct.DState*, %struct.DState** %3, align 8
  %5613 = getelementptr inbounds %struct.DState, %struct.DState* %5612, i32 0, i32 0
  %5614 = load %struct.bz_stream*, %struct.bz_stream** %5613, align 8
  %5615 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5614, i32 0, i32 1
  %5616 = load i32, i32* %5615, align 8
  %5617 = add i32 %5616, -1
  store i32 %5617, i32* %5615, align 8
  %5618 = load %struct.DState*, %struct.DState** %3, align 8
  %5619 = getelementptr inbounds %struct.DState, %struct.DState* %5618, i32 0, i32 0
  %5620 = load %struct.bz_stream*, %struct.bz_stream** %5619, align 8
  %5621 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5620, i32 0, i32 2
  %5622 = load i32, i32* %5621, align 4
  %5623 = add i32 %5622, 1
  store i32 %5623, i32* %5621, align 4
  %5624 = load %struct.DState*, %struct.DState** %3, align 8
  %5625 = getelementptr inbounds %struct.DState, %struct.DState* %5624, i32 0, i32 0
  %5626 = load %struct.bz_stream*, %struct.bz_stream** %5625, align 8
  %5627 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5626, i32 0, i32 2
  %5628 = load i32, i32* %5627, align 4
  %5629 = icmp eq i32 %5628, 0
  br i1 %5629, label %5630, label %5637

; <label>:5630:                                   ; preds = %5587
  %5631 = load %struct.DState*, %struct.DState** %3, align 8
  %5632 = getelementptr inbounds %struct.DState, %struct.DState* %5631, i32 0, i32 0
  %5633 = load %struct.bz_stream*, %struct.bz_stream** %5632, align 8
  %5634 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5633, i32 0, i32 3
  %5635 = load i32, i32* %5634, align 8
  %5636 = add i32 %5635, 1
  store i32 %5636, i32* %5634, align 8
  br label %5637

; <label>:5637:                                   ; preds = %5630, %5587
  br label %5558

; <label>:5638:                                   ; preds = %5563
  %5639 = load %struct.DState*, %struct.DState** %3, align 8
  %5640 = getelementptr inbounds %struct.DState, %struct.DState* %5639, i32 0, i32 24
  %5641 = load i32, i32* %5640, align 4
  %5642 = shl i32 %5641, 8
  %5643 = load i8, i8* %4, align 1
  %5644 = zext i8 %5643 to i32
  %5645 = or i32 %5642, %5644
  %5646 = load %struct.DState*, %struct.DState** %3, align 8
  %5647 = getelementptr inbounds %struct.DState, %struct.DState* %5646, i32 0, i32 24
  store i32 %5645, i32* %5647, align 4
  br label %5648

; <label>:5648:                                   ; preds = %145, %5638
  %5649 = load %struct.DState*, %struct.DState** %3, align 8
  %5650 = getelementptr inbounds %struct.DState, %struct.DState* %5649, i32 0, i32 1
  store i32 49, i32* %5650, align 8
  br label %5651

; <label>:5651:                                   ; preds = %5648, %5730
  %5652 = load %struct.DState*, %struct.DState** %3, align 8
  %5653 = getelementptr inbounds %struct.DState, %struct.DState* %5652, i32 0, i32 8
  %5654 = load i32, i32* %5653, align 4
  %5655 = icmp sge i32 %5654, 8
  br i1 %5655, label %5656, label %5672

; <label>:5656:                                   ; preds = %5651
  %5657 = load %struct.DState*, %struct.DState** %3, align 8
  %5658 = getelementptr inbounds %struct.DState, %struct.DState* %5657, i32 0, i32 7
  %5659 = load i32, i32* %5658, align 8
  %5660 = load %struct.DState*, %struct.DState** %3, align 8
  %5661 = getelementptr inbounds %struct.DState, %struct.DState* %5660, i32 0, i32 8
  %5662 = load i32, i32* %5661, align 4
  %5663 = sub nsw i32 %5662, 8
  %5664 = lshr i32 %5659, %5663
  %5665 = and i32 %5664, 255
  store i32 %5665, i32* %87, align 4
  %5666 = load %struct.DState*, %struct.DState** %3, align 8
  %5667 = getelementptr inbounds %struct.DState, %struct.DState* %5666, i32 0, i32 8
  %5668 = load i32, i32* %5667, align 4
  %5669 = sub nsw i32 %5668, 8
  store i32 %5669, i32* %5667, align 4
  %5670 = load i32, i32* %87, align 4
  %5671 = trunc i32 %5670 to i8
  store i8 %5671, i8* %4, align 1
  br label %5731

; <label>:5672:                                   ; preds = %5651
  %5673 = load %struct.DState*, %struct.DState** %3, align 8
  %5674 = getelementptr inbounds %struct.DState, %struct.DState* %5673, i32 0, i32 0
  %5675 = load %struct.bz_stream*, %struct.bz_stream** %5674, align 8
  %5676 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5675, i32 0, i32 1
  %5677 = load i32, i32* %5676, align 8
  %5678 = icmp eq i32 %5677, 0
  br i1 %5678, label %5679, label %5680

; <label>:5679:                                   ; preds = %5672
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5680:                                   ; preds = %5672
  %5681 = load %struct.DState*, %struct.DState** %3, align 8
  %5682 = getelementptr inbounds %struct.DState, %struct.DState* %5681, i32 0, i32 7
  %5683 = load i32, i32* %5682, align 8
  %5684 = shl i32 %5683, 8
  %5685 = load %struct.DState*, %struct.DState** %3, align 8
  %5686 = getelementptr inbounds %struct.DState, %struct.DState* %5685, i32 0, i32 0
  %5687 = load %struct.bz_stream*, %struct.bz_stream** %5686, align 8
  %5688 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5687, i32 0, i32 0
  %5689 = load i8*, i8** %5688, align 8
  %5690 = load i8, i8* %5689, align 1
  %5691 = zext i8 %5690 to i32
  %5692 = or i32 %5684, %5691
  %5693 = load %struct.DState*, %struct.DState** %3, align 8
  %5694 = getelementptr inbounds %struct.DState, %struct.DState* %5693, i32 0, i32 7
  store i32 %5692, i32* %5694, align 8
  %5695 = load %struct.DState*, %struct.DState** %3, align 8
  %5696 = getelementptr inbounds %struct.DState, %struct.DState* %5695, i32 0, i32 8
  %5697 = load i32, i32* %5696, align 4
  %5698 = add nsw i32 %5697, 8
  store i32 %5698, i32* %5696, align 4
  %5699 = load %struct.DState*, %struct.DState** %3, align 8
  %5700 = getelementptr inbounds %struct.DState, %struct.DState* %5699, i32 0, i32 0
  %5701 = load %struct.bz_stream*, %struct.bz_stream** %5700, align 8
  %5702 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5701, i32 0, i32 0
  %5703 = load i8*, i8** %5702, align 8
  %5704 = getelementptr inbounds i8, i8* %5703, i32 1
  store i8* %5704, i8** %5702, align 8
  %5705 = load %struct.DState*, %struct.DState** %3, align 8
  %5706 = getelementptr inbounds %struct.DState, %struct.DState* %5705, i32 0, i32 0
  %5707 = load %struct.bz_stream*, %struct.bz_stream** %5706, align 8
  %5708 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5707, i32 0, i32 1
  %5709 = load i32, i32* %5708, align 8
  %5710 = add i32 %5709, -1
  store i32 %5710, i32* %5708, align 8
  %5711 = load %struct.DState*, %struct.DState** %3, align 8
  %5712 = getelementptr inbounds %struct.DState, %struct.DState* %5711, i32 0, i32 0
  %5713 = load %struct.bz_stream*, %struct.bz_stream** %5712, align 8
  %5714 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5713, i32 0, i32 2
  %5715 = load i32, i32* %5714, align 4
  %5716 = add i32 %5715, 1
  store i32 %5716, i32* %5714, align 4
  %5717 = load %struct.DState*, %struct.DState** %3, align 8
  %5718 = getelementptr inbounds %struct.DState, %struct.DState* %5717, i32 0, i32 0
  %5719 = load %struct.bz_stream*, %struct.bz_stream** %5718, align 8
  %5720 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5719, i32 0, i32 2
  %5721 = load i32, i32* %5720, align 4
  %5722 = icmp eq i32 %5721, 0
  br i1 %5722, label %5723, label %5730

; <label>:5723:                                   ; preds = %5680
  %5724 = load %struct.DState*, %struct.DState** %3, align 8
  %5725 = getelementptr inbounds %struct.DState, %struct.DState* %5724, i32 0, i32 0
  %5726 = load %struct.bz_stream*, %struct.bz_stream** %5725, align 8
  %5727 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5726, i32 0, i32 3
  %5728 = load i32, i32* %5727, align 8
  %5729 = add i32 %5728, 1
  store i32 %5729, i32* %5727, align 8
  br label %5730

; <label>:5730:                                   ; preds = %5723, %5680
  br label %5651

; <label>:5731:                                   ; preds = %5656
  %5732 = load %struct.DState*, %struct.DState** %3, align 8
  %5733 = getelementptr inbounds %struct.DState, %struct.DState* %5732, i32 0, i32 24
  %5734 = load i32, i32* %5733, align 4
  %5735 = shl i32 %5734, 8
  %5736 = load i8, i8* %4, align 1
  %5737 = zext i8 %5736 to i32
  %5738 = or i32 %5735, %5737
  %5739 = load %struct.DState*, %struct.DState** %3, align 8
  %5740 = getelementptr inbounds %struct.DState, %struct.DState* %5739, i32 0, i32 24
  store i32 %5738, i32* %5740, align 4
  br label %5741

; <label>:5741:                                   ; preds = %145, %5731
  %5742 = load %struct.DState*, %struct.DState** %3, align 8
  %5743 = getelementptr inbounds %struct.DState, %struct.DState* %5742, i32 0, i32 1
  store i32 50, i32* %5743, align 8
  br label %5744

; <label>:5744:                                   ; preds = %5741, %5823
  %5745 = load %struct.DState*, %struct.DState** %3, align 8
  %5746 = getelementptr inbounds %struct.DState, %struct.DState* %5745, i32 0, i32 8
  %5747 = load i32, i32* %5746, align 4
  %5748 = icmp sge i32 %5747, 8
  br i1 %5748, label %5749, label %5765

; <label>:5749:                                   ; preds = %5744
  %5750 = load %struct.DState*, %struct.DState** %3, align 8
  %5751 = getelementptr inbounds %struct.DState, %struct.DState* %5750, i32 0, i32 7
  %5752 = load i32, i32* %5751, align 8
  %5753 = load %struct.DState*, %struct.DState** %3, align 8
  %5754 = getelementptr inbounds %struct.DState, %struct.DState* %5753, i32 0, i32 8
  %5755 = load i32, i32* %5754, align 4
  %5756 = sub nsw i32 %5755, 8
  %5757 = lshr i32 %5752, %5756
  %5758 = and i32 %5757, 255
  store i32 %5758, i32* %88, align 4
  %5759 = load %struct.DState*, %struct.DState** %3, align 8
  %5760 = getelementptr inbounds %struct.DState, %struct.DState* %5759, i32 0, i32 8
  %5761 = load i32, i32* %5760, align 4
  %5762 = sub nsw i32 %5761, 8
  store i32 %5762, i32* %5760, align 4
  %5763 = load i32, i32* %88, align 4
  %5764 = trunc i32 %5763 to i8
  store i8 %5764, i8* %4, align 1
  br label %5824

; <label>:5765:                                   ; preds = %5744
  %5766 = load %struct.DState*, %struct.DState** %3, align 8
  %5767 = getelementptr inbounds %struct.DState, %struct.DState* %5766, i32 0, i32 0
  %5768 = load %struct.bz_stream*, %struct.bz_stream** %5767, align 8
  %5769 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5768, i32 0, i32 1
  %5770 = load i32, i32* %5769, align 8
  %5771 = icmp eq i32 %5770, 0
  br i1 %5771, label %5772, label %5773

; <label>:5772:                                   ; preds = %5765
  store i32 0, i32* %5, align 4
  br label %5838

; <label>:5773:                                   ; preds = %5765
  %5774 = load %struct.DState*, %struct.DState** %3, align 8
  %5775 = getelementptr inbounds %struct.DState, %struct.DState* %5774, i32 0, i32 7
  %5776 = load i32, i32* %5775, align 8
  %5777 = shl i32 %5776, 8
  %5778 = load %struct.DState*, %struct.DState** %3, align 8
  %5779 = getelementptr inbounds %struct.DState, %struct.DState* %5778, i32 0, i32 0
  %5780 = load %struct.bz_stream*, %struct.bz_stream** %5779, align 8
  %5781 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5780, i32 0, i32 0
  %5782 = load i8*, i8** %5781, align 8
  %5783 = load i8, i8* %5782, align 1
  %5784 = zext i8 %5783 to i32
  %5785 = or i32 %5777, %5784
  %5786 = load %struct.DState*, %struct.DState** %3, align 8
  %5787 = getelementptr inbounds %struct.DState, %struct.DState* %5786, i32 0, i32 7
  store i32 %5785, i32* %5787, align 8
  %5788 = load %struct.DState*, %struct.DState** %3, align 8
  %5789 = getelementptr inbounds %struct.DState, %struct.DState* %5788, i32 0, i32 8
  %5790 = load i32, i32* %5789, align 4
  %5791 = add nsw i32 %5790, 8
  store i32 %5791, i32* %5789, align 4
  %5792 = load %struct.DState*, %struct.DState** %3, align 8
  %5793 = getelementptr inbounds %struct.DState, %struct.DState* %5792, i32 0, i32 0
  %5794 = load %struct.bz_stream*, %struct.bz_stream** %5793, align 8
  %5795 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5794, i32 0, i32 0
  %5796 = load i8*, i8** %5795, align 8
  %5797 = getelementptr inbounds i8, i8* %5796, i32 1
  store i8* %5797, i8** %5795, align 8
  %5798 = load %struct.DState*, %struct.DState** %3, align 8
  %5799 = getelementptr inbounds %struct.DState, %struct.DState* %5798, i32 0, i32 0
  %5800 = load %struct.bz_stream*, %struct.bz_stream** %5799, align 8
  %5801 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5800, i32 0, i32 1
  %5802 = load i32, i32* %5801, align 8
  %5803 = add i32 %5802, -1
  store i32 %5803, i32* %5801, align 8
  %5804 = load %struct.DState*, %struct.DState** %3, align 8
  %5805 = getelementptr inbounds %struct.DState, %struct.DState* %5804, i32 0, i32 0
  %5806 = load %struct.bz_stream*, %struct.bz_stream** %5805, align 8
  %5807 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5806, i32 0, i32 2
  %5808 = load i32, i32* %5807, align 4
  %5809 = add i32 %5808, 1
  store i32 %5809, i32* %5807, align 4
  %5810 = load %struct.DState*, %struct.DState** %3, align 8
  %5811 = getelementptr inbounds %struct.DState, %struct.DState* %5810, i32 0, i32 0
  %5812 = load %struct.bz_stream*, %struct.bz_stream** %5811, align 8
  %5813 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5812, i32 0, i32 2
  %5814 = load i32, i32* %5813, align 4
  %5815 = icmp eq i32 %5814, 0
  br i1 %5815, label %5816, label %5823

; <label>:5816:                                   ; preds = %5773
  %5817 = load %struct.DState*, %struct.DState** %3, align 8
  %5818 = getelementptr inbounds %struct.DState, %struct.DState* %5817, i32 0, i32 0
  %5819 = load %struct.bz_stream*, %struct.bz_stream** %5818, align 8
  %5820 = getelementptr inbounds %struct.bz_stream, %struct.bz_stream* %5819, i32 0, i32 3
  %5821 = load i32, i32* %5820, align 8
  %5822 = add i32 %5821, 1
  store i32 %5822, i32* %5820, align 8
  br label %5823

; <label>:5823:                                   ; preds = %5816, %5773
  br label %5744

; <label>:5824:                                   ; preds = %5749
  %5825 = load %struct.DState*, %struct.DState** %3, align 8
  %5826 = getelementptr inbounds %struct.DState, %struct.DState* %5825, i32 0, i32 24
  %5827 = load i32, i32* %5826, align 4
  %5828 = shl i32 %5827, 8
  %5829 = load i8, i8* %4, align 1
  %5830 = zext i8 %5829 to i32
  %5831 = or i32 %5828, %5830
  %5832 = load %struct.DState*, %struct.DState** %3, align 8
  %5833 = getelementptr inbounds %struct.DState, %struct.DState* %5832, i32 0, i32 24
  store i32 %5831, i32* %5833, align 4
  %5834 = load %struct.DState*, %struct.DState** %3, align 8
  %5835 = getelementptr inbounds %struct.DState, %struct.DState* %5834, i32 0, i32 1
  store i32 1, i32* %5835, align 8
  store i32 4, i32* %5, align 4
  br label %5838

; <label>:5836:                                   ; preds = %145
  call void @BZ2_bz__AssertH__fail(i32 4001)
  br label %5837

; <label>:5837:                                   ; preds = %5836
  call void @BZ2_bz__AssertH__fail(i32 4002)
  br label %5838

; <label>:5838:                                   ; preds = %5837, %5824, %5772, %5679, %5586, %5493, %5458, %5402, %5369, %5313, %5280, %5224, %5191, %5135, %5102, %5046, %5013, %4403, %4379, %4308, %4286, %4262, %4187, %4144, %4088, %4015, %3697, %3677, %3654, %3596, %3521, %3478, %3422, %3349, %3320, %3292, %3217, %3174, %3118, %3045, %2800, %2711, %2678, %2614, %2507, %2444, %2405, %2350, %2318, %2260, %2224, %2144, %2011, %1974, %1963, %1897, %1804, %1711, %1625, %1530, %1437, %1344, %1251, %1201, %1145, %1112, %1056, %1023, %967, %934, %878, %845, %789, %756, %695, %661, %637, %582, %520, %486, %430, %397, %341, %308, %252
  %5839 = load i32, i32* %9, align 4
  %5840 = load %struct.DState*, %struct.DState** %3, align 8
  %5841 = getelementptr inbounds %struct.DState, %struct.DState* %5840, i32 0, i32 40
  store i32 %5839, i32* %5841, align 4
  %5842 = load i32, i32* %10, align 4
  %5843 = load %struct.DState*, %struct.DState** %3, align 8
  %5844 = getelementptr inbounds %struct.DState, %struct.DState* %5843, i32 0, i32 41
  store i32 %5842, i32* %5844, align 8
  %5845 = load i32, i32* %11, align 4
  %5846 = load %struct.DState*, %struct.DState** %3, align 8
  %5847 = getelementptr inbounds %struct.DState, %struct.DState* %5846, i32 0, i32 42
  store i32 %5845, i32* %5847, align 4
  %5848 = load i32, i32* %12, align 4
  %5849 = load %struct.DState*, %struct.DState** %3, align 8
  %5850 = getelementptr inbounds %struct.DState, %struct.DState* %5849, i32 0, i32 43
  store i32 %5848, i32* %5850, align 8
  %5851 = load i32, i32* %13, align 4
  %5852 = load %struct.DState*, %struct.DState** %3, align 8
  %5853 = getelementptr inbounds %struct.DState, %struct.DState* %5852, i32 0, i32 44
  store i32 %5851, i32* %5853, align 4
  %5854 = load i32, i32* %14, align 4
  %5855 = load %struct.DState*, %struct.DState** %3, align 8
  %5856 = getelementptr inbounds %struct.DState, %struct.DState* %5855, i32 0, i32 45
  store i32 %5854, i32* %5856, align 8
  %5857 = load i32, i32* %15, align 4
  %5858 = load %struct.DState*, %struct.DState** %3, align 8
  %5859 = getelementptr inbounds %struct.DState, %struct.DState* %5858, i32 0, i32 46
  store i32 %5857, i32* %5859, align 4
  %5860 = load i32, i32* %16, align 4
  %5861 = load %struct.DState*, %struct.DState** %3, align 8
  %5862 = getelementptr inbounds %struct.DState, %struct.DState* %5861, i32 0, i32 47
  store i32 %5860, i32* %5862, align 8
  %5863 = load i32, i32* %17, align 4
  %5864 = load %struct.DState*, %struct.DState** %3, align 8
  %5865 = getelementptr inbounds %struct.DState, %struct.DState* %5864, i32 0, i32 48
  store i32 %5863, i32* %5865, align 4
  %5866 = load i32, i32* %18, align 4
  %5867 = load %struct.DState*, %struct.DState** %3, align 8
  %5868 = getelementptr inbounds %struct.DState, %struct.DState* %5867, i32 0, i32 49
  store i32 %5866, i32* %5868, align 8
  %5869 = load i32, i32* %19, align 4
  %5870 = load %struct.DState*, %struct.DState** %3, align 8
  %5871 = getelementptr inbounds %struct.DState, %struct.DState* %5870, i32 0, i32 50
  store i32 %5869, i32* %5871, align 4
  %5872 = load i32, i32* %20, align 4
  %5873 = load %struct.DState*, %struct.DState** %3, align 8
  %5874 = getelementptr inbounds %struct.DState, %struct.DState* %5873, i32 0, i32 51
  store i32 %5872, i32* %5874, align 8
  %5875 = load i32, i32* %21, align 4
  %5876 = load %struct.DState*, %struct.DState** %3, align 8
  %5877 = getelementptr inbounds %struct.DState, %struct.DState* %5876, i32 0, i32 52
  store i32 %5875, i32* %5877, align 4
  %5878 = load i32, i32* %22, align 4
  %5879 = load %struct.DState*, %struct.DState** %3, align 8
  %5880 = getelementptr inbounds %struct.DState, %struct.DState* %5879, i32 0, i32 53
  store i32 %5878, i32* %5880, align 8
  %5881 = load i32, i32* %23, align 4
  %5882 = load %struct.DState*, %struct.DState** %3, align 8
  %5883 = getelementptr inbounds %struct.DState, %struct.DState* %5882, i32 0, i32 54
  store i32 %5881, i32* %5883, align 4
  %5884 = load i32, i32* %24, align 4
  %5885 = load %struct.DState*, %struct.DState** %3, align 8
  %5886 = getelementptr inbounds %struct.DState, %struct.DState* %5885, i32 0, i32 55
  store i32 %5884, i32* %5886, align 8
  %5887 = load i32, i32* %25, align 4
  %5888 = load %struct.DState*, %struct.DState** %3, align 8
  %5889 = getelementptr inbounds %struct.DState, %struct.DState* %5888, i32 0, i32 56
  store i32 %5887, i32* %5889, align 4
  %5890 = load i32, i32* %26, align 4
  %5891 = load %struct.DState*, %struct.DState** %3, align 8
  %5892 = getelementptr inbounds %struct.DState, %struct.DState* %5891, i32 0, i32 57
  store i32 %5890, i32* %5892, align 8
  %5893 = load i32, i32* %27, align 4
  %5894 = load %struct.DState*, %struct.DState** %3, align 8
  %5895 = getelementptr inbounds %struct.DState, %struct.DState* %5894, i32 0, i32 58
  store i32 %5893, i32* %5895, align 4
  %5896 = load i32, i32* %28, align 4
  %5897 = load %struct.DState*, %struct.DState** %3, align 8
  %5898 = getelementptr inbounds %struct.DState, %struct.DState* %5897, i32 0, i32 59
  store i32 %5896, i32* %5898, align 8
  %5899 = load i32, i32* %29, align 4
  %5900 = load %struct.DState*, %struct.DState** %3, align 8
  %5901 = getelementptr inbounds %struct.DState, %struct.DState* %5900, i32 0, i32 60
  store i32 %5899, i32* %5901, align 4
  %5902 = load i32*, i32** %30, align 8
  %5903 = load %struct.DState*, %struct.DState** %3, align 8
  %5904 = getelementptr inbounds %struct.DState, %struct.DState* %5903, i32 0, i32 61
  store i32* %5902, i32** %5904, align 8
  %5905 = load i32*, i32** %31, align 8
  %5906 = load %struct.DState*, %struct.DState** %3, align 8
  %5907 = getelementptr inbounds %struct.DState, %struct.DState* %5906, i32 0, i32 62
  store i32* %5905, i32** %5907, align 8
  %5908 = load i32*, i32** %32, align 8
  %5909 = load %struct.DState*, %struct.DState** %3, align 8
  %5910 = getelementptr inbounds %struct.DState, %struct.DState* %5909, i32 0, i32 63
  store i32* %5908, i32** %5910, align 8
  %5911 = load i32, i32* %5, align 4
  store i32 %5911, i32* %2, align 4
  br label %5912

; <label>:5912:                                   ; preds = %5838, %4983, %4905, %4785, %4689
  %5913 = load i32, i32* %2, align 4
  ret i32 %5913
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @makeMaps_d(%struct.DState*) #0 {
  %2 = alloca %struct.DState*, align 8
  %3 = alloca i32, align 4
  store %struct.DState* %0, %struct.DState** %2, align 8
  %4 = load %struct.DState*, %struct.DState** %2, align 8
  %5 = getelementptr inbounds %struct.DState, %struct.DState* %4, i32 0, i32 27
  store i32 0, i32* %5, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %32, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %35

; <label>:9:                                      ; preds = %6
  %10 = load %struct.DState*, %struct.DState** %2, align 8
  %11 = getelementptr inbounds %struct.DState, %struct.DState* %10, i32 0, i32 28
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %31

; <label>:17:                                     ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = trunc i32 %18 to i8
  %20 = load %struct.DState*, %struct.DState** %2, align 8
  %21 = getelementptr inbounds %struct.DState, %struct.DState* %20, i32 0, i32 30
  %22 = load %struct.DState*, %struct.DState** %2, align 8
  %23 = getelementptr inbounds %struct.DState, %struct.DState* %22, i32 0, i32 27
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i64 0, i64 %25
  store i8 %19, i8* %26, align 1
  %27 = load %struct.DState*, %struct.DState** %2, align 8
  %28 = getelementptr inbounds %struct.DState, %struct.DState* %27, i32 0, i32 27
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  br label %31

; <label>:31:                                     ; preds = %17, %9
  br label %32

; <label>:32:                                     ; preds = %31
  %33 = load i32, i32* %3, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %3, align 4
  br label %6

; <label>:35:                                     ; preds = %6
  ret void
}

declare void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #1

declare i32 @BZ2_indexIntoF(i32, i32*) #1

declare void @BZ2_bz__AssertH__fail(i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
