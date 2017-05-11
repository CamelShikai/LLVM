; ModuleID = 'huffman.c'
source_filename = "huffman.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind uwtable
define void @BZ2_hbMakeCodeLengths(i8*, i32*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8, align 1
  %17 = alloca [260 x i32], align 16
  %18 = alloca [516 x i32], align 16
  %19 = alloca [516 x i32], align 16
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
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %13, align 4
  br label %30

; <label>:30:                                     ; preds = %55, %4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %58

; <label>:34:                                     ; preds = %30
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %34
  br label %48

; <label>:42:                                     ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  br label %48

; <label>:48:                                     ; preds = %42, %41
  %49 = phi i32 [ 1, %41 ], [ %47, %42 ]
  %50 = shl i32 %49, 8
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %53
  store i32 %50, i32* %54, align 4
  br label %55

; <label>:55:                                     ; preds = %48
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %13, align 4
  br label %30

; <label>:58:                                     ; preds = %30
  br label %59

; <label>:59:                                     ; preds = %58, %429
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %61 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %61, align 16
  %62 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %62, align 16
  %63 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 0
  store i32 -2, i32* %63, align 16
  store i32 1, i32* %13, align 4
  br label %64

; <label>:64:                                     ; preds = %113, %59
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sle i32 %65, %66
  br i1 %67, label %68, label %116

; <label>:68:                                     ; preds = %64
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %70
  store i32 -1, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  store i32 %78, i32* %20, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %21, align 4
  br label %83

; <label>:83:                                     ; preds = %97, %68
  %84 = load i32, i32* %21, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %20, align 4
  %89 = ashr i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %87, %95
  br i1 %96, label %97, label %108

; <label>:97:                                     ; preds = %83
  %98 = load i32, i32* %20, align 4
  %99 = ashr i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %20, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  %106 = load i32, i32* %20, align 4
  %107 = ashr i32 %106, 1
  store i32 %107, i32* %20, align 4
  br label %83

; <label>:108:                                    ; preds = %83
  %109 = load i32, i32* %21, align 4
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %111
  store i32 %109, i32* %112, align 4
  br label %113

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %13, align 4
  br label %64

; <label>:116:                                    ; preds = %64
  %117 = load i32, i32* %10, align 4
  %118 = icmp slt i32 %117, 260
  br i1 %118, label %120, label %119

; <label>:119:                                    ; preds = %116
  call void @BZ2_bz__AssertH__fail(i32 2001)
  br label %120

; <label>:120:                                    ; preds = %119, %116
  br label %121

; <label>:121:                                    ; preds = %358, %120
  %122 = load i32, i32* %10, align 4
  %123 = icmp sgt i32 %122, 1
  br i1 %123, label %124, label %363

; <label>:124:                                    ; preds = %121
  %125 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1
  store i32 %130, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = add nsw i32 %132, -1
  store i32 %133, i32* %10, align 4
  store i32 1, i32* %22, align 4
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %135
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %24, align 4
  br label %138

; <label>:138:                                    ; preds = %124, %183
  %139 = load i32, i32* %22, align 4
  %140 = shl i32 %139, 1
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = load i32, i32* %10, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %144, label %145

; <label>:144:                                    ; preds = %138
  br label %192

; <label>:145:                                    ; preds = %138
  %146 = load i32, i32* %23, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %169

; <label>:149:                                    ; preds = %145
  %150 = load i32, i32* %23, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp slt i32 %157, %164
  br i1 %165, label %166, label %169

; <label>:166:                                    ; preds = %149
  %167 = load i32, i32* %23, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %23, align 4
  br label %169

; <label>:169:                                    ; preds = %166, %149, %145
  %170 = load i32, i32* %24, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %23, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %173, %180
  br i1 %181, label %182, label %183

; <label>:182:                                    ; preds = %169
  br label %192

; <label>:183:                                    ; preds = %169
  %184 = load i32, i32* %23, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %22, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %189
  store i32 %187, i32* %190, align 4
  %191 = load i32, i32* %23, align 4
  store i32 %191, i32* %22, align 4
  br label %138

; <label>:192:                                    ; preds = %182, %144
  %193 = load i32, i32* %24, align 4
  %194 = load i32, i32* %22, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %195
  store i32 %193, i32* %196, align 4
  %197 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %12, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 1
  store i32 %202, i32* %203, align 4
  %204 = load i32, i32* %10, align 4
  %205 = add nsw i32 %204, -1
  store i32 %205, i32* %10, align 4
  store i32 1, i32* %25, align 4
  %206 = load i32, i32* %25, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %207
  %209 = load i32, i32* %208, align 4
  store i32 %209, i32* %27, align 4
  br label %210

; <label>:210:                                    ; preds = %192, %255
  %211 = load i32, i32* %25, align 4
  %212 = shl i32 %211, 1
  store i32 %212, i32* %26, align 4
  %213 = load i32, i32* %26, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp sgt i32 %213, %214
  br i1 %215, label %216, label %217

; <label>:216:                                    ; preds = %210
  br label %264

; <label>:217:                                    ; preds = %210
  %218 = load i32, i32* %26, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp slt i32 %218, %219
  br i1 %220, label %221, label %241

; <label>:221:                                    ; preds = %217
  %222 = load i32, i32* %26, align 4
  %223 = add nsw i32 %222, 1
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %224
  %226 = load i32, i32* %225, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %26, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp slt i32 %229, %236
  br i1 %237, label %238, label %241

; <label>:238:                                    ; preds = %221
  %239 = load i32, i32* %26, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %26, align 4
  br label %241

; <label>:241:                                    ; preds = %238, %221, %217
  %242 = load i32, i32* %27, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* %26, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp slt i32 %245, %252
  br i1 %253, label %254, label %255

; <label>:254:                                    ; preds = %241
  br label %264

; <label>:255:                                    ; preds = %241
  %256 = load i32, i32* %26, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* %25, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %261
  store i32 %259, i32* %262, align 4
  %263 = load i32, i32* %26, align 4
  store i32 %263, i32* %25, align 4
  br label %210

; <label>:264:                                    ; preds = %254, %216
  %265 = load i32, i32* %27, align 4
  %266 = load i32, i32* %25, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %267
  store i32 %265, i32* %268, align 4
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  %271 = load i32, i32* %9, align 4
  %272 = load i32, i32* %12, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %273
  store i32 %271, i32* %274, align 4
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %276
  store i32 %271, i32* %277, align 4
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %279
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, -256
  %283 = load i32, i32* %12, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  %287 = and i32 %286, -256
  %288 = add i32 %282, %287
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = and i32 %292, 255
  %294 = load i32, i32* %12, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, 255
  %299 = icmp sgt i32 %293, %298
  br i1 %299, label %300, label %306

; <label>:300:                                    ; preds = %264
  %301 = load i32, i32* %11, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %302
  %304 = load i32, i32* %303, align 4
  %305 = and i32 %304, 255
  br label %312

; <label>:306:                                    ; preds = %264
  %307 = load i32, i32* %12, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = and i32 %310, 255
  br label %312

; <label>:312:                                    ; preds = %306, %300
  %313 = phi i32 [ %305, %300 ], [ %311, %306 ]
  %314 = add nsw i32 1, %313
  %315 = or i32 %288, %314
  %316 = load i32, i32* %9, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %317
  store i32 %315, i32* %318, align 4
  %319 = load i32, i32* %9, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %320
  store i32 -1, i32* %321, align 4
  %322 = load i32, i32* %10, align 4
  %323 = add nsw i32 %322, 1
  store i32 %323, i32* %10, align 4
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %326
  store i32 %324, i32* %327, align 4
  %328 = load i32, i32* %10, align 4
  store i32 %328, i32* %28, align 4
  %329 = load i32, i32* %28, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %330
  %332 = load i32, i32* %331, align 4
  store i32 %332, i32* %29, align 4
  br label %333

; <label>:333:                                    ; preds = %347, %312
  %334 = load i32, i32* %29, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %28, align 4
  %339 = ashr i32 %338, 1
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = icmp slt i32 %337, %345
  br i1 %346, label %347, label %358

; <label>:347:                                    ; preds = %333
  %348 = load i32, i32* %28, align 4
  %349 = ashr i32 %348, 1
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* %28, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %354
  store i32 %352, i32* %355, align 4
  %356 = load i32, i32* %28, align 4
  %357 = ashr i32 %356, 1
  store i32 %357, i32* %28, align 4
  br label %333

; <label>:358:                                    ; preds = %333
  %359 = load i32, i32* %29, align 4
  %360 = load i32, i32* %28, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds [260 x i32], [260 x i32]* %17, i64 0, i64 %361
  store i32 %359, i32* %362, align 4
  br label %121

; <label>:363:                                    ; preds = %121
  %364 = load i32, i32* %9, align 4
  %365 = icmp slt i32 %364, 516
  br i1 %365, label %367, label %366

; <label>:366:                                    ; preds = %363
  call void @BZ2_bz__AssertH__fail(i32 2002)
  br label %367

; <label>:367:                                    ; preds = %366, %363
  store i8 0, i8* %16, align 1
  store i32 1, i32* %13, align 4
  br label %368

; <label>:368:                                    ; preds = %400, %367
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* %7, align 4
  %371 = icmp sle i32 %369, %370
  br i1 %371, label %372, label %403

; <label>:372:                                    ; preds = %368
  store i32 0, i32* %14, align 4
  %373 = load i32, i32* %13, align 4
  store i32 %373, i32* %15, align 4
  br label %374

; <label>:374:                                    ; preds = %380, %372
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = icmp sge i32 %378, 0
  br i1 %379, label %380, label %387

; <label>:380:                                    ; preds = %374
  %381 = load i32, i32* %15, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds [516 x i32], [516 x i32]* %19, i64 0, i64 %382
  %384 = load i32, i32* %383, align 4
  store i32 %384, i32* %15, align 4
  %385 = load i32, i32* %14, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %14, align 4
  br label %374

; <label>:387:                                    ; preds = %374
  %388 = load i32, i32* %14, align 4
  %389 = trunc i32 %388 to i8
  %390 = load i8*, i8** %5, align 8
  %391 = load i32, i32* %13, align 4
  %392 = sub nsw i32 %391, 1
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds i8, i8* %390, i64 %393
  store i8 %389, i8* %394, align 1
  %395 = load i32, i32* %14, align 4
  %396 = load i32, i32* %8, align 4
  %397 = icmp sgt i32 %395, %396
  br i1 %397, label %398, label %399

; <label>:398:                                    ; preds = %387
  store i8 1, i8* %16, align 1
  br label %399

; <label>:399:                                    ; preds = %398, %387
  br label %400

; <label>:400:                                    ; preds = %399
  %401 = load i32, i32* %13, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %13, align 4
  br label %368

; <label>:403:                                    ; preds = %368
  %404 = load i8, i8* %16, align 1
  %405 = icmp ne i8 %404, 0
  br i1 %405, label %407, label %406

; <label>:406:                                    ; preds = %403
  br label %430

; <label>:407:                                    ; preds = %403
  store i32 1, i32* %13, align 4
  br label %408

; <label>:408:                                    ; preds = %426, %407
  %409 = load i32, i32* %13, align 4
  %410 = load i32, i32* %7, align 4
  %411 = icmp sle i32 %409, %410
  br i1 %411, label %412, label %429

; <label>:412:                                    ; preds = %408
  %413 = load i32, i32* %13, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = ashr i32 %416, 8
  store i32 %417, i32* %14, align 4
  %418 = load i32, i32* %14, align 4
  %419 = sdiv i32 %418, 2
  %420 = add nsw i32 1, %419
  store i32 %420, i32* %14, align 4
  %421 = load i32, i32* %14, align 4
  %422 = shl i32 %421, 8
  %423 = load i32, i32* %13, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [516 x i32], [516 x i32]* %18, i64 0, i64 %424
  store i32 %422, i32* %425, align 4
  br label %426

; <label>:426:                                    ; preds = %412
  %427 = load i32, i32* %13, align 4
  %428 = add nsw i32 %427, 1
  store i32 %428, i32* %13, align 4
  br label %408

; <label>:429:                                    ; preds = %408
  br label %59

; <label>:430:                                    ; preds = %406
  ret void
}

declare void @BZ2_bz__AssertH__fail(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @BZ2_hbAssignCodes(i32*, i8*, i32, i32, i32) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %11, align 4
  br label %15

; <label>:15:                                     ; preds = %48, %5
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %51

; <label>:19:                                     ; preds = %15
  store i32 0, i32* %13, align 4
  br label %20

; <label>:20:                                     ; preds = %42, %19
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %45

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %41

; <label>:33:                                     ; preds = %24
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %41

; <label>:41:                                     ; preds = %33, %24
  br label %42

; <label>:42:                                     ; preds = %41
  %43 = load i32, i32* %13, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %13, align 4
  br label %20

; <label>:45:                                     ; preds = %20
  %46 = load i32, i32* %12, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %12, align 4
  br label %48

; <label>:48:                                     ; preds = %45
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %15

; <label>:51:                                     ; preds = %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @BZ2_hbCreateDecodeTables(i32*, i32*, i32*, i8*, i32, i32, i32) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %16, align 4
  br label %20

; <label>:20:                                     ; preds = %51, %7
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %54

; <label>:24:                                     ; preds = %20
  store i32 0, i32* %17, align 4
  br label %25

; <label>:25:                                     ; preds = %47, %24
  %26 = load i32, i32* %17, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %50

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %11, align 8
  %31 = load i32, i32* %17, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = load i32, i32* %16, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %46

; <label>:38:                                     ; preds = %29
  %39 = load i32, i32* %17, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %39, i32* %43, align 4
  %44 = load i32, i32* %15, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %15, align 4
  br label %46

; <label>:46:                                     ; preds = %38, %29
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %17, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %17, align 4
  br label %25

; <label>:50:                                     ; preds = %25
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %16, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %16, align 4
  br label %20

; <label>:54:                                     ; preds = %20
  store i32 0, i32* %16, align 4
  br label %55

; <label>:55:                                     ; preds = %63, %54
  %56 = load i32, i32* %16, align 4
  %57 = icmp slt i32 %56, 23
  br i1 %57, label %58, label %66

; <label>:58:                                     ; preds = %55
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  br label %63

; <label>:63:                                     ; preds = %58
  %64 = load i32, i32* %16, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %16, align 4
  br label %55

; <label>:66:                                     ; preds = %55
  store i32 0, i32* %16, align 4
  br label %67

; <label>:67:                                     ; preds = %84, %66
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %87

; <label>:71:                                     ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i8*, i8** %11, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %72, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

; <label>:84:                                     ; preds = %71
  %85 = load i32, i32* %16, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %16, align 4
  br label %67

; <label>:87:                                     ; preds = %67
  store i32 1, i32* %16, align 4
  br label %88

; <label>:88:                                     ; preds = %104, %87
  %89 = load i32, i32* %16, align 4
  %90 = icmp slt i32 %89, 23
  br i1 %90, label %91, label %107

; <label>:91:                                     ; preds = %88
  %92 = load i32*, i32** %9, align 8
  %93 = load i32, i32* %16, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %9, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, %97
  store i32 %103, i32* %101, align 4
  br label %104

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %16, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %16, align 4
  br label %88

; <label>:107:                                    ; preds = %88
  store i32 0, i32* %16, align 4
  br label %108

; <label>:108:                                    ; preds = %116, %107
  %109 = load i32, i32* %16, align 4
  %110 = icmp slt i32 %109, 23
  br i1 %110, label %111, label %119

; <label>:111:                                    ; preds = %108
  %112 = load i32*, i32** %8, align 8
  %113 = load i32, i32* %16, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 0, i32* %115, align 4
  br label %116

; <label>:116:                                    ; preds = %111
  %117 = load i32, i32* %16, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %16, align 4
  br label %108

; <label>:119:                                    ; preds = %108
  store i32 0, i32* %18, align 4
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %16, align 4
  br label %121

; <label>:121:                                    ; preds = %148, %119
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* %13, align 4
  %124 = icmp sle i32 %122, %123
  br i1 %124, label %125, label %151

; <label>:125:                                    ; preds = %121
  %126 = load i32*, i32** %9, align 8
  %127 = load i32, i32* %16, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %126, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %9, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %131, %136
  %138 = load i32, i32* %18, align 4
  %139 = add nsw i32 %138, %137
  store i32 %139, i32* %18, align 4
  %140 = load i32, i32* %18, align 4
  %141 = sub nsw i32 %140, 1
  %142 = load i32*, i32** %8, align 8
  %143 = load i32, i32* %16, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32, i32* %18, align 4
  %147 = shl i32 %146, 1
  store i32 %147, i32* %18, align 4
  br label %148

; <label>:148:                                    ; preds = %125
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %121

; <label>:151:                                    ; preds = %121
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %16, align 4
  br label %154

; <label>:154:                                    ; preds = %177, %151
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp sle i32 %155, %156
  br i1 %157, label %158, label %180

; <label>:158:                                    ; preds = %154
  %159 = load i32*, i32** %8, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sub nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  %166 = shl i32 %165, 1
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %166, %171
  %173 = load i32*, i32** %9, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  store i32 %172, i32* %176, align 4
  br label %177

; <label>:177:                                    ; preds = %158
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %154

; <label>:180:                                    ; preds = %154
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
