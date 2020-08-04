; ModuleID = "Vector_Graphics_2_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i8
  %"iVar2" = alloca i32
  %"arg_ch" = alloca i32
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999986
  %"var_ah" = bitcast i8* %".15" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000000.1" = alloca i32*
  %".16" = alloca i8**
  %".17" = alloca i32**
  store i8** %"argv", i8*** %".16"
  store i32** %"envp", i32*** %".17"
  br label %"0"
"0":
  %".21" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999986
  %".22" = ptrtoint i8* %".21" to i32
  %".23" = call i32 @"sym.cgc_ReceiveAll"(i32 %".22", i32 2)
  store i32 %".23", i32* %"iVar2"
  %".25" = load i32, i32* %"iVar2"
  %".26" = icmp eq i32 %".25", 0
  %".27" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".26", i1* %".27"
  %".29" = load i8, i8* %"register0x00000206"
  %".30" = trunc i8 %".29" to i1
  br i1 %".30", label %"1", label %"19"
"1":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".33" = load i32, i32* %"var_ah"
  call void @"sym.imp.cgc_allocate"()
  %".35" = load i32, i32* %"iVar2"
  %".36" = icmp ne i32 %".35", 0
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".44" = load i32, i32* %"var_ah"
  %".45" = trunc i32 %".44" to i16
  %".46" = zext i16 %".45" to i32
  store i32 %".46", i32* %"register0x00000004"
  %".48" = load i32, i32* %"var_10h"
  %".49" = load i32, i32* %"register0x00000004"
  %".50" = add i32 %".48", %".49"
  store i32 %".50", i32* %"arg_ch"
  %".52" = load i32, i32* %"var_ah"
  %".53" = trunc i32 %".52" to i16
  %".54" = zext i16 %".53" to i32
  store i32 %".54", i32* %"register0x00000004"
  %".56" = load i32, i32* %"var_10h"
  %".57" = load i32, i32* %"register0x00000004"
  %".58" = call i32 @"sym.cgc_ReceiveAll"(i32 %".56", i32 %".57")
  store i32 %".58", i32* %"iVar3"
  %".60" = load i32, i32* %"var_10h"
  store i32 %".60", i32* %"iVar2"
  %".62" = load i32, i32* %"iVar3"
  %".63" = icmp eq i32 %".62", 0
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"4", label %"18"
"4":
  %".69" = load i32, i32* %"var_10h"
  %".70" = add i32 %".69", 11
  store i32 %".70", i32* %"var_10h"
  %".72" = load i32, i32* %"var_10h"
  %".73" = load i32, i32* %"arg_ch"
  %".74" = icmp ult i32 %".72", %".73"
  %".75" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000200"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"5", label %"17"
"5":
  %".80" = load i32, i32* %"iVar2"
  %".81" = call i32 @"sym.cgc_VGFVerify"(i32 %".80")
  store i32 %".81", i32* %"iVar3"
  %".83" = load i32, i32* %"iVar3"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"6", label %"16"
"6":
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".91" = load i32, i32* %"iVar2"
  %".92" = add i32 %".91", 6
  %".93" = inttoptr i32 %".92" to i8*
  %".94" = load i8, i8* %".93"
  %".95" = load i32, i32* %"iVar2"
  %".96" = add i32 %".95", 8
  %".97" = inttoptr i32 %".96" to i8*
  %".98" = load i8, i8* %".97"
  %".99" = zext i8 %".98" to i16
  %".100" = zext i16 %".99" to i32
  store i32 %".100", i32* %"register0x00000000"
  %".102" = zext i8 %".98" to i16
  %".103" = zext i16 %".102" to i32
  store i32 %".103", i32* %"register0x00000000"
  %".105" = load i32, i32* %"iVar2"
  %".106" = add i32 %".105", 10
  %".107" = inttoptr i32 %".106" to i8*
  %".108" = load i8, i8* %".107"
  %".109" = zext i8 %".108" to i32
  store i32 %".109", i32* %"register0x00000000"
  %".111" = ptrtoint i8* %".107" to i32
  %".112" = load i32, i32* %"register0x00000000"
  %".113" = load i32, i32* %"register0x00000000"
  %".114" = load i32, i32* %"register0x00000000"
  %".115" = call i32 @"sym.cgc_CreateCanvas"(i32 %".111", i32 %".112", i32 %".113", i32 %".114")
  store i32 %".115", i32* %"iVar2"
  %".117" = load i32, i32* %"iVar2"
  %".118" = icmp eq i32 %".117", 0
  %".119" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".118", i1* %".119"
  %".121" = load i8, i8* %"register0x00000206"
  %".122" = trunc i8 %".121" to i1
  br i1 %".122", label %"7", label %"15"
"7":
  %".124" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".125" = ptrtoint i8* %".124" to i32
  %".126" = load i32, i32* %"arg_ch"
  %".127" = load i32, i32* %"var_1ch"
  %".128" = call i32 @"sym.cgc_VGFProcess"(i32 %".125", i32 %".126", i32 %".127")
  store i32 %".128", i32* %"iVar2"
  %".130" = load i32, i32* %"iVar2"
  %".131" = icmp eq i32 %".130", 0
  %".132" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".131", i1* %".132"
  %".134" = load i8, i8* %"register0x00000206"
  %".135" = trunc i8 %".134" to i1
  br i1 %".135", label %"8", label %"14"
"8":
  %".137" = load i32, i32* %"var_10h"
  %".138" = bitcast i8* %"uVar1" to i32*
  store i32 %".137", i32* %".138"
  %".140" = load i32, i32* %"var_10h"
  %".141" = add i32 %".140", 1
  store i32 %".141", i32* %"var_10h"
  %".143" = load i8, i8* %"uVar1"
  %".144" = icmp ult i8 %".143", 21
  br i1 %".144", label %"9", label %"13"
"9":
  store i32 0, i32* %"var_24h"
  br label %"a"
a:
  %".148" = load i8, i8* %"uVar1"
  %".149" = zext i8 %".148" to i32
  store i32 %".149", i32* %"register0x00000004"
  %".151" = load i32, i32* %"register0x00000004"
  %".152" = load i32, i32* %"var_24h"
  %".153" = icmp slt i32 %".152", %".151"
  br i1 %".153", label %"b", label %"e"
b:
  %".155" = load i32, i32* %"var_10h"
  %".156" = load i32, i32* %"arg_ch"
  %".157" = icmp ule i32 %".156", %".155"
  %".158" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".157", i1* %".158"
  %".160" = load i8, i8* %"register0x00000200"
  %".161" = trunc i8 %".160" to i1
  br i1 %".161", label %"c", label %"d"
c:
  store i32 4294967295, i32* %"register0x00000000"
  %".164" = load i32, i32* %"register0x00000000"
  ret i32 %".164"
d:
  %".166" = load i32, i32* %"var_10h"
  %".167" = add i32 %".166", 2
  %".168" = inttoptr i32 %".167" to i8*
  %".169" = load i8, i8* %".168"
  %".170" = load i32, i32* %"var_1ch"
  %".171" = add i32 %".170", 32
  store i32 %".171", i32* %"register0x00000000"
  %".173" = load i32, i32* %"var_24h"
  %".174" = mul i32 %".173", 3
  store i32 %".174", i32* %"register0x00000008"
  %".176" = load i32, i32* %"register0x00000000"
  %".177" = load i32, i32* %"register0x00000008"
  %".178" = add i32 %".176", %".177"
  %".179" = inttoptr i32 %".178" to i32*
  store i32* %".179", i32** %"register0x00000000.1"
  %".181" = bitcast i32** %"register0x00000000.1" to i8*
  store i8 %".169", i8* %".181"
  %".183" = load i32, i32* %"var_10h"
  %".184" = add i32 %".183", 1
  %".185" = inttoptr i32 %".184" to i8*
  %".186" = load i8, i8* %".185"
  %".187" = load i32, i32* %"var_24h"
  %".188" = mul i32 %".187", 3
  store i32 %".188", i32* %"register0x00000008"
  %".190" = load i32, i32* %"var_1ch"
  %".191" = load i32, i32* %"register0x00000008"
  %".192" = add i32 %".190", %".191"
  store i32 %".192", i32* %"register0x00000000"
  %".194" = load i32, i32* %"register0x00000000"
  %".195" = add i32 %".194", 33
  %".196" = inttoptr i32 %".195" to i8*
  %".197" = load i32, i32* %"var_10h"
  %".198" = load i32, i32* %"var_24h"
  %".199" = mul i32 %".198", 3
  store i32 %".199", i32* %"register0x00000008"
  %".201" = load i32, i32* %"var_1ch"
  %".202" = load i32, i32* %"register0x00000008"
  %".203" = add i32 %".201", %".202"
  store i32 %".203", i32* %"register0x00000000"
  %".205" = load i32, i32* %"register0x00000000"
  %".206" = add i32 %".205", 34
  %".207" = trunc i32 %".206" to i8
  %".208" = load i32, i32* %"var_10h"
  %".209" = add i32 %".208", 3
  store i32 %".209", i32* %"var_10h"
  %".211" = load i32, i32* %"var_24h"
  %".212" = add i32 %".211", 1
  store i32 %".212", i32* %"var_24h"
  br label %"a"
e:
  %".215" = load i32, i32* %"var_1ch"
  call void @"sym.cgc_FlattenCanvas"(i32 %".215")
  %".217" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".218" = ptrtoint i8* %".217" to i32
  %".219" = load i32, i32* %"var_1ch"
  %".220" = call i32 @"sym.cgc_PMPGenerate"(i32 %".218", i32 %".219")
  store i32 %".220", i32* %"iVar2"
  %".222" = load i32, i32* %"iVar2"
  %".223" = icmp eq i32 %".222", 0
  %".224" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".223", i1* %".224"
  %".226" = load i8, i8* %"register0x00000206"
  %".227" = trunc i8 %".226" to i1
  br i1 %".227", label %"f", label %"12"
f:
  %".229" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".230" = ptrtoint i8* %".229" to i32
  %".231" = call i32 @"sym.cgc_PMPTransmit"(i32 %".230")
  store i32 %".231", i32* %"iVar2"
  %".233" = load i32, i32* %"iVar2"
  %".234" = icmp eq i32 %".233", 0
  %".235" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".234", i1* %".235"
  %".237" = load i8, i8* %"register0x00000206"
  %".238" = trunc i8 %".237" to i1
  br i1 %".238", label %"10", label %"11"
"10":
  %".240" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".241" = ptrtoint i8* %".240" to i32
  call void @"sym.cgc_PMPDeallocate"(i32 %".241")
  %".243" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".244" = ptrtoint i8* %".243" to i32
  call void @"sym.cgc_DestroyCanvas"(i32 %".244")
  br label %"1a"
"11":
  br label %"1a"
"12":
  br label %"1a"
"13":
  br label %"1a"
"14":
  br label %"1a"
"15":
  br label %"1a"
"16":
  br label %"1a"
"17":
  br label %"1a"
"18":
  br label %"1a"
"19":
  br label %"1a"
"1a":
  store i32 4294967295, i32* %"register0x00000000"
  %".257" = load i32, i32* %"register0x00000000"
  ret i32 %".257"
}

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_DestroyCanvas"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_CreateCanvas"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_PMPTransmit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_SendAll"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_VGFProcess"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_PaintLine"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_ConnectPoints"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch", i32 %"arg_20h") 

declare void @"sym.cgc_SetColor"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_PaintCircle"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_PaintSpray"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_PaintSquare"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_PaintRectangle"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_PaintTriangle"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_VGFVerify"(i32 %"arg_8h") 

declare void @"sym.cgc_PMPDeallocate"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReceiveAll"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_PMPGenerate"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_GetColor"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_FlattenCanvas"(i32 %"arg_8h") 

declare i8 @"sym.cgc_GetColorIndex"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 
