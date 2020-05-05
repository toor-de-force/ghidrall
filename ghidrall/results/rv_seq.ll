; ModuleID = "rv_seq"
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
  store i32 %".7", i32* %"iVar2"
  %".9" = load i32, i32* %"iVar2"
  %".10" = icmp eq i32 %".9", 37
  br i1 %".10", label %"0x000009cf", label %"0x000009ca"
"0x000009ca":
  call void @verifier.error()
  br label %"0x000009cf"
"0x000009cf":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
