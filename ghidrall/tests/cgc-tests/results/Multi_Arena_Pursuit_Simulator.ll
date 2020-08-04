; ModuleID = "Multi_Arena_Pursuit_Simulator"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_flag_idx" = global i32 0
@"obj.largeChunks" = global i32 0
@"obj.std_input" = global i32 0
@"str.Criminal_at___I___I" = external global i64
@"str.Criminal_caught_in__U_moves" = external global i64
@"str.Got_away" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"piVar4" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"var_c4h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".41" to i32*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".44" to i32*
  %".45" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".45" to i32*
  %".46" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".46" to i32*
  %".47" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".47" to i32*
  %".48" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".48" to i32*
  %".49" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".49" to i32*
  %".50" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".50" to i32*
  %".51" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".51" to i32*
  %".52" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".52" to i32*
  %".53" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".53" to i32*
  %".54" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".54" to i32*
  %".55" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".55" to i32*
  %".56" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".56" to i32*
  %".57" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".57" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32*
  %".58" = alloca i8**
  %".59" = alloca i32**
  store i8** %"argv", i8*** %".58"
  store i32** %"envp", i32*** %".59"
  br label %"0"
"0":
  store i32 0, i32* %"var_14h"
  store i32 0, i32* %"var_18h"
  store i32 1128775680, i32* %"var_7ch"
  store i32 0, i32* %"var_80h"
  br label %"1"
"1":
  %".68" = load i32, i32* %"var_80h"
  %".69" = icmp ult i32 %".68", 10
  %".70" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000200"
  %".73" = trunc i8 %".72" to i1
  br i1 %".73", label %"2", label %"3"
"2":
  %".75" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %".76" = load i32, i32* %"var_80h"
  %".77" = mul i32 %".76", 32
  %".78" = getelementptr inbounds i8, i8* %".75", i32 %".77"
  %".79" = bitcast i8* %".78" to i32*
  store i32* %".79", i32** %"register0x00000004"
  %".81" = load i32, i32* %"var_7ch"
  %".82" = add i32 %".81", 1
  store i32 %".82", i32* %"register0x00000018"
  %".84" = load i32, i32* %"var_7ch"
  %".85" = trunc i32 %".84" to i8
  %".86" = zext i8 %".85" to i32
  store i32 %".86", i32* %"register0x00000008"
  %".88" = ptrtoint i32** %"register0x00000004" to i32
  %".89" = load i32, i32* %"register0x00000008"
  %".90" = call i32 @"sym.cgc_sprintf"(i32 %".88", i32 134551396, i32 %".89")
  %".91" = load i32, i32* %"var_80h"
  %".92" = add i32 %".91", 1
  store i32 %".92", i32* %"var_80h"
  %".94" = load i32, i32* %"register0x00000018"
  store i32 %".94", i32* %"var_7ch"
  br label %"1"
"3":
  %".97" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".98" = ptrtoint i8* %".97" to i32
  call void @"sym.cgc_initCityMap"(i32 %".98")
  store i32 0, i32* %"var_84h"
  br label %"4"
"4":
  store i32 0, i32* %"var_70h"
  %".103" = load i32, i32* %"var_84h"
  %".104" = icmp slt i32 %".103", 100
  br i1 %".104", label %"5", label %"10"
"5":
  %".106" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".107" = ptrtoint i8* %".106" to i32
  call void @"sym.cgc_initCarChase"(i32 %".107")
  %".109" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".110" = ptrtoint i8* %".109" to i32
  call void @"sym.cgc_bzero"(i32 %".110", i32 32)
  %".112" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".113" = load i32, i32* %"var_ch"
  store i32 %".113", i32* %"iVar3"
  %".115" = ptrtoint i8* %".112" to i32
  %".116" = load i32, i32* %"var_10h"
  %".117" = call i32 @"sym.cgc_sprintf"(i32 %".115", i32 134551399, i32 %".116")
  %".118" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".119" = bitcast i32* %"piVar4" to i8**
  store i8* %".118", i8** %".119"
  %".121" = load i32, i32* %"piVar4"
  %".122" = call i32 @"sym.cgc_strlen"(i32 %".121")
  store i32 %".122", i32* %"iVar1"
  %".124" = load i32, i32* %"piVar4"
  %".125" = load i32, i32* %"iVar1"
  %".126" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".124", i32 %".125")
  store i32 %".126", i32* %"iVar2"
  %".128" = load i32, i32* %"iVar2"
  %".129" = icmp ne i32 %".128", 0
  %".130" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".129", i1* %".130"
  %".132" = load i8, i8* %"register0x00000206"
  %".133" = trunc i8 %".132" to i1
  br i1 %".133", label %"7", label %"6"
"6":
  %".135" = load i32, i32* %"piVar4"
  %".136" = load i32, i32* %"iVar1"
  %".137" = load i32, i32* %"iVar3"
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  %".140" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".141" = ptrtoint i8* %".140" to i32
  call void @"sym.cgc_getMoveInCar"(i32 %".141")
  %".143" = load i32, i32* %"var_70h"
  %".144" = add i32 %".143", 1
  store i32 %".144", i32* %"var_70h"
  %".146" = load i32, i32* %"var_10h"
  %".147" = load i32, i32* %"var_ch"
  %".148" = load i32, i32* %"var_14h"
  %".149" = call i32 @"sym.cgc_isCaught"(i32 %".146", i32 %".147", i32 %".148")
  store i32 %".149", i32* %"iVar3"
  %".151" = load i32, i32* %"iVar3"
  %".152" = icmp ne i32 %".151", 0
  %".153" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".152", i1* %".153"
  %".155" = load i8, i8* %"register0x00000206"
  %".156" = trunc i8 %".155" to i1
  br i1 %".156", label %"8", label %"b"
"8":
  %".158" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".159" = ptrtoint i8* %".158" to i32
  call void @"sym.cgc_bzero"(i32 %".159", i32 32)
  %".161" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".162" = ptrtoint i8* %".161" to i32
  %".163" = load i32, i32* %"var_70h"
  %".164" = call i32 @"sym.cgc_sprintf"(i32 %".162", i32 134551421, i32 %".163")
  %".165" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".166" = ptrtoint i8* %".165" to i32
  %".167" = call i32 @"sym.cgc_strlen"(i32 %".166")
  store i32 %".167", i32* %"iVar3"
  %".169" = ptrtoint i8* %".165" to i32
  %".170" = load i32, i32* %"iVar3"
  %".171" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".169", i32 %".170")
  store i32 %".171", i32* %"iVar3"
  %".173" = load i32, i32* %"iVar3"
  %".174" = icmp ne i32 %".173", 0
  %".175" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".174", i1* %".175"
  %".177" = load i8, i8* %"register0x00000206"
  %".178" = trunc i8 %".177" to i1
  br i1 %".178", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".182" = load i32, i32* %"var_84h"
  %".183" = add i32 %".182", 1
  store i32 %".183", i32* %"var_84h"
  br label %"4"
b:
  %".186" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".187" = ptrtoint i8* %".186" to i32
  %".188" = load i32, i32* %"var_14h"
  call void @"sym.cgc_moveCriminalInCar"(i32 %".187", i32 %".188")
  %".190" = load i32, i32* %"var_10h"
  %".191" = load i32, i32* %"var_ch"
  %".192" = load i32, i32* %"var_14h"
  %".193" = call i32 @"sym.cgc_getsAway"(i32 %".190", i32 %".191", i32 %".192")
  store i32 %".193", i32* %"iVar3"
  %".195" = load i32, i32* %"iVar3"
  %".196" = icmp ne i32 %".195", 0
  %".197" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".196", i1* %".197"
  %".199" = load i8, i8* %"register0x00000206"
  %".200" = trunc i8 %".199" to i1
  br i1 %".200", label %"7", label %"c"
c:
  %".202" = call i32 @"sym.cgc_strlen"(i32 134551450)
  store i32 %".202", i32* %"iVar3"
  %".204" = load i32, i32* %"iVar3"
  %".205" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134551450, i32 %".204")
  store i32 %".205", i32* %"iVar3"
  %".207" = load i32, i32* %"iVar3"
  %".208" = icmp ne i32 %".207", 0
  %".209" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".208", i1* %".209"
  %".211" = load i8, i8* %"register0x00000206"
  %".212" = trunc i8 %".211" to i1
  br i1 %".212", label %"d", label %"e"
d:
  call void @"sym.imp.cgc__terminate"()
  br label %"e"
e:
  %".216" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".217" = ptrtoint i8* %".216" to i32
  call void @"sym.cgc_initCarChase"(i32 %".217")
  %".219" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".220" = ptrtoint i8* %".219" to i32
  call void @"sym.cgc_bzero"(i32 %".220", i32 32)
  %".222" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".223" = load i32, i32* %"var_ch"
  store i32 %".223", i32* %"iVar3"
  %".225" = ptrtoint i8* %".222" to i32
  %".226" = load i32, i32* %"var_10h"
  %".227" = call i32 @"sym.cgc_sprintf"(i32 %".225", i32 134551399, i32 %".226")
  %".228" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".229" = bitcast i32* %"piVar4" to i8**
  store i8* %".228", i8** %".229"
  %".231" = load i32, i32* %"piVar4"
  %".232" = call i32 @"sym.cgc_strlen"(i32 %".231")
  store i32 %".232", i32* %"iVar1"
  %".234" = load i32, i32* %"piVar4"
  %".235" = load i32, i32* %"iVar1"
  %".236" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".234", i32 %".235")
  store i32 %".236", i32* %"iVar2"
  %".238" = load i32, i32* %"iVar2"
  %".239" = icmp ne i32 %".238", 0
  %".240" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".239", i1* %".240"
  %".242" = load i8, i8* %"register0x00000206"
  %".243" = trunc i8 %".242" to i1
  br i1 %".243", label %"7", label %"f"
f:
  %".245" = load i32, i32* %"piVar4"
  %".246" = load i32, i32* %"iVar1"
  %".247" = load i32, i32* %"iVar3"
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"10":
  %".250" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".251" = ptrtoint i8* %".250" to i32
  call void @"sym.cgc_freeMap"(i32 %".251")
  %".253" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".254" = ptrtoint i8* %".253" to i32
  call void @"sym.cgc_initHarborMap"(i32 %".254")
  store i32 0, i32* %"var_88h"
  br label %"11"
"11":
  store i32 0, i32* %"var_70h"
  %".259" = load i32, i32* %"var_88h"
  %".260" = icmp slt i32 %".259", 100
  br i1 %".260", label %"12", label %"1d"
"12":
  %".262" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".263" = ptrtoint i8* %".262" to i32
  call void @"sym.cgc_initHarborChase"(i32 %".263")
  %".265" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".266" = ptrtoint i8* %".265" to i32
  call void @"sym.cgc_bzero"(i32 %".266", i32 32)
  %".268" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".269" = load i32, i32* %"var_ch"
  store i32 %".269", i32* %"iVar3"
  %".271" = ptrtoint i8* %".268" to i32
  %".272" = load i32, i32* %"var_10h"
  %".273" = call i32 @"sym.cgc_sprintf"(i32 %".271", i32 134551399, i32 %".272")
  %".274" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".275" = bitcast i32* %"piVar4" to i8**
  store i8* %".274", i8** %".275"
  %".277" = load i32, i32* %"piVar4"
  %".278" = call i32 @"sym.cgc_strlen"(i32 %".277")
  store i32 %".278", i32* %"iVar1"
  %".280" = load i32, i32* %"piVar4"
  %".281" = load i32, i32* %"iVar1"
  %".282" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".280", i32 %".281")
  store i32 %".282", i32* %"iVar2"
  %".284" = load i32, i32* %"iVar2"
  %".285" = icmp ne i32 %".284", 0
  %".286" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".285", i1* %".286"
  %".288" = load i8, i8* %"register0x00000206"
  %".289" = trunc i8 %".288" to i1
  br i1 %".289", label %"14", label %"13"
"13":
  %".291" = load i32, i32* %"piVar4"
  %".292" = load i32, i32* %"iVar1"
  %".293" = load i32, i32* %"iVar3"
  call void @"sym.imp.cgc__terminate"()
  br label %"14"
"14":
  %".296" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".297" = ptrtoint i8* %".296" to i32
  call void @"sym.cgc_getMoveInBoat"(i32 %".297")
  %".299" = load i32, i32* %"var_70h"
  %".300" = add i32 %".299", 1
  store i32 %".300", i32* %"var_70h"
  %".302" = load i32, i32* %"var_10h"
  %".303" = load i32, i32* %"var_ch"
  %".304" = load i32, i32* %"var_18h"
  %".305" = call i32 @"sym.cgc_isCaught"(i32 %".302", i32 %".303", i32 %".304")
  store i32 %".305", i32* %"iVar3"
  %".307" = load i32, i32* %"iVar3"
  %".308" = icmp ne i32 %".307", 0
  %".309" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".308", i1* %".309"
  %".311" = load i8, i8* %"register0x00000206"
  %".312" = trunc i8 %".311" to i1
  br i1 %".312", label %"15", label %"18"
"15":
  %".314" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".315" = ptrtoint i8* %".314" to i32
  call void @"sym.cgc_bzero"(i32 %".315", i32 32)
  %".317" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".318" = ptrtoint i8* %".317" to i32
  %".319" = load i32, i32* %"var_70h"
  %".320" = call i32 @"sym.cgc_sprintf"(i32 %".318", i32 134551421, i32 %".319")
  %".321" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".322" = ptrtoint i8* %".321" to i32
  %".323" = call i32 @"sym.cgc_strlen"(i32 %".322")
  store i32 %".323", i32* %"iVar3"
  %".325" = ptrtoint i8* %".321" to i32
  %".326" = load i32, i32* %"iVar3"
  %".327" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".325", i32 %".326")
  store i32 %".327", i32* %"iVar3"
  %".329" = load i32, i32* %"iVar3"
  %".330" = icmp ne i32 %".329", 0
  %".331" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".330", i1* %".331"
  %".333" = load i8, i8* %"register0x00000206"
  %".334" = trunc i8 %".333" to i1
  br i1 %".334", label %"16", label %"17"
"16":
  call void @"sym.imp.cgc__terminate"()
  br label %"17"
"17":
  %".338" = load i32, i32* %"var_88h"
  %".339" = add i32 %".338", 1
  store i32 %".339", i32* %"var_88h"
  br label %"11"
"18":
  %".342" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".343" = ptrtoint i8* %".342" to i32
  %".344" = load i32, i32* %"var_18h"
  call void @"sym.cgc_moveCriminalInBoat"(i32 %".343", i32 %".344")
  %".346" = load i32, i32* %"var_10h"
  %".347" = load i32, i32* %"var_ch"
  %".348" = load i32, i32* %"var_18h"
  %".349" = call i32 @"sym.cgc_getsAway"(i32 %".346", i32 %".347", i32 %".348")
  store i32 %".349", i32* %"iVar3"
  %".351" = load i32, i32* %"iVar3"
  %".352" = icmp ne i32 %".351", 0
  %".353" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".352", i1* %".353"
  %".355" = load i8, i8* %"register0x00000206"
  %".356" = trunc i8 %".355" to i1
  br i1 %".356", label %"14", label %"19"
"19":
  %".358" = call i32 @"sym.cgc_strlen"(i32 134551450)
  store i32 %".358", i32* %"iVar3"
  %".360" = load i32, i32* %"iVar3"
  %".361" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134551450, i32 %".360")
  store i32 %".361", i32* %"iVar3"
  %".363" = load i32, i32* %"iVar3"
  %".364" = icmp ne i32 %".363", 0
  %".365" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".364", i1* %".365"
  %".367" = load i8, i8* %"register0x00000206"
  %".368" = trunc i8 %".367" to i1
  br i1 %".368", label %"1a", label %"1b"
"1a":
  call void @"sym.imp.cgc__terminate"()
  br label %"1b"
"1b":
  %".372" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".373" = ptrtoint i8* %".372" to i32
  call void @"sym.cgc_initHarborChase"(i32 %".373")
  %".375" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".376" = ptrtoint i8* %".375" to i32
  call void @"sym.cgc_bzero"(i32 %".376", i32 32)
  %".378" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".379" = load i32, i32* %"var_ch"
  store i32 %".379", i32* %"iVar3"
  %".381" = ptrtoint i8* %".378" to i32
  %".382" = load i32, i32* %"var_10h"
  %".383" = call i32 @"sym.cgc_sprintf"(i32 %".381", i32 134551399, i32 %".382")
  %".384" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".385" = bitcast i32* %"piVar4" to i8**
  store i8* %".384", i8** %".385"
  %".387" = load i32, i32* %"piVar4"
  %".388" = call i32 @"sym.cgc_strlen"(i32 %".387")
  store i32 %".388", i32* %"iVar1"
  %".390" = load i32, i32* %"piVar4"
  %".391" = load i32, i32* %"iVar1"
  %".392" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".390", i32 %".391")
  store i32 %".392", i32* %"iVar2"
  %".394" = load i32, i32* %"iVar2"
  %".395" = icmp ne i32 %".394", 0
  %".396" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".395", i1* %".396"
  %".398" = load i8, i8* %"register0x00000206"
  %".399" = trunc i8 %".398" to i1
  br i1 %".399", label %"14", label %"1c"
"1c":
  %".401" = load i32, i32* %"piVar4"
  %".402" = load i32, i32* %"iVar1"
  %".403" = load i32, i32* %"iVar3"
  call void @"sym.imp.cgc__terminate"()
  br label %"14"
"1d":
  %".406" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".407" = ptrtoint i8* %".406" to i32
  call void @"sym.cgc_freeMap"(i32 %".407")
  store i32 0, i32* %"register0x00000000"
  %".410" = load i32, i32* %"register0x00000000"
  ret i32 %".410"
}

declare i32 @"sym.cgc_sprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_vsprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_initHarborChase"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getRandomNumber"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_initHarborMap"(i32 %"arg_8h") 

declare void @"sym.cgc_setCoordinate"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_addCoordinate"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_newMap"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_getNextFreeChunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_initRun"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getMSB"(i32 %"arg_8h") 

declare void @"sym.cgc_copyMap"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getCoordinate"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_inBounds"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_isCaught"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_getMoveInCar"(i32 %"arg_8h") 

declare void @"sym.cgc_moveForwardInCar"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_until_delim_or_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_get_char"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fill_buffer"() 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_moveRightInCar"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getsAway"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_moveCriminalInCar"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_clearRun"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isClear"(i32 %"arg_8h") 

declare void @"sym.cgc_freeMap"(i32 %"arg_8h") 

declare void @"sym.cgc_moveCriminalInBoat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_initCityMap"(i32 %"arg_8h") 

declare void @"sym.cgc_getMoveInBoat"(i32 %"arg_8h") 

declare void @"sym.cgc_moveForwardInBoat"(i32 %"arg_8h") 

declare void @"sym.cgc_moveRightInBoat"(i32 %"arg_8h") 

declare void @"sym.cgc_moveLeftInBoat"(i32 %"arg_8h") 

declare void @"sym.cgc_initCarChase"(i32 %"arg_8h") 
