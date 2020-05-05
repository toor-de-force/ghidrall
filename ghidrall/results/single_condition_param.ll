; ModuleID = "single_condition_param"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp eq i32 %".4", 2
  br i1 %".5", label %"0x000009af", label %"0x000009a9"
"0x000009a9":
  call void @verifier.error()
  br label %"0x000009af"
"0x000009af":
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x000009b1"
"0x000009b1":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  call void @"sym.func_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
