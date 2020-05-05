; ModuleID = "goal_diff_func"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func2"() 
{
entry:
  br label %"0x000009c3"
"0x000009c3":
  call void @verifier.error()
  ret void
}

define void @"sym.func1_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009cf"
"0x000009cf":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp eq i32 %".4", 1
  br i1 %".5", label %"0x000009e6", label %"0x000009e0"
"0x000009e0":
  call void @"sym.func2"()
  br label %"0x000009e6"
"0x000009e6":
  ret void
}

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x000009e8"
"0x000009e8":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = icmp eq i32 %".5", 1
  br i1 %".6", label %"0x00000a0d", label %"0x00000a03"
"0x00000a03":
  call void @"sym.func1_int"(i64 1)
  br label %"0x00000a0d"
"0x00000a0d":
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
