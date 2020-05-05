; ModuleID = "single_condition_v2"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = icmp eq i32 %".5", 2
  br i1 %".6", label %"0x00000963", label %"0x0000095e"
"0x0000095e":
  call void @verifier.error()
  br label %"0x00000963"
"0x00000963":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
