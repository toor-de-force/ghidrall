; ModuleID = "invalid_nested_conditions"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"var_8h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = call i32 @nd()
  store i32 %".5", i32* %"iVar2"
  %".7" = load i32, i32* %"iVar1"
  %".8" = load i32, i32* %"iVar2"
  %".9" = icmp eq i32 %".7", %".8"
  br i1 %".9", label %"0x0000098f", label %"0x0000096f"
"0x0000096f":
  %".11" = load i32, i32* %"iVar2"
  %".12" = add i32 %".11", 3
  %".13" = load i32, i32* %"iVar1"
  %".14" = icmp eq i32 %".12", %".13"
  br i1 %".14", label %"0x0000098f", label %"0x0000098a"
"0x0000098a":
  call void @seahorn.fail()
  br label %"0x0000098f"
"0x0000098f":
  ret void
}

declare i32 @nd() 

declare void @seahorn.fail() 
