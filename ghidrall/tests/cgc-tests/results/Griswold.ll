; ModuleID = "Griswold"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".18" = alloca i8**
  %".19" = alloca i32**
  store i8** %"argv", i8*** %".18"
  store i32** %"envp", i32*** %".19"
  br label %"0"
"0":
  %".23" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_14h"
  br label %"1"
"1":
  %".27" = call i32 @"sym.cgc_do_nonce"()
  store i32 %".27", i32* %"var_14h"
  %".29" = load i32, i32* %"var_14h"
  %".30" = icmp eq i32 %".29", 0
  %".31" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".30", i1* %".31"
  %".33" = load i8, i8* %"register0x00000206"
  %".34" = trunc i8 %".33" to i1
  br i1 %".34", label %"2", label %"9"
"2":
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".37" = ptrtoint i8* %".36" to i32
  call void @"sym.cgc_recv_all"(i32 %".37", i32 4)
  %".39" = load i32, i32* %"iVar1"
  %".40" = icmp ne i32 %".39", 4
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".48" = load i32, i32* %"var_10h"
  %".49" = icmp eq i32 %".48", 13980
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"5", label %"6"
"5":
  %".55" = call i32 @"sym.cgc_do_build"()
  store i32 %".55", i32* %"var_14h"
  br label %"9"
"6":
  %".58" = load i32, i32* %"var_10h"
  %".59" = icmp eq i32 %".58", 809110
  %".60" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000206"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"7", label %"8"
"7":
  %".65" = call i32 @"sym.cgc_do_examine"()
  store i32 %".65", i32* %"var_14h"
  br label %"9"
"8":
  store i32 -80, i32* %"var_14h"
  br label %"9"
"9":
  %".70" = load i32, i32* %"var_14h"
  %".71" = icmp slt i32 -1, %".70"
  %".72" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000207"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"1", label %"a"
a:
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".78" = ptrtoint i8* %".77" to i32
  %".79" = call i32 @"sym.cgc_send"(i32 %".78", i32 4)
  %".80" = load i32, i32* %"var_14h"
  store i32 %".80", i32* %"register0x00000000"
  %".82" = load i32, i32* %"register0x00000000"
  ret i32 %".82"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_do_nonce"() 

declare void @"sym.cgc_rand"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_do_build"() 

declare i32 @"sym.cgc_recv_uint32"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_do_examine"() 

declare void @"_reloc.memset"() 
