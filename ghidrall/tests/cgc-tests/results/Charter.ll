; ModuleID = "Charter"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %".10" = alloca i8**
  %".11" = alloca i32**
  store i8** %"argv", i8*** %".10"
  store i32** %"envp", i32*** %".11"
  br label %"0"
"0":
  %".15" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".16" = ptrtoint i8* %".15" to i32
  %".17" = call i32 @"sym.cgc_read"(i32 %".16", i32 4)
  %".18" = load i32, i32* %"var_ch"
  %".19" = icmp eq i32 %".18", 0
  %".20" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000200"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"3", label %"1"
"1":
  %".25" = load i32, i32* %"var_ch"
  %".26" = icmp ult i32 65536, %".25"
  br i1 %".26", label %"3", label %"2"
"2":
  %".28" = load i32, i32* %"var_ch"
  call void @"sym.cgc_read_data"(i32 %".28")
  store i32 0, i32* %"var_8h"
  br label %"4"
"3":
  store i32 -1, i32* %"var_8h"
  br label %"4"
"4":
  %".34" = load i32, i32* %"var_8h"
  store i32 %".34", i32* %"register0x00000000"
  %".36" = load i32, i32* %"register0x00000000"
  ret i32 %".36"
}

declare void @"sym.cgc_read_data"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_read"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 
