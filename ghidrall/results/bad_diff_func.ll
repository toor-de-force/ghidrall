; ModuleID = "bad_diff_func"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func2"() 
{
entry:
  br label %"0x000009c3"
"0x000009c3":
  call void @seahorn.fail()
  ret void
}

define void @"sym.func1_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009cf"
"0x000009cf":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp eq i32 %".4", 0
  br i1 %".5", label %"0x000009ec", label %"0x000009e6"
"0x000009e6":
  call void @"sym.func2"()
  br label %"0x000009ec"
"0x000009ec":
  ret void
}

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x000009ee"
"0x000009ee":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = icmp eq i32 %".5", 1
  br i1 %".6", label %"0x00000a13", label %"0x00000a09"
"0x00000a09":
  call void @"sym.func1_int"(i64 1)
  br label %"0x00000a13"
"0x00000a13":
  ret void
}

declare void @seahorn.fail() 

declare i32 @nd() 
