; ModuleID = "A_Game_of_Chance_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.players" = global i8 0
@"obj.bogus" = global i32 0
@"obj.my_wager" = global i32 0
@"obj.wallet" = global i32 0
@"obj.round_active" = global i32 0
@"obj.deal" = global i8 0
@"obj.fp_idx" = global i32 0
@"obj.fp" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".8" = alloca i8**
  %".9" = alloca i32**
  store i8** %"argv", i8*** %".8"
  store i32** %"envp", i32*** %".9"
  br label %"0"
"0":
  br label %"1"
"1":
  %".14" = call i32 @"sym.process"()
  store i32 %".14", i32* %"iVar1"
  %".16" = load i32, i32* %"iVar1"
  %".17" = icmp eq i32 %".16", 0
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"1", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".24" = load i32, i32* %"register0x00000000"
  ret i32 %".24"
}

define i32 @"sym.process"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %"var_13h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".19" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  store i32 0, i32* %"var_ch"
  call void @"sym.imp.memset"()
  %".22" = ptrtoint i8* %".19" to i32
  %".23" = call i32 @"sym.recv_bytes"(i32 6, i32 %".22", i32 6)
  store i32 %".23", i32* %"iVar1"
  %".25" = load i32, i32* %"iVar1"
  %".26" = icmp slt i32 %".25", 0
  br i1 %".26", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".31" = bitcast i32* @"0x804c450" to i32**
  %".32" = ptrtoint i8* %".30" to i32
  %".33" = call i32 @"sym.memcmp"(i32** %".31", i32 %".32", i32 6)
  store i32 %".33", i32* %"iVar1"
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp eq i32 %".35", 0
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"13", label %"3"
"3":
  %".42" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".43" = bitcast i32* @"0x804c456" to i32**
  %".44" = ptrtoint i8* %".42" to i32
  %".45" = call i32 @"sym.memcmp"(i32** %".43", i32 %".44", i32 6)
  store i32 %".45", i32* %"iVar1"
  %".47" = load i32, i32* %"iVar1"
  %".48" = icmp eq i32 %".47", 0
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"12", label %"4"
"4":
  %".54" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".55" = bitcast i32* @"0x804c45c" to i32**
  %".56" = ptrtoint i8* %".54" to i32
  %".57" = call i32 @"sym.memcmp"(i32** %".55", i32 %".56", i32 6)
  store i32 %".57", i32* %"iVar1"
  %".59" = load i32, i32* %"iVar1"
  %".60" = icmp eq i32 %".59", 0
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000206"
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"11", label %"5"
"5":
  %".66" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".67" = bitcast i32* @"0x804c462" to i32**
  %".68" = ptrtoint i8* %".66" to i32
  %".69" = call i32 @"sym.memcmp"(i32** %".67", i32 %".68", i32 6)
  store i32 %".69", i32* %"iVar1"
  %".71" = load i32, i32* %"iVar1"
  %".72" = icmp eq i32 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"10", label %"6"
"6":
  %".78" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".79" = bitcast i32* @"0x804c468" to i32**
  %".80" = ptrtoint i8* %".78" to i32
  %".81" = call i32 @"sym.memcmp"(i32** %".79", i32 %".80", i32 6)
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"f", label %"7"
"7":
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".91" = bitcast i32* @"0x804c46e" to i32**
  %".92" = ptrtoint i8* %".90" to i32
  %".93" = call i32 @"sym.memcmp"(i32** %".91", i32 %".92", i32 6)
  store i32 %".93", i32* %"iVar1"
  %".95" = load i32, i32* %"iVar1"
  %".96" = icmp eq i32 %".95", 0
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"e", label %"8"
"8":
  %".102" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".103" = bitcast i32* @"0x804c474" to i32**
  %".104" = ptrtoint i8* %".102" to i32
  %".105" = call i32 @"sym.memcmp"(i32** %".103", i32 %".104", i32 6)
  store i32 %".105", i32* %"iVar1"
  %".107" = load i32, i32* %"iVar1"
  %".108" = icmp eq i32 %".107", 0
  %".109" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".108", i1* %".109"
  %".111" = load i8, i8* %"register0x00000206"
  %".112" = trunc i8 %".111" to i1
  br i1 %".112", label %"d", label %"9"
"9":
  %".114" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".115" = bitcast i32* @"0x804c47a" to i32**
  %".116" = ptrtoint i8* %".114" to i32
  %".117" = call i32 @"sym.memcmp"(i32** %".115", i32 %".116", i32 6)
  store i32 %".117", i32* %"iVar1"
  %".119" = load i32, i32* %"iVar1"
  %".120" = icmp eq i32 %".119", 0
  %".121" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".120", i1* %".121"
  %".123" = load i8, i8* %"register0x00000206"
  %".124" = trunc i8 %".123" to i1
  br i1 %".124", label %"c", label %"a"
a:
  %".126" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %".127" = bitcast i32* @"0x804c480" to i32**
  %".128" = ptrtoint i8* %".126" to i32
  %".129" = call i32 @"sym.memcmp"(i32** %".127", i32 %".128", i32 6)
  store i32 %".129", i32* %"iVar1"
  %".131" = load i32, i32* %"iVar1"
  %".132" = icmp eq i32 %".131", 0
  %".133" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".132", i1* %".133"
  %".135" = load i8, i8* %"register0x00000206"
  %".136" = trunc i8 %".135" to i1
  br i1 %".136", label %"14", label %"b"
b:
  call void @"sym.i_quit"()
  store i32 -2, i32* %"var_ch"
  br label %"14"
c:
  call void @"sym.cgc_exchange_money"()
  br label %"14"
d:
  call void @"sym.view_results"()
  br label %"14"
e:
  call void @"sym.view_wagers"()
  br label %"14"
f:
  call void @"sym.give_wager"()
  br label %"14"
"10":
  call void @"sym.view_dealt_cards"()
  br label %"14"
"11":
  call void @"sym.get_card"()
  br label %"14"
"12":
  call void @"sym.cgc_end_round"()
  br label %"14"
"13":
  call void @"sym.cgc_start_round"()
  br label %"14"
"14":
  %".157" = load i32, i32* %"var_ch"
  store i32 %".157", i32* %"register0x00000000"
  %".159" = load i32, i32* %"register0x00000000"
  ret i32 %".159"
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

define void @"sym.view_wagers"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_10h" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"arg_ch" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"aiStack40" = bitcast i8* %".9" to i288*
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".11" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  call void @"sym.imp.memset"()
  %".13" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".14" = bitcast i32* %"arg_ch" to i8**
  store i8* %".13", i8** %".14"
  %".16" = load i8, i8* @"obj.players"
  %".17" = zext i8 %".16" to i32
  store i32 %".17", i32* %"register0x00000008"
  %".19" = load i32, i32* %"register0x00000008"
  %".20" = add i32 %".19", 1
  store i32 %".20", i32* %"register0x00000008"
  %".22" = load i32, i32* %"register0x00000008"
  %".23" = mul i32 %".22", 4
  store i32 %".23", i32* %"arg_10h"
  %".25" = load i32, i32* %"arg_ch"
  %".26" = load i32, i32* %"arg_10h"
  %".27" = call i32 @"sym.recv_bytes"(i32 6, i32 %".25", i32 %".26")
  store i32 %".27", i32* %"iVar1"
  %".29" = load i32, i32* %"iVar1"
  %".30" = icmp slt i32 %".29", 0
  br i1 %".30", label %"1", label %"2"
"1":
  %".32" = load i32, i32* %"arg_ch"
  %".33" = load i32, i32* %"arg_10h"
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  store i32 1, i32* %"var_2ch"
  br label %"3"
"3":
  %".38" = load i8, i8* @"obj.players"
  %".39" = zext i8 %".38" to i32
  store i32 %".39", i32* %"register0x00000004"
  %".41" = load i32, i32* %"var_2ch"
  %".42" = load i32, i32* %"register0x00000004"
  %".43" = icmp ule i32 %".41", %".42"
  br i1 %".43", label %"5", label %"4"
"4":
  ret void
"5":
  %".46" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".47" = load i32, i32* %"var_2ch"
  %".48" = mul i32 %".47", 32
  %".49" = getelementptr inbounds i8, i8* %".46", i32 %".48"
  %".50" = bitcast i8* %".49" to i32*
  %".51" = load i32, i32* %".50"
  %".52" = icmp eq i32 %".51", 0
  %".53" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".52", i1* %".53"
  %".55" = load i8, i8* %"register0x00000206"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"6", label %"7"
"6":
  %".58" = load i32, i32* @"obj.bogus"
  %".59" = add i32 %".58", 1
  store i32 %".59", i32* @"obj.bogus"
  br label %"7"
"7":
  %".62" = load i32, i32* %"var_2ch"
  %".63" = icmp eq i32 %".62", 1
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"8", label %"a"
"8":
  %".69" = load i32, i32* @"obj.my_wager"
  %".70" = load i288, i288* %"aiStack40"
  %".71" = zext i32 %".69" to i288
  %".72" = icmp ne i288 %".71", %".70"
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"9", label %"a"
"9":
  %".78" = load i32, i32* @"obj.bogus"
  %".79" = add i32 %".78", 1
  store i32 %".79", i32* @"obj.bogus"
  br label %"a"
a:
  %".82" = load i32, i32* %"var_2ch"
  %".83" = add i32 %".82", 1
  store i32 %".83", i32* %"var_2ch"
  br label %"3"
}

declare void @"sym.cgc_exchange_money"() 

define i32 @"sym.recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %".12" = alloca i32
  %".13" = alloca i32
  %".14" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".13"
  %".20" = icmp eq i32 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i8, i8* %"register0x00000206"
  %".24" = trunc i8 %".23" to i1
  br i1 %".24", label %"2", label %"1"
"1":
  %".26" = load i32, i32* %".14"
  %".27" = icmp eq i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  store i32 -11, i32* %"var_8h"
  br label %"a"
"3":
  store i32 0, i32* %"var_ch"
  store i32 0, i32* %"var_10h"
  %".37" = load i32, i32* %".13"
  store i32 %".37", i32* %"var_14h"
  br label %"4"
"4":
  %".40" = load i32, i32* %"var_ch"
  %".41" = load i32, i32* %".14"
  %".42" = icmp ult i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000200"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"5", label %"9"
"5":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".49" = load i32, i32* %".14"
  %".50" = load i32, i32* %"var_10h"
  %".51" = sub i32 %".49", %".50"
  store i32 %".51", i32* %"register0x00000018"
  %".53" = load i32, i32* %".12"
  %".54" = load i32, i32* %"var_14h"
  %".55" = load i32, i32* %"register0x00000018"
  call void @"sym.imp.cgc_receive"()
  %".57" = load i32, i32* %"iVar1"
  %".58" = icmp ne i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"6", label %"7"
"6":
  store i32 -11, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  ret i32 %".65"
"7":
  %".67" = load i32, i32* %"var_ch"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"9", label %"8"
"8":
  %".74" = load i32, i32* %"var_ch"
  %".75" = load i32, i32* %"var_10h"
  %".76" = add i32 %".74", %".75"
  store i32 %".76", i32* %"var_10h"
  %".78" = load i32, i32* %"var_ch"
  %".79" = load i32, i32* %"var_14h"
  %".80" = add i32 %".78", %".79"
  store i32 %".80", i32* %"var_14h"
  br label %"4"
"9":
  %".83" = load i32, i32* %"var_10h"
  store i32 %".83", i32* %"var_8h"
  br label %"a"
a:
  %".86" = load i32, i32* %"var_8h"
  store i32 %".86", i32* %"register0x00000000"
  %".88" = load i32, i32* %"register0x00000000"
  ret i32 %".88"
}

declare void @"sym.imp.cgc_receive"() 

define void @"sym.i_quit"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %"var_5h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".7" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %".8" = load i32, i32* @"obj.bogus"
  %".9" = trunc i32 %".8" to i8
  %".10" = getelementptr i32, i32* %"var_5h", i8 0
  %".11" = bitcast i32* %".10" to i8*
  store i8 %".9", i8* %".11"
  %".13" = ptrtoint i8* %".7" to i32
  %".14" = call i32 @"sym.send_bytes"(i32 3, i32 %".13", i32 1)
  store i32 %".14", i32* %"iVar1"
  %".16" = load i32, i32* %"iVar1"
  %".17" = icmp ne i32 %".16", 1
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  ret void
}

define i32 @"sym.send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %".12" = alloca i32
  %".13" = alloca i32
  %".14" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".13"
  %".20" = icmp eq i32 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i8, i8* %"register0x00000206"
  %".24" = trunc i8 %".23" to i1
  br i1 %".24", label %"2", label %"1"
"1":
  %".26" = load i32, i32* %".14"
  %".27" = icmp eq i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  store i32 -9, i32* %"var_8h"
  br label %"a"
"3":
  store i32 0, i32* %"var_ch"
  store i32 0, i32* %"var_10h"
  %".37" = load i32, i32* %".13"
  store i32 %".37", i32* %"var_14h"
  br label %"4"
"4":
  %".40" = load i32, i32* %"var_10h"
  %".41" = load i32, i32* %".14"
  %".42" = icmp ult i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000200"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"5", label %"9"
"5":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".49" = load i32, i32* %".14"
  %".50" = load i32, i32* %"var_10h"
  %".51" = sub i32 %".49", %".50"
  store i32 %".51", i32* %"register0x00000018"
  %".53" = load i32, i32* %".12"
  %".54" = load i32, i32* %"var_14h"
  %".55" = load i32, i32* %"register0x00000018"
  call void @"sym.imp.cgc_transmit"()
  %".57" = load i32, i32* %"iVar1"
  %".58" = icmp ne i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"6", label %"7"
"6":
  store i32 -9, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  ret i32 %".65"
"7":
  %".67" = load i32, i32* %"var_ch"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"9", label %"8"
"8":
  %".74" = load i32, i32* %"var_ch"
  %".75" = load i32, i32* %"var_10h"
  %".76" = add i32 %".74", %".75"
  store i32 %".76", i32* %"var_10h"
  %".78" = load i32, i32* %"var_ch"
  %".79" = load i32, i32* %"var_14h"
  %".80" = add i32 %".78", %".79"
  store i32 %".80", i32* %"var_14h"
  br label %"4"
"9":
  %".83" = load i32, i32* %"var_10h"
  store i32 %".83", i32* %"var_8h"
  br label %"a"
a:
  %".86" = load i32, i32* %"var_8h"
  store i32 %".86", i32* %"register0x00000000"
  %".88" = load i32, i32* %"register0x00000000"
  ret i32 %".88"
}

declare void @"sym.imp.cgc_transmit"() 

define i32 @"sym.memcmp"(i32** %"s2", i32 %"n", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"bVar1" = alloca i8
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
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %".12" = alloca i32**
  %".13" = alloca i32
  %".14" = alloca i32
  store i32** %"s2", i32*** %".12"
  store i32 %"n", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".14"
  %".20" = icmp eq i32 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i8, i8* %"register0x00000206"
  %".24" = trunc i8 %".23" to i1
  br i1 %".24", label %"b", label %"1"
"1":
  store i32 0, i32* %"var_1ch"
  br label %"2"
"2":
  %".28" = load i32, i32* %"var_1ch"
  %".29" = load i32, i32* %".14"
  %".30" = icmp ult i32 %".28", %".29"
  %".31" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".30", i1* %".31"
  store i8 0, i8* %"bVar1"
  %".34" = load i8, i8* %"register0x00000200"
  %".35" = trunc i8 %".34" to i1
  br i1 %".35", label %"3", label %"4"
"3":
  %".37" = load i32**, i32*** %".12"
  %".38" = ptrtoint i32** %".37" to i32
  %".39" = load i32, i32* %"var_1ch"
  %".40" = add i32 %".38", %".39"
  %".41" = load i32, i32* %".13"
  %".42" = load i32, i32* %"var_1ch"
  %".43" = add i32 %".41", %".42"
  %".44" = icmp eq i32 %".43", %".43"
  %".45" = bitcast i8* %"bVar1" to i1*
  store i1 %".44", i1* %".45"
  br label %"4"
"4":
  %".48" = load i8, i8* %"bVar1"
  %".49" = xor i8 %".48", -1
  %".50" = trunc i8 %".49" to i1
  br i1 %".50", label %"6", label %"5"
"5":
  %".52" = load i32, i32* %"var_1ch"
  %".53" = add i32 %".52", 1
  store i32 %".53", i32* %"var_1ch"
  br label %"2"
"6":
  %".56" = load i32, i32* %"var_1ch"
  %".57" = load i32, i32* %".14"
  %".58" = icmp eq i32 %".56", %".57"
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"a", label %"7"
"7":
  %".64" = load i32**, i32*** %".12"
  %".65" = ptrtoint i32** %".64" to i32
  %".66" = load i32, i32* %"var_1ch"
  %".67" = add i32 %".65", %".66"
  %".68" = load i32, i32* %".13"
  %".69" = load i32, i32* %"var_1ch"
  %".70" = add i32 %".68", %".69"
  %".71" = icmp ult i32 %".70", %".70"
  br i1 %".71", label %"9", label %"8"
"8":
  store i32 -1, i32* %"var_10h"
  br label %"c"
"9":
  store i32 1, i32* %"var_10h"
  br label %"c"
a:
  store i32 0, i32* %"var_10h"
  br label %"c"
b:
  store i32 0, i32* %"var_10h"
  br label %"c"
c:
  %".81" = load i32, i32* %"var_10h"
  store i32 %".81", i32* %"register0x00000000"
  %".83" = load i32, i32* %"register0x00000000"
  ret i32 %".83"
}

declare void @"sym.cgc_end_round"() 

declare void @"sym.cgc_start_round"() 

define void @"sym.view_results"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"iStack40" = bitcast i8* %".10" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".12" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  call void @"sym.imp.memset"()
  %".14" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".15" = load i8, i8* @"obj.players"
  %".16" = zext i8 %".15" to i32
  store i32 %".16", i32* %"register0x00000008"
  %".18" = load i32, i32* %"register0x00000008"
  %".19" = add i32 %".18", 1
  store i32 %".19", i32* %"register0x00000008"
  %".21" = load i32, i32* %"register0x00000008"
  %".22" = mul i32 %".21", 4
  store i32 %".22", i32* %"register0x00000008"
  %".24" = ptrtoint i8* %".14" to i32
  %".25" = load i32, i32* %"register0x00000008"
  %".26" = call i32 @"sym.recv_bytes"(i32 6, i32 %".24", i32 %".25")
  store i32 %".26", i32* %"iVar1"
  %".28" = load i32, i32* %"iVar1"
  %".29" = icmp slt i32 %".28", 0
  br i1 %".29", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  store i32 1, i32* %"var_2ch"
  br label %"3"
"3":
  %".35" = load i8, i8* @"obj.players"
  %".36" = zext i8 %".35" to i32
  store i32 %".36", i32* %"register0x00000004"
  %".38" = load i32, i32* %"var_2ch"
  %".39" = load i32, i32* %"register0x00000004"
  %".40" = icmp ule i32 %".38", %".39"
  br i1 %".40", label %"4", label %"b"
"4":
  %".42" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".43" = load i32, i32* %"var_2ch"
  %".44" = mul i32 %".43", 32
  %".45" = getelementptr inbounds i8, i8* %".42", i32 %".44"
  %".46" = bitcast i8* %".45" to i32*
  %".47" = load i32, i32* %".46"
  %".48" = icmp eq i32 %".47", 0
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"5", label %"6"
"5":
  %".54" = load i32, i32* @"obj.bogus"
  %".55" = add i32 %".54", 1
  store i32 %".55", i32* @"obj.bogus"
  br label %"6"
"6":
  %".58" = load i32, i32* %"var_2ch"
  %".59" = icmp eq i32 %".58", 1
  %".60" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000206"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"7", label %"a"
"7":
  %".65" = load i32, i32* %"iStack40"
  %".66" = icmp eq i32 %".65", 1
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"9", label %"8"
"8":
  call void @"sym.update_fp_idx"(i32 -77)
  br label %"a"
"9":
  call void @"sym.update_fp_idx"(i32 126)
  br label %"a"
a:
  %".76" = load i32, i32* %"var_2ch"
  %".77" = add i32 %".76", 1
  store i32 %".77", i32* %"var_2ch"
  br label %"3"
b:
  ret void
}

define void @"sym.update_fp_idx"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  %".8" = load i32, i32* @"obj.fp_idx"
  %".9" = load i32, i32* %".5"
  %".10" = add i32 %".8", %".9"
  store i32 %".10", i32* @"obj.fp_idx"
  %".12" = load i32, i32* @"obj.fp_idx"
  %".13" = icmp slt i32 %".12", 4096
  br i1 %".13", label %"1", label %"3"
"1":
  %".15" = load i32, i32* @"obj.fp_idx"
  %".16" = icmp slt i32 %".15", 0
  br i1 %".16", label %"4", label %"2"
"2":
  %".18" = load i32, i32* @"obj.fp_idx"
  %".19" = add i32 %".18", 4096
  store i32 %".19", i32* @"obj.fp_idx"
  br label %"4"
"3":
  %".22" = load i32, i32* @"obj.fp_idx"
  %".23" = add i32 %".22", -4096
  store i32 %".23", i32* @"obj.fp_idx"
  br label %"4"
"4":
  ret void
}

define void @"sym.view_dealt_cards"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".9" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  call void @"sym.imp.memset"()
  %".11" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".12" = load i8, i8* @"obj.players"
  %".13" = zext i8 %".12" to i32
  store i32 %".13", i32* %"register0x00000008"
  %".15" = load i32, i32* %"register0x00000008"
  %".16" = add i32 %".15", 1
  store i32 %".16", i32* %"register0x00000008"
  %".18" = ptrtoint i8* %".11" to i32
  %".19" = load i32, i32* %"register0x00000008"
  %".20" = call i32 @"sym.recv_bytes"(i32 6, i32 %".18", i32 %".19")
  store i32 %".20", i32* %"iVar1"
  %".22" = load i32, i32* %"iVar1"
  %".23" = icmp slt i32 %".22", 0
  br i1 %".23", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  store i32 1, i32* %"var_14h"
  br label %"3"
"3":
  %".29" = load i8, i8* @"obj.players"
  %".30" = zext i8 %".29" to i32
  store i32 %".30", i32* %"register0x00000004"
  %".32" = load i32, i32* %"var_14h"
  %".33" = load i32, i32* %"register0x00000004"
  %".34" = icmp ule i32 %".32", %".33"
  br i1 %".34", label %"5", label %"4"
"4":
  ret void
"5":
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".38" = ptrtoint i8* %".37" to i32
  %".39" = load i32, i32* %"var_14h"
  %".40" = add i32 %".38", %".39"
  %".41" = zext i8 0 to i32
  %".42" = icmp eq i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000206"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"6", label %"7"
"6":
  %".48" = load i32, i32* @"obj.bogus"
  %".49" = add i32 %".48", 1
  store i32 %".49", i32* @"obj.bogus"
  br label %"7"
"7":
  %".52" = load i32, i32* %"var_14h"
  %".53" = add i32 %".52", 1
  store i32 %".53", i32* %"var_14h"
  br label %"3"
}

define void @"sym.get_card"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %"register0x00000004" = alloca i32
  br label %"0"
"0":
  %".11" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".12" = ptrtoint i8* %".11" to i32
  %".13" = call i32 @"sym.recv_bytes"(i32 6, i32 %".12", i32 1)
  store i32 %".13", i32* %"iVar1"
  %".15" = load i32, i32* %"iVar1"
  %".16" = icmp slt i32 %".15", 0
  br i1 %".16", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %".21" = ptrtoint i8* %".20" to i32
  %".22" = call i32 @"sym.recv_bytes"(i32 6, i32 %".21", i32 1)
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp slt i32 %".24", 0
  br i1 %".25", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".29" = load i8, i8* %".8"
  %".30" = sext i8 %".29" to i32
  store i32 %".30", i32* %"register0x00000004"
  %".32" = load i32, i32* %"register0x00000004"
  %".33" = add i32 %".32", 134534887
  %".34" = load i32, i32* %"var_8h"
  ret void
}

define void @"sym.give_wager"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".4" to i32*
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".6" = call i32 @"sym.do_wager_ai"()
  store i32 %".6", i32* @"obj.my_wager"
  %".8" = ptrtoint i32* @"0x804d6e0" to i32
  %".9" = call i32 @"sym.send_bytes"(i32 3, i32 %".8", i32 4)
  store i32 %".9", i32* %"iVar1"
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp ne i32 %".11", 4
  %".13" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000206"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  ret void
}

define i32 @"sym.do_wager_ai"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".5" = load i8, i8* @"obj.deal"
  %".6" = icmp eq i8 %".5", 2
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"3", label %"1"
"1":
  %".12" = load i8, i8* @"obj.deal"
  %".13" = icmp eq i8 %".12", 3
  %".14" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".13", i1* %".14"
  %".16" = load i8, i8* %"register0x00000206"
  %".17" = trunc i8 %".16" to i1
  br i1 %".17", label %"3", label %"2"
"2":
  %".19" = load i32, i32* @"obj.fp"
  %".20" = load i32, i32* @"obj.fp_idx"
  %".21" = add i32 %".19", %".20"
  %".22" = trunc i32 %".21" to i8
  %".23" = zext i8 %".22" to i32
  store i32 %".23", i32* %"var_4h"
  br label %"4"
"3":
  store i32 0, i32* %"var_4h"
  br label %"4"
"4":
  %".28" = load i32, i32* %"var_4h"
  store i32 %".28", i32* %"register0x00000000"
  %".30" = load i32, i32* %"register0x00000000"
  ret i32 %".30"
}

declare void @"sym.imp.cgc__terminate"() 

@"0x804c450" = external global i32
@"0x804c456" = external global i32
@"0x804c45c" = external global i32
@"0x804c462" = external global i32
@"0x804c468" = external global i32
@"0x804c46e" = external global i32
@"0x804c474" = external global i32
@"0x804c47a" = external global i32
@"0x804c480" = external global i32
declare void @"_reloc.memset"() 

@"0x804d6e0" = external global i32