; ModuleID = "Sample_Shipgame_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.P1_PROMPT" = global i32 0
@"obj.P0_PROMPT" = global i32 0
@"obj.READ_ERROR_MSG" = global i32 0
@"obj.EXIT_MSG" = global i32 0
@"obj.GAME_ALREADY_ENDED_MSG" = global i32 0
@"obj.HELP_MSG" = global i32 0
@"obj.GAME_NOT_STARTED_MSG" = global i32 0
@"obj.GAME_ALREADY_STARTED_MSG" = global i32 0
@"obj.BAD_COMMAND_MSG" = global i32 0
@"obj.YOU_WIN_MSG" = global i32 0
@"obj.MISSED_MSG" = global i32 0
@"obj.HIT_MSG" = global i32 0
@"obj.SHIP5_SUNK_MSG" = global i32 0
@"obj.SHIP4_SUNK_MSG" = global i32 0
@"obj.SHIP3_SUNK_MSG" = global i32 0
@"obj.SHIP2_SUNK_MSG" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"bVar1" = alloca i8
  %"bVar2" = alloca i8
  %"bVar3" = alloca i8
  %"arg_ch" = alloca i32
  %"arg_ch_00" = alloca i32
  %"arg_ch_01" = alloca i32
  %"arg_ch_02" = alloca i32
  %"arg_ch_03" = alloca i32
  %"iVar4" = alloca i32
  %"iVar5" = alloca i32
  %"iVar6" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999580
  %"var_1a0h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999584
  %"var_19ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999588
  %"var_198h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999592
  %"var_194h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999596
  %"var_190h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999600
  %"var_18ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %"var_188h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999608
  %"var_184h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999612
  %"var_180h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999616
  %"var_17ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999620
  %"var_178h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999624
  %"var_174h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999628
  %"var_170h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999632
  %"var_16ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999636
  %"var_168h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999640
  %"var_164h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999644
  %"var_160h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999648
  %"var_15ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999652
  %"var_158h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999656
  %"var_154h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"var_150h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"var_14ch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".41" to i32*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".44" to i32*
  %".45" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".45" to i32*
  %".46" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".46" to i32*
  %".47" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".47" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".48" = alloca i8**
  %".49" = alloca i32**
  store i8** %"argv", i8*** %".48"
  store i32** %"envp", i32*** %".49"
  br label %"0"
"0":
  %".53" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  store i8 0, i8* %"bVar1"
  store i8 0, i8* %"bVar3"
  store i8 0, i8* %"bVar2"
  %".57" = getelementptr i32, i32* %"var_110h", i8 0
  %".58" = bitcast i32* %".57" to i8*
  store i8 85, i8* %".58"
  %".60" = ptrtoint i8* %".53" to i32
  %".61" = call i32 @"sym.cgc_clearPlayerState"(i32 %".60")
  %".62" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".63" = ptrtoint i8* %".62" to i32
  %".64" = call i32 @"sym.cgc_clearPlayerState"(i32 %".63")
  br label %"1"
"1":
  %".66" = load i32, i32* @"obj.P1_PROMPT"
  store i32 %".66", i32* %"iVar4"
  %".68" = load i32, i32* @"obj.P0_PROMPT"
  store i32 %".68", i32* %"iVar6"
  %".70" = load i8, i8* %"bVar1"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"2", label %"3"
"2":
  %".73" = load i32, i32* @"obj.P1_PROMPT"
  %".74" = call i32 @"sym.cgc_myStrLen"(i32 %".73")
  store i32 %".74", i32* %"iVar6"
  %".76" = load i32, i32* %"iVar4"
  %".77" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".76", i32 %".77")
  br label %"4"
"3":
  %".80" = load i32, i32* @"obj.P0_PROMPT"
  %".81" = call i32 @"sym.cgc_myStrLen"(i32 %".80")
  store i32 %".81", i32* %"iVar4"
  %".83" = load i32, i32* %"iVar6"
  %".84" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".83", i32 %".84")
  br label %"4"
"4":
  %".87" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".88" = ptrtoint i8* %".87" to i32
  %".89" = call i32 @"sym.cgc_getCommand"(i32 %".88")
  store i32 %".89", i32* %"iVar5"
  %".91" = load i32, i32* @"obj.READ_ERROR_MSG"
  store i32 %".91", i32* %"arg_ch_03"
  %".93" = load i32, i32* @"obj.EXIT_MSG"
  store i32 %".93", i32* %"arg_ch_02"
  %".95" = load i32, i32* @"obj.GAME_ALREADY_ENDED_MSG"
  store i32 %".95", i32* %"arg_ch_01"
  %".97" = load i32, i32* @"obj.HELP_MSG"
  store i32 %".97", i32* %"arg_ch_00"
  %".99" = load i32, i32* @"obj.GAME_NOT_STARTED_MSG"
  store i32 %".99", i32* %"arg_ch"
  %".101" = load i32, i32* @"obj.GAME_ALREADY_STARTED_MSG"
  store i32 %".101", i32* %"iVar4"
  %".103" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  store i32 %".103", i32* %"iVar6"
  %".105" = load i32, i32* %"iVar5"
  %".106" = icmp ne i32 %".105", 0
  %".107" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".106", i1* %".107"
  %".109" = load i8, i8* %"register0x00000206"
  %".110" = trunc i8 %".109" to i1
  br i1 %".110", label %"2c", label %"5"
"5":
  %".112" = load i32, i32* %"var_110h"
  %".113" = zext i8 69 to i32
  %".114" = icmp eq i32 %".112", %".113"
  %".115" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".114", i1* %".115"
  %".117" = load i8, i8* %"register0x00000206"
  %".118" = trunc i8 %".117" to i1
  br i1 %".118", label %"6", label %"7"
"6":
  %".120" = load i32, i32* @"obj.EXIT_MSG"
  %".121" = call i32 @"sym.cgc_myStrLen"(i32 %".120")
  store i32 %".121", i32* %"iVar6"
  %".123" = load i32, i32* %"arg_ch_02"
  %".124" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".123", i32 %".124")
  br label %"1"
"7":
  %".127" = load i32, i32* %"var_110h"
  %".128" = zext i8 78 to i32
  %".129" = icmp eq i32 %".127", %".128"
  %".130" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".129", i1* %".130"
  %".132" = load i8, i8* %"register0x00000206"
  %".133" = trunc i8 %".132" to i1
  br i1 %".133", label %"2b", label %"8"
"8":
  %".135" = load i32, i32* %"var_110h"
  %".136" = zext i8 72 to i32
  %".137" = icmp eq i32 %".135", %".136"
  %".138" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".137", i1* %".138"
  %".140" = load i8, i8* %"register0x00000206"
  %".141" = trunc i8 %".140" to i1
  br i1 %".141", label %"2a", label %"9"
"9":
  %".143" = load i8, i8* %"bVar2"
  %".144" = trunc i8 %".143" to i1
  br i1 %".144", label %"29", label %"a"
a:
  %".146" = load i32, i32* %"var_110h"
  %".147" = zext i8 77 to i32
  %".148" = icmp eq i32 %".146", %".147"
  %".149" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".148", i1* %".149"
  %".151" = load i8, i8* %"register0x00000206"
  %".152" = trunc i8 %".151" to i1
  br i1 %".152", label %"26", label %"b"
b:
  %".154" = load i32, i32* %"var_110h"
  %".155" = zext i8 83 to i32
  %".156" = icmp eq i32 %".154", %".155"
  %".157" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".156", i1* %".157"
  %".159" = load i8, i8* %"register0x00000206"
  %".160" = trunc i8 %".159" to i1
  br i1 %".160", label %"23", label %"c"
c:
  %".162" = load i32, i32* %"var_110h"
  %".163" = zext i8 80 to i32
  %".164" = icmp eq i32 %".162", %".163"
  %".165" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".164", i1* %".165"
  %".167" = load i8, i8* %"register0x00000206"
  %".168" = trunc i8 %".167" to i1
  br i1 %".168", label %"1b", label %"d"
d:
  %".170" = load i32, i32* %"var_110h"
  %".171" = zext i8 84 to i32
  %".172" = icmp eq i32 %".170", %".171"
  %".173" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".172", i1* %".173"
  %".175" = load i8, i8* %"register0x00000206"
  %".176" = trunc i8 %".175" to i1
  br i1 %".176", label %"1", label %"e"
e:
  %".178" = load i8, i8* %"bVar3"
  %".179" = trunc i8 %".178" to i1
  br i1 %".179", label %"f", label %"1a"
f:
  %".181" = load i8, i8* %"bVar1"
  %".182" = trunc i8 %".181" to i1
  br i1 %".182", label %"10", label %"11"
"10":
  %".184" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %".185" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".186" = ptrtoint i8* %".184" to i32
  %".187" = ptrtoint i8* %".185" to i32
  %".188" = call i32 @"sym.cgc_processTarget"(i32 %".186", i32 %".187")
  store i32 %".188", i32* %"var_fch"
  br label %"12"
"11":
  %".191" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".192" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".193" = ptrtoint i8* %".192" to i32
  %".194" = ptrtoint i8* %".192" to i32
  %".195" = call i32 @"sym.cgc_processTarget"(i32 %".193", i32 %".194")
  store i32 %".195", i32* %"var_fch"
  br label %"12"
"12":
  %".198" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  store i32 %".198", i32* %"iVar6"
  %".200" = load i32, i32* %"var_fch"
  %".201" = icmp eq i32 %".200", 0
  %".202" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".201", i1* %".202"
  %".204" = load i8, i8* %"register0x00000206"
  %".205" = trunc i8 %".204" to i1
  br i1 %".205", label %"14", label %"13"
"13":
  %".207" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  %".208" = call i32 @"sym.cgc_myStrLen"(i32 %".207")
  store i32 %".208", i32* %"iVar4"
  %".210" = load i32, i32* %"iVar6"
  %".211" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".210", i32 %".211")
  br label %"1"
"14":
  %".214" = load i8, i8* %"bVar1"
  %".215" = trunc i8 %".214" to i1
  br i1 %".215", label %"15", label %"17"
"15":
  %".217" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %".218" = ptrtoint i8* %".217" to i32
  %".219" = call i32 @"sym.cgc_allShipsSunk"(i32 %".218")
  store i32 %".219", i32* %"iVar4"
  %".221" = load i32, i32* @"obj.YOU_WIN_MSG"
  store i32 %".221", i32* %"iVar6"
  %".223" = load i32, i32* %"iVar4"
  %".224" = icmp ne i32 %".223", 0
  %".225" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".224", i1* %".225"
  %".227" = load i8, i8* %"register0x00000206"
  %".228" = trunc i8 %".227" to i1
  br i1 %".228", label %"19", label %"16"
"16":
  %".230" = load i32, i32* @"obj.YOU_WIN_MSG"
  %".231" = call i32 @"sym.cgc_myStrLen"(i32 %".230")
  store i32 %".231", i32* %"iVar4"
  %".233" = load i32, i32* %"iVar6"
  %".234" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".233", i32 %".234")
  store i8 0, i8* %"bVar3"
  store i8 1, i8* %"bVar2"
  br label %"19"
"17":
  %".239" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".240" = ptrtoint i8* %".239" to i32
  %".241" = call i32 @"sym.cgc_allShipsSunk"(i32 %".240")
  store i32 %".241", i32* %"iVar4"
  %".243" = load i32, i32* @"obj.YOU_WIN_MSG"
  store i32 %".243", i32* %"iVar6"
  %".245" = load i32, i32* %"iVar4"
  %".246" = icmp ne i32 %".245", 0
  %".247" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".246", i1* %".247"
  %".249" = load i8, i8* %"register0x00000206"
  %".250" = trunc i8 %".249" to i1
  br i1 %".250", label %"19", label %"18"
"18":
  %".252" = load i32, i32* @"obj.YOU_WIN_MSG"
  %".253" = call i32 @"sym.cgc_myStrLen"(i32 %".252")
  store i32 %".253", i32* %"iVar4"
  %".255" = load i32, i32* %"iVar6"
  %".256" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".255", i32 %".256")
  store i8 0, i8* %"bVar3"
  store i8 1, i8* %"bVar2"
  br label %"19"
"19":
  %".261" = load i8, i8* %"bVar1"
  %".262" = xor i8 %".261", -1
  store i8 %".262", i8* %"bVar1"
  br label %"1"
"1a":
  %".265" = load i32, i32* @"obj.GAME_NOT_STARTED_MSG"
  %".266" = call i32 @"sym.cgc_myStrLen"(i32 %".265")
  store i32 %".266", i32* %"iVar6"
  %".268" = load i32, i32* %"arg_ch"
  %".269" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".268", i32 %".269")
  br label %"1"
"1b":
  %".272" = load i8, i8* %"bVar3"
  %".273" = trunc i8 %".272" to i1
  br i1 %".273", label %"22", label %"1c"
"1c":
  %".275" = load i8, i8* %"bVar1"
  %".276" = trunc i8 %".275" to i1
  br i1 %".276", label %"1d", label %"1e"
"1d":
  %".278" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".279" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".280" = ptrtoint i8* %".279" to i32
  %".281" = ptrtoint i8* %".279" to i32
  %".282" = call i32 @"sym.cgc_processPlace"(i32 %".280", i32 %".281")
  store i32 %".282", i32* %"var_fch"
  br label %"1f"
"1e":
  %".285" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %".286" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".287" = ptrtoint i8* %".285" to i32
  %".288" = ptrtoint i8* %".286" to i32
  %".289" = call i32 @"sym.cgc_processPlace"(i32 %".287", i32 %".288")
  store i32 %".289", i32* %"var_fch"
  br label %"1f"
"1f":
  %".292" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  store i32 %".292", i32* %"iVar6"
  %".294" = load i32, i32* %"var_fch"
  %".295" = icmp eq i32 %".294", 0
  %".296" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".295", i1* %".296"
  %".298" = load i8, i8* %"register0x00000206"
  %".299" = trunc i8 %".298" to i1
  br i1 %".299", label %"21", label %"20"
"20":
  %".301" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  %".302" = call i32 @"sym.cgc_myStrLen"(i32 %".301")
  store i32 %".302", i32* %"iVar4"
  %".304" = load i32, i32* %"iVar6"
  %".305" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".304", i32 %".305")
  br label %"1"
"21":
  %".308" = load i8, i8* %"bVar1"
  %".309" = xor i8 %".308", -1
  store i8 %".309", i8* %"bVar1"
  br label %"1"
"22":
  %".312" = load i32, i32* @"obj.GAME_ALREADY_STARTED_MSG"
  %".313" = call i32 @"sym.cgc_myStrLen"(i32 %".312")
  store i32 %".313", i32* %"iVar6"
  %".315" = load i32, i32* %"iVar4"
  %".316" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".315", i32 %".316")
  br label %"1"
"23":
  %".319" = load i8, i8* %"bVar3"
  %".320" = trunc i8 %".319" to i1
  br i1 %".320", label %"25", label %"24"
"24":
  store i8 1, i8* %"bVar3"
  br label %"1"
"25":
  %".324" = load i32, i32* @"obj.GAME_ALREADY_STARTED_MSG"
  %".325" = call i32 @"sym.cgc_myStrLen"(i32 %".324")
  store i32 %".325", i32* %"iVar6"
  %".327" = load i32, i32* %"iVar4"
  %".328" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".327", i32 %".328")
  br label %"1"
"26":
  %".331" = load i8, i8* %"bVar1"
  %".332" = trunc i8 %".331" to i1
  br i1 %".332", label %"27", label %"28"
"27":
  %".334" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".335" = ptrtoint i8* %".334" to i32
  %".336" = call i32 @"sym.cgc_dumpBoard"(i32 %".335")
  br label %"1"
"28":
  %".338" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %".339" = ptrtoint i8* %".338" to i32
  %".340" = call i32 @"sym.cgc_dumpBoard"(i32 %".339")
  br label %"1"
"29":
  %".342" = load i32, i32* @"obj.GAME_ALREADY_ENDED_MSG"
  %".343" = call i32 @"sym.cgc_myStrLen"(i32 %".342")
  store i32 %".343", i32* %"iVar6"
  %".345" = load i32, i32* %"arg_ch_01"
  %".346" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".345", i32 %".346")
  br label %"1"
"2a":
  %".349" = load i32, i32* @"obj.HELP_MSG"
  %".350" = call i32 @"sym.cgc_myStrLen"(i32 %".349")
  store i32 %".350", i32* %"iVar6"
  %".352" = load i32, i32* %"arg_ch_00"
  %".353" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".352", i32 %".353")
  br label %"1"
"2b":
  %".356" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %".357" = getelementptr i32, i32* %"var_110h", i8 0
  %".358" = bitcast i32* %".357" to i8*
  store i8 85, i8* %".358"
  %".360" = ptrtoint i8* %".356" to i32
  %".361" = call i32 @"sym.cgc_clearPlayerState"(i32 %".360")
  %".362" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %".363" = ptrtoint i8* %".362" to i32
  %".364" = call i32 @"sym.cgc_clearPlayerState"(i32 %".363")
  store i8 0, i8* %"bVar1"
  store i8 0, i8* %"bVar3"
  store i8 0, i8* %"bVar2"
  br label %"1"
"2c":
  %".369" = load i32, i32* %"iVar5"
  %".370" = icmp ne i32 %".369", -1
  %".371" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".370", i1* %".371"
  %".373" = load i8, i8* %"register0x00000206"
  %".374" = trunc i8 %".373" to i1
  br i1 %".374", label %"2d", label %"2f"
"2d":
  %".376" = load i32, i32* %"iVar5"
  %".377" = icmp ne i32 %".376", -2
  %".378" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".377", i1* %".378"
  %".380" = load i8, i8* %"register0x00000206"
  %".381" = trunc i8 %".380" to i1
  br i1 %".381", label %"1", label %"2e"
"2e":
  %".383" = load i32, i32* @"obj.READ_ERROR_MSG"
  %".384" = call i32 @"sym.cgc_myStrLen"(i32 %".383")
  store i32 %".384", i32* %"iVar6"
  %".386" = load i32, i32* %"arg_ch_03"
  %".387" = load i32, i32* %"iVar6"
  call void @"sym.cgc_write"(i32 1, i32 %".386", i32 %".387")
  store i32 0, i32* %"register0x00000000"
  %".390" = load i32, i32* %"register0x00000000"
  ret i32 %".390"
"2f":
  %".392" = load i32, i32* @"obj.BAD_COMMAND_MSG"
  %".393" = call i32 @"sym.cgc_myStrLen"(i32 %".392")
  store i32 %".393", i32* %"iVar4"
  %".395" = load i32, i32* %"iVar6"
  %".396" = load i32, i32* %"iVar4"
  call void @"sym.cgc_write"(i32 1, i32 %".395", i32 %".396")
  br label %"1"
}

declare i32 @"sym.cgc_allShipsSunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_myStrLen"(i32 %"arg_8h") 

declare void @"sym.cgc_write"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_dumpBoard"(i32 %"arg_8h") 

declare i32 @"sym.cgc_processPlace"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isOnBoard"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i8 @"sym.cgc_isGoodRow"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isGoodCol"(i32 %"arg_8h") 

declare i32 @"sym.cgc_clearPlayerState"(i32 %"arg_8h") 

declare i32 @"sym.cgc_processTarget"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getCommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_readLine"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc_fdwait"() 
