; ModuleID = "nested_ite_condition_param_v2"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"sym.func_int"(i64 %".1") 
{
entry:
  %"iVar1" = alloca i32
  %"var_14h" = alloca i64
  %"var_4h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".4" = trunc i64 %".1" to i32
  store i32 %".4", i32* %"iVar1"
  %".6" = getelementptr i64, i64* %"var_4h", i32 0
  %".7" = bitcast i64* %".6" to i32*
  store i32 0, i32* %".7"
  %".9" = load i32, i32* %"iVar1"
  %".10" = icmp slt i32 0, %".9"
  br i1 %".10", label %"0x00000a0d", label %"0x000009b0"
"0x000009b0":
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp slt i32 %".12", 10
  br i1 %".13", label %"0x00000a06", label %"0x000009bd"
"0x00000a06":
  %".15" = getelementptr i64, i64* %"var_4h", i32 0
  %".16" = bitcast i64* %".15" to i32*
  store i32 4294967286, i32* %".16"
  br label %"0x00000a0d"
"0x000009bd":
  %".19" = getelementptr i64, i64* %"var_4h", i32 0
  %".20" = bitcast i64* %".19" to i32*
  store i32 10, i32* %".20"
  %".22" = load i32, i32* %"iVar1"
  %".23" = icmp slt i32 %".22", 50
  br i1 %".23", label %"0x000009ff", label %"0x000009ca"
"0x000009ff":
  call void @verifier.error()
  br label %"0x00000a0d"
"0x000009ca":
  %".27" = load i32, i32* %"iVar1"
  %".28" = icmp slt i32 %".27", 75
  br i1 %".28", label %"0x000009f6", label %"0x000009d7"
"0x000009f6":
  %".30" = getelementptr i64, i64* %"var_4h", i32 0
  %".31" = bitcast i64* %".30" to i32*
  store i32 4294967221, i32* %".31"
  br label %"0x00000a0d"
"0x000009d7":
  %".34" = load i32, i32* %"iVar1"
  %".35" = icmp slt i32 %".34", 101
  br i1 %".35", label %"0x000009ed", label %"0x000009e4"
"0x000009ed":
  %".37" = getelementptr i64, i64* %"var_4h", i32 0
  %".38" = bitcast i64* %".37" to i32*
  store i32 4294967196, i32* %".38"
  br label %"0x00000a0d"
"0x000009e4":
  %".41" = getelementptr i64, i64* %"var_4h", i32 0
  %".42" = bitcast i64* %".41" to i32*
  store i32 100, i32* %".42"
  br label %"0x00000a0d"
"0x00000a0d":
  %".45" = getelementptr i64, i64* %"var_4h", i32 0
  %".46" = load i64, i64* %".45"
  %".47" = trunc i64 %".46" to i32
  ret i32 %".47"
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x00000a12"
"0x00000a12":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  %".7" = call i32 @"sym.func_int"(i64 %".6")
  ret void
}

declare void @verifier.error() 

declare i32 @nd() 
