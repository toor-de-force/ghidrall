; ModuleID = "nested_ite_condition_v2"
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
  %".9" = icmp slt i32 0, %".8"
  br i1 %".9", label %"0x000009c2", label %"0x00000965"
"0x00000965":
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp slt i32 %".11", 10
  br i1 %".12", label %"0x000009bb", label %"0x00000972"
"0x000009bb":
  %".14" = getelementptr i64, i64* %"var_8h", i32 0
  %".15" = bitcast i64* %".14" to i32*
  store i32 4294967286, i32* %".15"
  br label %"0x000009c2"
"0x00000972":
  %".18" = getelementptr i64, i64* %"var_8h", i32 0
  %".19" = bitcast i64* %".18" to i32*
  store i32 10, i32* %".19"
  %".21" = load i32, i32* %"iVar1"
  %".22" = icmp slt i32 %".21", 50
  br i1 %".22", label %"0x000009b4", label %"0x0000097f"
"0x000009b4":
  call void @verifier.error()
  br label %"0x000009c2"
"0x0000097f":
  %".26" = load i32, i32* %"iVar1"
  %".27" = icmp slt i32 %".26", 75
  br i1 %".27", label %"0x000009ab", label %"0x0000098c"
"0x000009ab":
  %".29" = getelementptr i64, i64* %"var_8h", i32 0
  %".30" = bitcast i64* %".29" to i32*
  store i32 4294967221, i32* %".30"
  br label %"0x000009c2"
"0x0000098c":
  %".33" = load i32, i32* %"iVar1"
  %".34" = icmp slt i32 %".33", 101
  br i1 %".34", label %"0x000009a2", label %"0x00000999"
"0x000009a2":
  %".36" = getelementptr i64, i64* %"var_8h", i32 0
  %".37" = bitcast i64* %".36" to i32*
  store i32 4294967196, i32* %".37"
  br label %"0x000009c2"
"0x00000999":
  %".40" = getelementptr i64, i64* %"var_8h", i32 0
  %".41" = bitcast i64* %".40" to i32*
  store i32 100, i32* %".41"
  br label %"0x000009c2"
"0x000009c2":
  %".44" = getelementptr i64, i64* %"var_8h", i32 0
  %".45" = load i64, i64* %".44"
  %".46" = trunc i64 %".45" to i32
  ret i32 %".46"
}

declare i32 @nd() 

declare void @verifier.error() 
