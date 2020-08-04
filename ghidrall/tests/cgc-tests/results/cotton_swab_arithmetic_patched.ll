; ModuleID = "cotton_swab_arithmetic_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".4" to i32*
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
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999966
  %"var_1eh" = bitcast i8* %".16" to i16*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".21" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %".22" = alloca i8**
  %".23" = alloca i32**
  store i8** %"argv", i8*** %".22"
  store i32** %"envp", i32*** %".23"
  br label %"0"
"0":
  %".27" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  store i32 0, i32* %"var_14h"
  store i32 0, i32* %"var_18h"
  store i32 0, i32* %"var_1ch"
  call void @"sym.imp.cgc_allocate"()
  %".32" = load i32, i32* %"var_ch"
  %".33" = icmp eq i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"1", label %"d"
"1":
  %".39" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".40" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999966
  store i16 0, i16* %"var_1eh"
  store i32 0, i32* %"var_14h"
  %".43" = ptrtoint i8* %".40" to i32
  %".44" = ptrtoint i8* %".40" to i32
  %".45" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".43", i32 2, i32 %".44")
  store i32 %".45", i32* %"var_10h"
  %".47" = load i32, i32* %"var_10h"
  %".48" = icmp eq i32 %".47", 0
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"2", label %"9"
"2":
  %".54" = load i16, i16* %"var_1eh"
  %".55" = icmp ult i16 %".54", 2045
  %".56" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000200"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"3", label %"a"
"3":
  %".61" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 0, i32* %"var_14h"
  %".63" = load i32, i32* %"var_1ch"
  %".64" = add i32 %".63", 2048
  store i32 %".64", i32* %"register0x00000008"
  %".66" = load i16, i16* %"var_1eh"
  %".67" = zext i16 %".66" to i32
  store i32 %".67", i32* %"register0x00000018"
  %".69" = ptrtoint i8* %".61" to i32
  %".70" = load i32, i32* %"register0x00000008"
  %".71" = load i32, i32* %"register0x00000018"
  %".72" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".70", i32 %".71", i32 %".69")
  store i32 %".72", i32* %"iVar1"
  %".74" = load i32, i32* %"iVar1"
  %".75" = icmp eq i32 %".74", 0
  %".76" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".75", i1* %".76"
  %".78" = load i8, i8* %"register0x00000206"
  %".79" = trunc i8 %".78" to i1
  br i1 %".79", label %"4", label %"8"
"4":
  %".81" = load i32, i32* %"var_1ch"
  %".82" = add i32 %".81", 2048
  store i32 %".82", i32* %"register0x00000000"
  %".84" = load i16, i16* %"var_1eh"
  %".85" = zext i16 %".84" to i32
  store i32 %".85", i32* %"register0x00000000"
  %".87" = load i32, i32* %"register0x00000000"
  %".88" = load i32, i32* %"register0x00000000"
  %".89" = call i32 @"sym.cgc_bytecode_vrfy"(i32 %".87", i32 %".88")
  store i32 %".89", i32* %"var_10h"
  %".91" = load i32, i32* %"var_10h"
  %".92" = icmp eq i32 %".91", 0
  %".93" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".92", i1* %".93"
  %".95" = load i8, i8* %"register0x00000206"
  %".96" = trunc i8 %".95" to i1
  br i1 %".96", label %"5", label %"a"
"5":
  %".98" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  store i32 -559038737, i32* %"var_24h"
  %".100" = load i32, i32* %"var_1ch"
  %".101" = add i32 %".100", 2048
  store i32 %".101", i32* %"register0x00000004"
  %".103" = load i16, i16* %"var_1eh"
  %".104" = zext i16 %".103" to i32
  store i32 %".104", i32* %"register0x00000004"
  %".106" = ptrtoint i8* %".98" to i32
  %".107" = load i32, i32* %"register0x00000004"
  %".108" = load i32, i32* %"register0x00000004"
  %".109" = load i32, i32* %"var_1ch"
  %".110" = call i32 @"sym.cgc_bytecode_exec"(i32 %".107", i32 %".108", i32 %".109", i32 %".106")
  store i32 %".110", i32* %"var_10h"
  %".112" = load i32, i32* %"var_10h"
  %".113" = icmp eq i32 %".112", 0
  %".114" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".113", i1* %".114"
  %".116" = load i8, i8* %"register0x00000206"
  %".117" = trunc i8 %".116" to i1
  br i1 %".117", label %"6", label %"a"
"6":
  %".119" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".120" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  store i32 0, i32* %"var_18h"
  %".122" = ptrtoint i8* %".120" to i32
  %".123" = ptrtoint i8* %".120" to i32
  %".124" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".122", i32 4, i32 %".123")
  store i32 %".124", i32* %"var_10h"
  %".126" = load i32, i32* %"var_10h"
  %".127" = icmp ne i32 %".126", 0
  %".128" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".127", i1* %".128"
  %".130" = load i8, i8* %"register0x00000206"
  %".131" = trunc i8 %".130" to i1
  br i1 %".131", label %"a", label %"7"
"7":
  store i32 -88, i32* %"var_10h"
  br label %"a"
"8":
  store i32 -63, i32* %"var_10h"
  br label %"a"
"9":
  store i32 -63, i32* %"var_10h"
  br label %"a"
a:
  %".139" = load i32, i32* %"var_1ch"
  %".140" = icmp ne i32 %".139", 0
  %".141" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".140", i1* %".141"
  %".143" = load i8, i8* %"register0x00000206"
  %".144" = trunc i8 %".143" to i1
  br i1 %".144", label %"b", label %"c"
b:
  %".146" = load i32, i32* %"var_1ch"
  call void @"sym.imp.cgc_deallocate"()
  br label %"c"
c:
  %".149" = load i32, i32* %"var_10h"
  store i32 %".149", i32* %"var_ch"
  br label %"d"
d:
  %".152" = load i32, i32* %"var_ch"
  store i32 %".152", i32* %"register0x00000000"
  %".154" = load i32, i32* %"register0x00000000"
  ret i32 %".154"
}

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_bytecode_exec"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_inst_decode"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_bytecode_vrfy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 
