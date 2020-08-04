; ModuleID = "WordCompletion_patched"
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
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"var_c4h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".40" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  %".41" = alloca i8**
  %".42" = alloca i32**
  store i8** %"argv", i8*** %".41"
  store i32** %"envp", i32*** %".42"
  br label %"0"
"0":
  %".46" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_54h"
  store i32 0, i32* %"var_60h"
  store i8 10, i8* %".34"
  call void @"sym.cgc_transmit_str"(i32 134520348)
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".53" = ptrtoint i8* %".52" to i32
  %".54" = call i32 @"sym.cgc_readline"(i32 %".53", i32 64)
  store i32 %".54", i32* %"var_60h"
  %".56" = load i32, i32* %"var_60h"
  %".57" = icmp eq i32 %".56", 0
  %".58" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".57", i1* %".58"
  %".60" = load i8, i8* %"register0x00000206"
  %".61" = trunc i8 %".60" to i1
  br i1 %".61", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".65" = load i32, i32* %"var_50h"
  %".66" = trunc i32 %".65" to i8
  %".67" = sext i8 %".66" to i32
  store i32 %".67", i32* %"register0x00000004"
  %".69" = load i32, i32* %"var_50h"
  %".70" = trunc i32 %".69" to i8
  %".71" = sext i8 %".70" to i32
  store i32 %".71", i32* %"register0x00000004"
  %".73" = load i32, i32* %"register0x00000004"
  %".74" = load i32, i32* %"register0x00000004"
  %".75" = call i32 @"sym.cgc_toInt"(i32 %".73", i32 %".74")
  store i32 %".75", i32* %"var_54h"
  %".77" = load i32, i32* %"var_54h"
  %".78" = add i32 %".77", 1
  store i32 %".78", i32* %"register0x00000000"
  %".80" = load i32, i32* %"register0x00000000"
  %".81" = call i32 @"sym.cgc_init"(i32 %".80")
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"3", label %"15"
"3":
  %".90" = load i32, i32* %"var_50h"
  call void @"sym.cgc_my_srand"(i32 %".90")
  store i32 0, i32* %"var_54h"
  br label %"4"
"4":
  %".94" = load i32, i32* %"var_54h"
  %".95" = icmp slt i32 %".94", 10
  br i1 %".95", label %"5", label %"d"
"5":
  %".97" = load i32, i32* %"var_54h"
  %".98" = icmp eq i32 %".97", 0
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"7", label %"6"
"6":
  call void @"sym.cgc_transmit_str"(i32 134520379)
  br label %"8"
"7":
  call void @"sym.cgc_transmit_str"(i32 134520384)
  br label %"8"
"8":
  %".108" = call i32 @"sym.cgc_RANDOM"()
  store i32 %".108", i32* %"uVar2"
  %".110" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".111" = load i32, i32* %"uVar2"
  %".112" = urem i32 %".111", 51
  store i32 %".112", i32* %"register0x00000008"
  %".114" = load i32, i32* %"register0x00000008"
  %".115" = mul i32 %".114", 4
  %".116" = load i32, i32* @"obj.cgc_gWords"
  %".117" = add i32 %".116", %".115"
  %".118" = ptrtoint i8* %".110" to i32
  call void @"sym.cgc_scramble"(i32 %".118", i32 %".117", i32 64)
  %".120" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".121" = ptrtoint i8* %".120" to i32
  call void @"sym.cgc_transmit_str"(i32 %".121")
  %".123" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".124" = ptrtoint i8* %".123" to i32
  %".125" = call i32 @"sym.cgc_transmit_all"(i32 %".124", i32 1)
  %".126" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".127" = ptrtoint i8* %".126" to i32
  %".128" = call i32 @"sym.cgc_readline"(i32 %".127", i32 64)
  store i32 %".128", i32* %"var_60h"
  %".130" = load i32, i32* %"var_60h"
  %".131" = icmp eq i32 %".130", 0
  %".132" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".131", i1* %".132"
  %".134" = load i8, i8* %"register0x00000206"
  %".135" = trunc i8 %".134" to i1
  br i1 %".135", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".139" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".140" = load i32, i32* %"var_60h"
  %".141" = add i32 %".140", 3
  %".142" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".143" = ptrtoint i8* %".142" to i32
  %".144" = add i32 %".143", %".141"
  %".145" = load i32, i32* %"register0x00000008"
  %".146" = mul i32 %".145", 4
  %".147" = load i32, i32* @"obj.cgc_gWords"
  %".148" = add i32 %".147", %".146"
  %".149" = ptrtoint i8* %".139" to i32
  %".150" = call i32 @"sym.cgc_strcmp"(i32 %".149", i32 %".148")
  store i32 %".150", i32* %"iVar1"
  %".152" = load i32, i32* %"iVar1"
  %".153" = icmp ne i32 %".152", 0
  %".154" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".153", i1* %".154"
  %".156" = load i8, i8* %"register0x00000206"
  %".157" = trunc i8 %".156" to i1
  br i1 %".157", label %"b", label %"c"
b:
  call void @"sym.cgc_transmit_str"(i32 134520391)
  store i32 0, i32* %"register0x00000000"
  %".161" = load i32, i32* %"register0x00000000"
  ret i32 %".161"
c:
  %".163" = load i32, i32* %"var_54h"
  %".164" = add i32 %".163", 1
  store i32 %".164", i32* %"var_54h"
  br label %"4"
d:
  call void @"sym.cgc_transmit_str"(i32 134520401)
  %".168" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".169" = ptrtoint i8* %".168" to i32
  %".170" = call i32 @"sym.cgc_readline"(i32 %".169", i32 64)
  store i32 %".170", i32* %"var_60h"
  %".172" = load i32, i32* %"var_60h"
  %".173" = icmp eq i32 %".172", 0
  %".174" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".173", i1* %".174"
  %".176" = load i8, i8* %"register0x00000206"
  %".177" = trunc i8 %".176" to i1
  br i1 %".177", label %"e", label %"f"
e:
  call void @"sym.imp.cgc__terminate"()
  br label %"f"
f:
  %".181" = load i32, i32* %"var_50h"
  %".182" = trunc i32 %".181" to i8
  %".183" = sext i8 %".182" to i32
  store i32 %".183", i32* %"register0x00000004"
  %".185" = load i32, i32* %"var_50h"
  %".186" = trunc i32 %".185" to i8
  %".187" = sext i8 %".186" to i32
  store i32 %".187", i32* %"register0x00000004"
  %".189" = load i32, i32* %"register0x00000004"
  %".190" = load i32, i32* %"register0x00000004"
  %".191" = call i32 @"sym.cgc_toInt"(i32 %".189", i32 %".190")
  store i32 %".191", i32* %"uVar2"
  %".193" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".194" = load i32, i32* %"uVar2"
  %".195" = urem i32 %".194", 51
  store i32 %".195", i32* %"var_54h"
  %".197" = load i32, i32* %"var_54h"
  %".198" = mul i32 %".197", 4
  %".199" = load i32, i32* @"obj.cgc_gWords"
  %".200" = add i32 %".199", %".198"
  %".201" = ptrtoint i8* %".193" to i32
  call void @"sym.cgc_scramble"(i32 %".201", i32 %".200", i32 64)
  %".203" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".204" = ptrtoint i8* %".203" to i32
  call void @"sym.cgc_transmit_str"(i32 %".204")
  %".206" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999899
  %".207" = ptrtoint i8* %".206" to i32
  %".208" = call i32 @"sym.cgc_transmit_all"(i32 %".207", i32 1)
  %".209" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".210" = ptrtoint i8* %".209" to i32
  %".211" = call i32 @"sym.cgc_readline"(i32 %".210", i32 64)
  store i32 %".211", i32* %"var_60h"
  %".213" = load i32, i32* %"var_60h"
  %".214" = icmp eq i32 %".213", 0
  %".215" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".214", i1* %".215"
  %".217" = load i8, i8* %"register0x00000206"
  %".218" = trunc i8 %".217" to i1
  br i1 %".218", label %"10", label %"11"
"10":
  call void @"sym.imp.cgc__terminate"()
  br label %"11"
"11":
  %".222" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".223" = load i32, i32* %"var_60h"
  %".224" = add i32 %".223", 3
  %".225" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".226" = ptrtoint i8* %".225" to i32
  %".227" = add i32 %".226", %".224"
  %".228" = trunc i32 %".227" to i8
  %".229" = load i32, i32* %"var_54h"
  %".230" = mul i32 %".229", 4
  %".231" = load i32, i32* @"obj.cgc_gWords"
  %".232" = add i32 %".231", %".230"
  %".233" = ptrtoint i8* %".222" to i32
  %".234" = call i32 @"sym.cgc_strcmp"(i32 %".233", i32 %".232")
  store i32 %".234", i32* %"iVar1"
  %".236" = load i32, i32* %"iVar1"
  %".237" = icmp eq i32 %".236", 0
  %".238" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".237", i1* %".238"
  %".240" = load i8, i8* %"register0x00000206"
  %".241" = trunc i8 %".240" to i1
  br i1 %".241", label %"12", label %"13"
"12":
  call void @"sym.cgc_transmit_str"(i32 134520444)
  br label %"14"
"13":
  call void @"sym.cgc_transmit_str"(i32 134520391)
  br label %"14"
"14":
  store i32 0, i32* %"var_10h"
  br label %"16"
"15":
  store i32 -1, i32* %"var_10h"
  br label %"16"
"16":
  %".251" = load i32, i32* %"var_10h"
  store i32 %".251", i32* %"register0x00000000"
  %".253" = load i32, i32* %"register0x00000000"
  ret i32 %".253"
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
