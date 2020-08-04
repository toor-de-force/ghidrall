; ModuleID = "BudgIT_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.BACON" = external global i64
@"str.New_budget_created" = external global i64
@"str.No_more_entries" = external global i64
@"str.is_over_budget" = external global i64
@"sym.cgc_transmit_all" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"piVar3" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".36" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %".37" = alloca i8**
  %".38" = alloca i32**
  store i8** %"argv", i8*** %".37"
  store i32** %"envp", i32*** %".38"
  br label %"0"
"0":
  store i32 0, i32* %"var_ch"
  br label %"1"
"1":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".45" = ptrtoint i8* %".44" to i32
  call void @"sym.cgc_receiveInstruction"(i32 %".45")
  %".47" = load i32, i32* %"var_10h"
  %".48" = icmp eq i32 %".47", 1
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"2", label %"8"
"2":
  %".54" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".55" = ptrtoint i8* %".54" to i32
  call void @"sym.cgc_receiveKey"(i32 %".55")
  %".57" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".58" = ptrtoint i8* %".57" to i32
  call void @"sym.cgc_receiveValue"(i32 %".58")
  %".60" = load i32, i32* %"var_2ch"
  %".61" = icmp slt i32 %".60", 0
  %".62" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".61", i1* %".62"
  %".64" = load i8, i8* %"register0x00000207"
  %".65" = trunc i8 %".64" to i1
  br i1 %".65", label %"1", label %"3"
"3":
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".69" = ptrtoint i8* %".68" to i32
  %".70" = ptrtoint i8* %".68" to i32
  %".71" = load i32, i32* %"var_2ch"
  %".72" = call i32 @"sym.cgc_setMap"(i32 %".69", i32 %".70", i32 %".71")
  store i32 %".72", i32* %"iVar1"
  %".74" = load i32, i32* %"iVar1"
  %".75" = icmp eq i32 %".74", 1
  %".76" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".75", i1* %".76"
  %".78" = load i8, i8* %"register0x00000206"
  %".79" = trunc i8 %".78" to i1
  br i1 %".79", label %"6", label %"4"
"4":
  %".81" = call i32 @"func_0x0804a090"(i32 1, i32 134524627, i32 16)
  store i32 %".81", i32* %"iVar1"
  store i32 %".81", i32* %"iVar1"
  %".84" = load i32, i32* %"iVar1"
  %".85" = icmp ne i32 %".84", 0
  %".86" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".85", i1* %".86"
  %".88" = load i8, i8* %"register0x00000206"
  %".89" = trunc i8 %".88" to i1
  br i1 %".89", label %"8", label %"5"
"5":
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"6":
  %".93" = call i32 @"func_0x0804a090"(i32 1, i32 134524606, i32 20)
  store i32 %".93", i32* %"iVar1"
  %".95" = load i32, i32* %"iVar1"
  %".96" = icmp ne i32 %".95", 0
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"8", label %"7"
"7":
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  %".104" = load i32, i32* %"var_10h"
  %".105" = icmp eq i32 %".104", 2
  %".106" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".105", i1* %".106"
  %".108" = load i8, i8* %"register0x00000206"
  %".109" = trunc i8 %".108" to i1
  br i1 %".109", label %"9", label %"e"
"9":
  %".111" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".112" = ptrtoint i8* %".111" to i32
  call void @"sym.cgc_receiveKey"(i32 %".112")
  %".114" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".115" = ptrtoint i8* %".114" to i32
  call void @"sym.cgc_receiveValue"(i32 %".115")
  %".117" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".118" = ptrtoint i8* %".117" to i32
  %".119" = load i32, i32* %"var_ch"
  %".120" = call i32 @"sym.cgc_getValue"(i32 %".119", i32 %".118")
  store i32 %".120", i32* %"iVar1"
  %".122" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".123" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".124" = load i32, i32* %"iVar1"
  %".125" = load i32, i32* %"var_2ch"
  %".126" = sub i32 %".124", %".125"
  store i32 %".126", i32* %"iVar1"
  %".128" = ptrtoint i8* %".123" to i32
  %".129" = ptrtoint i8* %".123" to i32
  %".130" = load i32, i32* %"iVar1"
  %".131" = call i32 @"sym.cgc_setMap"(i32 %".128", i32 %".129", i32 %".130")
  %".132" = load i32, i32* %"iVar1"
  %".133" = icmp slt i32 %".132", 0
  %".134" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".133", i1* %".134"
  %".136" = load i8, i8* %"register0x00000207"
  %".137" = trunc i8 %".136" to i1
  br i1 %".137", label %"e", label %"a"
a:
  %".139" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".140" = ptrtoint i8* %".139" to i32
  %".141" = call i32 @"sym.cgc_strlen"(i32 %".140")
  store i32 %".141", i32* %"uVar2"
  %".143" = load i32, i32* %"uVar2"
  %".144" = ptrtoint i8* %".139" to i32
  %".145" = call i32 @"func_0x0804a090"(i32 1, i32 %".144", i32 %".143")
  store i32 %".145", i32* %"iVar1"
  %".147" = load i32, i32* %"iVar1"
  %".148" = icmp ne i32 %".147", 0
  %".149" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".148", i1* %".149"
  %".151" = load i8, i8* %"register0x00000206"
  %".152" = trunc i8 %".151" to i1
  br i1 %".152", label %"b", label %"c"
b:
  call void @"sym.imp.cgc__terminate"()
  br label %"c"
c:
  %".156" = call i32 @"func_0x0804a090"(i32 1, i32 134524644, i32 17)
  store i32 %".156", i32* %"iVar1"
  %".158" = load i32, i32* %"iVar1"
  %".159" = icmp ne i32 %".158", 0
  %".160" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".159", i1* %".160"
  %".162" = load i8, i8* %"register0x00000206"
  %".163" = trunc i8 %".162" to i1
  br i1 %".163", label %"e", label %"d"
d:
  call void @"sym.imp.cgc__terminate"()
  br label %"e"
e:
  %".167" = load i32, i32* %"var_10h"
  %".168" = icmp eq i32 %".167", 3
  %".169" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".168", i1* %".169"
  %".171" = load i8, i8* %"register0x00000206"
  %".172" = trunc i8 %".171" to i1
  br i1 %".172", label %"f", label %"13"
f:
  %".174" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".175" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  call void @"sym.imp.memset"()
  %".177" = ptrtoint i8* %".175" to i32
  call void @"sym.cgc_receiveKey"(i32 %".177")
  %".179" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".180" = ptrtoint i8* %".179" to i32
  %".181" = load i32, i32* %"var_ch"
  %".182" = call i32 @"sym.cgc_getValue"(i32 %".181", i32 %".180")
  store i32 %".182", i32* %"iVar1"
  %".184" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".185" = ptrtoint i8* %".184" to i32
  %".186" = load i32, i32* %"iVar1"
  %".187" = call i32 @"sym.cgc_int2str"(i32 %".185", i32 40, i32 %".186")
  store i32 %".187", i32* %"iVar1"
  %".189" = load i32, i32* %"iVar1"
  %".190" = icmp ne i32 %".189", 0
  %".191" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".190", i1* %".191"
  %".193" = load i8, i8* %"register0x00000206"
  %".194" = trunc i8 %".193" to i1
  br i1 %".194", label %"10", label %"11"
"10":
  call void @"sym.imp.cgc__terminate"()
  br label %"11"
"11":
  %".198" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".199" = bitcast i32* %"piVar3" to i8**
  store i8* %".198", i8** %".199"
  store i32 40, i32* %"uVar2"
  %".202" = load i32, i32* %"piVar3"
  %".203" = call i32 @"func_0x0804a090"(i32 1, i32 %".202", i32 40)
  store i32 %".203", i32* %"iVar1"
  %".205" = load i32, i32* %"iVar1"
  %".206" = icmp ne i32 %".205", 0
  %".207" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".206", i1* %".207"
  %".209" = load i8, i8* %"register0x00000206"
  %".210" = trunc i8 %".209" to i1
  br i1 %".210", label %"13", label %"12"
"12":
  %".212" = load i32, i32* %"piVar3"
  %".213" = load i32, i32* %"uVar2"
  call void @"sym.imp.cgc__terminate"()
  br label %"13"
"13":
  %".216" = load i32, i32* %"var_10h"
  %".217" = icmp eq i32 %".216", 6
  %".218" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".217", i1* %".218"
  %".220" = load i8, i8* %"register0x00000206"
  %".221" = trunc i8 %".220" to i1
  br i1 %".221", label %"14", label %"16"
"14":
  %".223" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".224" = ptrtoint i8* %".223" to i32
  call void @"sym.cgc_receiveKey"(i32 %".224")
  %".226" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".227" = ptrtoint i8* %".226" to i32
  %".228" = call i32 @"sym.cgc_strcmp"(i32 %".227", i32 134524662)
  store i32 %".228", i32* %"iVar1"
  %".230" = load i32, i32* %"iVar1"
  %".231" = icmp eq i32 %".230", 0
  %".232" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".231", i1* %".232"
  %".234" = load i8, i8* %"register0x00000206"
  %".235" = trunc i8 %".234" to i1
  br i1 %".235", label %"16", label %"15"
"15":
  %".237" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".238" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".239" = ptrtoint i8* %".238" to i32
  %".240" = ptrtoint i8* %".238" to i32
  call void @"sym.cgc_removeMap"(i32 %".239", i32 %".240")
  br label %"16"
"16":
  %".243" = load i32, i32* %"var_10h"
  %".244" = icmp eq i32 %".243", 7
  %".245" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".244", i1* %".245"
  %".247" = load i8, i8* %"register0x00000206"
  %".248" = trunc i8 %".247" to i1
  br i1 %".248", label %"17", label %"18"
"17":
  %".250" = load i32, i32* %"var_ch"
  call void @"sym.cgc_sendReport"(i32 %".250")
  br label %"18"
"18":
  %".253" = load i32, i32* %"var_10h"
  %".254" = icmp ult i32 7, %".253"
  %".255" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".254", i1* %".255"
  %".257" = load i8, i8* %"register0x00000200"
  %".258" = trunc i8 %".257" to i1
  br i1 %".258", label %"1", label %"19"
"19":
  store i32 0, i32* %"register0x00000000"
  %".261" = load i32, i32* %"register0x00000000"
  ret i32 %".261"
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

declare void @"sym.cgc_remove"(i32 %"arg_8h") 

declare void @"sym.cgc_receiveValue"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_receiveInstruction"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_sendReport"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getSize"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_setMap"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_initMap"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getValue"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_removeMap"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_receiveKey"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_int2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"func_0x0804a090"(i32 %".1", i32 %".2", i32 %".3") 

declare void @"_reloc.memset"() 
