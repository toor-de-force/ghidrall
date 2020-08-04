; ModuleID = "Shipgame_3"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_gbFlushOnNewline" = global i32 0
@"obj.gBuf" = external global i64
@"obj.gOutBuf" = external global i64
@"obj.gPageNotFoundError" = external global i64
@"str.:__s" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"in_stack_ffffffa0" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".20" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x0000001c.1" = alloca i32*
  %".21" = alloca i8**
  %".22" = alloca i32**
  store i8** %"argv", i8*** %".21"
  store i32** %"envp", i32*** %".22"
  br label %"0"
"0":
  store i32 -1, i32* %"var_18h"
  store i32 0, i32* %"var_14h"
  call void @"sym.cgc_init_pages"()
  br label %"1"
"1":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".31" = ptrtoint i8* %".30" to i32
  call void @"sym.cgc_recvMsg"(i32 6, i32 %".31", i32 8)
  %".33" = load i32, i32* %"var_18h"
  %".34" = icmp eq i32 %".33", 0
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"2", label %"8"
"2":
  %".40" = load i32, i32* %"var_14h"
  %".41" = icmp eq i32 %".40", 0
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"4", label %"3"
"3":
  %".47" = ptrtoint i64* @"obj.gBuf" to i32
  %".48" = load i32, i32* %"var_14h"
  call void @"sym.cgc_recvMsg"(i32 6, i32 %".47", i32 %".48")
  %".50" = load i32, i32* %"var_14h"
  %".51" = mul i32 %".50", 8
  %".52" = getelementptr inbounds i64, i64* @"obj.gBuf", i32 %".51"
  %".53" = bitcast i64* %".52" to i32*
  %".54" = ptrtoint i64* @"obj.gBuf" to i32
  %".55" = call i32 @"sym.cgc_findPage"(i32 %".54")
  store i32 %".55", i32* %"var_1ch"
  br label %"5"
"4":
  store i32 0, i32* %"var_1ch"
  br label %"5"
"5":
  store i32 1, i32* %"var_18h"
  %".61" = load i32, i32* %"var_1ch"
  %".62" = icmp ult i32 %".61", 10
  %".63" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000200"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"6", label %"7"
"6":
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".69" = load i32, i32* %"var_1ch"
  %".70" = mul i32 %".69", 52
  store i32 %".70", i32* %"register0x0000001c"
  %".72" = load i32, i32* %"register0x0000001c"
  %".73" = add i32 %".72", 134537780
  %".74" = inttoptr i32 %".73" to i8*
  %".75" = load i8, i8* %".74"
  %".76" = bitcast i32* %"var_14h" to i8*
  store i8 %".75", i8* %".76"
  %".78" = ptrtoint i8* %".74" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".78", i32 8)
  %".80" = load i32, i32* %"var_1ch"
  %".81" = mul i32 %".80", 52
  store i32 %".81", i32* %"register0x00000008"
  %".83" = load i32, i32* %"register0x00000008"
  %".84" = add i32 %".83", 134537776
  %".85" = inttoptr i32 %".84" to i8*
  %".86" = load i8, i8* %".85"
  %".87" = load i32, i32* %"var_14h"
  %".88" = zext i8 %".86" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".88", i32 %".87")
  br label %"1"
"7":
  %".91" = ptrtoint i64* @"obj.gOutBuf" to i32
  %".92" = ptrtoint i64* @"obj.gBuf" to i32
  %".93" = load i32, i32* %"in_stack_ffffffa0"
  %".94" = call i32 @"sym.cgc_snprintf"(i32 %".91", i32 4096, i32 %".92", i32 %".93")
  store i32 %".94", i32* %"iVar1"
  %".96" = load i32, i32* %"iVar1"
  %".97" = mul i32 %".96", 8
  %".98" = getelementptr inbounds i64, i64* @"obj.gOutBuf", i32 %".97"
  %".99" = bitcast i64* %".98" to i32*
  store i32* %".99", i32** %"register0x0000001c.1"
  %".101" = load i32, i32* %"iVar1"
  %".102" = sub i32 4096, %".101"
  store i32 %".102", i32* %"register0x00000018"
  %".104" = bitcast i32* %"in_stack_ffffffa0" to i64**
  store i64* @"obj.gPageNotFoundError", i64** %".104"
  %".106" = ptrtoint i32** %"register0x0000001c.1" to i32
  %".107" = ptrtoint i64* @"obj.gPageNotFoundError" to i32
  %".108" = load i32, i32* %"register0x00000018"
  %".109" = call i32 @"sym.cgc_snprintf"(i32 %".106", i32 %".108", i32 134533002, i32 %".107")
  store i32 %".109", i32* %"var_14h"
  %".111" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".112" = load i32, i32* %"var_14h"
  %".113" = load i32, i32* %"iVar1"
  %".114" = add i32 %".112", %".113"
  store i32 %".114", i32* %"var_14h"
  %".116" = ptrtoint i8* %".111" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".116", i32 8)
  %".118" = ptrtoint i64* @"obj.gOutBuf" to i32
  %".119" = load i32, i32* %"var_14h"
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".118", i32 %".119")
  br label %"1"
"8":
  %".122" = load i32, i32* %"var_18h"
  %".123" = icmp eq i32 %".122", 3
  %".124" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".123", i1* %".124"
  %".126" = load i8, i8* %"register0x00000206"
  %".127" = trunc i8 %".126" to i1
  br i1 %".127", label %"9", label %"a"
"9":
  store i32 0, i32* %"register0x00000000"
  %".130" = load i32, i32* %"register0x00000000"
  ret i32 %".130"
a:
  store i32 2, i32* %"var_18h"
  store i32 0, i32* %"var_14h"
  br label %"1"
}

declare void @"sym.cgc_sendMsg"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_recvMsg"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_findPage"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_pages"() 

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__pprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_uint32ToHexStr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__nibbleToHexChar"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_pflush"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc__fprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getPrintfInfo"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_printfProcessString"(i32 %"arg_8h", i32 %"arg_ch") 
