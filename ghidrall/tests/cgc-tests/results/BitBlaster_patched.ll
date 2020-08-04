; ModuleID = "BitBlaster_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.gBoard" = global i32 0
@"str.You_Win" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".12" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".13" = alloca i8**
  %".14" = alloca i32**
  store i8** %"argv", i8*** %".13"
  store i32** %"envp", i32*** %".14"
  br label %"0"
"0":
  store i32 0, i32* %"var_4h"
  call void @"sym.cgc_initBoard"()
  br label %"1"
"1":
  %".21" = call i32 @"sym.cgc_isWinner"()
  store i32 %".21", i32* %"iVar1"
  %".23" = load i32, i32* %"iVar1"
  %".24" = icmp ne i32 %".23", 0
  %".25" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".24", i1* %".25"
  %".27" = load i8, i8* %"register0x00000206"
  %".28" = trunc i8 %".27" to i1
  br i1 %".28", label %"2", label %"3"
"2":
  %".30" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134516288, i32 8)
  %".31" = load i32, i32* %"var_4h"
  store i32 %".31", i32* %"register0x00000000"
  %".33" = load i32, i32* %"register0x00000000"
  ret i32 %".33"
"3":
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %".36" = ptrtoint i8* %".35" to i32
  %".37" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".36", i32 1)
  store i32 %".37", i32* %"iVar1"
  %".39" = load i32, i32* %"iVar1"
  %".40" = icmp ne i32 %".39", 1
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"4", label %"5"
"4":
  call void @"sym.cgc_printBoard"()
  store i32 0, i32* %"register0x00000000"
  %".48" = load i32, i32* %"register0x00000000"
  ret i32 %".48"
"5":
  %".50" = load i8, i8* %".11"
  %".51" = icmp eq i8 %".50", 255
  %".52" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".51", i1* %".52"
  %".54" = load i8, i8* %"register0x00000206"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"6", label %"7"
"6":
  call void @"sym.cgc_printBoard"()
  store i32 0, i32* %"register0x00000000"
  %".59" = load i32, i32* %"register0x00000000"
  ret i32 %".59"
"7":
  %".61" = load i8, i8* %".11"
  %".62" = zext i8 %".61" to i32
  store i32 %".62", i32* %"register0x00000000"
  %".64" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_makeMove"(i32 %".64")
  br label %"1"
}

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_makeMove"(i32 %"arg_8h") 

declare void @"sym.cgc_rotate_down"(i32 %"arg_8h") 

declare void @"sym.cgc_rotate_right"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_bits"() 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_isWinner"() 

declare void @"sym.cgc_initBoard"() 

declare void @"sym.cgc_printBoard"() 
