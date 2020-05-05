; ModuleID = "multiple_ite"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"var_ch" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = call i32 @nd()
  %".4" = call i32 @nd()
  store i32 %".4", i32* %"iVar1"
  %".6" = load i32, i32* %"iVar1"
  %".7" = icmp slt i32 %".6", 3
  br i1 %".7", label %"0x0000099b", label %"0x00000992"
"0x0000099b":
  %".9" = load i32, i32* %"iVar1"
  %".10" = icmp slt i32 %".9", 4
  br i1 %".10", label %"0x000009b0", label %"0x000009a1"
"0x000009a1":
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp slt i32 6, %".12"
  br i1 %".13", label %"0x000009b0", label %"0x000009a7"
"0x000009b0":
  %".15" = getelementptr i64, i64* %"var_ch", i32 0
  %".16" = bitcast i64* %".15" to i32*
  store i32 6, i32* %".16"
  br label %"0x000009b7"
"0x000009a7":
  %".19" = getelementptr i64, i64* %"var_ch", i32 0
  %".20" = bitcast i64* %".19" to i32*
  store i32 5, i32* %".20"
  br label %"0x000009b7"
"0x00000992":
  %".23" = getelementptr i64, i64* %"var_ch", i32 0
  %".24" = bitcast i64* %".23" to i32*
  store i32 4, i32* %".24"
  br label %"0x000009b7"
"0x000009b7":
  %".27" = getelementptr i64, i64* %"var_ch", i32 0
  %".28" = load i64, i64* %".27"
  %".29" = trunc i64 %".28" to i32
  %".30" = icmp ne i32 %".29", 0
  br i1 %".30", label %"0x000009c2", label %"0x000009bd"
"0x000009bd":
  call void @verifier.error()
  br label %"0x000009c2"
"0x000009c2":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
