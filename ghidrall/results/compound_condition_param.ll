; ModuleID = "compound_condition_param"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func_int"(i64 %".1") 
{
entry:
  %"bVar1" = alloca i1
  %"var_4h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp slt i32 %".4", 3
  br i1 %".5", label %"0x000009ba", label %"0x000009ab"
"0x000009ab":
  %".7" = icmp slt i32 9, %".4"
  br i1 %".7", label %"0x000009ba", label %"0x000009b3"
"0x000009ba":
  store i1 0, i1* %"bVar1"
  br label %"0x000009bf"
"0x000009b3":
  store i1 1, i1* %"bVar1"
  br label %"0x000009bf"
"0x000009bf":
  %".13" = load i1, i1* %"bVar1"
  br i1 %".13", label %"0x000009c9", label %"0x000009c3"
"0x000009c3":
  call void @verifier.error()
  br label %"0x000009c9"
"0x000009c9":
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x000009cb"
"0x000009cb":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  call void @"sym.func_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
