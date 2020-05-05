; ModuleID = "independent_ite_param"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"sym.func_int__int__int"(i64 %".1", i64 %".2", i64 %".3") 
{
entry:
  %"cVar1" = alloca i8
  %"var_14h" = alloca i64
  %"var_4h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".6" = trunc i64 %".1" to i32
  %".7" = trunc i64 %".2" to i32
  %".8" = trunc i64 %".3" to i32
  %".9" = icmp eq i32 %".6", 0
  %".10" = bitcast i8* %"cVar1" to i1*
  store i1 %".9", i1* %".10"
  %".12" = icmp eq i32 %".7", 0
  br i1 %".12", label %"0x000009c4", label %"0x000009c0"
"0x000009c0":
  %".14" = load i8, i8* %"cVar1"
  %".15" = add i8 %".14", 1
  store i8 %".15", i8* %"cVar1"
  br label %"0x000009c4"
"0x000009c4":
  %".18" = icmp eq i32 %".8", 0
  br i1 %".18", label %"0x000009ce", label %"0x000009ca"
"0x000009ca":
  %".20" = load i8, i8* %"cVar1"
  %".21" = add i8 %".20", 1
  store i8 %".21", i8* %"cVar1"
  br label %"0x000009ce"
"0x000009ce":
  %".24" = load i8, i8* %"cVar1"
  %".25" = icmp eq i8 %".24", 3
  br i1 %".25", label %"0x000009da", label %"0x000009d4"
"0x000009d4":
  call void @verifier.error()
  br label %"0x000009da"
"0x000009da":
  ret void
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  %"uVar2" = alloca i32
  %"uVar3" = alloca i32
  br label %"0x000009dc"
"0x000009dc":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  %".7" = call i32 @nd()
  store i32 %".7", i32* %"uVar2"
  %".9" = call i32 @nd()
  store i32 %".9", i32* %"uVar3"
  %".11" = load i32, i32* %"uVar2"
  %".12" = zext i32 %".11" to i64
  %".13" = load i32, i32* %"uVar3"
  %".14" = zext i32 %".13" to i64
  call void @"sym.func_int__int__int"(i64 %".14", i64 %".12", i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
