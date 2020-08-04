; ModuleID = "matrices_for_sale_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"pcStack72" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".32" to i32*
  %"register0x00000206" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000207" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32*
  %".33" = alloca i8**
  %".34" = alloca i32**
  store i8** %"argv", i8*** %".33"
  store i32** %"envp", i32*** %".34"
  br label %"0"
"0":
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".39" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  store i32 0, i32* %"var_14h"
  call void @"sym.imp.memset"()
  call void @"sym.imp.cgc_allocate"()
  %".43" = load i32, i32* %"iVar1"
  %".44" = icmp ne i32 %".43", 0
  %".45" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i8, i8* %"register0x00000206"
  %".48" = trunc i8 %".47" to i1
  br i1 %".48", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".52" = load i32, i32* %"var_14h"
  call void @"sym.cgc_receiveMessage"(i32 %".52")
  %".54" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".55" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".56" = bitcast i32* %"var_40h" to i32**
  store i32* @"0x8048a30", i32** %".56"
  store i32 0, i32* %"var_50h"
  %".59" = load i32, i32* %"var_14h"
  %".60" = trunc i32 %".59" to i16
  %".61" = sext i16 %".60" to i32
  store i32 %".61", i32* %"register0x0000001c"
  %".63" = ptrtoint i8* %".55" to i32
  %".64" = ptrtoint i8* %".55" to i32
  %".65" = load i32, i32* %"register0x0000001c"
  call void @"sym.cgc_permute"(i32 %".63", i32 0, i32 3, i32 %".64", i32 %".65")
  br label %"3"
"3":
  %".68" = load i32, i32* %"var_14h"
  store i32 %".68", i32* %"var_48h"
  store i32 3, i32* %"var_4ch"
  br label %"4"
"4":
  %".72" = load i32, i32* %"var_4ch"
  %".73" = icmp slt i32 -1, %".72"
  %".74" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".73", i1* %".74"
  %".76" = load i8, i8* %"register0x00000207"
  %".77" = trunc i8 %".76" to i1
  br i1 %".77", label %"5", label %"8"
"5":
  %".79" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".80" = load i32, i32* %"var_4ch"
  %".81" = mul i32 %".80", 3
  %".82" = mul i32 %".81", 32
  %".83" = getelementptr inbounds i8, i8* %".79", i32 %".82"
  %".84" = bitcast i8* %".83" to i32*
  store i32* %".84", i32** %"register0x00000000"
  %".86" = ptrtoint i32** %"register0x00000000" to i32
  call void @"sym.cgc_processMessage"(i32 %".86")
  %".88" = load i32, i32* %"var_4ch"
  %".89" = icmp slt i32 %".88", 3
  br i1 %".89", label %"6", label %"7"
"6":
  %".91" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %".92" = load i32, i32* %"var_4ch"
  %".93" = mul i32 %".92", 3
  %".94" = mul i32 %".93", 32
  %".95" = getelementptr inbounds i8, i8* %".91", i32 %".94"
  %".96" = bitcast i8* %".95" to i32*
  %".97" = load i32, i32* %".96"
  %".98" = load i32, i32* %"var_4ch"
  %".99" = add i32 %".98", 1
  store i32 %".99", i32* %"register0x00000008"
  %".101" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".102" = load i32, i32* %"register0x00000008"
  %".103" = mul i32 %".102", 3
  %".104" = mul i32 %".103", 32
  %".105" = getelementptr inbounds i8, i8* %".101", i32 %".104"
  %".106" = bitcast i8* %".105" to i32*
  store i32* %".106", i32** %"register0x00000000"
  %".108" = bitcast i32** %"register0x00000000" to i32*
  store i32 %".97", i32* %".108"
  br label %"7"
"7":
  %".111" = load i32, i32* %"var_4ch"
  %".112" = add i32 %".111", -1
  store i32 %".112", i32* %"var_4ch"
  br label %"4"
"8":
  %".115" = load i32, i32* %"var_20h"
  %".116" = icmp ne i32 %".115", 0
  %".117" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".116", i1* %".117"
  %".119" = load i8, i8* %"register0x00000206"
  %".120" = trunc i8 %".119" to i1
  br i1 %".120", label %"9", label %"f"
"9":
  %".122" = load i32, i32* %"var_20h"
  call void @"sym.cgc_computeResult"(i32 %".122")
  %".124" = load i32, i32* %"var_20h"
  call void @"sym.cgc_sendMessage"(i32 %".124")
  %".126" = load i32, i32* %"var_20h"
  %".127" = add i32 %".126", 12
  %".128" = inttoptr i32 %".127" to i32*
  %".129" = load i32, i32* %".128"
  %".130" = load i32, i32* %"var_20h"
  %".131" = add i32 %".130", 2
  %".132" = inttoptr i32 %".131" to i32*
  %".133" = load i32, i32* %".132"
  %".134" = trunc i32 %".133" to i16
  %".135" = sext i16 %".134" to i32
  store i32 %".135", i32* %"register0x00000004"
  %".137" = load i32, i32* %"var_20h"
  %".138" = add i32 %".137", 4
  %".139" = inttoptr i32 %".138" to i32*
  %".140" = load i32, i32* %".139"
  %".141" = trunc i32 %".140" to i16
  %".142" = sext i16 %".141" to i32
  store i32 %".142", i32* %"register0x00000008"
  %".144" = load i32, i32* %"register0x00000004"
  %".145" = load i32, i32* %"register0x00000008"
  %".146" = mul i32 %".144", %".145"
  store i32 %".146", i32* %"register0x00000004"
  %".148" = load i32, i32* %"register0x00000004"
  %".149" = mul i32 %".148", 2
  store i32 %".149", i32* %"register0x00000004"
  %".151" = load i32, i32* %"register0x00000004"
  call void @"sym.imp.cgc_deallocate"()
  %".153" = load i32, i32* %"iVar1"
  %".154" = icmp ne i32 %".153", 0
  %".155" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".154", i1* %".155"
  %".157" = load i8, i8* %"register0x00000206"
  %".158" = trunc i8 %".157" to i1
  br i1 %".158", label %"a", label %"b"
a:
  call void @"sym.imp.cgc__terminate"()
  br label %"b"
b:
  %".162" = load i32, i32* %"var_20h"
  %".163" = add i32 %".162", 12
  %".164" = inttoptr i32 %".163" to i32*
  %".165" = load i32, i32* %".164"
  %".166" = load i32, i32* %"var_20h"
  %".167" = add i32 %".166", 2
  %".168" = inttoptr i32 %".167" to i32*
  %".169" = load i32, i32* %".168"
  %".170" = trunc i32 %".169" to i16
  %".171" = sext i16 %".170" to i32
  store i32 %".171", i32* %"register0x00000004"
  %".173" = load i32, i32* %"register0x00000004"
  %".174" = shl i32 %".173", 2
  store i32 %".174", i32* %"register0x00000004"
  %".176" = load i32, i32* %"register0x00000004"
  call void @"sym.imp.cgc_deallocate"()
  %".178" = load i32, i32* %"iVar1"
  %".179" = icmp ne i32 %".178", 0
  %".180" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".179", i1* %".180"
  %".182" = load i8, i8* %"register0x00000206"
  %".183" = trunc i8 %".182" to i1
  br i1 %".183", label %"c", label %"d"
c:
  call void @"sym.imp.cgc__terminate"()
  br label %"d"
d:
  %".187" = load i32, i32* %"var_20h"
  call void @"sym.imp.cgc_deallocate"()
  %".189" = load i32, i32* %"iVar1"
  %".190" = icmp ne i32 %".189", 0
  %".191" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".190", i1* %".191"
  %".193" = load i8, i8* %"register0x00000206"
  %".194" = trunc i8 %".193" to i1
  br i1 %".194", label %"f", label %"e"
e:
  call void @"sym.imp.cgc__terminate"()
  br label %"f"
f:
  %".198" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  call void @"sym.imp.cgc_allocate"()
  %".200" = load i32, i32* %"iVar1"
  %".201" = icmp ne i32 %".200", 0
  %".202" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".201", i1* %".202"
  %".204" = load i8, i8* %"register0x00000206"
  %".205" = trunc i8 %".204" to i1
  br i1 %".205", label %"10", label %"11"
"10":
  call void @"sym.imp.cgc__terminate"()
  br label %"11"
"11":
  %".209" = load i32, i32* %"var_14h"
  call void @"sym.cgc_receiveMessage"(i32 %".209")
  br label %"3"
}

declare void @"sym.imp.cgc_deallocate"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_permute"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_swap"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_sendMessage"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_processMessage"(i32 %"arg_8h") 

declare void @"sym.cgc_computeResult"(i32 %"arg_8h") 

declare void @"sym.cgc_receiveMessage"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

@"0x8048a30" = external global i32
declare void @"_reloc.memset"() 
