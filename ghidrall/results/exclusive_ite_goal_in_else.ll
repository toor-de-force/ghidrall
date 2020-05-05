; ModuleID = "exclusive_ite_goal_in_else"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_8h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = getelementptr i64, i64* %"var_8h", i32 0
  %".4" = bitcast i64* %".3" to i32*
  store i32 0, i32* %".4"
  %".6" = call i32 @nd()
  store i32 %".6", i32* %"iVar1"
  %".8" = load i32, i32* %"iVar1"
  %".9" = icmp slt i32 %".8", 100
  br i1 %".9", label %"0x0000096e", label %"0x00000965"
"0x0000096e":
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp slt i32 %".11", 76
  br i1 %".12", label %"0x0000097d", label %"0x00000974"
"0x0000097d":
  %".14" = load i32, i32* %"iVar1"
  %".15" = icmp slt i32 %".14", 51
  br i1 %".15", label %"0x0000098c", label %"0x00000983"
"0x0000098c":
  %".17" = load i32, i32* %"iVar1"
  %".18" = icmp slt i32 %".17", 26
  br i1 %".18", label %"0x0000099b", label %"0x00000992"
"0x0000099b":
  %".20" = load i32, i32* %"iVar1"
  %".21" = icmp slt i32 %".20", 11
  br i1 %".21", label %"0x000009aa", label %"0x000009a1"
"0x000009aa":
  call void @verifier.error()
  br label %"0x000009af"
"0x000009a1":
  %".25" = getelementptr i64, i64* %"var_8h", i32 0
  %".26" = bitcast i64* %".25" to i32*
  store i32 10, i32* %".26"
  br label %"0x000009af"
"0x00000992":
  %".29" = getelementptr i64, i64* %"var_8h", i32 0
  %".30" = bitcast i64* %".29" to i32*
  store i32 25, i32* %".30"
  br label %"0x000009af"
"0x00000983":
  %".33" = getelementptr i64, i64* %"var_8h", i32 0
  %".34" = bitcast i64* %".33" to i32*
  store i32 50, i32* %".34"
  br label %"0x000009af"
"0x00000974":
  %".37" = getelementptr i64, i64* %"var_8h", i32 0
  %".38" = bitcast i64* %".37" to i32*
  store i32 75, i32* %".38"
  br label %"0x000009af"
"0x00000965":
  %".41" = getelementptr i64, i64* %"var_8h", i32 0
  %".42" = bitcast i64* %".41" to i32*
  store i32 100, i32* %".42"
  br label %"0x000009af"
"0x000009af":
  %".45" = getelementptr i64, i64* %"var_8h", i32 0
  %".46" = load i64, i64* %".45"
  %".47" = trunc i64 %".46" to i32
  ret i32 %".47"
}

declare i32 @nd() 

declare void @verifier.error() 
