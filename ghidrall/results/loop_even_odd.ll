; ModuleID = "loop_even_odd"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"var_8h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  %".4" = getelementptr i64, i64* %"var_8h", i32 0
  %".5" = bitcast i64* %".4" to i32*
  store i32 %".3", i32* %".5"
  %".7" = getelementptr i64, i64* %"var_8h", i32 32
  %".8" = bitcast i64* %".7" to i32*
  store i32 0, i32* %".8"
  br label %"0x0000095f"
"0x0000095f":
  %".11" = getelementptr i64, i64* %"var_8h", i32 32
  %".12" = load i64, i64* %".11"
  %".13" = trunc i64 %".12" to i32
  %".14" = icmp slt i32 %".13", 9
  br i1 %".14", label %"0x0000096e", label %"0x00000965"
"0x0000096e":
  %".16" = getelementptr i64, i64* %"var_8h", i32 0
  %".17" = load i64, i64* %".16"
  %".18" = trunc i64 %".17" to i32
  %".19" = icmp ne i32 %".18", 0
  br i1 %".19", label %"0x00000983", label %"0x00000974"
"0x00000974":
  %".21" = getelementptr i64, i64* %"var_8h", i32 0
  %".22" = load i64, i64* %".21"
  %".23" = trunc i64 %".22" to i32
  %".24" = and i32 %".23", 1
  %".25" = icmp eq i32 %".24", 0
  br i1 %".25", label %"0x00000983", label %"0x0000097e"
"0x0000097e":
  call void @verifier.error()
  br label %"0x00000983"
"0x00000983":
  ret void
"0x00000965":
  %".30" = getelementptr i64, i64* %"var_8h", i32 0
  %".31" = load i64, i64* %".30"
  %".32" = trunc i64 %".31" to i32
  %".33" = shl i32 %".32", 1
  %".34" = getelementptr i64, i64* %"var_8h", i32 0
  %".35" = bitcast i64* %".34" to i32*
  store i32 %".33", i32* %".35"
  %".37" = getelementptr i64, i64* %"var_8h", i32 32
  %".38" = load i64, i64* %".37"
  %".39" = trunc i64 %".38" to i32
  %".40" = add i32 %".39", 1
  %".41" = getelementptr i64, i64* %"var_8h", i32 32
  %".42" = bitcast i64* %".41" to i32*
  store i32 %".40", i32* %".42"
  br label %"0x0000095f"
}

declare i32 @nd() 

declare void @verifier.error() 
