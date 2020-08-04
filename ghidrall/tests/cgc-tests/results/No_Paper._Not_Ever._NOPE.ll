; ModuleID = "No_Paper._Not_Ever._NOPE"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.tp_list" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_audit_list" = global i32 0
@"obj.s_list" = global i32 0
@"obj.cgc_CREATE_ACCOUNT" = external global i64
@"obj.cgc_ERR" = external global i64
@"obj.cgc_GET_REFUND" = external global i64
@"obj.cgc_LOGIN" = external global i64
@"obj.cgc_LOGOUT" = external global i64
@"obj.cgc_OK" = external global i64
@"obj.cgc_PAY_TAXES" = external global i64
@"obj.cgc_TAXES_DUE" = external global i64
@"obj.cgc_TAXES_SUBMITTED" = external global i64
@"obj.cgc_TRIGGER_AUDIT" = external global i64
@"obj.cgc_TRIGGER_AUDIT2" = external global i64
@"obj.cgc_UPLOAD_FORM" = external global i64
@"str.NICE_TRY" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"auStack216" = bitcast i8* %".31" to i1024*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"auStack88" = bitcast i8* %".32" to i96*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"auStack40" = bitcast i8* %".34" to i80*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999970
  %"var_1ah" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".38" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000008" = alloca i32*
  %".39" = alloca i8**
  %".40" = alloca i32**
  store i8** %"argv", i8*** %".39"
  store i32** %"envp", i32*** %".40"
  br label %"0"
"0":
  br label %"1"
"1":
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  call void @"sym.imp.memset"()
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".48" = ptrtoint i8* %".47" to i32
  call void @"sym.cgc_recv_all"(i32 %".48", i32 46)
  %".50" = load i32, i32* %"iVar1"
  %".51" = icmp ne i32 %".50", 46
  %".52" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".51", i1* %".52"
  %".54" = load i8, i8* %"register0x00000206"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".59" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".60" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".61" = ptrtoint i8* %".59" to i32
  %".62" = ptrtoint i8* %".60" to i32
  %".63" = call i32 @"sym.cgc_session_auth"(i32 %".61", i32 %".62")
  store i32 %".63", i32* %"iVar1"
  %".65" = load i32, i32* %"iVar1"
  %".66" = icmp eq i32 %".65", 0
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"9", label %"4"
"4":
  %".72" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".73" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".72", i8** %".73"
  %".75" = ptrtoint i64* @"obj.cgc_LOGIN" to i32
  %".76" = ptrtoint i32** %"register0x00000008" to i32
  %".77" = call i32 @"sym.cgc_memcmp"(i32 %".75", i32 %".76", i32 8)
  store i32 %".77", i32* %"iVar1"
  %".79" = load i32, i32* %"iVar1"
  %".80" = icmp eq i32 %".79", 0
  %".81" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".80", i1* %".81"
  %".83" = load i8, i8* %"register0x00000206"
  %".84" = trunc i8 %".83" to i1
  br i1 %".84", label %"8", label %"5"
"5":
  %".86" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".87" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".86", i8** %".87"
  %".89" = ptrtoint i64* @"obj.cgc_CREATE_ACCOUNT" to i32
  %".90" = ptrtoint i32** %"register0x00000008" to i32
  %".91" = call i32 @"sym.cgc_memcmp"(i32 %".89", i32 %".90", i32 8)
  store i32 %".91", i32* %"iVar1"
  %".93" = load i32, i32* %"iVar1"
  %".94" = icmp eq i32 %".93", 0
  %".95" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".94", i1* %".95"
  %".97" = load i8, i8* %"register0x00000206"
  %".98" = trunc i8 %".97" to i1
  br i1 %".98", label %"7", label %"6"
"6":
  %".100" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %".101" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".100", i8** %".101"
  %".103" = ptrtoint i32** %"register0x00000008" to i32
  %".104" = call i32 @"sym.cgc_memcpy"(i32 %".103", i32 134536881, i32 8)
  store i32 -1, i32* %"var_8h"
  br label %"1a"
"7":
  %".107" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".108" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".109" = ptrtoint i8* %".107" to i32
  %".110" = ptrtoint i8* %".108" to i32
  %".111" = call i32 @"sym.cgc_create_account"(i32 %".109", i32 %".110")
  store i32 %".111", i32* %"var_8h"
  br label %"1a"
"8":
  %".114" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".115" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".116" = ptrtoint i8* %".114" to i32
  %".117" = ptrtoint i8* %".115" to i32
  %".118" = call i32 @"sym.cgc_login"(i32 %".116", i32 %".117")
  store i32 %".118", i32* %"var_8h"
  br label %"1a"
"9":
  %".121" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".122" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".121", i8** %".122"
  %".124" = ptrtoint i64* @"obj.cgc_LOGOUT" to i32
  %".125" = ptrtoint i32** %"register0x00000008" to i32
  %".126" = call i32 @"sym.cgc_memcmp"(i32 %".124", i32 %".125", i32 8)
  store i32 %".126", i32* %"iVar1"
  %".128" = load i32, i32* %"iVar1"
  %".129" = icmp eq i32 %".128", 0
  %".130" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".129", i1* %".130"
  %".132" = load i8, i8* %"register0x00000206"
  %".133" = trunc i8 %".132" to i1
  br i1 %".133", label %"19", label %"a"
a:
  %".135" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".136" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".135", i8** %".136"
  %".138" = ptrtoint i64* @"obj.cgc_UPLOAD_FORM" to i32
  %".139" = ptrtoint i32** %"register0x00000008" to i32
  %".140" = call i32 @"sym.cgc_memcmp"(i32 %".138", i32 %".139", i32 8)
  store i32 %".140", i32* %"iVar1"
  %".142" = load i32, i32* %"iVar1"
  %".143" = icmp eq i32 %".142", 0
  %".144" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".143", i1* %".144"
  %".146" = load i8, i8* %"register0x00000206"
  %".147" = trunc i8 %".146" to i1
  br i1 %".147", label %"18", label %"b"
b:
  %".149" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".150" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".149", i8** %".150"
  %".152" = ptrtoint i64* @"obj.cgc_TAXES_DUE" to i32
  %".153" = ptrtoint i32** %"register0x00000008" to i32
  %".154" = call i32 @"sym.cgc_memcmp"(i32 %".152", i32 %".153", i32 8)
  store i32 %".154", i32* %"iVar1"
  %".156" = load i32, i32* %"iVar1"
  %".157" = icmp eq i32 %".156", 0
  %".158" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".157", i1* %".158"
  %".160" = load i8, i8* %"register0x00000206"
  %".161" = trunc i8 %".160" to i1
  br i1 %".161", label %"17", label %"c"
c:
  %".163" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".164" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".163", i8** %".164"
  %".166" = ptrtoint i64* @"obj.cgc_TAXES_SUBMITTED" to i32
  %".167" = ptrtoint i32** %"register0x00000008" to i32
  %".168" = call i32 @"sym.cgc_memcmp"(i32 %".166", i32 %".167", i32 8)
  store i32 %".168", i32* %"iVar1"
  %".170" = load i32, i32* %"iVar1"
  %".171" = icmp eq i32 %".170", 0
  %".172" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".171", i1* %".172"
  %".174" = load i8, i8* %"register0x00000206"
  %".175" = trunc i8 %".174" to i1
  br i1 %".175", label %"16", label %"d"
d:
  %".177" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".178" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".177", i8** %".178"
  %".180" = ptrtoint i64* @"obj.cgc_PAY_TAXES" to i32
  %".181" = ptrtoint i32** %"register0x00000008" to i32
  %".182" = call i32 @"sym.cgc_memcmp"(i32 %".180", i32 %".181", i32 8)
  store i32 %".182", i32* %"iVar1"
  %".184" = load i32, i32* %"iVar1"
  %".185" = icmp eq i32 %".184", 0
  %".186" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".185", i1* %".186"
  %".188" = load i8, i8* %"register0x00000206"
  %".189" = trunc i8 %".188" to i1
  br i1 %".189", label %"15", label %"e"
e:
  %".191" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".192" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".191", i8** %".192"
  %".194" = ptrtoint i64* @"obj.cgc_GET_REFUND" to i32
  %".195" = ptrtoint i32** %"register0x00000008" to i32
  %".196" = call i32 @"sym.cgc_memcmp"(i32 %".194", i32 %".195", i32 8)
  store i32 %".196", i32* %"iVar1"
  %".198" = load i32, i32* %"iVar1"
  %".199" = icmp eq i32 %".198", 0
  %".200" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".199", i1* %".200"
  %".202" = load i8, i8* %"register0x00000206"
  %".203" = trunc i8 %".202" to i1
  br i1 %".203", label %"14", label %"f"
f:
  %".205" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".206" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".205", i8** %".206"
  %".208" = ptrtoint i64* @"obj.cgc_TRIGGER_AUDIT" to i32
  %".209" = ptrtoint i32** %"register0x00000008" to i32
  %".210" = call i32 @"sym.cgc_memcmp"(i32 %".208", i32 %".209", i32 8)
  store i32 %".210", i32* %"iVar1"
  %".212" = load i32, i32* %"iVar1"
  %".213" = icmp eq i32 %".212", 0
  %".214" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".213", i1* %".214"
  %".216" = load i8, i8* %"register0x00000206"
  %".217" = trunc i8 %".216" to i1
  br i1 %".217", label %"13", label %"10"
"10":
  %".219" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %".220" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".219", i8** %".220"
  %".222" = ptrtoint i64* @"obj.cgc_TRIGGER_AUDIT2" to i32
  %".223" = ptrtoint i32** %"register0x00000008" to i32
  %".224" = call i32 @"sym.cgc_memcmp"(i32 %".222", i32 %".223", i32 8)
  store i32 %".224", i32* %"iVar1"
  %".226" = load i32, i32* %"iVar1"
  %".227" = icmp eq i32 %".226", 0
  %".228" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".227", i1* %".228"
  %".230" = load i8, i8* %"register0x00000206"
  %".231" = trunc i8 %".230" to i1
  br i1 %".231", label %"12", label %"11"
"11":
  %".233" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %".234" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".233", i8** %".234"
  %".236" = ptrtoint i32** %"register0x00000008" to i32
  %".237" = call i32 @"sym.cgc_memcpy"(i32 %".236", i32 134536881, i32 8)
  store i32 -1, i32* %"var_8h"
  br label %"1a"
"12":
  %".240" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".241" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".242" = ptrtoint i8* %".240" to i32
  %".243" = ptrtoint i8* %".241" to i32
  %".244" = call i32 @"sym.cgc_we_have_a_winner"(i32 %".242", i32 %".243")
  store i32 %".244", i32* %"var_8h"
  br label %"1a"
"13":
  %".247" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".248" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".249" = ptrtoint i8* %".247" to i32
  %".250" = ptrtoint i8* %".248" to i32
  %".251" = call i32 @"sym.cgc_we_have_a_winner"(i32 %".249", i32 %".250")
  store i32 %".251", i32* %"var_8h"
  br label %"1a"
"14":
  %".254" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".255" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".256" = ptrtoint i8* %".254" to i32
  %".257" = ptrtoint i8* %".255" to i32
  %".258" = call i32 @"sym.cgc_get_refund"(i32 %".256", i32 %".257")
  store i32 %".258", i32* %"var_8h"
  br label %"1a"
"15":
  %".261" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".262" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".263" = ptrtoint i8* %".261" to i32
  %".264" = ptrtoint i8* %".262" to i32
  %".265" = call i32 @"sym.cgc_pay_taxes"(i32 %".263", i32 %".264")
  store i32 %".265", i32* %"var_8h"
  br label %"1a"
"16":
  %".268" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".269" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".270" = ptrtoint i8* %".268" to i32
  %".271" = ptrtoint i8* %".269" to i32
  %".272" = call i32 @"sym.cgc_taxes_submitted"(i32 %".270", i32 %".271")
  store i32 %".272", i32* %"var_8h"
  br label %"1a"
"17":
  %".275" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".276" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".277" = ptrtoint i8* %".275" to i32
  %".278" = ptrtoint i8* %".276" to i32
  %".279" = call i32 @"sym.cgc_taxes_due"(i32 %".277", i32 %".278")
  store i32 %".279", i32* %"var_8h"
  br label %"1a"
"18":
  %".282" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".283" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".284" = ptrtoint i8* %".282" to i32
  %".285" = ptrtoint i8* %".283" to i32
  %".286" = call i32 @"sym.cgc_upload_form"(i32 %".284", i32 %".285")
  store i32 %".286", i32* %"var_8h"
  br label %"1a"
"19":
  %".289" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".290" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".291" = ptrtoint i8* %".289" to i32
  %".292" = ptrtoint i8* %".290" to i32
  %".293" = call i32 @"sym.cgc_logout"(i32 %".291", i32 %".292")
  store i32 %".293", i32* %"var_8h"
  br label %"1a"
"1a":
  %".296" = load i32, i32* %"var_8h"
  %".297" = icmp slt i32 %".296", 0
  br i1 %".297", label %"1b", label %"1c"
"1b":
  %".299" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".300" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".299", i8** %".300"
  %".302" = ptrtoint i32** %"register0x00000008" to i32
  %".303" = ptrtoint i64* @"obj.cgc_ERR" to i32
  %".304" = call i32 @"sym.cgc_memcpy"(i32 %".302", i32 %".303", i32 8)
  br label %"1d"
"1c":
  %".306" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".307" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".306", i8** %".307"
  %".309" = ptrtoint i32** %"register0x00000008" to i32
  %".310" = ptrtoint i64* @"obj.cgc_OK" to i32
  %".311" = call i32 @"sym.cgc_memcpy"(i32 %".309", i32 %".310", i32 8)
  %".312" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".313" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".314" = ptrtoint i8* %".312" to i32
  %".315" = ptrtoint i8* %".313" to i32
  call void @"sym.cgc_response_set_key"(i32 %".314", i32 %".315")
  br label %"1d"
"1d":
  %".318" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %".319" = ptrtoint i8* %".318" to i32
  %".320" = call i32 @"sym.cgc_send"(i32 %".319", i32 148)
  %".321" = load i32, i32* %"var_1ah"
  %".322" = icmp ne i32 %".321", 0
  %".323" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".322", i1* %".323"
  %".325" = load i8, i8* %"register0x00000206"
  %".326" = trunc i8 %".325" to i1
  br i1 %".326", label %"1", label %"1e"
"1e":
  %".328" = load i32, i32* %"var_1ah"
  call void @"sym.cgc_free"(i32 %".328")
  br label %"1"
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

declare i32 @"sym.cgc_taxes_submitted"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_list_submitted_tax_years"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_copy_yr_list_into_answer"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv_cmd_data"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_taxpayer_get_by_username"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_refund"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_get_refund"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_we_have_a_winner"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_taxpayer_scheduled_for_audit"(i32 %"arg_8h") 

declare void @"sym.cgc_add_auditrecord_to_audit_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_three_tax_years_for_audit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_new_audit_record"() 

declare i32 @"sym.cgc_taxpayer_count_submitted_tax_years"(i32 %"arg_8h") 

declare void @"sym.cgc_tenfourd_get_last_three_from_list"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_pay_taxes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_pay_taxes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_create_account"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_taxpayer_new"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_taxpayer_append"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare i32 @"sym.cgc_logout"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_session_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxes_due"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_sum_taxes_due"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_session_auth"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_session_get_by_username"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_upload_form"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_add_tenfourdee"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_tenfourd_ingest"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tenfourd_validate"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_get_tenfourd_by_taxyear"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_tenfourd_append"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_login"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_taxpayer_compare_creds"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_session_append"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_response_set_key"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"_reloc.memset"() 
