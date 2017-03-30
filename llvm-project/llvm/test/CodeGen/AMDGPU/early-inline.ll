; RUN: opt -mtriple=amdgcn-- -O1 -S -inline-threshold=1 %s | FileCheck %s

define i32 @callee(i32 %x) {
entry:
  %mul1 = mul i32 %x, %x
  %mul2 = mul i32 %mul1, %x
  %mul3 = mul i32 %mul1, %mul2
  %mul4 = mul i32 %mul3, %mul2
  %mul5 = mul i32 %mul4, %mul3
  ret i32 %mul5
}

; CHECK-LABEL: @caller
; CHECK: mul i32
; CHECK-NOT: call i32

define i32 @caller(i32 %x) {
entry:
  %res = call i32 @callee(i32 %x)
  ret i32 %res
}
