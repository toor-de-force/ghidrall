; ModuleID = "Shipgame_3_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_gbFlushOnNewline" = global i32 0
@"obj.gBuf" = external global i64
@"obj.gOutBuf" = external global i64
@"str.s_:__s" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".19" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000000" = alloca i32
  %".20" = alloca i8**
  %".21" = alloca i32**
  store i8** %"argv", i8*** %".20"
  store i32** %"envp", i32*** %".21"
  br label %"0"
"0":
  store i32 -1, i32* %"var_18h"
  store i32 0, i32* %"var_14h"
  call void @"sym.cgc_init_pages"()
  br label %"1"
"1":
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".30" = ptrtoint i8* %".29" to i32
  call void @"sym.cgc_recvMsg"(i32 6, i32 %".30", i32 8)
  %".32" = load i32, i32* %"var_18h"
  %".33" = icmp eq i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"2", label %"8"
"2":
  %".39" = load i32, i32* %"var_14h"
  %".40" = icmp eq i32 %".39", 0
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"4", label %"3"
"3":
  %".46" = ptrtoint i64* @"obj.gBuf" to i32
  %".47" = load i32, i32* %"var_14h"
  call void @"sym.cgc_recvMsg"(i32 6, i32 %".46", i32 %".47")
  %".49" = load i32, i32* %"var_14h"
  %".50" = mul i32 %".49", 8
  %".51" = getelementptr inbounds i64, i64* @"obj.gBuf", i32 %".50"
  %".52" = bitcast i64* %".51" to i32*
  %".53" = ptrtoint i64* @"obj.gBuf" to i32
  %".54" = call i32 @"sym.cgc_findPage"(i32 %".53")
  store i32 %".54", i32* %"var_1ch"
  br label %"5"
"4":
  store i32 0, i32* %"var_1ch"
  br label %"5"
"5":
  store i32 1, i32* %"var_18h"
  %".60" = load i32, i32* %"var_1ch"
  %".61" = icmp ult i32 %".60", 10
  %".62" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".61", i1* %".62"
  %".64" = load i8, i8* %"register0x00000200"
  %".65" = trunc i8 %".64" to i1
  br i1 %".65", label %"6", label %"7"
"6":
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".68" = load i32, i32* %"var_1ch"
  %".69" = mul i32 %".68", 52
  store i32 %".69", i32* %"register0x0000001c"
  %".71" = load i32, i32* %"register0x0000001c"
  %".72" = add i32 %".71", 134537752
  %".73" = inttoptr i32 %".72" to i8*
  %".74" = load i8, i8* %".73"
  %".75" = bitcast i32* %"var_14h" to i8*
  store i8 %".74", i8* %".75"
  %".77" = ptrtoint i8* %".73" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".77", i32 8)
  %".79" = load i32, i32* %"var_1ch"
  %".80" = mul i32 %".79", 52
  store i32 %".80", i32* %"register0x00000008"
  %".82" = load i32, i32* %"register0x00000008"
  %".83" = add i32 %".82", 134537748
  %".84" = inttoptr i32 %".83" to i8*
  %".85" = load i8, i8* %".84"
  %".86" = load i32, i32* %"var_14h"
  %".87" = zext i8 %".85" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".87", i32 %".86")
  br label %"1"
"7":
  %".90" = ptrtoint i64* @"obj.gOutBuf" to i32
  %".91" = ptrtoint i64* @"obj.gBuf" to i32
  %".92" = call i32 @"sym.cgc_snprintf"(i32 %".90", i32 4096, i32 134532970, i32 %".91")
  store i32 %".92", i32* %"var_14h"
  %".94" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".95" = ptrtoint i8* %".94" to i32
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".95", i32 8)
  %".97" = ptrtoint i64* @"obj.gOutBuf" to i32
  %".98" = load i32, i32* %"var_14h"
  call void @"sym.cgc_sendMsg"(i32 6, i32 %".97", i32 %".98")
  br label %"1"
"8":
  %".101" = load i32, i32* %"var_18h"
  %".102" = icmp eq i32 %".101", 3
  %".103" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".102", i1* %".103"
  %".105" = load i8, i8* %"register0x00000206"
  %".106" = trunc i8 %".105" to i1
  br i1 %".106", label %"9", label %"a"
"9":
  store i32 0, i32* %"register0x00000000"
  %".109" = load i32, i32* %"register0x00000000"
  ret i32 %".109"
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
