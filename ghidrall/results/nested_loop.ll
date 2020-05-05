; ModuleID = "nested_loop"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_ch" = alloca i64
  %"var_4h" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = getelementptr i64, i64* %"var_ch", i32 0
  %".6" = bitcast i64* %".5" to i32*
  store i32 0, i32* %".6"
  br label %"0x0000095f"
"0x0000095f":
  %".9" = getelementptr i64, i64* %"var_ch", i32 0
  %".10" = load i64, i64* %".9"
  %".11" = trunc i64 %".10" to i32
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp slt i32 %".11", %".12"
  br i1 %".13", label %"0x00000986", label %"0x0000096d"
"0x0000096d":
  %".15" = getelementptr i64, i64* %"var_ch", i32 0
  %".16" = load i64, i64* %".15"
  %".17" = trunc i64 %".16" to i32
  %".18" = load i32, i32* %"iVar1"
  %".19" = icmp slt i32 %".17", %".18"
  br i1 %".19", label %"0x00000980", label %"0x00000975"
"0x00000975":
  call void @verifier.error()
  br label %"0x0000096d"
"0x00000980":
  %".23" = getelementptr i64, i64* %"var_ch", i32 0
  %".24" = load i64, i64* %".23"
  %".25" = trunc i64 %".24" to i32
  %".26" = add i32 %".25", 1
  %".27" = getelementptr i64, i64* %"var_ch", i32 0
  %".28" = bitcast i64* %".27" to i32*
  store i32 %".26", i32* %".28"
  br label %"0x0000095f"
"0x00000986":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
