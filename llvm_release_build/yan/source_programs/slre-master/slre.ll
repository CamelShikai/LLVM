; ModuleID = 'slre.c'
source_filename = "slre.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slre_cap = type { i8*, i32 }
%struct.regex_info = type { [100 x %struct.bracket_pair], i32, [100 x %struct.branch], i32, %struct.slre_cap*, i32, i32 }
%struct.bracket_pair = type { i8*, i32, i32, i32 }
%struct.branch = type { i32, i8* }

@is_metacharacter.metacharacters = internal global i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [22 x i8] c"^$().[]*+?|\5CSsdbfnrtv\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @slre_match(i8*, i8*, i32, %struct.slre_cap*, i32, i32) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.slre_cap*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.regex_info, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.slre_cap* %3, %struct.slre_cap** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %13, i32 0, i32 6
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %13, i32 0, i32 3
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %13, i32 0, i32 1
  store i32 0, i32* %17, align 8
  %18 = load i32, i32* %11, align 4
  %19 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %13, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = load %struct.slre_cap*, %struct.slre_cap** %10, align 8
  %21 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %13, i32 0, i32 4
  store %struct.slre_cap* %20, %struct.slre_cap** %21, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @strlen(i8* %23) #4
  %25 = trunc i64 %24 to i32
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @foo(i8* %22, i32 %25, i8* %26, i32 %27, %struct.regex_info* %13)
  ret i32 %28
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @foo(i8*, i32, i8*, i32, %struct.regex_info*) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.regex_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.regex_info* %4, %struct.regex_info** %11, align 8
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %18 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %18, i64 0, i64 0
  %20 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %19, i32 0, i32 0
  store i8* %16, i8** %20, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %23 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %23, i64 0, i64 0
  %25 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 8
  %26 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %27 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %26, i32 0, i32 1
  store i32 1, i32* %27, align 8
  store i32 0, i32* %12, align 4
  br label %28

; <label>:28:                                     ; preds = %321, %5
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %325

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @get_op_len(i8* %36, i32 %39)
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 124
  br i1 %47, label %48, label %99

; <label>:48:                                     ; preds = %32
  %49 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %50 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 100
  br i1 %52, label %53, label %54

; <label>:53:                                     ; preds = %48
  store i32 -8, i32* %6, align 4
  br label %335

; <label>:54:                                     ; preds = %48
  %55 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %56 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %55, i32 0, i32 0
  %57 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %58 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %56, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %71

; <label>:66:                                     ; preds = %54
  %67 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %68 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = sub nsw i32 %69, 1
  br label %73

; <label>:71:                                     ; preds = %54
  %72 = load i32, i32* %14, align 4
  br label %73

; <label>:73:                                     ; preds = %71, %66
  %74 = phi i32 [ %70, %66 ], [ %72, %71 ]
  %75 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %76 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %75, i32 0, i32 2
  %77 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %78 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %76, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.branch, %struct.branch* %81, i32 0, i32 0
  store i32 %74, i32* %82, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %88 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %87, i32 0, i32 2
  %89 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %90 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %88, i64 0, i64 %92
  %94 = getelementptr inbounds %struct.branch, %struct.branch* %93, i32 0, i32 1
  store i8* %86, i8** %94, align 8
  %95 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %96 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  br label %320

; <label>:99:                                     ; preds = %32
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp eq i32 %105, 92
  br i1 %106, label %107, label %191

; <label>:107:                                    ; preds = %99
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %8, align 4
  %110 = sub nsw i32 %109, 1
  %111 = icmp sge i32 %108, %110
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %107
  store i32 -6, i32* %6, align 4
  br label %335

; <label>:113:                                    ; preds = %107
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %120, 120
  br i1 %121, label %122, label %180

; <label>:122:                                    ; preds = %113
  %123 = load i8*, i8** %7, align 8
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %123, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 120
  br i1 %130, label %131, label %137

; <label>:131:                                    ; preds = %122
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %8, align 4
  %134 = sub nsw i32 %133, 3
  %135 = icmp sge i32 %132, %134
  br i1 %135, label %136, label %137

; <label>:136:                                    ; preds = %131
  store i32 -6, i32* %6, align 4
  br label %335

; <label>:137:                                    ; preds = %131, %122
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %138, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %144, 120
  br i1 %145, label %146, label %179

; <label>:146:                                    ; preds = %137
  %147 = call i16** @__ctype_b_loc() #5
  %148 = load i16*, i16** %147, align 8
  %149 = load i8*, i8** %7, align 8
  %150 = load i32, i32* %12, align 4
  %151 = add nsw i32 %150, 2
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i16, i16* %148, i64 %156
  %158 = load i16, i16* %157, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 4096
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

; <label>:162:                                    ; preds = %146
  %163 = call i16** @__ctype_b_loc() #5
  %164 = load i16*, i16** %163, align 8
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 3
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %165, i64 %168
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i16, i16* %164, i64 %172
  %174 = load i16, i16* %173, align 2
  %175 = zext i16 %174 to i32
  %176 = and i32 %175, 4096
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %179, label %178

; <label>:178:                                    ; preds = %162, %146
  store i32 -6, i32* %6, align 4
  br label %335

; <label>:179:                                    ; preds = %162, %137
  br label %190

; <label>:180:                                    ; preds = %113
  %181 = load i8*, i8** %7, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8, i8* %181, i64 %183
  %185 = getelementptr inbounds i8, i8* %184, i64 1
  %186 = call i32 @is_metacharacter(i8* %185)
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %189, label %188

; <label>:188:                                    ; preds = %180
  store i32 -6, i32* %6, align 4
  br label %335

; <label>:189:                                    ; preds = %180
  br label %190

; <label>:190:                                    ; preds = %189, %179
  br label %319

; <label>:191:                                    ; preds = %99
  %192 = load i8*, i8** %7, align 8
  %193 = load i32, i32* %12, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8, i8* %192, i64 %194
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 40
  br i1 %198, label %199, label %248

; <label>:199:                                    ; preds = %191
  %200 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %201 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = icmp sge i32 %202, 100
  br i1 %203, label %204, label %205

; <label>:204:                                    ; preds = %199
  store i32 -9, i32* %6, align 4
  br label %335

; <label>:205:                                    ; preds = %199
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = load i8*, i8** %7, align 8
  %209 = load i32, i32* %12, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  %212 = getelementptr inbounds i8, i8* %211, i64 1
  %213 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %214 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %213, i32 0, i32 0
  %215 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %216 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %214, i64 0, i64 %218
  %220 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %219, i32 0, i32 0
  store i8* %212, i8** %220, align 8
  %221 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %222 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %221, i32 0, i32 0
  %223 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %224 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %222, i64 0, i64 %226
  %228 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %227, i32 0, i32 1
  store i32 -1, i32* %228, align 8
  %229 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %230 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %230, align 8
  %233 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %234 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 8
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %247

; <label>:237:                                    ; preds = %205
  %238 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %239 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = sub nsw i32 %240, 1
  %242 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %243 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 8
  %245 = icmp sgt i32 %241, %244
  br i1 %245, label %246, label %247

; <label>:246:                                    ; preds = %237
  store i32 -7, i32* %6, align 4
  br label %335

; <label>:247:                                    ; preds = %237, %205
  br label %318

; <label>:248:                                    ; preds = %191
  %249 = load i8*, i8** %7, align 8
  %250 = load i32, i32* %12, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8, i8* %249, i64 %251
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  %255 = icmp eq i32 %254, 41
  br i1 %255, label %256, label %317

; <label>:256:                                    ; preds = %248
  %257 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %258 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %257, i32 0, i32 0
  %259 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %260 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %258, i64 0, i64 %263
  %265 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = icmp eq i32 %266, -1
  br i1 %267, label %268, label %273

; <label>:268:                                    ; preds = %256
  %269 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %270 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = sub nsw i32 %271, 1
  br label %275

; <label>:273:                                    ; preds = %256
  %274 = load i32, i32* %14, align 4
  br label %275

; <label>:275:                                    ; preds = %273, %268
  %276 = phi i32 [ %272, %268 ], [ %274, %273 ]
  store i32 %276, i32* %15, align 4
  %277 = load i8*, i8** %7, align 8
  %278 = load i32, i32* %12, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i8, i8* %277, i64 %279
  %281 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %282 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %281, i32 0, i32 0
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %282, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = ptrtoint i8* %280 to i64
  %289 = ptrtoint i8* %287 to i64
  %290 = sub i64 %288, %289
  %291 = trunc i64 %290 to i32
  %292 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %293 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %292, i32 0, i32 0
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %293, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %296, i32 0, i32 1
  store i32 %291, i32* %297, align 8
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, -1
  store i32 %299, i32* %14, align 4
  %300 = load i32, i32* %14, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %303

; <label>:302:                                    ; preds = %275
  store i32 -3, i32* %6, align 4
  br label %335

; <label>:303:                                    ; preds = %275
  %304 = load i32, i32* %12, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %316

; <label>:306:                                    ; preds = %303
  %307 = load i8*, i8** %7, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sub nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i8, i8* %307, i64 %310
  %312 = load i8, i8* %311, align 1
  %313 = sext i8 %312 to i32
  %314 = icmp eq i32 %313, 40
  br i1 %314, label %315, label %316

; <label>:315:                                    ; preds = %306
  store i32 -1, i32* %6, align 4
  br label %335

; <label>:316:                                    ; preds = %306, %303
  br label %317

; <label>:317:                                    ; preds = %316, %248
  br label %318

; <label>:318:                                    ; preds = %317, %247
  br label %319

; <label>:319:                                    ; preds = %318, %190
  br label %320

; <label>:320:                                    ; preds = %319, %73
  br label %321

; <label>:321:                                    ; preds = %320
  %322 = load i32, i32* %13, align 4
  %323 = load i32, i32* %12, align 4
  %324 = add nsw i32 %323, %322
  store i32 %324, i32* %12, align 4
  br label %28

; <label>:325:                                    ; preds = %28
  %326 = load i32, i32* %14, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %329

; <label>:328:                                    ; preds = %325
  store i32 -3, i32* %6, align 4
  br label %335

; <label>:329:                                    ; preds = %325
  %330 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  call void @setup_branch_points(%struct.regex_info* %330)
  %331 = load i8*, i8** %9, align 8
  %332 = load i32, i32* %10, align 4
  %333 = load %struct.regex_info*, %struct.regex_info** %11, align 8
  %334 = call i32 @baz(i8* %331, i32 %332, %struct.regex_info* %333)
  store i32 %334, i32* %6, align 4
  br label %335

; <label>:335:                                    ; preds = %329, %328, %315, %302, %246, %204, %188, %178, %136, %112, %53
  %336 = load i32, i32* %6, align 4
  ret i32 %336
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @get_op_len(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 91
  br i1 %9, label %10, label %17

; <label>:10:                                     ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 1
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @set_len(i8* %12, i32 %14)
  %16 = add nsw i32 %15, 1
  br label %20

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @op_len(i8* %18)
  br label %20

; <label>:20:                                     ; preds = %17, %10
  %21 = phi i32 [ %16, %10 ], [ %19, %17 ]
  ret i32 %21
}

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_metacharacter(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** @is_metacharacter.metacharacters, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = call i8* @strchr(i8* %3, i32 %6) #4
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  ret i32 %9
}

; Function Attrs: noinline nounwind uwtable
define internal void @setup_branch_points(%struct.regex_info*) #0 {
  %2 = alloca %struct.regex_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.branch, align 8
  store %struct.regex_info* %0, %struct.regex_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %69, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %9 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %72

; <label>:12:                                     ; preds = %6
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

; <label>:15:                                     ; preds = %65, %12
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %18 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %68

; <label>:21:                                     ; preds = %15
  %22 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %23 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %22, i32 0, i32 2
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %23, i64 0, i64 %25
  %27 = getelementptr inbounds %struct.branch, %struct.branch* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %30 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %29, i32 0, i32 2
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %30, i64 0, i64 %32
  %34 = getelementptr inbounds %struct.branch, %struct.branch* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %28, %35
  br i1 %36, label %37, label %64

; <label>:37:                                     ; preds = %21
  %38 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %39 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %38, i32 0, i32 2
  %40 = load i32, i32* %3, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %39, i64 0, i64 %41
  %43 = bitcast %struct.branch* %5 to i8*
  %44 = bitcast %struct.branch* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %43, i8* %44, i64 16, i32 8, i1 false)
  %45 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %46 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %45, i32 0, i32 2
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %46, i64 0, i64 %48
  %50 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %51 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %50, i32 0, i32 2
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %51, i64 0, i64 %53
  %55 = bitcast %struct.branch* %49 to i8*
  %56 = bitcast %struct.branch* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %55, i8* %56, i64 16, i32 8, i1 false)
  %57 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %58 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %57, i32 0, i32 2
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %58, i64 0, i64 %60
  %62 = bitcast %struct.branch* %61 to i8*
  %63 = bitcast %struct.branch* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %62, i8* %63, i64 16, i32 8, i1 false)
  br label %64

; <label>:64:                                     ; preds = %37, %21
  br label %65

; <label>:65:                                     ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %15

; <label>:68:                                     ; preds = %15
  br label %69

; <label>:69:                                     ; preds = %68
  %70 = load i32, i32* %3, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %3, align 4
  br label %6

; <label>:72:                                     ; preds = %6
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %73

; <label>:73:                                     ; preds = %123, %72
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %76 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %126

; <label>:79:                                     ; preds = %73
  %80 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %81 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %80, i32 0, i32 0
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %81, i64 0, i64 %83
  %85 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %84, i32 0, i32 3
  store i32 0, i32* %85, align 8
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %88 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %87, i32 0, i32 0
  %89 = load i32, i32* %3, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %88, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %91, i32 0, i32 2
  store i32 %86, i32* %92, align 4
  br label %93

; <label>:93:                                     ; preds = %111, %79
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %96 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %109

; <label>:99:                                     ; preds = %93
  %100 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %101 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %100, i32 0, i32 2
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %101, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.branch, %struct.branch* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %3, align 4
  %108 = icmp eq i32 %106, %107
  br label %109

; <label>:109:                                    ; preds = %99, %93
  %110 = phi i1 [ false, %93 ], [ %108, %99 ]
  br i1 %110, label %111, label %122

; <label>:111:                                    ; preds = %109
  %112 = load %struct.regex_info*, %struct.regex_info** %2, align 8
  %113 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %112, i32 0, i32 0
  %114 = load i32, i32* %3, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %113, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %4, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %4, align 4
  br label %93

; <label>:122:                                    ; preds = %109
  br label %123

; <label>:123:                                    ; preds = %122
  %124 = load i32, i32* %3, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %3, align 4
  br label %73

; <label>:126:                                    ; preds = %73
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @baz(i8*, i32, %struct.regex_info*) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regex_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.regex_info* %2, %struct.regex_info** %6, align 8
  store i32 -1, i32* %8, align 4
  %10 = load %struct.regex_info*, %struct.regex_info** %6, align 8
  %11 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %10, i32 0, i32 0
  %12 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %11, i64 0, i64 0
  %13 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 94
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %20

; <label>:20:                                     ; preds = %45, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %48

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, i8* %25, i64 %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 %29, %30
  %32 = load %struct.regex_info*, %struct.regex_info** %6, align 8
  %33 = call i32 @doh(i8* %28, i32 %31, %struct.regex_info* %32, i32 0)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %40

; <label>:36:                                     ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %48

; <label>:40:                                     ; preds = %24
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40
  br label %48

; <label>:44:                                     ; preds = %40
  br label %45

; <label>:45:                                     ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %20

; <label>:48:                                     ; preds = %43, %36, %20
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @set_len(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

; <label>:6:                                      ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

; <label>:10:                                     ; preds = %6
  %11 = load i8*, i8** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 93
  br label %18

; <label>:18:                                     ; preds = %10, %6
  %19 = phi i1 [ false, %6 ], [ %17, %10 ]
  br i1 %19, label %20, label %28

; <label>:20:                                     ; preds = %18
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = call i32 @op_len(i8* %24)
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %5, align 4
  br label %6

; <label>:28:                                     ; preds = %18
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %35

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  br label %36

; <label>:35:                                     ; preds = %28
  br label %36

; <label>:36:                                     ; preds = %35, %32
  %37 = phi i32 [ %34, %32 ], [ -1, %35 ]
  ret i32 %37
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @op_len(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 92
  br i1 %7, label %8, label %15

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 1
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 120
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %8
  br label %23

; <label>:15:                                     ; preds = %8, %1
  %16 = load i8*, i8** %2, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 92
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 2, i32 1
  br label %23

; <label>:23:                                     ; preds = %15, %14
  %24 = phi i32 [ 4, %14 ], [ %22, %15 ]
  ret i32 %24
}

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define internal i32 @doh(i8*, i32, %struct.regex_info*, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regex_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bracket_pair*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regex_info* %2, %struct.regex_info** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.regex_info*, %struct.regex_info** %7, align 8
  %15 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %14, i32 0, i32 0
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %15, i64 0, i64 %17
  store %struct.bracket_pair* %18, %struct.bracket_pair** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

; <label>:19:                                     ; preds = %108, %4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

; <label>:22:                                     ; preds = %19
  %23 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %24 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  br label %40

; <label>:26:                                     ; preds = %19
  %27 = load %struct.regex_info*, %struct.regex_info** %7, align 8
  %28 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %27, i32 0, i32 2
  %29 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %30 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %10, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %28, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.branch, %struct.branch* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  br label %40

; <label>:40:                                     ; preds = %26, %22
  %41 = phi i8* [ %25, %22 ], [ %39, %26 ]
  store i8* %41, i8** %13, align 8
  %42 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %43 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

; <label>:46:                                     ; preds = %40
  %47 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %48 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  br label %89

; <label>:50:                                     ; preds = %40
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %53 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %70

; <label>:56:                                     ; preds = %50
  %57 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %58 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %61 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %59, i64 %63
  %65 = load i8*, i8** %13, align 8
  %66 = ptrtoint i8* %64 to i64
  %67 = ptrtoint i8* %65 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  br label %87

; <label>:70:                                     ; preds = %50
  %71 = load %struct.regex_info*, %struct.regex_info** %7, align 8
  %72 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %71, i32 0, i32 2
  %73 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %74 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [100 x %struct.branch], [100 x %struct.branch]* %72, i64 0, i64 %78
  %80 = getelementptr inbounds %struct.branch, %struct.branch* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = ptrtoint i8* %81 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = trunc i64 %85 to i32
  br label %87

; <label>:87:                                     ; preds = %70, %56
  %88 = phi i32 [ %69, %56 ], [ %86, %70 ]
  br label %89

; <label>:89:                                     ; preds = %87, %46
  %90 = phi i32 [ %49, %46 ], [ %88, %87 ]
  store i32 %90, i32* %11, align 4
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.regex_info*, %struct.regex_info** %7, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @bar(i8* %91, i32 %92, i8* %93, i32 %94, %struct.regex_info* %95, i32 %96)
  store i32 %97, i32* %12, align 4
  br label %98

; <label>:98:                                     ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = icmp sle i32 %99, 0
  br i1 %100, label %101, label %108

; <label>:101:                                    ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  %104 = load %struct.bracket_pair*, %struct.bracket_pair** %9, align 8
  %105 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp slt i32 %102, %106
  br label %108

; <label>:108:                                    ; preds = %101, %98
  %109 = phi i1 [ false, %98 ], [ %107, %101 ]
  br i1 %109, label %19, label %110

; <label>:110:                                    ; preds = %108
  %111 = load i32, i32* %12, align 4
  ret i32 %111
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @bar(i8*, i32, i8*, i32, %struct.regex_info*, i32) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.regex_info*, align 8
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
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.regex_info* %4, %struct.regex_info** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %26

; <label>:26:                                     ; preds = %534, %6
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %34

; <label>:30:                                     ; preds = %26
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %31, %32
  br label %34

; <label>:34:                                     ; preds = %30, %26
  %35 = phi i1 [ false, %26 ], [ %33, %30 ]
  br i1 %35, label %36, label %538

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %8, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 40
  br i1 %43, label %44, label %54

; <label>:44:                                     ; preds = %36
  %45 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %46 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %45, i32 0, i32 0
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [100 x %struct.bracket_pair], [100 x %struct.bracket_pair]* %46, i64 0, i64 %49
  %51 = getelementptr inbounds %struct.bracket_pair, %struct.bracket_pair* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 2
  br label %63

; <label>:54:                                     ; preds = %36
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %14, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @get_op_len(i8* %58, i32 %61)
  br label %63

; <label>:63:                                     ; preds = %54, %44
  %64 = phi i32 [ %53, %44 ], [ %62, %54 ]
  store i32 %64, i32* %17, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = load i32, i32* %14, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = call i32 @is_quantifier(i8* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %63
  store i32 -2, i32* %7, align 4
  br label %540

; <label>:72:                                     ; preds = %63
  %73 = load i32, i32* %17, align 4
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  store i32 -5, i32* %7, align 4
  br label %540

; <label>:76:                                     ; preds = %72
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %17, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %9, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %318

; <label>:82:                                     ; preds = %76
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i32, i32* %17, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i8, i8* %86, i64 %88
  %90 = call i32 @is_quantifier(i8* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %318

; <label>:92:                                     ; preds = %82
  %93 = load i8*, i8** %8, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %94, %95
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %93, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 63
  br i1 %101, label %102, label %129

; <label>:102:                                    ; preds = %92
  %103 = load i8*, i8** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i32, i32* %17, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @bar(i8* %106, i32 %107, i8* %111, i32 %114, %struct.regex_info* %115, i32 %116)
  store i32 %117, i32* %18, align 4
  %118 = load i32, i32* %18, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %122

; <label>:120:                                    ; preds = %102
  %121 = load i32, i32* %18, align 4
  br label %123

; <label>:122:                                    ; preds = %102
  br label %123

; <label>:123:                                    ; preds = %122, %120
  %124 = phi i32 [ %121, %120 ], [ 0, %122 ]
  %125 = load i32, i32* %15, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %317

; <label>:129:                                    ; preds = %92
  %130 = load i8*, i8** %8, align 8
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %17, align 4
  %133 = add nsw i32 %131, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %130, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 43
  br i1 %138, label %149, label %139

; <label>:139:                                    ; preds = %129
  %140 = load i8*, i8** %8, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %141, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8, i8* %140, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 42
  br i1 %148, label %149, label %316

; <label>:149:                                    ; preds = %139, %129
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %15, align 4
  store i32 %151, i32* %20, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %24, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %17, align 4
  %154 = add nsw i32 %152, %153
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %23, align 4
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* %9, align 4
  %158 = icmp slt i32 %156, %157
  br i1 %158, label %159, label %170

; <label>:159:                                    ; preds = %149
  %160 = load i8*, i8** %8, align 8
  %161 = load i32, i32* %23, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %160, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp eq i32 %165, 63
  br i1 %166, label %167, label %170

; <label>:167:                                    ; preds = %159
  store i32 1, i32* %24, align 4
  %168 = load i32, i32* %23, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %23, align 4
  br label %170

; <label>:170:                                    ; preds = %167, %159, %149
  br label %171

; <label>:171:                                    ; preds = %245, %170
  %172 = load i8*, i8** %8, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i32, i32* %17, align 4
  %177 = load i8*, i8** %10, align 8
  %178 = load i32, i32* %19, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %177, i64 %179
  %181 = load i32, i32* %11, align 4
  %182 = load i32, i32* %19, align 4
  %183 = sub nsw i32 %181, %182
  %184 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @bar(i8* %175, i32 %176, i8* %180, i32 %183, %struct.regex_info* %184, i32 %185)
  store i32 %186, i32* %21, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %192

; <label>:188:                                    ; preds = %171
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, %189
  store i32 %191, i32* %19, align 4
  br label %192

; <label>:192:                                    ; preds = %188, %171
  %193 = load i8*, i8** %8, align 8
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %17, align 4
  %196 = add nsw i32 %194, %195
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i8, i8* %193, i64 %197
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp eq i32 %200, 43
  br i1 %201, label %202, label %206

; <label>:202:                                    ; preds = %192
  %203 = load i32, i32* %21, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %206

; <label>:205:                                    ; preds = %202
  br label %248

; <label>:206:                                    ; preds = %202, %192
  %207 = load i32, i32* %23, align 4
  %208 = load i32, i32* %9, align 4
  %209 = icmp sge i32 %207, %208
  br i1 %209, label %210, label %212

; <label>:210:                                    ; preds = %206
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %20, align 4
  br label %236

; <label>:212:                                    ; preds = %206
  %213 = load i8*, i8** %8, align 8
  %214 = load i32, i32* %23, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %213, i64 %215
  %217 = load i32, i32* %9, align 4
  %218 = load i32, i32* %23, align 4
  %219 = sub nsw i32 %217, %218
  %220 = load i8*, i8** %10, align 8
  %221 = load i32, i32* %19, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i32, i32* %11, align 4
  %225 = load i32, i32* %19, align 4
  %226 = sub nsw i32 %224, %225
  %227 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %228 = load i32, i32* %13, align 4
  %229 = call i32 @bar(i8* %216, i32 %219, i8* %223, i32 %226, %struct.regex_info* %227, i32 %228)
  store i32 %229, i32* %22, align 4
  %230 = icmp sge i32 %229, 0
  br i1 %230, label %231, label %235

; <label>:231:                                    ; preds = %212
  %232 = load i32, i32* %19, align 4
  %233 = load i32, i32* %22, align 4
  %234 = add nsw i32 %232, %233
  store i32 %234, i32* %20, align 4
  br label %235

; <label>:235:                                    ; preds = %231, %212
  br label %236

; <label>:236:                                    ; preds = %235, %210
  %237 = load i32, i32* %20, align 4
  %238 = load i32, i32* %15, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %244

; <label>:240:                                    ; preds = %236
  %241 = load i32, i32* %24, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %244

; <label>:243:                                    ; preds = %240
  br label %248

; <label>:244:                                    ; preds = %240, %236
  br label %245

; <label>:245:                                    ; preds = %244
  %246 = load i32, i32* %21, align 4
  %247 = icmp sgt i32 %246, 0
  br i1 %247, label %171, label %248

; <label>:248:                                    ; preds = %245, %243, %205
  %249 = load i32, i32* %21, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %287

; <label>:251:                                    ; preds = %248
  %252 = load i32, i32* %22, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %287

; <label>:254:                                    ; preds = %251
  %255 = load i8*, i8** %8, align 8
  %256 = load i32, i32* %14, align 4
  %257 = load i32, i32* %17, align 4
  %258 = add nsw i32 %256, %257
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i8, i8* %255, i64 %259
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %262, 42
  br i1 %263, label %264, label %287

; <label>:264:                                    ; preds = %254
  %265 = load i8*, i8** %8, align 8
  %266 = load i32, i32* %23, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i8, i8* %265, i64 %267
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* %23, align 4
  %271 = sub nsw i32 %269, %270
  %272 = load i8*, i8** %10, align 8
  %273 = load i32, i32* %15, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i32, i32* %11, align 4
  %277 = load i32, i32* %15, align 4
  %278 = sub nsw i32 %276, %277
  %279 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %280 = load i32, i32* %13, align 4
  %281 = call i32 @bar(i8* %268, i32 %271, i8* %275, i32 %278, %struct.regex_info* %279, i32 %280)
  store i32 %281, i32* %22, align 4
  %282 = icmp sgt i32 %281, 0
  br i1 %282, label %283, label %287

; <label>:283:                                    ; preds = %264
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %22, align 4
  %286 = add nsw i32 %284, %285
  store i32 %286, i32* %20, align 4
  br label %287

; <label>:287:                                    ; preds = %283, %264, %254, %251, %248
  %288 = load i8*, i8** %8, align 8
  %289 = load i32, i32* %14, align 4
  %290 = load i32, i32* %17, align 4
  %291 = add nsw i32 %289, %290
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds i8, i8* %288, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = sext i8 %294 to i32
  %296 = icmp eq i32 %295, 43
  br i1 %296, label %297, label %302

; <label>:297:                                    ; preds = %287
  %298 = load i32, i32* %20, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %302

; <label>:301:                                    ; preds = %297
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:302:                                    ; preds = %297, %287
  %303 = load i32, i32* %20, align 4
  %304 = load i32, i32* %15, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %314

; <label>:306:                                    ; preds = %302
  %307 = load i32, i32* %23, align 4
  %308 = load i32, i32* %9, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %314

; <label>:310:                                    ; preds = %306
  %311 = load i32, i32* %22, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %314

; <label>:313:                                    ; preds = %310
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:314:                                    ; preds = %310, %306, %302
  %315 = load i32, i32* %20, align 4
  store i32 %315, i32* %7, align 4
  br label %540

; <label>:316:                                    ; preds = %139
  br label %317

; <label>:317:                                    ; preds = %316, %123
  br label %534

; <label>:318:                                    ; preds = %82, %76
  %319 = load i8*, i8** %8, align 8
  %320 = load i32, i32* %14, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i8, i8* %319, i64 %321
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 91
  br i1 %325, label %326, label %349

; <label>:326:                                    ; preds = %318
  %327 = load i8*, i8** %8, align 8
  %328 = load i32, i32* %14, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = getelementptr inbounds i8, i8* %330, i64 1
  %332 = load i32, i32* %9, align 4
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 2
  %335 = sub nsw i32 %332, %334
  %336 = load i8*, i8** %10, align 8
  %337 = load i32, i32* %15, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %341 = call i32 @match_set(i8* %331, i32 %335, i8* %339, %struct.regex_info* %340)
  store i32 %341, i32* %16, align 4
  %342 = load i32, i32* %16, align 4
  %343 = icmp sle i32 %342, 0
  br i1 %343, label %344, label %345

; <label>:344:                                    ; preds = %326
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:345:                                    ; preds = %326
  %346 = load i32, i32* %16, align 4
  %347 = load i32, i32* %15, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %15, align 4
  br label %533

; <label>:349:                                    ; preds = %318
  %350 = load i8*, i8** %8, align 8
  %351 = load i32, i32* %14, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 40
  br i1 %356, label %357, label %479

; <label>:357:                                    ; preds = %349
  store i32 -1, i32* %16, align 4
  %358 = load i32, i32* %13, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %13, align 4
  %360 = load i32, i32* %13, align 4
  %361 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %362 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = icmp sge i32 %360, %363
  br i1 %364, label %365, label %366

; <label>:365:                                    ; preds = %357
  store i32 -4, i32* %7, align 4
  br label %540

; <label>:366:                                    ; preds = %357
  %367 = load i32, i32* %9, align 4
  %368 = load i32, i32* %14, align 4
  %369 = load i32, i32* %17, align 4
  %370 = add nsw i32 %368, %369
  %371 = sub nsw i32 %367, %370
  %372 = icmp sle i32 %371, 0
  br i1 %372, label %373, label %384

; <label>:373:                                    ; preds = %366
  %374 = load i8*, i8** %10, align 8
  %375 = load i32, i32* %15, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  %378 = load i32, i32* %11, align 4
  %379 = load i32, i32* %15, align 4
  %380 = sub nsw i32 %378, %379
  %381 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %382 = load i32, i32* %13, align 4
  %383 = call i32 @doh(i8* %377, i32 %380, %struct.regex_info* %381, i32 %382)
  store i32 %383, i32* %16, align 4
  br label %440

; <label>:384:                                    ; preds = %366
  store i32 0, i32* %25, align 4
  br label %385

; <label>:385:                                    ; preds = %436, %384
  %386 = load i32, i32* %25, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %15, align 4
  %389 = sub nsw i32 %387, %388
  %390 = icmp sle i32 %386, %389
  br i1 %390, label %391, label %439

; <label>:391:                                    ; preds = %385
  %392 = load i8*, i8** %10, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i8, i8* %392, i64 %394
  %396 = load i32, i32* %11, align 4
  %397 = load i32, i32* %15, align 4
  %398 = load i32, i32* %25, align 4
  %399 = add nsw i32 %397, %398
  %400 = sub nsw i32 %396, %399
  %401 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %402 = load i32, i32* %13, align 4
  %403 = call i32 @doh(i8* %395, i32 %400, %struct.regex_info* %401, i32 %402)
  store i32 %403, i32* %16, align 4
  %404 = icmp sge i32 %403, 0
  br i1 %404, label %405, label %435

; <label>:405:                                    ; preds = %391
  %406 = load i8*, i8** %8, align 8
  %407 = load i32, i32* %14, align 4
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i8, i8* %406, i64 %408
  %410 = load i32, i32* %17, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds i8, i8* %409, i64 %411
  %413 = load i32, i32* %9, align 4
  %414 = load i32, i32* %14, align 4
  %415 = load i32, i32* %17, align 4
  %416 = add nsw i32 %414, %415
  %417 = sub nsw i32 %413, %416
  %418 = load i8*, i8** %10, align 8
  %419 = load i32, i32* %15, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8, i8* %418, i64 %420
  %422 = load i32, i32* %16, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i8, i8* %421, i64 %423
  %425 = load i32, i32* %11, align 4
  %426 = load i32, i32* %15, align 4
  %427 = load i32, i32* %16, align 4
  %428 = add nsw i32 %426, %427
  %429 = sub nsw i32 %425, %428
  %430 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %431 = load i32, i32* %13, align 4
  %432 = call i32 @bar(i8* %412, i32 %417, i8* %424, i32 %429, %struct.regex_info* %430, i32 %431)
  %433 = icmp sge i32 %432, 0
  br i1 %433, label %434, label %435

; <label>:434:                                    ; preds = %405
  br label %439

; <label>:435:                                    ; preds = %405, %391
  br label %436

; <label>:436:                                    ; preds = %435
  %437 = load i32, i32* %25, align 4
  %438 = add nsw i32 %437, 1
  store i32 %438, i32* %25, align 4
  br label %385

; <label>:439:                                    ; preds = %434, %385
  br label %440

; <label>:440:                                    ; preds = %439, %373
  %441 = load i32, i32* %16, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %445

; <label>:443:                                    ; preds = %440
  %444 = load i32, i32* %16, align 4
  store i32 %444, i32* %7, align 4
  br label %540

; <label>:445:                                    ; preds = %440
  %446 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %447 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %446, i32 0, i32 4
  %448 = load %struct.slre_cap*, %struct.slre_cap** %447, align 8
  %449 = icmp ne %struct.slre_cap* %448, null
  br i1 %449, label %450, label %475

; <label>:450:                                    ; preds = %445
  %451 = load i32, i32* %16, align 4
  %452 = icmp sgt i32 %451, 0
  br i1 %452, label %453, label %475

; <label>:453:                                    ; preds = %450
  %454 = load i8*, i8** %10, align 8
  %455 = load i32, i32* %15, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i8, i8* %454, i64 %456
  %458 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %459 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %458, i32 0, i32 4
  %460 = load %struct.slre_cap*, %struct.slre_cap** %459, align 8
  %461 = load i32, i32* %13, align 4
  %462 = sub nsw i32 %461, 1
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %460, i64 %463
  %465 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %464, i32 0, i32 0
  store i8* %457, i8** %465, align 8
  %466 = load i32, i32* %16, align 4
  %467 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %468 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %467, i32 0, i32 4
  %469 = load %struct.slre_cap*, %struct.slre_cap** %468, align 8
  %470 = load i32, i32* %13, align 4
  %471 = sub nsw i32 %470, 1
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %469, i64 %472
  %474 = getelementptr inbounds %struct.slre_cap, %struct.slre_cap* %473, i32 0, i32 1
  store i32 %466, i32* %474, align 8
  br label %475

; <label>:475:                                    ; preds = %453, %450, %445
  %476 = load i32, i32* %16, align 4
  %477 = load i32, i32* %15, align 4
  %478 = add nsw i32 %477, %476
  store i32 %478, i32* %15, align 4
  br label %532

; <label>:479:                                    ; preds = %349
  %480 = load i8*, i8** %8, align 8
  %481 = load i32, i32* %14, align 4
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds i8, i8* %480, i64 %482
  %484 = load i8, i8* %483, align 1
  %485 = sext i8 %484 to i32
  %486 = icmp eq i32 %485, 94
  br i1 %486, label %487, label %492

; <label>:487:                                    ; preds = %479
  %488 = load i32, i32* %15, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %491

; <label>:490:                                    ; preds = %487
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:491:                                    ; preds = %487
  br label %531

; <label>:492:                                    ; preds = %479
  %493 = load i8*, i8** %8, align 8
  %494 = load i32, i32* %14, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i8, i8* %493, i64 %495
  %497 = load i8, i8* %496, align 1
  %498 = sext i8 %497 to i32
  %499 = icmp eq i32 %498, 36
  br i1 %499, label %500, label %506

; <label>:500:                                    ; preds = %492
  %501 = load i32, i32* %15, align 4
  %502 = load i32, i32* %11, align 4
  %503 = icmp ne i32 %501, %502
  br i1 %503, label %504, label %505

; <label>:504:                                    ; preds = %500
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:505:                                    ; preds = %500
  br label %530

; <label>:506:                                    ; preds = %492
  %507 = load i32, i32* %15, align 4
  %508 = load i32, i32* %11, align 4
  %509 = icmp sge i32 %507, %508
  br i1 %509, label %510, label %511

; <label>:510:                                    ; preds = %506
  store i32 -1, i32* %7, align 4
  br label %540

; <label>:511:                                    ; preds = %506
  %512 = load i8*, i8** %8, align 8
  %513 = load i32, i32* %14, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i8, i8* %512, i64 %514
  %516 = load i8*, i8** %10, align 8
  %517 = load i32, i32* %15, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i8, i8* %516, i64 %518
  %520 = load %struct.regex_info*, %struct.regex_info** %12, align 8
  %521 = call i32 @match_op(i8* %515, i8* %519, %struct.regex_info* %520)
  store i32 %521, i32* %16, align 4
  %522 = load i32, i32* %16, align 4
  %523 = icmp sle i32 %522, 0
  br i1 %523, label %524, label %526

; <label>:524:                                    ; preds = %511
  %525 = load i32, i32* %16, align 4
  store i32 %525, i32* %7, align 4
  br label %540

; <label>:526:                                    ; preds = %511
  %527 = load i32, i32* %16, align 4
  %528 = load i32, i32* %15, align 4
  %529 = add nsw i32 %528, %527
  store i32 %529, i32* %15, align 4
  br label %530

; <label>:530:                                    ; preds = %526, %505
  br label %531

; <label>:531:                                    ; preds = %530, %491
  br label %532

; <label>:532:                                    ; preds = %531, %475
  br label %533

; <label>:533:                                    ; preds = %532, %345
  br label %534

; <label>:534:                                    ; preds = %533, %317
  %535 = load i32, i32* %17, align 4
  %536 = load i32, i32* %14, align 4
  %537 = add nsw i32 %536, %535
  store i32 %537, i32* %14, align 4
  br label %26

; <label>:538:                                    ; preds = %34
  %539 = load i32, i32* %15, align 4
  store i32 %539, i32* %7, align 4
  br label %540

; <label>:540:                                    ; preds = %538, %524, %510, %504, %490, %443, %365, %344, %314, %313, %301, %75, %71
  %541 = load i32, i32* %7, align 4
  ret i32 %541
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @is_quantifier(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = sext i8 %5 to i32
  %7 = icmp eq i32 %6, 42
  br i1 %7, label %20, label %8

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 43
  br i1 %13, label %20, label %14

; <label>:14:                                     ; preds = %8
  %15 = load i8*, i8** %2, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 63
  br label %20

; <label>:20:                                     ; preds = %14, %8, %1
  %21 = phi i1 [ true, %8 ], [ true, %1 ], [ %19, %14 ]
  %22 = zext i1 %21 to i32
  ret i32 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @match_set(i8*, i32, i8*, %struct.regex_info*) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.regex_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store %struct.regex_info* %3, %struct.regex_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 0
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 94
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

; <label>:20:                                     ; preds = %4
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %22, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  br label %25

; <label>:25:                                     ; preds = %20, %4
  br label %26

; <label>:26:                                     ; preds = %159, %25
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %41

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp ne i32 %36, 93
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %10, align 4
  %40 = icmp sle i32 %39, 0
  br label %41

; <label>:41:                                     ; preds = %38, %30, %26
  %42 = phi i1 [ false, %30 ], [ false, %26 ], [ %40, %38 ]
  br i1 %42, label %43, label %160

; <label>:43:                                     ; preds = %41
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 45
  br i1 %50, label %51, label %144

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %52, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 45
  br i1 %59, label %60, label %144

; <label>:60:                                     ; preds = %51
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 93
  br i1 %68, label %69, label %144

; <label>:69:                                     ; preds = %60
  %70 = load i8*, i8** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %70, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %144

; <label>:78:                                     ; preds = %69
  %79 = load %struct.regex_info*, %struct.regex_info** %8, align 8
  %80 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 1
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %7, align 8
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = call i32 @tolower(i32 %87) #4
  %89 = load i8*, i8** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = call i32 @tolower(i32 %94) #4
  %96 = icmp sge i32 %88, %95
  br i1 %96, label %97, label %111

; <label>:97:                                     ; preds = %84
  %98 = load i8*, i8** %7, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 @tolower(i32 %100) #4
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 2
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %102, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = call i32 @tolower(i32 %108) #4
  %110 = icmp sle i32 %101, %109
  br label %111

; <label>:111:                                    ; preds = %97, %84
  %112 = phi i1 [ false, %84 ], [ %110, %97 ]
  %113 = zext i1 %112 to i32
  br label %140

; <label>:114:                                    ; preds = %78
  %115 = load i8*, i8** %7, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = load i8*, i8** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp sge i32 %117, %123
  br i1 %124, label %125, label %137

; <label>:125:                                    ; preds = %114
  %126 = load i8*, i8** %7, align 8
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = load i8*, i8** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %130, 2
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp sle i32 %128, %135
  br label %137

; <label>:137:                                    ; preds = %125, %114
  %138 = phi i1 [ false, %114 ], [ %136, %125 ]
  %139 = zext i1 %138 to i32
  br label %140

; <label>:140:                                    ; preds = %137, %111
  %141 = phi i32 [ %113, %111 ], [ %139, %137 ]
  store i32 %141, i32* %10, align 4
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 3
  store i32 %143, i32* %9, align 4
  br label %159

; <label>:144:                                    ; preds = %69, %60, %51, %43
  %145 = load i8*, i8** %5, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %145, i64 %147
  %149 = load i8*, i8** %7, align 8
  %150 = load %struct.regex_info*, %struct.regex_info** %8, align 8
  %151 = call i32 @match_op(i8* %148, i8* %149, %struct.regex_info* %150)
  store i32 %151, i32* %10, align 4
  %152 = load i8*, i8** %5, align 8
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %152, i64 %154
  %156 = call i32 @op_len(i8* %155)
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, %156
  store i32 %158, i32* %9, align 4
  br label %159

; <label>:159:                                    ; preds = %144, %140
  br label %26

; <label>:160:                                    ; preds = %41
  %161 = load i32, i32* %11, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %166, label %163

; <label>:163:                                    ; preds = %160
  %164 = load i32, i32* %10, align 4
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %174, label %166

; <label>:166:                                    ; preds = %163, %160
  %167 = load i32, i32* %11, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %10, align 4
  %171 = icmp sle i32 %170, 0
  br label %172

; <label>:172:                                    ; preds = %169, %166
  %173 = phi i1 [ false, %166 ], [ %171, %169 ]
  br label %174

; <label>:174:                                    ; preds = %172, %163
  %175 = phi i1 [ true, %163 ], [ %173, %172 ]
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 -1
  ret i32 %177
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @match_op(i8*, i8*, %struct.regex_info*) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.regex_info*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.regex_info* %2, %struct.regex_info** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %151 [
    i32 92, label %12
    i32 124, label %146
    i32 36, label %147
    i32 46, label %148
  ]

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  switch i32 %16, label %131 [
    i32 83, label %17
    i32 115, label %33
    i32 100, label %49
    i32 98, label %65
    i32 102, label %74
    i32 110, label %83
    i32 114, label %92
    i32 116, label %101
    i32 118, label %110
    i32 120, label %119
  ]

; <label>:17:                                     ; preds = %12
  %18 = call i16** @__ctype_b_loc() #5
  %19 = load i16*, i16** %18, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i16, i16* %19, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = and i32 %26, 8192
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:30:                                     ; preds = %17
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %145

; <label>:33:                                     ; preds = %12
  %34 = call i16** @__ctype_b_loc() #5
  %35 = load i16*, i16** %34, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i16, i16* %35, i64 %39
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = and i32 %42, 8192
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

; <label>:45:                                     ; preds = %33
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:46:                                     ; preds = %33
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %145

; <label>:49:                                     ; preds = %12
  %50 = call i16** @__ctype_b_loc() #5
  %51 = load i16*, i16** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i16, i16* %51, i64 %55
  %57 = load i16, i16* %56, align 2
  %58 = zext i16 %57 to i32
  %59 = and i32 %58, 2048
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

; <label>:61:                                     ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:62:                                     ; preds = %49
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %145

; <label>:65:                                     ; preds = %12
  %66 = load i8*, i8** %6, align 8
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp ne i32 %68, 8
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %145

; <label>:74:                                     ; preds = %12
  %75 = load i8*, i8** %6, align 8
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp ne i32 %77, 12
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %74
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:80:                                     ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %145

; <label>:83:                                     ; preds = %12
  %84 = load i8*, i8** %6, align 8
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 10
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:89:                                     ; preds = %83
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %145

; <label>:92:                                     ; preds = %12
  %93 = load i8*, i8** %6, align 8
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ne i32 %95, 13
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %92
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:98:                                     ; preds = %92
  %99 = load i32, i32* %8, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %145

; <label>:101:                                    ; preds = %12
  %102 = load i8*, i8** %6, align 8
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp ne i32 %104, 9
  br i1 %105, label %106, label %107

; <label>:106:                                    ; preds = %101
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:107:                                    ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %145

; <label>:110:                                    ; preds = %12
  %111 = load i8*, i8** %6, align 8
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp ne i32 %113, 11
  br i1 %114, label %115, label %116

; <label>:115:                                    ; preds = %110
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:116:                                    ; preds = %110
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %145

; <label>:119:                                    ; preds = %12
  %120 = load i8*, i8** %5, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 2
  %122 = call i32 @hextoi(i8* %121)
  %123 = load i8*, i8** %6, align 8
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %128

; <label>:127:                                    ; preds = %119
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:128:                                    ; preds = %119
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %8, align 4
  br label %145

; <label>:131:                                    ; preds = %12
  %132 = load i8*, i8** %5, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i32
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 0
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %135, %139
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:142:                                    ; preds = %131
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %8, align 4
  br label %145

; <label>:145:                                    ; preds = %142, %128, %116, %107, %98, %89, %80, %71, %62, %46, %30
  br label %182

; <label>:146:                                    ; preds = %3
  store i32 -4, i32* %4, align 4
  br label %184

; <label>:147:                                    ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:148:                                    ; preds = %3
  %149 = load i32, i32* %8, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %8, align 4
  br label %182

; <label>:151:                                    ; preds = %3
  %152 = load %struct.regex_info*, %struct.regex_info** %7, align 8
  %153 = getelementptr inbounds %struct.regex_info, %struct.regex_info* %152, i32 0, i32 6
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 1
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %169

; <label>:157:                                    ; preds = %151
  %158 = load i8*, i8** %5, align 8
  %159 = load i8, i8* %158, align 1
  %160 = zext i8 %159 to i32
  %161 = call i32 @tolower(i32 %160) #4
  %162 = load i8*, i8** %6, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = call i32 @tolower(i32 %164) #4
  %166 = icmp ne i32 %161, %165
  br i1 %166, label %167, label %168

; <label>:167:                                    ; preds = %157
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:168:                                    ; preds = %157
  br label %179

; <label>:169:                                    ; preds = %151
  %170 = load i8*, i8** %5, align 8
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load i8*, i8** %6, align 8
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp ne i32 %172, %175
  br i1 %176, label %177, label %178

; <label>:177:                                    ; preds = %169
  store i32 -1, i32* %4, align 4
  br label %184

; <label>:178:                                    ; preds = %169
  br label %179

; <label>:179:                                    ; preds = %178, %168
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %182

; <label>:182:                                    ; preds = %179, %148, %145
  %183 = load i32, i32* %8, align 4
  store i32 %183, i32* %4, align 4
  br label %184

; <label>:184:                                    ; preds = %182, %177, %167, %147, %146, %141, %127, %115, %106, %97, %88, %79, %70, %61, %45, %29
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @hextoi(i8*) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i8*, i8** %2, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 0
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = call i32 @tolower(i32 %6) #4
  %8 = call i32 @toi(i32 %7)
  %9 = shl i32 %8, 4
  %10 = load i8*, i8** %2, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 1
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = call i32 @tolower(i32 %13) #4
  %15 = call i32 @toi(i32 %14)
  %16 = or i32 %9, %15
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @toi(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i16** @__ctype_b_loc() #5
  %4 = load i16*, i16** %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i16, i16* %4, i64 %6
  %8 = load i16, i16* %7, align 2
  %9 = zext i16 %8 to i32
  %10 = and i32 %9, 2048
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

; <label>:12:                                     ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = sub nsw i32 %13, 48
  br label %18

; <label>:15:                                     ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = sub nsw i32 %16, 87
  br label %18

; <label>:18:                                     ; preds = %15, %12
  %19 = phi i32 [ %14, %12 ], [ %17, %15 ]
  ret i32 %19
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
