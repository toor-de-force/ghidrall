; ModuleID = "WordCompletion"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_gWords" = global i32 0
@"obj.gRandRegister" = global i32 0
@"obj.cgc_gWordData" = global i32 0
@"str.Final_Round._Chose_another_2_digit_number" = external global i64
@"str.Next_Word:" = external global i64
@"str.Please_Enter_a_2_Digit_Number" = external global i64
@"str.You_Lose" = external global i64
@"str.You_Win" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"var_c4h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".39" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  %".40" = alloca i8**
  %".41" = alloca i32**
  store i8** %"argv", i8*** %".40"
  store i32** %"envp", i32*** %".41"
  br label %"0"
"0":
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_54h"
  store i32 0, i32* %"var_60h"
  store i8 10, i8* %".33"
  call void @"sym.cgc_transmit_str"(i32 134520300)
  %".51" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".52" = ptrtoint i8* %".51" to i32
  %".53" = call i32 @"sym.cgc_readline"(i32 %".52", i32 64)
  store i32 %".53", i32* %"var_60h"
  %".55" = load i32, i32* %"var_60h"
  %".56" = icmp eq i32 %".55", 0
  %".57" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000206"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".64" = load i32, i32* %"var_50h"
  %".65" = trunc i32 %".64" to i8
  %".66" = sext i8 %".65" to i32
  store i32 %".66", i32* %"register0x00000004"
  %".68" = load i32, i32* %"var_50h"
  %".69" = trunc i32 %".68" to i8
  %".70" = sext i8 %".69" to i32
  store i32 %".70", i32* %"register0x00000004"
  %".72" = load i32, i32* %"register0x00000004"
  %".73" = load i32, i32* %"register0x00000004"
  %".74" = call i32 @"sym.cgc_toInt"(i32 %".72", i32 %".73")
  store i32 %".74", i32* %"var_54h"
  %".76" = load i32, i32* %"var_54h"
  %".77" = add i32 %".76", 1
  store i32 %".77", i32* %"register0x00000000"
  %".79" = load i32, i32* %"register0x00000000"
  %".80" = call i32 @"sym.cgc_init"(i32 %".79")
  store i32 %".80", i32* %"iVar1"
  %".82" = load i32, i32* %"iVar1"
  %".83" = icmp eq i32 %".82", 0
  %".84" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".83", i1* %".84"
  %".86" = load i8, i8* %"register0x00000206"
  %".87" = trunc i8 %".86" to i1
  br i1 %".87", label %"3", label %"15"
"3":
  %".89" = load i32, i32* %"var_50h"
  call void @"sym.cgc_my_srand"(i32 %".89")
  store i32 0, i32* %"var_54h"
  br label %"4"
"4":
  %".93" = load i32, i32* %"var_54h"
  %".94" = icmp slt i32 %".93", 10
  br i1 %".94", label %"5", label %"d"
"5":
  %".96" = load i32, i32* %"var_54h"
  %".97" = icmp eq i32 %".96", 0
  %".98" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".97", i1* %".98"
  %".100" = load i8, i8* %"register0x00000206"
  %".101" = trunc i8 %".100" to i1
  br i1 %".101", label %"7", label %"6"
"6":
  call void @"sym.cgc_transmit_str"(i32 134520331)
  br label %"8"
"7":
  call void @"sym.cgc_transmit_str"(i32 134520336)
  br label %"8"
"8":
  %".107" = call i32 @"sym.cgc_RANDOM"()
  store i32 %".107", i32* %"uVar2"
  %".109" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".110" = load i32, i32* %"uVar2"
  %".111" = urem i32 %".110", 51
  store i32 %".111", i32* %"register0x00000008"
  %".113" = load i32, i32* %"register0x00000008"
  %".114" = mul i32 %".113", 4
  %".115" = load i32, i32* @"obj.cgc_gWords"
  %".116" = add i32 %".115", %".114"
  %".117" = ptrtoint i8* %".109" to i32
  call void @"sym.cgc_scramble"(i32 %".117", i32 %".116", i32 64)
  %".119" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".120" = ptrtoint i8* %".119" to i32
  call void @"sym.cgc_transmit_str"(i32 %".120")
  %".122" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".123" = ptrtoint i8* %".122" to i32
  %".124" = call i32 @"sym.cgc_transmit_all"(i32 %".123", i32 1)
  %".125" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".126" = ptrtoint i8* %".125" to i32
  %".127" = call i32 @"sym.cgc_readline"(i32 %".126", i32 64)
  store i32 %".127", i32* %"var_60h"
  %".129" = load i32, i32* %"var_60h"
  %".130" = icmp eq i32 %".129", 0
  %".131" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".130", i1* %".131"
  %".133" = load i8, i8* %"register0x00000206"
  %".134" = trunc i8 %".133" to i1
  br i1 %".134", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".138" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".139" = load i32, i32* %"var_60h"
  %".140" = add i32 %".139", 3
  %".141" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".142" = ptrtoint i8* %".141" to i32
  %".143" = add i32 %".142", %".140"
  %".144" = load i32, i32* %"register0x00000008"
  %".145" = mul i32 %".144", 4
  %".146" = load i32, i32* @"obj.cgc_gWords"
  %".147" = add i32 %".146", %".145"
  %".148" = ptrtoint i8* %".138" to i32
  %".149" = call i32 @"sym.cgc_strcmp"(i32 %".148", i32 %".147")
  store i32 %".149", i32* %"iVar1"
  %".151" = load i32, i32* %"iVar1"
  %".152" = icmp ne i32 %".151", 0
  %".153" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".152", i1* %".153"
  %".155" = load i8, i8* %"register0x00000206"
  %".156" = trunc i8 %".155" to i1
  br i1 %".156", label %"b", label %"c"
b:
  call void @"sym.cgc_transmit_str"(i32 134520343)
  store i32 0, i32* %"register0x00000000"
  %".160" = load i32, i32* %"register0x00000000"
  ret i32 %".160"
c:
  %".162" = load i32, i32* %"var_54h"
  %".163" = add i32 %".162", 1
  store i32 %".163", i32* %"var_54h"
  br label %"4"
d:
  call void @"sym.cgc_transmit_str"(i32 134520353)
  %".167" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".168" = ptrtoint i8* %".167" to i32
  %".169" = call i32 @"sym.cgc_readline"(i32 %".168", i32 64)
  store i32 %".169", i32* %"var_60h"
  %".171" = load i32, i32* %"var_60h"
  %".172" = icmp eq i32 %".171", 0
  %".173" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".172", i1* %".173"
  %".175" = load i8, i8* %"register0x00000206"
  %".176" = trunc i8 %".175" to i1
  br i1 %".176", label %"e", label %"f"
e:
  call void @"sym.imp.cgc__terminate"()
  br label %"f"
f:
  %".180" = load i32, i32* %"var_50h"
  %".181" = trunc i32 %".180" to i8
  %".182" = sext i8 %".181" to i32
  store i32 %".182", i32* %"register0x00000004"
  %".184" = load i32, i32* %"var_50h"
  %".185" = trunc i32 %".184" to i8
  %".186" = sext i8 %".185" to i32
  store i32 %".186", i32* %"register0x00000004"
  %".188" = load i32, i32* %"register0x00000004"
  %".189" = load i32, i32* %"register0x00000004"
  %".190" = call i32 @"sym.cgc_toInt"(i32 %".188", i32 %".189")
  store i32 %".190", i32* %"var_54h"
  %".192" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".193" = load i32, i32* %"var_54h"
  %".194" = mul i32 %".193", 4
  %".195" = load i32, i32* @"obj.cgc_gWords"
  %".196" = add i32 %".195", %".194"
  %".197" = ptrtoint i8* %".192" to i32
  call void @"sym.cgc_scramble"(i32 %".197", i32 %".196", i32 64)
  %".199" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".200" = ptrtoint i8* %".199" to i32
  call void @"sym.cgc_transmit_str"(i32 %".200")
  %".202" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".203" = ptrtoint i8* %".202" to i32
  %".204" = call i32 @"sym.cgc_transmit_all"(i32 %".203", i32 1)
  %".205" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".206" = ptrtoint i8* %".205" to i32
  %".207" = call i32 @"sym.cgc_readline"(i32 %".206", i32 64)
  store i32 %".207", i32* %"var_60h"
  %".209" = load i32, i32* %"var_60h"
  %".210" = icmp eq i32 %".209", 0
  %".211" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".210", i1* %".211"
  %".213" = load i8, i8* %"register0x00000206"
  %".214" = trunc i8 %".213" to i1
  br i1 %".214", label %"10", label %"11"
"10":
  call void @"sym.imp.cgc__terminate"()
  br label %"11"
"11":
  %".218" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".219" = load i32, i32* %"var_60h"
  %".220" = add i32 %".219", 3
  %".221" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".222" = ptrtoint i8* %".221" to i32
  %".223" = add i32 %".222", %".220"
  %".224" = trunc i32 %".223" to i8
  %".225" = load i32, i32* %"var_54h"
  %".226" = mul i32 %".225", 4
  %".227" = load i32, i32* @"obj.cgc_gWords"
  %".228" = add i32 %".227", %".226"
  %".229" = ptrtoint i8* %".218" to i32
  %".230" = call i32 @"sym.cgc_strcmp"(i32 %".229", i32 %".228")
  store i32 %".230", i32* %"iVar1"
  %".232" = load i32, i32* %"iVar1"
  %".233" = icmp eq i32 %".232", 0
  %".234" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".233", i1* %".234"
  %".236" = load i8, i8* %"register0x00000206"
  %".237" = trunc i8 %".236" to i1
  br i1 %".237", label %"12", label %"13"
"12":
  call void @"sym.cgc_transmit_str"(i32 134520396)
  br label %"14"
"13":
  call void @"sym.cgc_transmit_str"(i32 134520343)
  br label %"14"
"14":
  store i32 0, i32* %"var_10h"
  br label %"16"
"15":
  store i32 -1, i32* %"var_10h"
  br label %"16"
"16":
  %".247" = load i32, i32* %"var_10h"
  store i32 %".247", i32* %"register0x00000000"
  %".249" = load i32, i32* %"register0x00000000"
  ret i32 %".249"
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

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_my_srand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_toInt"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_init"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_strrotcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_rotN"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_readline"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_scramble"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_RANDOM"() 

declare void @"_reloc.memset"() 
