; ModuleID = "inter_func_param"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func1_int__int"(i64 %".1", i64 %".2") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009c3"
"0x000009c3":
  %".5" = trunc i64 %".1" to i32
  %".6" = trunc i64 %".2" to i32
  %".7" = icmp slt i32 2, %".5"
  br i1 %".7", label %"0x000009e3", label %"0x000009d7"
"0x000009d7":
  %".9" = icmp eq i32 %".6", 1
  br i1 %".9", label %"0x000009e3", label %"0x000009dd"
"0x000009dd":
  call void @verifier.error()
  br label %"0x000009e3"
"0x000009e3":
  ret void
}

define void @"sym.func0_int"(i64 %".1") 
{
entry:
  %"iVar1" = alloca i32
  %"var_14h" = alloca i64
  %"var_4h" = alloca i64
  br label %"0x000009e5"
"0x000009e5":
  %".4" = trunc i64 %".1" to i32
  %".5" = call i32 @nd()
  store i32 %".5", i32* %"iVar1"
  %".7" = load i32, i32* %"iVar1"
  %".8" = icmp eq i32 %".7", 4
  br i1 %".8", label %"0x00000a14", label %"0x000009fe"
"0x000009fe":
  %".10" = icmp slt i32 %".4", 10
  br i1 %".10", label %"0x00000a14", label %"0x00000a04"
"0x00000a04":
  %".12" = and i64 %".1", 4294967295
  call void @"sym.func1_int__int"(i64 4, i64 %".12")
  br label %"0x00000a14"
"0x00000a14":
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x00000a16"
"0x00000a16":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  call void @"sym.func0_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
