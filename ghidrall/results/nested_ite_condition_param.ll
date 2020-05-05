; ModuleID = "nested_ite_condition_param"
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
  %".19" = load i32, i32* %"iVar1"
  %".20" = icmp slt i32 %".19", 50
  br i1 %".20", label %"0x000009fd", label %"0x000009ca"
"0x000009fd":
  %".22" = getelementptr i64, i64* %"var_4h", i32 0
  %".23" = bitcast i64* %".22" to i32*
  store i32 4294967246, i32* %".23"
  br label %"0x00000a0d"
"0x000009ca":
  %".26" = load i32, i32* %"iVar1"
  %".27" = icmp slt i32 %".26", 75
  br i1 %".27", label %"0x000009f4", label %"0x000009d7"
"0x000009f4":
  %".29" = getelementptr i64, i64* %"var_4h", i32 0
  %".30" = bitcast i64* %".29" to i32*
  store i32 4294967221, i32* %".30"
  br label %"0x00000a0d"
"0x000009d7":
  %".33" = getelementptr i64, i64* %"var_4h", i32 0
  %".34" = bitcast i64* %".33" to i32*
  store i32 75, i32* %".34"
  %".36" = load i32, i32* %"iVar1"
  %".37" = icmp slt i32 %".36", 101
  br i1 %".37", label %"0x000009ed", label %"0x000009e4"
"0x000009ed":
  call void @verifier.error()
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
