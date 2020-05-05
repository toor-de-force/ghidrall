; ModuleID = "inter_func_narrow_to_wide_constraint"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func1_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009c3"
"0x000009c3":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp slt i32 2, %".4"
  br i1 %".5", label %"0x000009df", label %"0x000009d4"
"0x000009d4":
  %".7" = icmp slt i32 %".4", 100
  br i1 %".7", label %"0x000009df", label %"0x000009da"
"0x000009da":
  call void @verifier.error()
  br label %"0x000009df"
"0x000009df":
  ret void
}

define void @"sym.func0"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x000009e6"
"0x000009e6":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = icmp eq i32 %".5", 4
  br i1 %".6", label %"0x00000a07", label %"0x000009fc"
"0x000009fc":
  call void @"sym.func1_int"(i64 4)
  br label %"0x00000a07"
"0x00000a07":
  ret void
}

define void @"main"() 
{
entry:
  br label %"0x00000a09"
"0x00000a09":
  call void @"sym.func0"()
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
