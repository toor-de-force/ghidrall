; ModuleID = "param_n_var_conpound_condition"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"sym.func_int"(i64 %".1") 
{
entry:
  %"iVar1" = alloca i32
  %"var_14h" = alloca i64
  %"var_8h" = alloca i64
  br label %"0x00000993"
"0x00000993":
  %".4" = trunc i64 %".1" to i32
  %".5" = getelementptr i64, i64* %"var_8h", i32 0
  %".6" = bitcast i64* %".5" to i32*
  store i32 0, i32* %".6"
  %".8" = call i32 @nd()
  store i32 %".8", i32* %"iVar1"
  %".10" = icmp slt i32 %".4", 3
  br i1 %".10", label %"0x000009c7", label %"0x000009b8"
"0x000009b8":
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp slt i32 10, %".12"
  br i1 %".13", label %"0x000009c7", label %"0x000009be"
"0x000009c7":
  %".15" = icmp slt i32 %".4", 11
  br i1 %".15", label %"0x000009da", label %"0x000009cd"
"0x000009cd":
  %".17" = load i32, i32* %"iVar1"
  %".18" = icmp slt i32 19, %".17"
  br i1 %".18", label %"0x000009da", label %"0x000009d3"
"0x000009da":
  %".20" = getelementptr i64, i64* %"var_8h", i32 0
  %".21" = bitcast i64* %".20" to i32*
  store i32 3, i32* %".21"
  br label %"0x000009e1"
"0x000009d3":
  call void @verifier.error()
  br label %"0x000009e1"
"0x000009be":
  %".26" = getelementptr i64, i64* %"var_8h", i32 0
  %".27" = bitcast i64* %".26" to i32*
  store i32 1, i32* %".27"
  br label %"0x000009e1"
"0x000009e1":
  %".30" = getelementptr i64, i64* %"var_8h", i32 0
  %".31" = load i64, i64* %".30"
  %".32" = trunc i64 %".31" to i32
  ret i32 %".32"
}

define void @"main"() 
{
entry:
  %"uVar1" = alloca i32
  br label %"0x000009e6"
"0x000009e6":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"uVar1"
  %".5" = load i32, i32* %"uVar1"
  %".6" = zext i32 %".5" to i64
  %".7" = call i32 @"sym.func_int"(i64 %".6")
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
