; ModuleID = "empty"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  br label %"0x000008f3"
"0x000008f3":
  call void @verifier.error()
  ret void
}

declare void @verifier.error() 
