; ModuleID = "nested_ite_condition"
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
  %".18" = load i32, i32* %"iVar1"
  %".19" = icmp slt i32 %".18", 50
  br i1 %".19", label %"0x000009b2", label %"0x0000097f"
"0x000009b2":
  %".21" = getelementptr i64, i64* %"var_8h", i32 0
  %".22" = bitcast i64* %".21" to i32*
  store i32 4294967246, i32* %".22"
  br label %"0x000009c2"
"0x0000097f":
  %".25" = load i32, i32* %"iVar1"
  %".26" = icmp slt i32 %".25", 75
  br i1 %".26", label %"0x000009a9", label %"0x0000098c"
"0x000009a9":
  %".28" = getelementptr i64, i64* %"var_8h", i32 0
  %".29" = bitcast i64* %".28" to i32*
  store i32 4294967221, i32* %".29"
  br label %"0x000009c2"
"0x0000098c":
  %".32" = getelementptr i64, i64* %"var_8h", i32 0
  %".33" = bitcast i64* %".32" to i32*
  store i32 75, i32* %".33"
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp slt i32 %".35", 101
  br i1 %".36", label %"0x000009a2", label %"0x00000999"
"0x000009a2":
  call void @verifier.error()
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
