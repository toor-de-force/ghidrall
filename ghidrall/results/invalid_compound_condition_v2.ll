; ModuleID = "invalid_compound_condition_v2"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  ret void
}

declare i32 @nd() 
