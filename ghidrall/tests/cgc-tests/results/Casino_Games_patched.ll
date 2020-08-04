; ModuleID = "Casino_Games_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.position" = global i32 0
@"str.1._Play_Blackjack" = external global i64
@"str.2._Play_Poker" = external global i64
@"str.3._Play_Slots" = external global i64
@"str.4._Enter_a_Players_Club_Number" = external global i64
@"str.5._Register_a_new_Player" = external global i64
@"str.6._Show_Player_Status" = external global i64
@"str.7._Show_All_Players" = external global i64
@"str.8._Exit" = external global i64
@"str.Access_Granted" = external global i64
@"str.Enter_your_name:" = external global i64
@"str.Hello___s" = external global i64
@"str.Select_a_number:" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %"uVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"in_stack_fffffeb8" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"var_c4h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999827
  %"var_a9h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999871
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".39" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x0000001c" = alloca i32
  %".40" = alloca i8**
  %".41" = alloca i32**
  store i8** %"argv", i8*** %".40"
  store i32** %"envp", i32*** %".41"
  br label %"0"
"0":
  %".45" = load i32, i32* %"in_stack_fffffeb8"
  %".46" = call i32 @"sym.cgc_printf"(i32 134536368, i32 %".45")
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  call void @"sym.imp.cgc_receive"()
  %".50" = load i32, i32* %"var_64h"
  %".51" = icmp ne i32 %".50", 0
  %".52" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".51", i1* %".52"
  %".54" = load i8, i8* %"register0x00000206"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"2", label %"1"
"1":
  %".57" = load i32, i32* %"var_68h"
  %".58" = icmp eq i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".66" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".68" = ptrtoint i8* %".67" to i32
  %".69" = load i32, i32* %"var_68h"
  %".70" = add i32 %".68", %".69"
  %".71" = ptrtoint i8* %".66" to i32
  %".72" = call i32 @"sym.cgc_strlen"(i32 %".71")
  store i32 %".72", i32* %"iVar1"
  %".74" = load i32, i32* %"iVar1"
  %".75" = add i32 %".74", 3
  %".76" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".77" = ptrtoint i8* %".76" to i32
  %".78" = add i32 %".77", %".75"
  %".79" = trunc i32 %".78" to i8
  %".80" = icmp eq i8 %".79", 10
  %".81" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".80", i1* %".81"
  %".83" = load i8, i8* %"register0x00000206"
  %".84" = trunc i8 %".83" to i1
  br i1 %".84", label %"4", label %"5"
"4":
  %".86" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".87" = ptrtoint i8* %".86" to i32
  %".88" = call i32 @"sym.cgc_strlen"(i32 %".87")
  store i32 %".88", i32* %"iVar1"
  %".90" = load i32, i32* %"iVar1"
  %".91" = add i32 %".90", 3
  %".92" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".93" = ptrtoint i8* %".92" to i32
  %".94" = add i32 %".93", %".91"
  %".95" = trunc i32 %".94" to i8
  br label %"5"
"5":
  %".97" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".98" = ptrtoint i8* %".97" to i32
  %".99" = call i32 @"sym.cgc_printf"(i32 134536175, i32 %".98")
  store i32 0, i32* %"var_6ch"
  store i32 0, i32* %"var_70h"
  store i32 0, i32* %"var_74h"
  br label %"6"
"6":
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".105" = ptrtoint i8* %".104" to i32
  %".106" = call i32 @"sym.cgc_strlen"(i32 %".105")
  store i32 %".106", i32* %"uVar2"
  %".108" = load i32, i32* %"var_74h"
  %".109" = load i32, i32* %"uVar2"
  %".110" = icmp ult i32 %".108", %".109"
  %".111" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".110", i1* %".111"
  %".113" = load i8, i8* %"register0x00000200"
  %".114" = trunc i8 %".113" to i1
  br i1 %".114", label %"7", label %"8"
"7":
  %".116" = load i32, i32* %"var_6ch"
  %".117" = shl i32 %".116", 8
  %".118" = load i32, i32* %"var_70h"
  %".119" = lshr i32 %".118", 24
  store i32 %".119", i32* %"uVar2"
  %".121" = load i32, i32* %"uVar2"
  %".122" = or i32 %".117", %".121"
  store i32 %".122", i32* %"register0x00000008"
  %".124" = load i32, i32* %"var_70h"
  %".125" = shl i32 %".124", 8
  store i32 %".125", i32* %"register0x00000000"
  %".127" = load i32, i32* %"var_6ch"
  %".128" = lshr i32 %".127", 24
  store i32 %".128", i32* %"register0x00000004"
  %".130" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".131" = ptrtoint i8* %".130" to i32
  %".132" = load i32, i32* %"var_74h"
  %".133" = add i32 %".131", %".132"
  %".134" = trunc i32 %".133" to i8
  %".135" = sext i8 %".134" to i32
  store i32 %".135", i32* %"register0x00000018"
  %".137" = load i32, i32* %"register0x00000018"
  %".138" = ashr i32 %".137", 31
  store i32 %".138", i32* %"register0x0000001c"
  %".140" = load i32, i32* %"register0x00000004"
  %".141" = load i32, i32* %"register0x00000018"
  %".142" = xor i32 %".140", %".141"
  store i32 %".142", i32* %"register0x00000004"
  %".144" = load i32, i32* %"register0x00000000"
  %".145" = load i32, i32* %"register0x00000004"
  %".146" = or i32 %".144", %".145"
  store i32 %".146", i32* %"var_70h"
  %".148" = load i32, i32* %"register0x00000008"
  %".149" = load i32, i32* %"register0x0000001c"
  %".150" = or i32 %".148", %".149"
  store i32 %".150", i32* %"var_6ch"
  %".152" = load i32, i32* %"var_74h"
  %".153" = add i32 %".152", 1
  store i32 %".153", i32* %"var_74h"
  br label %"6"
"8":
  %".156" = load i32, i32* %"var_6ch"
  store i32 %".156", i32* %"iVar1"
  %".158" = load i32, i32* %"var_70h"
  %".159" = load i32, i32* %"var_6ch"
  call void @"sym.cgc_sprng"(i32 %".158", i32 %".159")
  %".161" = load i32, i32* %"var_6ch"
  %".162" = xor i32 %".161", 1684156720
  store i32 %".162", i32* %"register0x00000004"
  %".164" = load i32, i32* %"var_70h"
  %".165" = xor i32 %".164", 842401362
  store i32 %".165", i32* %"register0x00000000"
  %".167" = load i32, i32* %"register0x00000000"
  %".168" = load i32, i32* %"register0x00000004"
  %".169" = or i32 %".167", %".168"
  store i32 %".169", i32* %"register0x00000000"
  %".171" = load i32, i32* %"register0x00000000"
  %".172" = icmp eq i32 %".171", 0
  %".173" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".172", i1* %".173"
  %".175" = load i8, i8* %"register0x00000206"
  %".176" = trunc i8 %".175" to i1
  br i1 %".176", label %"9", label %"a"
"9":
  %".178" = load i32, i32* %"iVar1"
  %".179" = call i32 @"sym.cgc_printf"(i32 134536422, i32 %".178")
  call void @"sym.cgc_programming_interface"()
  br label %"a"
a:
  store i32 0, i32* %"var_7ch"
  br label %"b"
b:
  %".184" = load i32, i32* %"iVar1"
  %".185" = call i32 @"sym.cgc_printf"(i32 134535340, i32 %".184")
  %".186" = load i32, i32* %"iVar1"
  %".187" = call i32 @"sym.cgc_printf"(i32 134536438, i32 %".186")
  %".188" = load i32, i32* %"iVar1"
  %".189" = call i32 @"sym.cgc_printf"(i32 134536457, i32 %".188")
  %".190" = load i32, i32* %"iVar1"
  %".191" = call i32 @"sym.cgc_printf"(i32 134536472, i32 %".190")
  %".192" = load i32, i32* %"iVar1"
  %".193" = call i32 @"sym.cgc_printf"(i32 134536487, i32 %".192")
  %".194" = load i32, i32* %"iVar1"
  %".195" = call i32 @"sym.cgc_printf"(i32 134536519, i32 %".194")
  %".196" = load i32, i32* %"iVar1"
  %".197" = call i32 @"sym.cgc_printf"(i32 134536545, i32 %".196")
  %".198" = load i32, i32* %"iVar1"
  %".199" = call i32 @"sym.cgc_printf"(i32 134536568, i32 %".198")
  %".200" = load i32, i32* %"iVar1"
  %".201" = call i32 @"sym.cgc_printf"(i32 134536589, i32 %".200")
  %".202" = load i32, i32* %"iVar1"
  %".203" = call i32 @"sym.cgc_printf"(i32 134536598, i32 %".202")
  %".204" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999871
  store i32 10, i32* %"iVar1"
  %".206" = ptrtoint i8* %".204" to i32
  %".207" = call i32 @"sym.cgc_receive_fixed_input"(i32 %".206", i32 10, i32 1)
  %".208" = load i8, i8* %".30"
  %".209" = sext i8 %".208" to i32
  store i32 %".209", i32* %"register0x00000004"
  %".211" = load i32, i32* %"register0x00000004"
  %".212" = sub i32 %".211", 49
  store i32 %".212", i32* %"uVar2"
  %".214" = load i32, i32* %"uVar2"
  %".215" = icmp ult i32 6, %".214"
  %".216" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".215", i1* %".216"
  %".218" = load i32, i32* %"register0x00000004"
  %".219" = icmp ne i32 %".218", 56
  %".220" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".219", i1* %".220"
  %".222" = load i8, i8* %"register0x00000200"
  %".223" = load i8, i8* %"register0x00000200"
  %".224" = and i8 %".222", %".223"
  %".225" = trunc i8 %".224" to i1
  br i1 %".225", label %"b", label %"c"
c:
  %".227" = load i32, i32* %"uVar2"
  %".228" = mul i32 %".227", 4
  %".229" = add i32 %".228", 134536104
  %".230" = call i32 @"unique0x00000f30"()
  %".231" = load i32, i32* %"uVar3"
  ret i32 %".231"
}

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_receive_fixed_input"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_programming_interface"() 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_decode"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_lookup"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sprng"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"unique0x00000f30"() 
