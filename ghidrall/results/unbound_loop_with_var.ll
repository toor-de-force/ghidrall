; ModuleID = "unbound_loop_with_var"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_8h" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  store i32 0, i32* %"var_8h"
  br label %"0x0000095f"
"0x0000095f":
  %".7" = load i32, i32* %"var_8h"
  %".8" = load i32, i32* %"iVar1"
  %".9" = icmp slt i32 %".7", %".8"
  br i1 %".9", label %"0x00000978", label %"0x00000967"
"0x00000978":
  ret void
"0x00000967":
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp eq i32 %".12", 5
  br i1 %".13", label %"0x00000972", label %"0x0000096d"
"0x0000096d":
  call void @verifier.error()
  br label %"0x00000972"
"0x00000972":
  %".17" = load i32, i32* %"var_8h"
  %".18" = add i32 %".17", 1
  store i32 %".18", i32* %"var_8h"
  br label %"0x0000095f"
}

declare i32 @nd() 

declare void @verifier.error() 
