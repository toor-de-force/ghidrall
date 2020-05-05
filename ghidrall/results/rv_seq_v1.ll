; ModuleID = "rv_seq_v1"
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
  %"uVar1" = alloca i32
  %"iVar2" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x000009a2"
"0x000009a2":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  %".7" = call i32 @"sym.func_int"(i64 %".6")
  store i32 %".7", i32* %"uVar1"
  %".9" = load i32, i32* %"uVar1"
  %".10" = zext i32 %".9" to i64
  %".11" = call i32 @"sym.func_int"(i64 %".10")
  store i32 %".11", i32* %"iVar2"
  %".13" = load i32, i32* %"iVar2"
  %".14" = icmp eq i32 %".13", 5
  br i1 %".14", label %"0x000009dc", label %"0x000009d7"
"0x000009d7":
  call void @verifier.error()
  br label %"0x000009dc"
"0x000009dc":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
