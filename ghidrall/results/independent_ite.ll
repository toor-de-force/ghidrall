; ModuleID = "independent_ite"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %"cVar4" = alloca i8
  %"var_ch" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = call i32 @nd()
  store i32 %".5", i32* %"iVar2"
  %".7" = call i32 @nd()
  store i32 %".7", i32* %"iVar3"
  %".9" = load i32, i32* %"iVar1"
  %".10" = icmp eq i32 %".9", 0
  %".11" = bitcast i8* %"cVar4" to i1*
  store i1 %".10", i1* %".11"
  %".13" = load i32, i32* %"iVar2"
  %".14" = icmp eq i32 %".13", 0
  br i1 %".14", label %"0x00000983", label %"0x0000097f"
"0x0000097f":
  %".16" = load i8, i8* %"cVar4"
  %".17" = add i8 %".16", 1
  store i8 %".17", i8* %"cVar4"
  br label %"0x00000983"
"0x00000983":
  %".20" = load i32, i32* %"iVar3"
  %".21" = icmp eq i32 %".20", 0
  br i1 %".21", label %"0x0000098d", label %"0x00000989"
"0x00000989":
  %".23" = load i8, i8* %"cVar4"
  %".24" = add i8 %".23", 1
  store i8 %".24", i8* %"cVar4"
  br label %"0x0000098d"
"0x0000098d":
  %".27" = load i8, i8* %"cVar4"
  %".28" = icmp eq i8 %".27", 3
  br i1 %".28", label %"0x00000998", label %"0x00000993"
"0x00000993":
  call void @verifier.error()
  br label %"0x00000998"
"0x00000998":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
