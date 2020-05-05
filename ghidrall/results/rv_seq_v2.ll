; ModuleID = "rv_seq_v2"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"sym.func_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".4" = trunc i64 %".1" to i32
  %".5" = add i32 %".4", 1
  ret i32 %".5"
}

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_8h" = alloca i64
  br label %"0x000009a2"
"0x000009a2":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = add i32 %".5", 3
  %".7" = zext i32 %".6" to i64
  %".8" = call i32 @"sym.func_int"(i64 %".7")
  store i32 %".8", i32* %"iVar1"
  %".10" = load i32, i32* %"iVar1"
  %".11" = icmp eq i32 %".10", 5
  br i1 %".11", label %"0x000009d2", label %"0x000009cd"
"0x000009cd":
  call void @verifier.error()
  br label %"0x000009d2"
"0x000009d2":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
