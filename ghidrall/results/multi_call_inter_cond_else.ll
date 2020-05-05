; ModuleID = "multi_call_inter_cond_else"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func1_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009c3"
"0x000009c3":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp eq i32 %".4", 6
  br i1 %".5", label %"0x000009da", label %"0x000009d4"
"0x000009d4":
  call void @verifier.error()
  br label %"0x000009da"
"0x000009da":
  ret void
}

define void @"sym.func0_int"(i64 %".1") 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x000009dc"
"0x000009dc":
  %".4" = trunc i64 %".1" to i32
  %".5" = icmp eq i32 %".4", 5
  br i1 %".5", label %"0x000009f9", label %"0x000009ed"
"0x000009f9":
  %".7" = icmp eq i32 %".4", 4
  br i1 %".7", label %"0x00000a0b", label %"0x000009ff"
"0x00000a0b":
  %".9" = and i64 %".1", 4294967295
  call void @"sym.func1_int"(i64 %".9")
  br label %"0x00000a16"
"0x000009ff":
  %".12" = and i64 %".1", 4294967295
  call void @"sym.func1_int"(i64 %".12")
  br label %"0x00000a16"
"0x000009ed":
  %".15" = and i64 %".1", 4294967295
  call void @"sym.func1_int"(i64 %".15")
  br label %"0x00000a16"
"0x00000a16":
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x00000a18"
"0x00000a18":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  call void @"sym.func0_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
