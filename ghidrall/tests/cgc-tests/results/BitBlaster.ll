; ModuleID = "BitBlaster"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.gBoard" = global i32 0
@"segment.GNU_STACK" = external global i64
@"str.You_Win" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".13" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".14" = alloca i8**
  %".15" = alloca i32**
  store i8** %"argv", i8*** %".14"
  store i32** %"envp", i32*** %".15"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  call void @"sym.cgc_initBoard"()
  br label %"1"
"1":
  %".22" = call i32 @"sym.cgc_isWinner"()
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"2", label %"3"
"2":
  call void @"(code *)0x0"()
  %".32" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134516288, i32 8)
  %".33" = load i32, i32* %"var_8h"
  store i32 %".33", i32* %"register0x00000000"
  %".35" = load i32, i32* %"register0x00000000"
  ret i32 %".35"
"3":
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %".38" = ptrtoint i8* %".37" to i32
  %".39" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".38", i32 1)
  store i32 %".39", i32* %"iVar1"
  %".41" = load i32, i32* %"iVar1"
  %".42" = icmp ne i32 %".41", 1
  %".43" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000206"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"4", label %"5"
"4":
  call void @"sym.cgc_printBoard"()
  store i32 0, i32* %"register0x00000000"
  %".50" = load i32, i32* %"register0x00000000"
  ret i32 %".50"
"5":
  %".52" = load i8, i8* %".12"
  %".53" = icmp eq i8 %".52", 255
  %".54" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".53", i1* %".54"
  %".56" = load i8, i8* %"register0x00000206"
  %".57" = trunc i8 %".56" to i1
  br i1 %".57", label %"6", label %"7"
"6":
  call void @"sym.cgc_printBoard"()
  store i32 0, i32* %"register0x00000000"
  %".61" = load i32, i32* %"register0x00000000"
  ret i32 %".61"
"7":
  %".63" = load i8, i8* %".12"
  %".64" = zext i8 %".63" to i32
  store i32 %".64", i32* %"register0x00000000"
  %".66" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_makeMove"(i32 %".66")
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

declare void @"(code *)0x0"() 
