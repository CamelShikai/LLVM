; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [63 x i8] c"this is called from your own source file\0A,op:%d,op1:%d,op2:%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"just a target\0A\00", align 1
@.str.1.2 = private unnamed_addr constant [21 x i8] c"this is true branch\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"this is false branch\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @print(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %6, align 4
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i32 %7, i32 %8, i32 %9)
  ret i32 0
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @tobecalled() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sge i32 %4, -4
  %6 = call i1 bitcast (i32 (i32, i32, i32)* @print to i1 (i32, i32, i32)*)(i32 0, i32 2, i32 3)
  br i1 %6, label %7, label %10

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %7, %0
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = add nsw i32 %4, 4
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = add nsw i32 %6, 2
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp slt i32 %10, 100
  %12 = call i1 bitcast (i32 (i32, i32, i32)* @print to i1 (i32, i32, i32)*)(i32 0, i32 2, i32 3)
  br i1 %12, label %13, label %15

; <label>:13:                                     ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1.2, i32 0, i32 0))
  br label %19

; <label>:15:                                     ; preds = %0
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i32 0, i32 0))
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %2, align 4
  br label %19

; <label>:19:                                     ; preds = %15, %13
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}

!0 = !{!"clang version 5.0.0 "}
