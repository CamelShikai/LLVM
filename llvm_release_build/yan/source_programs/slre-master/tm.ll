; ModuleID = '/home/sk/Tech_Folder/Research/mo/Turing/TM.c'
source_filename = "/home/sk/Tech_Folder/Research/mo/Turing/TM.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tapes = type { %struct.tapes*, %struct.tapes*, i8 }
%struct.transition = type { i8, i8, i8, i8, i32 }
%struct.list = type { %struct.transition*, %struct.list* }
%struct.tm = type { i8*, i8*, i8*, i8, i8, i8, %struct.list* }

@print_transition.s1 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@print_transition.s2 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str = private unnamed_addr constant [14 x i8] c"NULL Transfer\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"current:%c tape:%c new state:%c new tape:%c direction %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"0*0*R:0.1.R:1*2.R:1.1.R:2*3*L:2.2.R:3*3*L:3.4*L:4*h*-:4.4.L\00", align 1
@.str.3 = private unnamed_addr constant [96 x i8] c"0*0*R:0.1*R:1*2*R:1.1.R:2*3*L:2.2.R:3*h.-:3.4*L:4*h*-:4.5.L:5*6*L:5.5.L:6*h.-:6.7.L:7*0*R:7.7.L\00", align 1
@.str.4 = private unnamed_addr constant [204 x i8] c"0*1*R:0.2*R:1*E*R:1.2*R:2*3*R:2.2.R:3*F*L:3.4*R:4*5*R:4.4.R:5*6.L:5.5.R:6*7*L:6.6.L:7*9.L:7.8.L:8*3.R:8.8.L:9*A*L:9.9.L:A*C*R:A.B.L:B*0*R:B.B.L:C*C*R:C.D*R:D*h*-:D.D*R:E*h*-:E.E*R:F*G*L:F.F*L:G*h*-:G.G*L\00", align 1
@.str.5 = private unnamed_addr constant [480 x i8] c"0*0*R:0.1.L:1*2*L:1.2*L:2*3.L:2.3.L:3*4*R:3.4*R:4*3.R:4.5.R:5*6*R:5.h.-:6*7*R:6.6.R:7*7*R:7.8*R:8*O*L:8.9.L:9*9*L:9.A.L:A*B*R:A.d.L:B*h*-:B.C.R:C*C*R:C.D.L:D*E.L:D.h.-:E*F*L:E.h.-:F*G*L:F.J.L:G*G*L:G.H.L:H*I.R:H.H.L:I*C*R:I.I.R:J*K*L:J.J.L:K*K*L:K.M.L:M*N*R:M.M.L:N*h*-:N.h*-:O*O.L:O.P.R:P*h*-:P.Q*L:Q*h*-:Q.S.L:S*Y*R:S.T.L:T*f*L:T.T.L:U*V.L:U.U.L:V*W*R:V.W*R:W*X*R:W.W.R:X*X*R:X.6*R:Y*h*-:Y.Z*R:Z*a*R:Z.h.-:a*b*L:a.a*R:b*b*L:b.c.L:c*h*-:c.c.L:d*e*R:d.d.L:e*h*-:e.6*R:f*f*L:f.U.L\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c".*\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"*.\00", align 1
@.str.8 = private unnamed_addr constant [84 x i8] c"Error! Input contains some invalid characters that don't match the input alphabet!\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"function parsetm\0Ainput_alpha:%s\0Ainput:%s\0Atape_alpha:%s\0Astart:%c\0Aaccept:%c\0Areject:%c\0A\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Turing Machine Reject\0A\00", align 1

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
  %11 = call noalias i8* @calloc(i64 1, i64 24) #5
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

; <label>:61:                                     ; preds = %28, %51, %38
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
  %5 = call noalias i8* @calloc(i64 1, i64 24) #5
  %6 = bitcast i8* %5 to %struct.tapes*
  store %struct.tapes* %6, %struct.tapes** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = load %struct.tapes*, %struct.tapes** %4, align 8
  %11 = getelementptr inbounds %struct.tapes, %struct.tapes* %10, i32 0, i32 2
  store i8 %9, i8* %11, align 8
  br label %12

; <label>:12:                                     ; preds = %1, %21
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
  %5 = call noalias i8* @calloc(i64 1, i64 8) #5
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
  %7 = call noalias i8* @calloc(i64 1, i64 16) #5
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
  %7 = call noalias i8* @calloc(i64 1, i64 16) #5
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

; <label>:8:                                      ; preds = %2, %14
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

; <label>:19:                                     ; preds = %18, %23
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

declare i32 @putchar(i32) #2

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
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i32 0, i32 0))
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
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i32 0, i32 0), i32 %15, i32 %19, i32 %23, i32 %27, i8* %37)
  br label %39

; <label>:39:                                     ; preds = %36, %9
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

declare i32 @printf(i8*, ...) #2

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

; <label>:7:                                      ; preds = %2, %27
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

; <label>:8:                                      ; preds = %2, %24
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
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:16:                                     ; preds = %2
  store i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.3, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:17:                                     ; preds = %2
  store i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.4, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:18:                                     ; preds = %2
  store i8* getelementptr inbounds ([480 x i8], [480 x i8]* @.str.5, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:19:                                     ; preds = %2
  br label %20

; <label>:20:                                     ; preds = %19, %18, %17, %16, %15
  %21 = call noalias i8* @calloc(i64 1, i64 40) #5
  %22 = bitcast i8* %21 to %struct.tm*
  store %struct.tm* %22, %struct.tm** %6, align 8
  %23 = call noalias i8* @calloc(i64 1, i64 16) #5
  %24 = bitcast i8* %23 to %struct.list*
  store %struct.list* %24, %struct.list** %7, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strlen(i8* %25) #8
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
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8** %50, align 8
  %51 = load %struct.tm*, %struct.tm** %6, align 8
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %51, i32 0, i32 2
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8** %52, align 8
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
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.8, i32 0, i32 0))
  call void @exit(i32 1) #9
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
  %77 = call i8* @strtok(i8* %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #5
  store i8* %77, i8** %8, align 8
  store i8 0, i8* %12, align 1
  br label %80

; <label>:78:                                     ; preds = %73
  %79 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0)) #5
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

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #4

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #5

; Function Attrs: noreturn nounwind
declare void @exit(i32) #6

; Function Attrs: nounwind
declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #5

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

; <label>:9:                                      ; preds = %3, %34
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
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i32 0, i32 0), i8* %5, i8* %8, i8* %11, i32 %15, i32 %19, i32 %23)
  ret void
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

; <label>:24:                                     ; preds = %1, %65
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
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
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
  switch i32 %18, label %99 [
    i32 43, label %19
    i32 45, label %44
    i32 42, label %84
    i32 47, label %91
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
  br label %171

; <label>:38:                                     ; preds = %30
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 0, %40
  %42 = call i32 @calculator(i32 %39, i32 %41, i8 signext 45)
  store i32 %42, i32* %4, align 4
  br label %171

; <label>:43:                                     ; preds = %19
  br label %100

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
  br label %171

; <label>:63:                                     ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %6, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i32 @calculator(i32 %64, i32 %66, i8 signext 43)
  store i32 %67, i32* %4, align 4
  br label %171

; <label>:68:                                     ; preds = %44
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %6, align 4
  %71 = mul nsw i32 %69, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

; <label>:73:                                     ; preds = %68
  %74 = load i32, i32* %5, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79:                                     ; preds = %76
  %80 = call i32 @calculator(i32 5, i32 5, i8 signext 45)
  store i32 %80, i32* %4, align 4
  br label %171

; <label>:81:                                     ; preds = %76, %73
  br label %82

; <label>:82:                                     ; preds = %81, %68
  br label %83

; <label>:83:                                     ; preds = %82
  br label %100

; <label>:84:                                     ; preds = %3
  %85 = load i32, i32* %5, align 4
  %86 = load i32, i32* %6, align 4
  %87 = mul nsw i32 %85, %86
  %88 = icmp sge i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 -1
  store i32 %90, i32* %9, align 4
  br label %100

; <label>:91:                                     ; preds = %3
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = sdiv i32 %92, %93
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %97

; <label>:96:                                     ; preds = %91
  store i32 1, i32* %9, align 4
  br label %98

; <label>:97:                                     ; preds = %91
  store i32 -1, i32* %9, align 4
  br label %98

; <label>:98:                                     ; preds = %97, %96
  br label %100

; <label>:99:                                     ; preds = %3
  br label %100

; <label>:100:                                    ; preds = %99, %98, %84, %83, %43
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @abs(i32 %101) #10
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @abs(i32 %103) #10
  store i32 %104, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %112

; <label>:108:                                    ; preds = %100
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %11, align 4
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %12, align 4
  store i32 %111, i32* %11, align 4
  br label %112

; <label>:112:                                    ; preds = %108, %100
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = add nsw i32 %113, %114
  %116 = add nsw i32 %115, 4
  %117 = zext i32 %116 to i64
  %118 = call i8* @llvm.stacksave()
  store i8* %118, i8** %13, align 8
  %119 = alloca i8, i64 %117, align 16
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  store i8 42, i8* %120, align 16
  store i32 1, i32* %14, align 4
  br label %121

; <label>:121:                                    ; preds = %130, %112
  %122 = load i32, i32* %14, align 4
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 1, %123
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %133

; <label>:126:                                    ; preds = %121
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %119, i64 %128
  store i8 46, i8* %129, align 1
  br label %130

; <label>:130:                                    ; preds = %126
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %121

; <label>:133:                                    ; preds = %121
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %119, i64 %135
  store i8 42, i8* %136, align 1
  %137 = load i32, i32* %14, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  br label %139

; <label>:139:                                    ; preds = %150, %133
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %141, %142
  %144 = add nsw i32 %143, 2
  %145 = icmp slt i32 %140, %144
  br i1 %145, label %146, label %153

; <label>:146:                                    ; preds = %139
  %147 = load i32, i32* %15, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %119, i64 %148
  store i8 46, i8* %149, align 1
  br label %150

; <label>:150:                                    ; preds = %146
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %15, align 4
  br label %139

; <label>:153:                                    ; preds = %139
  %154 = load i32, i32* %15, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %119, i64 %155
  store i8 42, i8* %156, align 1
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %11, align 4
  %159 = add nsw i32 %157, %158
  %160 = add nsw i32 %159, 3
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %119, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i8, i8* %7, align 1
  %164 = call %struct.tm* @createTM(i8 signext %163, i8* %119)
  store %struct.tm* %164, %struct.tm** %8, align 8
  %165 = load %struct.tm*, %struct.tm** %8, align 8
  %166 = call i32 @simulate(%struct.tm* %165)
  %167 = load i32, i32* %9, align 4
  %168 = mul nsw i32 %166, %167
  store i32 %168, i32* %16, align 4
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %4, align 4
  %170 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

; <label>:171:                                    ; preds = %153, %79, %63, %58, %38, %33
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

; Function Attrs: nounwind readnone
declare i32 @abs(i32) #7

; Function Attrs: noinline nounwind uwtable
define zeroext i1 @ext_callee(i32, i32, i32) #0 {
  %4 = alloca i1, align 1
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %231 [
    i32 32, label %11
    i32 33, label %33
    i32 34, label %55
    i32 35, label %77
    i32 36, label %99
    i32 37, label %121
    i32 38, label %143
    i32 39, label %165
    i32 40, label %187
    i32 41, label %209
  ]

; <label>:11:                                     ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @abs(i32 %12) #10
  %14 = icmp sgt i32 %13, 10000
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @abs(i32 %16) #10
  %18 = icmp sgt i32 %17, 10000
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %15, %11
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %20, %21
  store i1 %22, i1* %4, align 1
  br label %235

; <label>:23:                                     ; preds = %15
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @calculator(i32 %24, i32 %25, i8 signext 45)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp eq i32 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %8, align 1
  br label %232

; <label>:33:                                     ; preds = %3
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @abs(i32 %34) #10
  %36 = icmp sgt i32 %35, 10000
  br i1 %36, label %41, label %37

; <label>:37:                                     ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @abs(i32 %38) #10
  %40 = icmp sgt i32 %39, 10000
  br i1 %40, label %41, label %45

; <label>:41:                                     ; preds = %37, %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %42, %43
  store i1 %44, i1* %4, align 1
  br label %235

; <label>:45:                                     ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @calculator(i32 %46, i32 %47, i8 signext 45)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 1, i32 0
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i8
  store i8 %54, i8* %8, align 1
  br label %232

; <label>:55:                                     ; preds = %3
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @abs(i32 %56) #10
  %58 = icmp sgt i32 %57, 10000
  br i1 %58, label %63, label %59

; <label>:59:                                     ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @abs(i32 %60) #10
  %62 = icmp sgt i32 %61, 10000
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %59, %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp sgt i32 %64, %65
  store i1 %66, i1* %4, align 1
  br label %235

; <label>:67:                                     ; preds = %59
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @calculator(i32 %68, i32 %69, i8 signext 45)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i8
  store i8 %76, i8* %8, align 1
  br label %232

; <label>:77:                                     ; preds = %3
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @abs(i32 %78) #10
  %80 = icmp sgt i32 %79, 10000
  br i1 %80, label %85, label %81

; <label>:81:                                     ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @abs(i32 %82) #10
  %84 = icmp sgt i32 %83, 10000
  br i1 %84, label %85, label %89

; <label>:85:                                     ; preds = %81, %77
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp sge i32 %86, %87
  store i1 %88, i1* %4, align 1
  br label %235

; <label>:89:                                     ; preds = %81
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @calculator(i32 %90, i32 %91, i8 signext 45)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp sge i32 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i32 1, i32 0
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i8
  store i8 %98, i8* %8, align 1
  br label %232

; <label>:99:                                     ; preds = %3
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @abs(i32 %100) #10
  %102 = icmp sgt i32 %101, 10000
  br i1 %102, label %107, label %103

; <label>:103:                                    ; preds = %99
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @abs(i32 %104) #10
  %106 = icmp sgt i32 %105, 10000
  br i1 %106, label %107, label %111

; <label>:107:                                    ; preds = %103, %99
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  store i1 %110, i1* %4, align 1
  br label %235

; <label>:111:                                    ; preds = %103
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @calculator(i32 %112, i32 %113, i8 signext 45)
  store i32 %114, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp slt i32 %115, 0
  %117 = zext i1 %116 to i64
  %118 = select i1 %116, i32 1, i32 0
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i8
  store i8 %120, i8* %8, align 1
  br label %232

; <label>:121:                                    ; preds = %3
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @abs(i32 %122) #10
  %124 = icmp sgt i32 %123, 10000
  br i1 %124, label %129, label %125

; <label>:125:                                    ; preds = %121
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @abs(i32 %126) #10
  %128 = icmp sgt i32 %127, 10000
  br i1 %128, label %129, label %133

; <label>:129:                                    ; preds = %125, %121
  %130 = load i32, i32* %6, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp sle i32 %130, %131
  store i1 %132, i1* %4, align 1
  br label %235

; <label>:133:                                    ; preds = %125
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %7, align 4
  %136 = call i32 @calculator(i32 %134, i32 %135, i8 signext 45)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp sle i32 %137, 0
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 1, i32 0
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i8
  store i8 %142, i8* %8, align 1
  br label %232

; <label>:143:                                    ; preds = %3
  %144 = load i32, i32* %6, align 4
  %145 = call i32 @abs(i32 %144) #10
  %146 = icmp sgt i32 %145, 10000
  br i1 %146, label %151, label %147

; <label>:147:                                    ; preds = %143
  %148 = load i32, i32* %7, align 4
  %149 = call i32 @abs(i32 %148) #10
  %150 = icmp sgt i32 %149, 10000
  br i1 %150, label %151, label %155

; <label>:151:                                    ; preds = %147, %143
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp sgt i32 %152, %153
  store i1 %154, i1* %4, align 1
  br label %235

; <label>:155:                                    ; preds = %147
  %156 = load i32, i32* %6, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @calculator(i32 %156, i32 %157, i8 signext 45)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp sgt i32 %159, 0
  %161 = zext i1 %160 to i64
  %162 = select i1 %160, i32 1, i32 0
  %163 = icmp ne i32 %162, 0
  %164 = zext i1 %163 to i8
  store i8 %164, i8* %8, align 1
  br label %232

; <label>:165:                                    ; preds = %3
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @abs(i32 %166) #10
  %168 = icmp sgt i32 %167, 10000
  br i1 %168, label %173, label %169

; <label>:169:                                    ; preds = %165
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @abs(i32 %170) #10
  %172 = icmp sgt i32 %171, 10000
  br i1 %172, label %173, label %177

; <label>:173:                                    ; preds = %169, %165
  %174 = load i32, i32* %6, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp sge i32 %174, %175
  store i1 %176, i1* %4, align 1
  br label %235

; <label>:177:                                    ; preds = %169
  %178 = load i32, i32* %6, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @calculator(i32 %178, i32 %179, i8 signext 45)
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = icmp sge i32 %181, 0
  %183 = zext i1 %182 to i64
  %184 = select i1 %182, i32 1, i32 0
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i8
  store i8 %186, i8* %8, align 1
  br label %232

; <label>:187:                                    ; preds = %3
  %188 = load i32, i32* %6, align 4
  %189 = call i32 @abs(i32 %188) #10
  %190 = icmp sgt i32 %189, 10000
  br i1 %190, label %195, label %191

; <label>:191:                                    ; preds = %187
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @abs(i32 %192) #10
  %194 = icmp sgt i32 %193, 10000
  br i1 %194, label %195, label %199

; <label>:195:                                    ; preds = %191, %187
  %196 = load i32, i32* %6, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %196, %197
  store i1 %198, i1* %4, align 1
  br label %235

; <label>:199:                                    ; preds = %191
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 @calculator(i32 %200, i32 %201, i8 signext 45)
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp slt i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  %207 = icmp ne i32 %206, 0
  %208 = zext i1 %207 to i8
  store i8 %208, i8* %8, align 1
  br label %232

; <label>:209:                                    ; preds = %3
  %210 = load i32, i32* %6, align 4
  %211 = call i32 @abs(i32 %210) #10
  %212 = icmp sgt i32 %211, 10000
  br i1 %212, label %217, label %213

; <label>:213:                                    ; preds = %209
  %214 = load i32, i32* %7, align 4
  %215 = call i32 @abs(i32 %214) #10
  %216 = icmp sgt i32 %215, 10000
  br i1 %216, label %217, label %221

; <label>:217:                                    ; preds = %213, %209
  %218 = load i32, i32* %6, align 4
  %219 = load i32, i32* %7, align 4
  %220 = icmp sle i32 %218, %219
  store i1 %220, i1* %4, align 1
  br label %235

; <label>:221:                                    ; preds = %213
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = call i32 @calculator(i32 %222, i32 %223, i8 signext 45)
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp sle i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i32 1, i32 0
  %229 = icmp ne i32 %228, 0
  %230 = zext i1 %229 to i8
  store i8 %230, i8* %8, align 1
  br label %232

; <label>:231:                                    ; preds = %3
  br label %232

; <label>:232:                                    ; preds = %231, %221, %199, %177, %155, %133, %111, %89, %67, %45, %23
  %233 = load i8, i8* %8, align 1
  %234 = trunc i8 %233 to i1
  store i1 %234, i1* %4, align 1
  br label %235

; <label>:235:                                    ; preds = %232, %217, %195, %173, %151, %129, %107, %85, %63, %41, %19
  %236 = load i1, i1* %4, align 1
  ret i1 %236
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"clang version 5.0.0 "}
