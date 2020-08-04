; ModuleID = "Shipgame_1_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_gbFlushOnNewline" = global i32 0
@"str.BAD_CMD" = external global i64
@"str.GOODBYE" = external global i64
@"str.HELLO" = external global i64
@"str.HELLO_I_AM" = external global i64
@"str.s_s_s_s_s" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"piVar2" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".33" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %".34" = alloca i8**
  %".35" = alloca i32**
  store i8** %"argv", i8*** %".34"
  store i32** %"envp", i32*** %".35"
  br label %"0"
"0":
  store i32 0, i32* %"var_14h"
  store i32 0, i32* %"var_1ch"
  store i32 0, i32* %"var_20h"
  store i32 0, i32* %"var_3ch"
  store i32 0, i32* %"var_44h"
  call void @"sym.cgc_printf_setFlushOnNewline"(i32 1)
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  call void @"sym.imp.cgc_allocate"()
  %".47" = load i32, i32* %"iVar1"
  %".48" = icmp eq i32 %".47", 0
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"12", label %"1"
"1":
  %".54" = load i32, i32* %"var_14h"
  %".55" = call i32 @"sym.cgc_readLine"(i32 0, i32 %".54", i32 4096)
  store i32 %".55", i32* %"iVar1"
  %".57" = load i32, i32* %"iVar1"
  %".58" = icmp slt i32 0, %".57"
  br i1 %".58", label %"2", label %"3"
"2":
  %".60" = load i32, i32* %"iVar1"
  %".61" = add i32 %".60", -1
  store i32 %".61", i32* %"register0x00000004"
  %".63" = load i32, i32* %"var_14h"
  %".64" = load i32, i32* %"register0x00000004"
  %".65" = add i32 %".63", %".64"
  br label %"3"
"3":
  %".67" = load i32, i32* %"var_44h"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"4", label %"9"
"4":
  %".74" = load i32, i32* %"var_14h"
  %".75" = call i32 @"sym.cgc_strstr"(i32 %".74", i32 134526672)
  store i32 %".75", i32* %"iVar1"
  %".77" = load i32, i32* %"iVar1"
  %".78" = load i32, i32* %"var_14h"
  %".79" = icmp eq i32 %".77", %".78"
  %".80" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".79", i1* %".80"
  %".82" = load i8, i8* %"register0x00000206"
  %".83" = trunc i8 %".82" to i1
  br i1 %".83", label %"8", label %"5"
"5":
  store i32 134526600, i32* %"arg_ch"
  %".86" = load i32, i32* %"var_14h"
  %".87" = call i32 @"sym.cgc_strstr"(i32 %".86", i32 134526600)
  store i32 %".87", i32* %"iVar1"
  %".89" = load i32, i32* %"iVar1"
  %".90" = load i32, i32* %"var_14h"
  %".91" = icmp eq i32 %".89", %".90"
  %".92" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".91", i1* %".92"
  %".94" = load i8, i8* %"register0x00000206"
  %".95" = trunc i8 %".94" to i1
  br i1 %".95", label %"7", label %"6"
"6":
  %".97" = load i32, i32* %"arg_ch"
  %".98" = call i32 @"sym.cgc_printf"(i32 134523094, i32 %".97")
  br label %"10"
"7":
  %".100" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  call void @"sym.imp.cgc_random"()
  %".102" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %".103" = ptrtoint i8* %".102" to i32
  %".104" = load i32, i32* %"var_3ch"
  %".105" = call i32 @"sym.cgc_snprintf"(i32 %".103", i32 24, i32 134523079, i32 %".104")
  %".106" = call i32 @"sym.cgc_printf"(i32 134523082, i32 134526612)
  store i32 1, i32* %"var_44h"
  br label %"10"
"8":
  store i32 2, i32* %"var_44h"
  br label %"10"
"9":
  %".111" = load i32, i32* %"var_44h"
  %".112" = icmp eq i32 %".111", 1
  %".113" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".112", i1* %".113"
  %".115" = load i8, i8* %"register0x00000206"
  %".116" = trunc i8 %".115" to i1
  br i1 %".116", label %"a", label %"10"
a:
  %".118" = load i32, i32* %"var_14h"
  %".119" = call i32 @"sym.cgc_strstr"(i32 %".118", i32 134526672)
  store i32 %".119", i32* %"iVar1"
  %".121" = load i32, i32* %"iVar1"
  %".122" = load i32, i32* %"var_14h"
  %".123" = icmp eq i32 %".121", %".122"
  %".124" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".123", i1* %".124"
  %".126" = load i8, i8* %"register0x00000206"
  %".127" = trunc i8 %".126" to i1
  br i1 %".127", label %"f", label %"b"
b:
  %".129" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %".130" = bitcast i32* %"piVar2" to i8**
  store i8* %".129", i8** %".130"
  %".132" = load i32, i32* %"piVar2"
  %".133" = load i32, i32* %"var_14h"
  %".134" = call i32 @"sym.cgc_strstr"(i32 %".133", i32 %".132")
  store i32 %".134", i32* %"iVar1"
  %".136" = load i32, i32* %"iVar1"
  %".137" = load i32, i32* %"var_14h"
  %".138" = icmp eq i32 %".136", %".137"
  %".139" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".138", i1* %".139"
  %".141" = load i8, i8* %"register0x00000206"
  %".142" = trunc i8 %".141" to i1
  br i1 %".142", label %"c", label %"e"
c:
  %".144" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".145" = bitcast i32* %"piVar2" to i8**
  store i8* %".144", i8** %".145"
  %".147" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".148" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %".149" = load i32, i32* %"piVar2"
  %".150" = ptrtoint i8* %".148" to i32
  %".151" = ptrtoint i8* %".148" to i32
  %".152" = load i32, i32* %"var_14h"
  %".153" = call i32 @"sym.cgc_parseAndGetPage"(i32 %".152", i32 %".149", i32 %".150", i32 %".151")
  store i32 %".153", i32* %"iVar1"
  %".155" = load i32, i32* %"iVar1"
  %".156" = icmp ne i32 %".155", 0
  %".157" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".156", i1* %".157"
  %".159" = load i8, i8* %"register0x00000206"
  %".160" = trunc i8 %".159" to i1
  br i1 %".160", label %"10", label %"d"
d:
  %".162" = load i32, i32* %"piVar2"
  %".163" = call i32 @"sym.cgc_printf"(i32 134523094, i32 %".162")
  br label %"10"
e:
  %".165" = load i32, i32* %"piVar2"
  %".166" = call i32 @"sym.cgc_printf"(i32 134523094, i32 %".165")
  br label %"10"
f:
  store i32 2, i32* %"var_44h"
  br label %"10"
"10":
  %".170" = load i32, i32* %"var_44h"
  %".171" = icmp ne i32 %".170", 2
  %".172" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".171", i1* %".172"
  %".174" = load i8, i8* %"register0x00000206"
  %".175" = trunc i8 %".174" to i1
  br i1 %".175", label %"1", label %"11"
"11":
  %".177" = call i32 @"sym.cgc_printf"(i32 134523090, i32 134526672)
  call void @"sym.cgc_sendGoodbyes"()
  store i32 0, i32* %"var_10h"
  br label %"13"
"12":
  store i32 -1, i32* %"var_10h"
  br label %"13"
"13":
  %".183" = load i32, i32* %"var_10h"
  store i32 %".183", i32* %"register0x00000000"
  %".185" = load i32, i32* %"register0x00000000"
  ret i32 %".185"
}

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_parseAndGetPage"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_doGet"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sendMsg"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_recvMsg"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_findFDs"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strrstr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_printf_setFlushOnNewline"(i32 %"arg_8h") 

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__pprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_uint32ToHexStr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__nibbleToHexChar"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_pflush"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printfProcessString"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_sendGoodbyes"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc__fprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getPrintfInfo"(i32 %"arg_8h") 

declare i32 @"sym.cgc_readLine"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strstr"(i32 %"arg_8h", i32 %"arg_ch") 
