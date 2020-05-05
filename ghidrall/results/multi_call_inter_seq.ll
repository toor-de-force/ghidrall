; ModuleID = "multi_call_inter_seq"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i64 @"sym.func1_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009c3"
"0x000009c3":
  call void @verifier.error()
  %".5" = and i64 %".1", 4294967295
  ret i64 %".5"
}

define void @"sym.func0_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009d8"
"0x000009d8":
  %".4" = trunc i64 %".1" to i32
  %".5" = and i64 %".1", 4294967295
  %".6" = call i64 @"sym.func1_int"(i64 %".5")
  %".7" = trunc i64 %".5" to i32
  %".8" = add i32 %".7", 66
  %".9" = zext i32 %".8" to i64
  %".10" = call i64 @"sym.func1_int"(i64 %".9")
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x000009fd"
"0x000009fd":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  call void @"sym.func0_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
