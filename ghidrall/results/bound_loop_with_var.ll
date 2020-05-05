; ModuleID = "bound_loop_with_var"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = load i32, i32* %"iVar1"
  %".6" = srem i32 %".5", 10
  %".7" = add i32 %".6", -1
  %".8" = getelementptr i64, i64* %"var_4h", i32 0
  %".9" = bitcast i64* %".8" to i32*
  store i32 %".7", i32* %".9"
  br label %"0x0000097d"
"0x0000097d":
  %".12" = getelementptr i64, i64* %"var_4h", i32 0
  %".13" = load i64, i64* %".12"
  %".14" = trunc i64 %".13" to i32
  %".15" = icmp slt i32 %".14", 10
  br i1 %".15", label %"0x00000994", label %"0x00000983"
"0x00000994":
  ret void
"0x00000983":
  %".18" = getelementptr i64, i64* %"var_4h", i32 0
  %".19" = load i64, i64* %".18"
  %".20" = trunc i64 %".19" to i32
  %".21" = icmp eq i32 %".20", 9
  br i1 %".21", label %"0x0000098e", label %"0x00000989"
"0x00000989":
  call void @verifier.error()
  br label %"0x0000098e"
"0x0000098e":
  %".25" = getelementptr i64, i64* %"var_4h", i32 0
  %".26" = load i64, i64* %".25"
  %".27" = trunc i64 %".26" to i32
  %".28" = add i32 %".27", 1
  %".29" = getelementptr i64, i64* %"var_4h", i32 0
  %".30" = bitcast i64* %".29" to i32*
  store i32 %".28", i32* %".30"
  br label %"0x0000097d"
}

declare i32 @nd() 

declare void @verifier.error() 
