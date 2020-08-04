; ModuleID = "QUIETSQUARE"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.rx_bytes" = global i32 0
@"obj.rx_buf" = global i8 0
@"obj.cgc_ct_index" = global i32 0
@"obj.cgc_rx_index" = global i32 0
@"obj.tx_bytes" = global i32 0
@"obj.cgc_depth" = global i32 0
@"obj.PKT_CONNTERM_ACK" = external global i64
@"obj.PKT_CONNTERM_ERR" = external global i64
@"obj.PKT_EXIT" = external global i64
@"obj.PKT_EXIT_ACK" = external global i64
@"obj.PKT_INVALID_SZ" = external global i64
@"obj.PKT_OTP_ACK" = external global i64
@"obj.cgc_PKT_CONNTERM" = external global i64
@"obj.cgc_otp" = external global i64
@"obj.ct" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".4" to i32*
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
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".41" to i32*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".44" to i32*
  %".45" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".45" to i32*
  %".46" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".46" to i32*
  %".47" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".47" to i32*
  %".48" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".48" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000008" = alloca i32
  %".49" = alloca i8**
  %".50" = alloca i32**
  store i8** %"argv", i8*** %".49"
  store i32** %"envp", i32*** %".50"
  br label %"0"
"0":
  store i32 0, i32* %"var_18h"
  store i32 256, i32* %"var_1ch"
  call void @"sym.cgc_exercise_stack"()
  br label %"1"
"1":
  store i32 0, i32* @"obj.rx_bytes"
  %".59" = ptrtoint i8* @"obj.rx_buf" to i32
  %".60" = call i32 @"sym.cgc_memset"(i32 %".59", i32 0, i32 256)
  %".61" = ptrtoint i8* @"obj.rx_buf" to i32
  %".62" = ptrtoint i32* @"obj.rx_bytes" to i32
  %".63" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".61", i32 256, i32 %".62")
  store i32 %".63", i32* %"iVar1"
  %".65" = load i32, i32* %"iVar1"
  %".66" = icmp ne i32 %".65", 0
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"2", label %"3"
"2":
  store i32 4294967289, i32* %"register0x00000000"
  %".73" = load i32, i32* %"register0x00000000"
  ret i32 %".73"
"3":
  %".75" = load i32, i32* @"obj.rx_bytes"
  %".76" = icmp eq i32 %".75", 42
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"4", label %"8"
"4":
  %".82" = ptrtoint i8* @"obj.rx_buf" to i32
  %".83" = ptrtoint i64* @"obj.PKT_EXIT" to i32
  %".84" = call i32 @"sym.cgc_memcmp"(i32 %".82", i32 %".83", i32 42)
  store i32 %".84", i32* %"iVar1"
  %".86" = load i32, i32* %"iVar1"
  %".87" = icmp eq i32 %".86", 0
  %".88" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".87", i1* %".88"
  %".90" = load i8, i8* %"register0x00000206"
  %".91" = trunc i8 %".90" to i1
  br i1 %".91", label %"5", label %"8"
"5":
  %".93" = ptrtoint i64* @"obj.PKT_EXIT_ACK" to i32
  %".94" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".93", i32 42, i32 0)
  store i32 %".94", i32* %"iVar1"
  %".96" = load i32, i32* %"iVar1"
  %".97" = icmp eq i32 %".96", 0
  %".98" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".97", i1* %".98"
  %".100" = load i8, i8* %"register0x00000206"
  %".101" = trunc i8 %".100" to i1
  br i1 %".101", label %"7", label %"6"
"6":
  store i32 4294967288, i32* %"register0x00000000"
  %".104" = load i32, i32* %"register0x00000000"
  ret i32 %".104"
"7":
  store i32 0, i32* %"register0x00000000"
  %".107" = load i32, i32* %"register0x00000000"
  ret i32 %".107"
"8":
  %".109" = load i32, i32* @"obj.rx_bytes"
  %".110" = load i32, i32* %"var_1ch"
  %".111" = icmp eq i32 %".109", %".110"
  %".112" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".111", i1* %".112"
  %".114" = load i8, i8* %"register0x00000206"
  %".115" = trunc i8 %".114" to i1
  br i1 %".115", label %"9", label %"1e"
"9":
  %".117" = load i32, i32* %"var_18h"
  %".118" = icmp eq i32 %".117", 0
  %".119" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".118", i1* %".119"
  %".121" = load i8, i8* %"register0x00000206"
  %".122" = trunc i8 %".121" to i1
  br i1 %".122", label %"a", label %"10"
a:
  %".124" = ptrtoint i8* @"obj.rx_buf" to i32
  %".125" = ptrtoint i64* @"obj.cgc_PKT_CONNTERM" to i32
  %".126" = call i32 @"sym.cgc_memcmp"(i32 %".124", i32 %".125", i32 256)
  store i32 %".126", i32* %"iVar1"
  %".128" = load i32, i32* %"iVar1"
  %".129" = icmp eq i32 %".128", 0
  %".130" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".129", i1* %".130"
  %".132" = load i8, i8* %"register0x00000206"
  %".133" = trunc i8 %".132" to i1
  br i1 %".133", label %"b", label %"e"
b:
  %".135" = ptrtoint i64* @"obj.PKT_CONNTERM_ACK" to i32
  %".136" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".135", i32 256, i32 0)
  store i32 %".136", i32* %"iVar1"
  %".138" = load i32, i32* %"iVar1"
  %".139" = icmp ne i32 %".138", 0
  %".140" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".139", i1* %".140"
  %".142" = load i8, i8* %"register0x00000206"
  %".143" = trunc i8 %".142" to i1
  br i1 %".143", label %"c", label %"d"
c:
  store i32 4294967288, i32* %"register0x00000000"
  %".146" = load i32, i32* %"register0x00000000"
  ret i32 %".146"
d:
  store i32 1, i32* %"var_18h"
  store i32 16, i32* %"var_1ch"
  br label %"1"
e:
  %".151" = ptrtoint i64* @"obj.PKT_CONNTERM_ERR" to i32
  %".152" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".151", i32 256, i32 0)
  store i32 %".152", i32* %"iVar1"
  %".154" = load i32, i32* %"iVar1"
  %".155" = icmp ne i32 %".154", 0
  %".156" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".155", i1* %".156"
  %".158" = load i8, i8* %"register0x00000206"
  %".159" = trunc i8 %".158" to i1
  br i1 %".159", label %"1", label %"f"
f:
  store i32 4294967288, i32* %"register0x00000000"
  %".162" = load i32, i32* %"register0x00000000"
  ret i32 %".162"
"10":
  %".164" = load i32, i32* %"var_18h"
  %".165" = icmp eq i32 %".164", 1
  %".166" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".165", i1* %".166"
  %".168" = load i8, i8* %"register0x00000206"
  %".169" = trunc i8 %".168" to i1
  br i1 %".169", label %"11", label %"13"
"11":
  %".171" = ptrtoint i64* @"obj.cgc_otp" to i32
  %".172" = ptrtoint i8* @"obj.rx_buf" to i32
  call void @"sym.cgc_memcpy"(i32 %".171", i32 %".172", i32 16)
  store i32 2, i32* %"var_18h"
  store i32 256, i32* %"var_1ch"
  %".176" = ptrtoint i64* @"obj.PKT_OTP_ACK" to i32
  %".177" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".176", i32 16, i32 0)
  store i32 %".177", i32* %"iVar1"
  %".179" = load i32, i32* %"iVar1"
  %".180" = icmp ne i32 %".179", 0
  %".181" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".180", i1* %".181"
  %".183" = load i8, i8* %"register0x00000206"
  %".184" = trunc i8 %".183" to i1
  br i1 %".184", label %"1", label %"12"
"12":
  store i32 4294967288, i32* %"register0x00000000"
  %".187" = load i32, i32* %"register0x00000000"
  ret i32 %".187"
"13":
  %".189" = load i32, i32* %"var_18h"
  %".190" = icmp ne i32 %".189", 2
  %".191" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".190", i1* %".191"
  %".193" = load i8, i8* %"register0x00000206"
  %".194" = trunc i8 %".193" to i1
  br i1 %".194", label %"14", label %"15"
"14":
  store i32 4294967283, i32* %"register0x00000000"
  %".197" = load i32, i32* %"register0x00000000"
  ret i32 %".197"
"15":
  %".199" = ptrtoint i8* @"obj.rx_buf" to i32
  %".200" = ptrtoint i64* @"obj.cgc_PKT_CONNTERM" to i32
  %".201" = call i32 @"sym.cgc_memcmp"(i32 %".199", i32 %".200", i32 256)
  store i32 %".201", i32* %"iVar1"
  %".203" = load i32, i32* %"iVar1"
  %".204" = icmp eq i32 %".203", 0
  %".205" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".204", i1* %".205"
  %".207" = load i8, i8* %"register0x00000206"
  %".208" = trunc i8 %".207" to i1
  br i1 %".208", label %"16", label %"17"
"16":
  store i32 1, i32* %"var_18h"
  store i32 16, i32* %"var_1ch"
  br label %"1"
"17":
  %".213" = load i8, i8* @"obj.rx_buf"
  %".214" = icmp eq i8 %".213", 255
  %".215" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".214", i1* %".215"
  %".217" = load i8, i8* %"register0x00000206"
  %".218" = trunc i8 %".217" to i1
  br i1 %".218", label %"18", label %"19"
"18":
  %".220" = ptrtoint i8* @"obj.rx_buf" to i32
  %".221" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".220", i32 255, i32 0)
  br label %"1"
"19":
  store i32 0, i32* @"obj.cgc_rx_index"
  store i32 0, i32* @"obj.cgc_ct_index"
  %".225" = ptrtoint i64* @"obj.ct" to i32
  %".226" = call i32 @"sym.cgc_memset"(i32 %".225", i32 0, i32 256)
  %".227" = call i32 @"sym.cgc_defrag"(i32 256)
  store i32 0, i32* %"var_20h"
  br label %"1a"
"1a":
  %".230" = load i32, i32* %"var_20h"
  %".231" = load i32, i32* @"obj.cgc_ct_index"
  %".232" = icmp ult i32 %".230", %".231"
  %".233" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".232", i1* %".233"
  %".235" = load i8, i8* %"register0x00000200"
  %".236" = trunc i8 %".235" to i1
  br i1 %".236", label %"1b", label %"1c"
"1b":
  %".238" = load i32, i32* %"var_20h"
  %".239" = mul i32 %".238", 8
  %".240" = getelementptr inbounds i64, i64* @"obj.ct", i32 %".239"
  %".241" = bitcast i64* %".240" to i32*
  %".242" = load i32, i32* %".241"
  %".243" = load i32, i32* %"var_20h"
  %".244" = and i32 %".243", 15
  store i32 %".244", i32* %"register0x00000008"
  %".246" = load i32, i32* %"register0x00000008"
  %".247" = mul i32 %".246", 8
  %".248" = getelementptr inbounds i64, i64* @"obj.cgc_otp", i32 %".247"
  %".249" = bitcast i64* %".248" to i32*
  %".250" = load i32, i32* %".249"
  %".251" = trunc i32 %".250" to i8
  %".252" = trunc i32 %".250" to i8
  %".253" = zext i8 %".251" to i32
  %".254" = zext i8 %".252" to i32
  %".255" = xor i32 %".253", %".254"
  store i32 %".255", i32* %"register0x00000000"
  %".257" = load i32, i32* %"var_20h"
  %".258" = mul i32 %".257", 8
  %".259" = getelementptr inbounds i64, i64* @"obj.ct", i32 %".258"
  %".260" = bitcast i64* %".259" to i32*
  %".261" = load i32, i32* %"register0x00000000"
  %".262" = trunc i32 %".261" to i8
  %".263" = load i32, i32* %"var_20h"
  %".264" = add i32 %".263", 1
  store i32 %".264", i32* %"var_20h"
  br label %"1a"
"1c":
  store i32 0, i32* @"obj.tx_bytes"
  %".268" = ptrtoint i64* @"obj.ct" to i32
  %".269" = ptrtoint i32* @"obj.tx_bytes" to i32
  %".270" = load i32, i32* @"obj.cgc_ct_index"
  %".271" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".268", i32 %".270", i32 %".269")
  store i32 %".271", i32* %"iVar1"
  %".273" = load i32, i32* %"iVar1"
  %".274" = icmp ne i32 %".273", 0
  %".275" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".274", i1* %".275"
  %".277" = load i8, i8* %"register0x00000206"
  %".278" = trunc i8 %".277" to i1
  br i1 %".278", label %"1", label %"1d"
"1d":
  store i32 4294967288, i32* %"register0x00000000"
  %".281" = load i32, i32* %"register0x00000000"
  ret i32 %".281"
"1e":
  %".283" = ptrtoint i64* @"obj.PKT_INVALID_SZ" to i32
  %".284" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 %".283", i32 256, i32 0)
  store i32 %".284", i32* %"iVar1"
  %".286" = load i32, i32* %"iVar1"
  %".287" = icmp ne i32 %".286", 0
  %".288" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".287", i1* %".288"
  %".290" = load i8, i8* %"register0x00000206"
  %".291" = trunc i8 %".290" to i1
  br i1 %".291", label %"1", label %"1f"
"1f":
  store i32 4294967288, i32* %"register0x00000000"
  %".294" = load i32, i32* %"register0x00000000"
  ret i32 %".294"
}

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_exercise_stack"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_defrag"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memset"() 
