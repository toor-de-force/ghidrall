; ModuleID = "input_inside_bound_loop"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = getelementptr i64, i64* %"var_4h", i32 0
  %".4" = bitcast i64* %".3" to i32*
  store i32 0, i32* %".4"
  br label %"0x00000957"
"0x00000957":
  %".7" = getelementptr i64, i64* %"var_4h", i32 0
  %".8" = load i64, i64* %".7"
  %".9" = trunc i64 %".8" to i32
  %".10" = icmp slt i32 %".9", 100
  br i1 %".10", label %"0x00000989", label %"0x0000095d"
"0x00000989":
  call void @verifier.error()
  %".13" = getelementptr i64, i64* %"var_4h", i32 0
  %".14" = load i64, i64* %".13"
  %".15" = trunc i64 %".14" to i32
  ret i32 %".15"
"0x0000095d":
  %".17" = call i32 @nd()
  store i32 %".17", i32* %"iVar1"
  %".19" = load i32, i32* %"iVar1"
  %".20" = srem i32 %".19", 10
  %".21" = getelementptr i64, i64* %"var_4h", i32 0
  %".22" = load i64, i64* %".21"
  %".23" = trunc i64 %".22" to i32
  %".24" = add i32 %".23", %".20"
  %".25" = getelementptr i64, i64* %"var_4h", i32 0
  %".26" = bitcast i64* %".25" to i32*
  store i32 %".24", i32* %".26"
  br label %"0x00000957"
}

declare void @verifier.error() 

declare i32 @nd() 
