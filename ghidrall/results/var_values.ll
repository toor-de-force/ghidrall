; ModuleID = "var_values"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"cVar1" = alloca i8
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %"iVar4" = alloca i32
  %"iVar5" = alloca i32
  %"var_ch" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar2"
  %".5" = call i32 @nd()
  store i32 %".5", i32* %"iVar3"
  %".7" = call i32 @nd()
  store i32 %".7", i32* %"iVar4"
  %".9" = call i32 @nd()
  store i32 %".9", i32* %"iVar5"
  %".11" = load i32, i32* %"iVar5"
  %".12" = icmp eq i32 %".11", 0
  %".13" = call i32 @nd()
  %".14" = bitcast i8* %"cVar1" to i32*
  store i32 %".13", i32* %".14"
  %".16" = load i32, i32* %"iVar2"
  %".17" = icmp eq i32 %".16", 2
  br i1 %".17", label %"0x000009aa", label %"0x00000983"
"0x00000983":
  %".19" = load i32, i32* %"iVar3"
  %".20" = icmp eq i32 %".19", 10
  br i1 %".20", label %"0x000009aa", label %"0x0000098e"
"0x0000098e":
  br i1 %".20", label %"0x000009aa", label %"0x00000999"
"0x00000999":
  %".23" = load i32, i32* %"iVar4"
  %".24" = icmp slt i32 7, %".23"
  br i1 %".24", label %"0x000009aa", label %"0x0000099f"
"0x0000099f":
  %".26" = load i8, i8* %"cVar1"
  %".27" = icmp eq i8 %".26", 12
  br i1 %".27", label %"0x000009aa", label %"0x000009a5"
"0x000009a5":
  call void @verifier.error()
  br label %"0x000009aa"
"0x000009aa":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
