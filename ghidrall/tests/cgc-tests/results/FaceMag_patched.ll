; ModuleID = "FaceMag_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_securityIDFileHandle" = global i8 0
@"obj.masterBlocks" = global i32 0
@"obj.fileSystem" = global i32 0
@"obj.freeList" = global i32 0
@"obj.rootDir" = global i32 0
@"obj.cgc_lookaside" = global i32 0
@"str.BYE" = external global i64
@"str.Error_making_UserIDs.mem" = external global i64
@"str.Error_making_Users.db" = external global i64
@"str.Error_making_filesystem." = external global i64
@"str.Error_making_posts.log" = external global i64
@"str.Error_opening_initialPostID.mem" = external global i64
@"str.UserIDs.mem" = external global i64
@"str.Users.db" = external global i64
@"str.initialPostID.mem" = external global i64
@"str.posts.log" = external global i64
@"str.sticky.posts" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %"bVar1" = alloca i8
  %"cVar2" = alloca i8
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999624
  %"iVar4" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999644
  %"var_160h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999648
  %"var_15ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999652
  %"var_158h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999656
  %"var_154h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"var_150h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"var_14ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".41" to i32*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999800
  %"var_c4h" = bitcast i8* %".44" to i32*
  %".45" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h" = bitcast i8* %".45" to i32*
  %".46" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999808
  %"var_bch" = bitcast i8* %".46" to i32*
  %".47" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999812
  %"var_b8h" = bitcast i8* %".47" to i32*
  %".48" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".48" to i32*
  %".49" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999820
  %"var_b0h" = bitcast i8* %".49" to i32*
  %".50" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".50" to i32*
  %".51" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".51" to i32*
  %".52" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".52" to i32*
  %".53" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".53" to i32*
  %".54" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".54" to i32*
  %".55" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".55" to i32*
  %".56" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".56" to i32*
  %".57" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".57" to i32*
  %".58" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".58" to i32*
  %".59" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".59" to i32*
  %".60" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".60" to i32*
  %".61" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".61" to i32*
  %".62" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".62" to i32*
  %".63" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".63" to i32*
  %".64" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".64" to i32*
  %".65" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".65" to i32*
  %".66" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".66" to i32*
  %".67" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".67" to i32*
  %".68" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".68" to i32*
  %".69" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".69" to i32*
  %".70" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".70" to i32*
  %".71" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".71" to i32*
  %".72" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".72" to i32*
  %".73" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".73" to i32*
  %".74" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".74" to i32*
  %".75" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".75" to i32*
  %".76" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".76" to i32*
  %".77" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".77" to i32*
  %".78" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".78" to i32*
  %".79" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".79" to i32*
  %".80" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".80" to i32*
  %".81" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".81" to i32*
  %".82" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".82" to i32*
  %".83" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".83" to i32*
  %".84" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".84" to i32*
  %".85" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".85" to i32*
  %".86" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999971
  %"var_19h" = bitcast i8* %".86" to i32*
  %".87" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".87" to i32*
  %".88" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".88" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %".89" = alloca i8**
  %".90" = alloca i32**
  store i8** %"argv", i8*** %".89"
  store i32** %"envp", i32*** %".90"
  br label %"0"
"0":
  store i32 100, i32* %"var_44h"
  store i32 512, i32* %"iVar4"
  %".96" = call i32 @"sym.cgc_initFileSystem"(i32 512, i32 512, i32 1024000)
  store i32 %".96", i32* %"var_14h"
  store i8 255, i8* @"obj.cgc_securityIDFileHandle"
  %".99" = load i32, i32* %"var_14h"
  %".100" = icmp ne i32 %".99", 0
  %".101" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".100", i1* %".101"
  %".103" = load i8, i8* %"register0x00000206"
  %".104" = trunc i8 %".103" to i1
  br i1 %".104", label %"1", label %"2"
"1":
  %".106" = load i32, i32* %"iVar4"
  %".107" = call i32 @"sym.cgc_printf"(i32 134556731, i32 %".106")
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  store i32 1128777216, i32* %"iVar4"
  %".111" = call i32 @"sym.cgc_makeMemoryFile"(i32 134556757, i32 1128777216, i32 2560, i32 1, i32 1)
  store i32 %".111", i32* %"var_14h"
  %".113" = load i32, i32* %"var_14h"
  %".114" = icmp ne i32 %".113", 0
  %".115" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".114", i1* %".115"
  %".117" = load i8, i8* %"register0x00000206"
  %".118" = trunc i8 %".117" to i1
  br i1 %".118", label %"3", label %"4"
"3":
  %".120" = load i32, i32* %"iVar4"
  %".121" = call i32 @"sym.cgc_printf"(i32 134556770, i32 %".120")
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  store i32 1128775680, i32* %"iVar4"
  %".125" = call i32 @"sym.cgc_makeMemoryFile"(i32 134556794, i32 1128775680, i32 4, i32 1, i32 1)
  store i32 %".125", i32* %"var_14h"
  %".127" = load i32, i32* %"var_14h"
  %".128" = icmp ne i32 %".127", 0
  %".129" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".128", i1* %".129"
  %".131" = load i8, i8* %"register0x00000206"
  %".132" = trunc i8 %".131" to i1
  br i1 %".132", label %"5", label %"6"
"5":
  %".134" = load i32, i32* %"iVar4"
  %".135" = call i32 @"sym.cgc_printf"(i32 134556770, i32 %".134")
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  store i32 2, i32* %"iVar4"
  %".139" = call i32 @"sym.cgc_createFile"(i32 134556048, i32 2, i32 1)
  store i32 %".139", i32* %"var_14h"
  %".141" = load i32, i32* %"var_14h"
  %".142" = icmp ne i32 %".141", 0
  %".143" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".142", i1* %".143"
  %".145" = load i8, i8* %"register0x00000206"
  %".146" = trunc i8 %".145" to i1
  br i1 %".146", label %"7", label %"8"
"7":
  %".148" = load i32, i32* %"iVar4"
  %".149" = call i32 @"sym.cgc_printf"(i32 134556812, i32 %".148")
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  store i32 2, i32* %"iVar4"
  %".153" = call i32 @"sym.cgc_createFile"(i32 134556308, i32 2, i32 1)
  store i32 %".153", i32* %"var_14h"
  %".155" = load i32, i32* %"var_14h"
  %".156" = icmp ne i32 %".155", 0
  %".157" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".156", i1* %".157"
  %".159" = load i8, i8* %"register0x00000206"
  %".160" = trunc i8 %".159" to i1
  br i1 %".160", label %"9", label %"a"
"9":
  %".162" = load i32, i32* %"iVar4"
  %".163" = call i32 @"sym.cgc_printf"(i32 134556770, i32 %".162")
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  store i32 1, i32* %"iVar4"
  %".167" = call i32 @"sym.cgc_openFile"(i32 134556794, i32 1)
  %".168" = bitcast i8* %"cVar2" to i32*
  store i32 %".167", i32* %".168"
  %".170" = load i8, i8* %"cVar2"
  %".171" = icmp slt i8 %".170", 0
  %".172" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".171", i1* %".172"
  %".174" = load i8, i8* %"register0x00000207"
  %".175" = trunc i8 %".174" to i1
  br i1 %".175", label %"b", label %"c"
b:
  %".177" = load i32, i32* %"iVar4"
  %".178" = call i32 @"sym.cgc_printf"(i32 134556835, i32 %".177")
  call void @"sym.imp.cgc__terminate"()
  br label %"c"
c:
  %".181" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %".182" = load i8, i8* %"cVar2"
  %".183" = sext i8 %".182" to i32
  store i32 %".183", i32* %"register0x0000001c"
  %".185" = ptrtoint i8* %".181" to i32
  %".186" = load i32, i32* %"register0x0000001c"
  %".187" = call i32 @"sym.cgc_readFile"(i32 %".186", i32 %".185", i32 4, i32 0, i32 0, i32 1)
  %".188" = load i32, i32* %"var_44h"
  %".189" = and i32 %".188", 268435455
  store i32 %".189", i32* %"var_44h"
  %".191" = load i8, i8* %"cVar2"
  %".192" = sext i8 %".191" to i32
  store i32 %".192", i32* %"register0x00000008"
  %".194" = load i32, i32* %"register0x00000008"
  %".195" = call i32 @"sym.cgc_deleteFile"(i32 %".194", i32 1)
  store i32 1128775684, i32* %"iVar4"
  %".197" = call i32 @"sym.cgc_makeMemoryFile"(i32 134556081, i32 1128775684, i32 1532, i32 1, i32 1)
  store i32 %".197", i32* %"var_14h"
  %".199" = load i32, i32* %"var_14h"
  %".200" = icmp ne i32 %".199", 0
  %".201" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".200", i1* %".201"
  %".203" = load i8, i8* %"register0x00000206"
  %".204" = trunc i8 %".203" to i1
  br i1 %".204", label %"d", label %"e"
d:
  %".206" = load i32, i32* %"iVar4"
  %".207" = call i32 @"sym.cgc_printf"(i32 134556868, i32 %".206")
  call void @"sym.imp.cgc__terminate"()
  br label %"e"
e:
  %".210" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  store i32 0, i32* %"iVar4"
  call void @"sym.imp.cgc_allocate"()
  %".213" = load i32, i32* %"var_14h"
  %".214" = icmp ne i32 %".213", 0
  %".215" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".214", i1* %".215"
  %".217" = load i8, i8* %"register0x00000206"
  %".218" = trunc i8 %".217" to i1
  br i1 %".218", label %"f", label %"10"
f:
  call void @"sym.imp.cgc__terminate"()
  br label %"10"
"10":
  store i8 0, i8* %"bVar1"
  br label %"11"
"11":
  %".224" = load i8, i8* %"bVar1"
  %".225" = xor i8 %".224", -1
  %".226" = trunc i8 %".225" to i1
  br i1 %".226", label %"12", label %"2e"
"12":
  %".228" = load i32, i32* %"var_24h"
  %".229" = call i32 @"sym.cgc_receiveMessage"(i32 %".228")
  store i32 %".229", i32* %"iVar3"
  %".231" = load i32, i32* %"iVar3"
  %".232" = icmp eq i32 %".231", 100
  %".233" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".232", i1* %".233"
  %".235" = load i8, i8* %"register0x00000206"
  %".236" = trunc i8 %".235" to i1
  br i1 %".236", label %"13", label %"14"
"13":
  store i8 1, i8* %"bVar1"
  br label %"11"
"14":
  %".240" = load i32, i32* %"iVar3"
  %".241" = icmp eq i32 %".240", 160
  %".242" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".241", i1* %".242"
  %".244" = load i8, i8* %"register0x00000206"
  %".245" = trunc i8 %".244" to i1
  br i1 %".245", label %"15", label %"19"
"15":
  %".247" = load i32, i32* %"var_24h"
  %".248" = add i32 %".247", 21
  store i32 %".248", i32* %"register0x00000004"
  %".250" = load i32, i32* %"var_24h"
  %".251" = add i32 %".250", 42
  store i32 %".251", i32* %"register0x00000008"
  %".253" = load i32, i32* %"var_24h"
  %".254" = load i32, i32* %"register0x00000004"
  %".255" = load i32, i32* %"register0x00000008"
  %".256" = call i32 @"sym.cgc_create_user"(i32 %".253", i32 %".254", i32 %".255")
  store i32 %".256", i32* %"iVar4"
  %".258" = load i32, i32* %"iVar4"
  %".259" = icmp slt i32 %".258", 0
  %".260" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".259", i1* %".260"
  %".262" = load i8, i8* %"register0x00000207"
  %".263" = trunc i8 %".262" to i1
  br i1 %".263", label %"16", label %"17"
"16":
  store i32 -1, i32* %"var_40h"
  br label %"18"
"17":
  store i32 0, i32* %"var_40h"
  br label %"18"
"18":
  %".269" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  store i32 4, i32* %"iVar4"
  %".271" = ptrtoint i8* %".269" to i32
  %".272" = call i32 @"sym.cgc_sendResponse"(i32 %".271", i32 4)
  br label %"11"
"19":
  %".274" = load i32, i32* %"iVar3"
  %".275" = icmp eq i32 %".274", 176
  %".276" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".275", i1* %".276"
  %".278" = load i8, i8* %"register0x00000206"
  %".279" = trunc i8 %".278" to i1
  br i1 %".279", label %"1a", label %"1b"
"1a":
  %".281" = load i32, i32* %"var_24h"
  %".282" = add i32 %".281", 21
  store i32 %".282", i32* %"register0x00000004"
  %".284" = load i32, i32* %"var_24h"
  %".285" = load i32, i32* %"register0x00000004"
  %".286" = call i32 @"sym.cgc_authenticate"(i32 %".284", i32 %".285")
  store i32 %".286", i32* %"var_20h"
  %".288" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  store i32 4, i32* %"iVar4"
  %".290" = ptrtoint i8* %".288" to i32
  %".291" = call i32 @"sym.cgc_sendResponse"(i32 %".290", i32 4)
  br label %"11"
"1b":
  %".293" = load i32, i32* %"iVar3"
  %".294" = icmp eq i32 %".293", 192
  %".295" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".294", i1* %".295"
  %".297" = load i8, i8* %"register0x00000206"
  %".298" = trunc i8 %".297" to i1
  br i1 %".298", label %"1c", label %"1f"
"1c":
  %".300" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %".301" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".302" = load i32, i32* %"var_24h"
  %".303" = ptrtoint i8* %".301" to i32
  %".304" = ptrtoint i8* %".301" to i32
  %".305" = call i32 @"sym.cgc_newFeedPost"(i32 %".302", i32 %".303", i32 %".304")
  store i32 %".305", i32* %"var_14h"
  %".307" = load i32, i32* %"var_14h"
  %".308" = icmp eq i32 %".307", 0
  %".309" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".308", i1* %".309"
  %".311" = load i8, i8* %"register0x00000206"
  %".312" = trunc i8 %".311" to i1
  br i1 %".312", label %"1e", label %"1d"
"1d":
  %".314" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 -1, i32* %"var_14h"
  store i32 4, i32* %"iVar4"
  %".317" = ptrtoint i8* %".314" to i32
  %".318" = call i32 @"sym.cgc_sendResponse"(i32 %".317", i32 4)
  br label %"11"
"1e":
  %".320" = load i32, i32* %"var_4ch"
  %".321" = load i32, i32* %"var_50h"
  %".322" = call i32 @"sym.cgc_sendResponse"(i32 %".320", i32 %".321")
  %".323" = load i32, i32* %"var_50h"
  store i32 %".323", i32* %"iVar4"
  %".325" = load i32, i32* %"var_4ch"
  call void @"sym.imp.cgc_deallocate"()
  br label %"11"
"1f":
  %".328" = load i32, i32* %"iVar3"
  %".329" = icmp eq i32 %".328", 208
  %".330" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".329", i1* %".330"
  %".332" = load i8, i8* %"register0x00000206"
  %".333" = trunc i8 %".332" to i1
  br i1 %".333", label %"20", label %"24"
"20":
  %".335" = load i32, i32* %"var_24h"
  %".336" = load i32, i32* %"var_24h"
  %".337" = add i32 %".336", 4
  store i32 %".337", i32* %"register0x00000008"
  %".339" = load i32, i32* %"var_44h"
  %".340" = load i32, i32* %"register0x00000008"
  %".341" = call i32 @"sym.cgc_savePost"(i32 %".339", i32 %".335", i32 %".340")
  store i32 %".341", i32* %"iVar4"
  %".343" = load i32, i32* %"iVar4"
  %".344" = icmp eq i32 %".343", 0
  %".345" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".344", i1* %".345"
  %".347" = load i8, i8* %"register0x00000206"
  %".348" = trunc i8 %".347" to i1
  br i1 %".348", label %"22", label %"21"
"21":
  store i32 -1, i32* %"var_14h"
  br label %"23"
"22":
  %".352" = load i32, i32* %"var_44h"
  store i32 %".352", i32* %"var_14h"
  %".354" = load i32, i32* %"var_44h"
  %".355" = add i32 %".354", 1
  store i32 %".355", i32* %"var_44h"
  br label %"23"
"23":
  %".358" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 4, i32* %"iVar4"
  %".360" = ptrtoint i8* %".358" to i32
  %".361" = call i32 @"sym.cgc_sendResponse"(i32 %".360", i32 4)
  br label %"11"
"24":
  %".363" = load i32, i32* %"iVar3"
  %".364" = icmp eq i32 %".363", 224
  %".365" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".364", i1* %".365"
  %".367" = load i8, i8* %"register0x00000206"
  %".368" = trunc i8 %".367" to i1
  br i1 %".368", label %"25", label %"26"
"25":
  %".370" = load i32, i32* %"var_24h"
  %".371" = load i32, i32* %"var_24h"
  %".372" = add i32 %".371", 4
  %".373" = inttoptr i32 %".372" to i8*
  %".374" = load i8, i8* %".373"
  %".375" = load i32, i32* %"var_24h"
  %".376" = add i32 %".375", 8
  store i32 %".376", i32* %"register0x00000008"
  %".378" = load i32, i32* %"register0x00000008"
  %".379" = zext i8 %".374" to i32
  %".380" = zext i8 %".374" to i32
  %".381" = call i32 @"sym.cgc_saveComment"(i32 %".379", i32 %".380", i32 %".378")
  store i32 %".381", i32* %"var_14h"
  %".383" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 4, i32* %"iVar4"
  %".385" = ptrtoint i8* %".383" to i32
  %".386" = call i32 @"sym.cgc_sendResponse"(i32 %".385", i32 4)
  br label %"11"
"26":
  %".388" = load i32, i32* %"iVar3"
  %".389" = icmp eq i32 %".388", 240
  %".390" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".389", i1* %".390"
  %".392" = load i8, i8* %"register0x00000206"
  %".393" = trunc i8 %".392" to i1
  br i1 %".393", label %"27", label %"2d"
"27":
  %".395" = load i32, i32* %"var_24h"
  store i32 %".395", i32* %"arg_8h"
  %".397" = load i32, i32* %"arg_8h"
  %".398" = icmp ult i32 %".397", 16
  %".399" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".398", i1* %".399"
  %".401" = load i8, i8* %"register0x00000200"
  %".402" = trunc i8 %".401" to i1
  br i1 %".402", label %"2a", label %"28"
"28":
  %".404" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %".405" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  store i32 1, i32* %"iVar4"
  %".407" = ptrtoint i8* %".405" to i32
  %".408" = ptrtoint i8* %".405" to i32
  %".409" = load i32, i32* %"arg_8h"
  %".410" = call i32 @"sym.cgc_retrievePost"(i32 %".409", i32 1, i32 %".407", i32 %".408")
  store i32 %".410", i32* %"var_14h"
  %".412" = load i32, i32* %"var_14h"
  %".413" = icmp eq i32 %".412", 0
  %".414" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".413", i1* %".414"
  %".416" = load i8, i8* %"register0x00000206"
  %".417" = trunc i8 %".416" to i1
  br i1 %".417", label %"2b", label %"29"
"29":
  %".419" = load i32, i32* %"var_4ch"
  %".420" = load i32, i32* %"var_50h"
  %".421" = call i32 @"sym.cgc_sendResponse"(i32 %".419", i32 %".420")
  %".422" = load i32, i32* %"var_50h"
  store i32 %".422", i32* %"iVar4"
  %".424" = load i32, i32* %"var_4ch"
  call void @"sym.imp.cgc_deallocate"()
  br label %"2b"
"2a":
  %".427" = load i32, i32* %"arg_8h"
  %".428" = call i32 @"sym.cgc_sendStickPost"(i32 %".427")
  store i32 %".428", i32* %"var_14h"
  br label %"2b"
"2b":
  %".431" = load i32, i32* %"var_14h"
  %".432" = icmp eq i32 %".431", -1
  %".433" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".432", i1* %".433"
  %".435" = load i8, i8* %"register0x00000206"
  %".436" = trunc i8 %".435" to i1
  br i1 %".436", label %"11", label %"2c"
"2c":
  %".438" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 4, i32* %"iVar4"
  %".440" = ptrtoint i8* %".438" to i32
  %".441" = call i32 @"sym.cgc_sendResponse"(i32 %".440", i32 4)
  br label %"11"
"2d":
  store i8 1, i8* %"bVar1"
  br label %"11"
"2e":
  %".445" = load i32, i32* %"iVar4"
  %".446" = call i32 @"sym.cgc_printf"(i32 134556894, i32 %".445")
  store i32 0, i32* %"register0x00000000"
  %".448" = load i32, i32* %"register0x00000000"
  ret i32 %".448"
}

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_savePost"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_writeFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_writeBlock"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_minimum"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_readBlock"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_addNewBlock"(i32 %"arg_8h") 

declare i32 @"sym.cgc_findFreeBlock"(i32 %"arg_8h") 

declare void @"sym.cgc_setBlockInUse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_writeMemoryFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_sprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_vsprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_WRAPPER_OUTC"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_write"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_closeFile"(i32 %"arg_8h") 

declare i32 @"sym.cgc_flushFile"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_authenticate"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_readFileUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_receiveMessage"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_makeMemoryFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_eraseBlock"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_statusFile"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendResponse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_createFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_newFeedPost"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fileWritePosition"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_user"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fileReadPosition"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_fileReadPosRelative"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_retrievePost"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendStickPost"(i32 %"arg_8h") 

declare i32 @"sym.cgc_openFile"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_deleteFile"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_setBlockAsFree"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_readFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_readMemoryFile"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_saveComment"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_initFileSystem"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
