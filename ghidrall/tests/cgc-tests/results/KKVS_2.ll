; ModuleID = "KKVS_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.authed" = global i32 0
@"obj.synerr" = global i32 0
@"obj._true" = global i32 0
@"obj._false" = global i32 0
@"obj.nil" = global i32 0
@"obj.groot" = global i32 0
@"obj.commands" = external global i64
@"str.ERROR__s:_d:__send_failed" = external global i64
@"str.src_main.c" = external global i64
@"str.unauthed" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_8h" = alloca i32
  %"arg_ch" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"pcVar3" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"pcVar4" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".33" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000000.1" = alloca i32*
  %".34" = alloca i8**
  %".35" = alloca i32**
  store i8** %"argv", i8*** %".34"
  store i32** %"envp", i32*** %".35"
  br label %"0"
"0":
  %".39" = call i32 @"sym.cgc_make_tree"(i32 0, i32 0, i32 134537780, i32 134537780)
  store i32 %".39", i32* @"obj.groot"
  br label %"1"
"1":
  %".42" = call i32 @"sym.cgc_read_command"(i32 4)
  store i32 %".42", i32* %"iVar1"
  %".44" = load i32, i32* %"iVar1"
  %".45" = icmp eq i32 %".44", 0
  %".46" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".45", i1* %".46"
  %".48" = load i8, i8* %"register0x00000206"
  %".49" = trunc i8 %".48" to i1
  br i1 %".49", label %"1", label %"2"
"2":
  %".51" = load i32, i32* %"iVar1"
  %".52" = call i32 @"sym.cgc_unserialize_command"(i32 %".51")
  %".53" = inttoptr i32 %".52" to i32*
  %".54" = bitcast i32* %"arg_8h" to i32**
  store i32* %".53", i32** %".54"
  %".56" = load i32, i32* %"arg_8h"
  %".57" = icmp eq i32 %".56", 0
  %".58" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".57", i1* %".58"
  %".60" = load i8, i8* %"register0x00000206"
  %".61" = trunc i8 %".60" to i1
  br i1 %".61", label %"1b", label %"3"
"3":
  store i32 0, i32* %"var_24h"
  br label %"4"
"4":
  %".65" = load i32, i32* %"var_24h"
  %".66" = icmp ult i32 %".65", 12
  %".67" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000200"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"5", label %"8"
"5":
  %".72" = load i32, i32* %"var_24h"
  %".73" = mul i32 %".72", 16
  store i32 %".73", i32* %"register0x00000004"
  %".75" = load i32, i32* %"register0x00000004"
  %".76" = add i32 %".75", 134542756
  %".77" = mul i32 3, 32
  %".78" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".77"
  %".79" = load i32, i32* %".78"
  %".80" = icmp ne i32 %".79", %".79"
  %".81" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".80", i1* %".81"
  %".83" = load i8, i8* %"register0x00000206"
  %".84" = trunc i8 %".83" to i1
  br i1 %".84", label %"7", label %"6"
"6":
  %".86" = load i32, i32* %"var_24h"
  %".87" = mul i32 %".86", 16
  store i32 %".87", i32* %"register0x00000004"
  %".89" = load i32, i32* %"register0x00000004"
  %".90" = mul i32 %".89", 8
  %".91" = getelementptr inbounds i64, i64* @"obj.commands", i32 %".90"
  %".92" = bitcast i64* %".91" to i32*
  store i32* %".92", i32** %"register0x00000000.1"
  %".94" = ptrtoint i32** %"register0x00000000.1" to i32
  %".95" = load i32, i32* %"arg_8h"
  %".96" = icmp ne i32 %".95", %".95"
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"7", label %"8"
"7":
  %".102" = load i32, i32* %"var_24h"
  %".103" = add i32 %".102", 1
  store i32 %".103", i32* %"var_24h"
  br label %"4"
"8":
  %".106" = load i32, i32* %"var_24h"
  %".107" = icmp eq i32 %".106", 12
  %".108" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".107", i1* %".108"
  %".110" = load i8, i8* %"register0x00000206"
  %".111" = trunc i8 %".110" to i1
  br i1 %".111", label %"9", label %"a"
"9":
  %".113" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".113")
  %".115" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_free"(i32 %".115")
  br label %"1"
a:
  %".118" = mul i32 3, 32
  %".119" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".118"
  %".120" = load i32, i32* %".119"
  %".121" = icmp eq i32 %".120", -559087614
  %".122" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".121", i1* %".122"
  %".124" = load i8, i8* %"register0x00000206"
  %".125" = trunc i8 %".124" to i1
  br i1 %".125", label %"c", label %"b"
b:
  %".127" = load i32, i32* @"obj.authed"
  %".128" = icmp ne i32 %".127", 0
  %".129" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".128", i1* %".129"
  %".131" = load i8, i8* %"register0x00000206"
  %".132" = trunc i8 %".131" to i1
  br i1 %".132", label %"c", label %"19"
c:
  %".134" = load i32, i32* %"arg_8h"
  %".135" = call i32 @"sym.cgc_call_command"(i32 %".134")
  store i32 %".135", i32* %"arg_ch"
  %".137" = load i32, i32* %"arg_ch"
  %".138" = call i32 @"sym.cgc_transmit_string"(i32 5, i32 %".137")
  store i32 %".138", i32* %"iVar2"
  %".140" = load i32, i32* %"iVar2"
  %".141" = icmp ne i32 %".140", 0
  %".142" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".141", i1* %".142"
  %".144" = load i8, i8* %"register0x00000206"
  %".145" = trunc i8 %".144" to i1
  br i1 %".145", label %"d", label %"e"
d:
  store i32 134537892, i32* %"pcVar3"
  store i32 134537781, i32* %"pcVar4"
  store i32 656, i32* %"iVar2"
  %".150" = call i32 @"sym.cgc_fdprintf"(i32 2, i32 134537892, i32 134537781)
  %".151" = load i32, i32* %"pcVar4"
  %".152" = load i32, i32* %"pcVar3"
  %".153" = load i32, i32* %"iVar2"
  %".154" = call i32 @"sym.cgc_exit"(i32 1, i32 %".152", i32 %".151", i32 %".153")
  br label %"e"
e:
  %".156" = call i32 @"sym.cgc_transmit_string"(i32 5, i32 134537779)
  store i32 %".156", i32* %"iVar2"
  %".158" = load i32, i32* %"iVar2"
  %".159" = icmp ne i32 %".158", 0
  %".160" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".159", i1* %".160"
  %".162" = load i8, i8* %"register0x00000206"
  %".163" = trunc i8 %".162" to i1
  br i1 %".163", label %"f", label %"10"
f:
  store i32 134537892, i32* %"pcVar3"
  store i32 134537781, i32* %"pcVar4"
  store i32 658, i32* %"iVar2"
  %".168" = call i32 @"sym.cgc_fdprintf"(i32 2, i32 134537892, i32 134537781)
  %".169" = load i32, i32* %"pcVar4"
  %".170" = load i32, i32* %"pcVar3"
  %".171" = load i32, i32* %"iVar2"
  %".172" = call i32 @"sym.cgc_exit"(i32 1, i32 %".170", i32 %".169", i32 %".171")
  br label %"10"
"10":
  %".174" = mul i32 3, 32
  %".175" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".174"
  %".176" = load i32, i32* %".175"
  store i32 %".176", i32* %"iVar2"
  %".178" = load i32, i32* %"iVar2"
  %".179" = icmp eq i32 %".178", -559087615
  %".180" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".179", i1* %".180"
  %".182" = load i8, i8* %"register0x00000206"
  %".183" = trunc i8 %".182" to i1
  br i1 %".183", label %"13", label %"11"
"11":
  %".185" = load i32, i32* %"iVar2"
  %".186" = add i32 %".185", 559087613
  store i32 %".186", i32* %"register0x00000000"
  %".188" = load i32, i32* %"register0x00000000"
  %".189" = icmp ult i32 %".188", 2
  %".190" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".189", i1* %".190"
  %".192" = load i8, i8* %"register0x00000200"
  %".193" = trunc i8 %".192" to i1
  br i1 %".193", label %"13", label %"12"
"12":
  %".195" = load i32, i32* %"iVar2"
  %".196" = add i32 %".195", 559087607
  store i32 %".196", i32* %"register0x00000000"
  %".198" = load i32, i32* %"register0x00000000"
  %".199" = icmp ult i32 %".198", 2
  %".200" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".199", i1* %".200"
  %".202" = load i32, i32* %"iVar2"
  %".203" = icmp eq i32 %".202", -559087605
  %".204" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".203", i1* %".204"
  %".206" = load i8, i8* %"register0x00000200"
  %".207" = load i8, i8* %"register0x00000200"
  %".208" = xor i8 %".206", %".207"
  %".209" = trunc i8 %".208" to i1
  br i1 %".209", label %"18", label %"13"
"13":
  %".211" = load i32, i32* %"arg_ch"
  %".212" = load i32, i32* @"obj.synerr"
  %".213" = icmp ne i32 %".211", %".212"
  %".214" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".213", i1* %".214"
  %".216" = load i8, i8* %"register0x00000206"
  %".217" = trunc i8 %".216" to i1
  br i1 %".217", label %"18", label %"14"
"14":
  %".219" = load i32, i32* %"arg_ch"
  %".220" = load i32, i32* @"obj._true"
  %".221" = icmp ne i32 %".219", %".220"
  %".222" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".221", i1* %".222"
  %".224" = load i8, i8* %"register0x00000206"
  %".225" = trunc i8 %".224" to i1
  br i1 %".225", label %"18", label %"15"
"15":
  %".227" = load i32, i32* %"arg_ch"
  %".228" = load i32, i32* @"obj._false"
  %".229" = icmp ne i32 %".227", %".228"
  %".230" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".229", i1* %".230"
  %".232" = load i8, i8* %"register0x00000206"
  %".233" = trunc i8 %".232" to i1
  br i1 %".233", label %"18", label %"16"
"16":
  %".235" = load i32, i32* %"arg_ch"
  %".236" = load i32, i32* @"obj.nil"
  %".237" = icmp ne i32 %".235", %".236"
  %".238" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".237", i1* %".238"
  %".240" = load i8, i8* %"register0x00000206"
  %".241" = trunc i8 %".240" to i1
  br i1 %".241", label %"17", label %"18"
"17":
  %".243" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_free"(i32 %".243")
  br label %"18"
"18":
  %".246" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".246")
  %".248" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_free_command"(i32 %".248")
  br label %"1"
"19":
  %".251" = call i32 @"sym.cgc_transmit_string"(i32 5, i32 134537882)
  store i32 %".251", i32* %"iVar1"
  %".253" = load i32, i32* %"iVar1"
  %".254" = icmp ne i32 %".253", 0
  %".255" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".254", i1* %".255"
  %".257" = load i8, i8* %"register0x00000206"
  %".258" = trunc i8 %".257" to i1
  br i1 %".258", label %"1", label %"1a"
"1a":
  store i32 134537892, i32* %"pcVar3"
  store i32 134537781, i32* %"pcVar4"
  store i32 649, i32* %"iVar1"
  %".263" = call i32 @"sym.cgc_fdprintf"(i32 2, i32 134537892, i32 134537781)
  %".264" = load i32, i32* %"pcVar4"
  %".265" = load i32, i32* %"pcVar3"
  %".266" = load i32, i32* %"iVar1"
  %".267" = call i32 @"sym.cgc_exit"(i32 1, i32 %".265", i32 %".264", i32 %".266")
  br label %"1"
"1b":
  %".269" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".269")
  br label %"1"
}

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_ins_tree"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_call_command"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_make_tree"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free_command"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_command"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_unserialize_command"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
