; ModuleID = "multivar_compound_condition"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"var_ch" = alloca i64
  br label %"0x00000943"
"0x00000943":
  %".3" = getelementptr i64, i64* %"var_ch", i32 0
  %".4" = bitcast i64* %".3" to i32*
  store i32 0, i32* %".4"
  %".6" = call i32 @nd()
  store i32 %".6", i32* %"iVar1"
  %".8" = call i32 @nd()
  store i32 %".8", i32* %"iVar2"
  %".10" = load i32, i32* %"iVar1"
  %".11" = icmp slt i32 %".10", 3
  br i1 %".11", label %"0x0000097c", label %"0x0000096d"
"0x0000096d":
  %".13" = load i32, i32* %"iVar2"
  %".14" = icmp slt i32 10, %".13"
  br i1 %".14", label %"0x0000097c", label %"0x00000973"
"0x0000097c":
  %".16" = load i32, i32* %"iVar1"
  %".17" = icmp slt i32 %".16", 11
  br i1 %".17", label %"0x0000098f", label %"0x00000982"
"0x00000982":
  %".19" = load i32, i32* %"iVar2"
  %".20" = icmp slt i32 19, %".19"
  br i1 %".20", label %"0x0000098f", label %"0x00000988"
"0x0000098f":
  %".22" = getelementptr i64, i64* %"var_ch", i32 0
  %".23" = bitcast i64* %".22" to i32*
  store i32 3, i32* %".23"
  br label %"0x00000996"
"0x00000988":
  call void @verifier.error()
  br label %"0x00000996"
"0x00000973":
  %".28" = getelementptr i64, i64* %"var_ch", i32 0
  %".29" = bitcast i64* %".28" to i32*
  store i32 1, i32* %".29"
  br label %"0x00000996"
"0x00000996":
  %".32" = getelementptr i64, i64* %"var_ch", i32 0
  %".33" = load i64, i64* %".32"
  %".34" = trunc i64 %".33" to i32
  ret i32 %".34"
}

declare i32 @nd() 

declare void @verifier.error() 
