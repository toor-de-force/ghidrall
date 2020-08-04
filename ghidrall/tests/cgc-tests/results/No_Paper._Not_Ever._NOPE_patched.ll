; ModuleID = "No_Paper._Not_Ever._NOPE_patched"
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
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999652
  %"var_158h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999656
  %"var_154h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"var_150h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"var_14ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"auStack224" = bitcast i8* %".33" to i1024*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"auStack96" = bitcast i8* %".34" to i96*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"auStack48" = bitcast i8* %".36" to i80*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %"var_22h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".40" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000008" = alloca i32*
  %".41" = alloca i8**
  %".42" = alloca i32**
  store i8** %"argv", i8*** %".41"
  store i32** %"envp", i32*** %".42"
  br label %"0"
"0":
  br label %"1"
"1":
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  %".51" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".52" = ptrtoint i8* %".51" to i32
  call void @"sym.cgc_recv_all"(i32 %".52", i32 46)
  %".54" = load i32, i32* %"iVar1"
  %".55" = icmp ne i32 %".54", 46
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".63" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".64" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".65" = ptrtoint i8* %".63" to i32
  %".66" = ptrtoint i8* %".64" to i32
  %".67" = call i32 @"sym.cgc_session_auth"(i32 %".65", i32 %".66")
  store i32 %".67", i32* %"iVar1"
  %".69" = load i32, i32* %"iVar1"
  %".70" = icmp eq i32 %".69", 0
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"9", label %"4"
"4":
  %".76" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".77" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".76", i8** %".77"
  %".79" = ptrtoint i64* @"obj.cgc_LOGIN" to i32
  %".80" = ptrtoint i32** %"register0x00000008" to i32
  %".81" = call i32 @"sym.cgc_memcmp"(i32 %".79", i32 %".80", i32 8)
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"8", label %"5"
"5":
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".91" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".90", i8** %".91"
  %".93" = ptrtoint i64* @"obj.cgc_CREATE_ACCOUNT" to i32
  %".94" = ptrtoint i32** %"register0x00000008" to i32
  %".95" = call i32 @"sym.cgc_memcmp"(i32 %".93", i32 %".94", i32 8)
  store i32 %".95", i32* %"iVar1"
  %".97" = load i32, i32* %"iVar1"
  %".98" = icmp eq i32 %".97", 0
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"7", label %"6"
"6":
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %".105" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".104", i8** %".105"
  %".107" = ptrtoint i32** %"register0x00000008" to i32
  %".108" = call i32 @"sym.cgc_memcpy"(i32 %".107", i32 134536977, i32 8)
  store i32 -1, i32* %"var_10h"
  br label %"1a"
"7":
  %".111" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".112" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".113" = ptrtoint i8* %".111" to i32
  %".114" = ptrtoint i8* %".112" to i32
  %".115" = call i32 @"sym.cgc_create_account"(i32 %".113", i32 %".114")
  store i32 %".115", i32* %"var_10h"
  br label %"1a"
"8":
  %".118" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".119" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".120" = ptrtoint i8* %".118" to i32
  %".121" = ptrtoint i8* %".119" to i32
  %".122" = call i32 @"sym.cgc_login"(i32 %".120", i32 %".121")
  store i32 %".122", i32* %"var_10h"
  br label %"1a"
"9":
  %".125" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".126" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".125", i8** %".126"
  %".128" = ptrtoint i64* @"obj.cgc_LOGOUT" to i32
  %".129" = ptrtoint i32** %"register0x00000008" to i32
  %".130" = call i32 @"sym.cgc_memcmp"(i32 %".128", i32 %".129", i32 8)
  store i32 %".130", i32* %"iVar1"
  %".132" = load i32, i32* %"iVar1"
  %".133" = icmp eq i32 %".132", 0
  %".134" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".133", i1* %".134"
  %".136" = load i8, i8* %"register0x00000206"
  %".137" = trunc i8 %".136" to i1
  br i1 %".137", label %"19", label %"a"
a:
  %".139" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".140" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".139", i8** %".140"
  %".142" = ptrtoint i64* @"obj.cgc_UPLOAD_FORM" to i32
  %".143" = ptrtoint i32** %"register0x00000008" to i32
  %".144" = call i32 @"sym.cgc_memcmp"(i32 %".142", i32 %".143", i32 8)
  store i32 %".144", i32* %"iVar1"
  %".146" = load i32, i32* %"iVar1"
  %".147" = icmp eq i32 %".146", 0
  %".148" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".147", i1* %".148"
  %".150" = load i8, i8* %"register0x00000206"
  %".151" = trunc i8 %".150" to i1
  br i1 %".151", label %"18", label %"b"
b:
  %".153" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".154" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".153", i8** %".154"
  %".156" = ptrtoint i64* @"obj.cgc_TAXES_DUE" to i32
  %".157" = ptrtoint i32** %"register0x00000008" to i32
  %".158" = call i32 @"sym.cgc_memcmp"(i32 %".156", i32 %".157", i32 8)
  store i32 %".158", i32* %"iVar1"
  %".160" = load i32, i32* %"iVar1"
  %".161" = icmp eq i32 %".160", 0
  %".162" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".161", i1* %".162"
  %".164" = load i8, i8* %"register0x00000206"
  %".165" = trunc i8 %".164" to i1
  br i1 %".165", label %"17", label %"c"
c:
  %".167" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".168" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".167", i8** %".168"
  %".170" = ptrtoint i64* @"obj.cgc_TAXES_SUBMITTED" to i32
  %".171" = ptrtoint i32** %"register0x00000008" to i32
  %".172" = call i32 @"sym.cgc_memcmp"(i32 %".170", i32 %".171", i32 8)
  store i32 %".172", i32* %"iVar1"
  %".174" = load i32, i32* %"iVar1"
  %".175" = icmp eq i32 %".174", 0
  %".176" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".175", i1* %".176"
  %".178" = load i8, i8* %"register0x00000206"
  %".179" = trunc i8 %".178" to i1
  br i1 %".179", label %"16", label %"d"
d:
  %".181" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".182" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".181", i8** %".182"
  %".184" = ptrtoint i64* @"obj.cgc_PAY_TAXES" to i32
  %".185" = ptrtoint i32** %"register0x00000008" to i32
  %".186" = call i32 @"sym.cgc_memcmp"(i32 %".184", i32 %".185", i32 8)
  store i32 %".186", i32* %"iVar1"
  %".188" = load i32, i32* %"iVar1"
  %".189" = icmp eq i32 %".188", 0
  %".190" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".189", i1* %".190"
  %".192" = load i8, i8* %"register0x00000206"
  %".193" = trunc i8 %".192" to i1
  br i1 %".193", label %"15", label %"e"
e:
  %".195" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".196" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".195", i8** %".196"
  %".198" = ptrtoint i64* @"obj.cgc_GET_REFUND" to i32
  %".199" = ptrtoint i32** %"register0x00000008" to i32
  %".200" = call i32 @"sym.cgc_memcmp"(i32 %".198", i32 %".199", i32 8)
  store i32 %".200", i32* %"iVar1"
  %".202" = load i32, i32* %"iVar1"
  %".203" = icmp eq i32 %".202", 0
  %".204" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".203", i1* %".204"
  %".206" = load i8, i8* %"register0x00000206"
  %".207" = trunc i8 %".206" to i1
  br i1 %".207", label %"14", label %"f"
f:
  %".209" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".210" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".209", i8** %".210"
  %".212" = ptrtoint i64* @"obj.cgc_TRIGGER_AUDIT" to i32
  %".213" = ptrtoint i32** %"register0x00000008" to i32
  %".214" = call i32 @"sym.cgc_memcmp"(i32 %".212", i32 %".213", i32 8)
  store i32 %".214", i32* %"iVar1"
  %".216" = load i32, i32* %"iVar1"
  %".217" = icmp eq i32 %".216", 0
  %".218" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".217", i1* %".218"
  %".220" = load i8, i8* %"register0x00000206"
  %".221" = trunc i8 %".220" to i1
  br i1 %".221", label %"13", label %"10"
"10":
  %".223" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %".224" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".223", i8** %".224"
  %".226" = ptrtoint i64* @"obj.cgc_TRIGGER_AUDIT2" to i32
  %".227" = ptrtoint i32** %"register0x00000008" to i32
  %".228" = call i32 @"sym.cgc_memcmp"(i32 %".226", i32 %".227", i32 8)
  store i32 %".228", i32* %"iVar1"
  %".230" = load i32, i32* %"iVar1"
  %".231" = icmp eq i32 %".230", 0
  %".232" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".231", i1* %".232"
  %".234" = load i8, i8* %"register0x00000206"
  %".235" = trunc i8 %".234" to i1
  br i1 %".235", label %"12", label %"11"
"11":
  %".237" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %".238" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".237", i8** %".238"
  %".240" = ptrtoint i32** %"register0x00000008" to i32
  %".241" = call i32 @"sym.cgc_memcpy"(i32 %".240", i32 134536977, i32 8)
  store i32 -1, i32* %"var_10h"
  br label %"1a"
"12":
  %".244" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".245" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".246" = ptrtoint i8* %".244" to i32
  %".247" = ptrtoint i8* %".245" to i32
  %".248" = call i32 @"sym.cgc_we_have_a_winner"(i32 %".246", i32 %".247")
  store i32 %".248", i32* %"var_10h"
  br label %"1a"
"13":
  %".251" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".252" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".253" = ptrtoint i8* %".251" to i32
  %".254" = ptrtoint i8* %".252" to i32
  %".255" = call i32 @"sym.cgc_we_have_a_winner"(i32 %".253", i32 %".254")
  store i32 %".255", i32* %"var_10h"
  br label %"1a"
"14":
  %".258" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".259" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".260" = ptrtoint i8* %".258" to i32
  %".261" = ptrtoint i8* %".259" to i32
  %".262" = call i32 @"sym.cgc_get_refund"(i32 %".260", i32 %".261")
  store i32 %".262", i32* %"var_10h"
  br label %"1a"
"15":
  %".265" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".266" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".267" = ptrtoint i8* %".265" to i32
  %".268" = ptrtoint i8* %".266" to i32
  %".269" = call i32 @"sym.cgc_pay_taxes"(i32 %".267", i32 %".268")
  store i32 %".269", i32* %"var_10h"
  br label %"1a"
"16":
  %".272" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".273" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".274" = ptrtoint i8* %".272" to i32
  %".275" = ptrtoint i8* %".273" to i32
  %".276" = call i32 @"sym.cgc_taxes_submitted"(i32 %".274", i32 %".275")
  store i32 %".276", i32* %"var_10h"
  br label %"1a"
"17":
  %".279" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".280" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".281" = ptrtoint i8* %".279" to i32
  %".282" = ptrtoint i8* %".280" to i32
  %".283" = call i32 @"sym.cgc_taxes_due"(i32 %".281", i32 %".282")
  store i32 %".283", i32* %"var_10h"
  br label %"1a"
"18":
  %".286" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".287" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".288" = ptrtoint i8* %".286" to i32
  %".289" = ptrtoint i8* %".287" to i32
  %".290" = call i32 @"sym.cgc_upload_form"(i32 %".288", i32 %".289")
  store i32 %".290", i32* %"var_10h"
  br label %"1a"
"19":
  %".293" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".294" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".295" = ptrtoint i8* %".293" to i32
  %".296" = ptrtoint i8* %".294" to i32
  %".297" = call i32 @"sym.cgc_logout"(i32 %".295", i32 %".296")
  store i32 %".297", i32* %"var_10h"
  br label %"1a"
"1a":
  %".300" = load i32, i32* %"var_10h"
  %".301" = icmp slt i32 %".300", 0
  br i1 %".301", label %"1b", label %"1c"
"1b":
  %".303" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %".304" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".303", i8** %".304"
  %".306" = ptrtoint i32** %"register0x00000008" to i32
  %".307" = ptrtoint i64* @"obj.cgc_ERR" to i32
  %".308" = call i32 @"sym.cgc_memcpy"(i32 %".306", i32 %".307", i32 8)
  br label %"1d"
"1c":
  %".310" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %".311" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".310", i8** %".311"
  %".313" = ptrtoint i32** %"register0x00000008" to i32
  %".314" = ptrtoint i64* @"obj.cgc_OK" to i32
  %".315" = call i32 @"sym.cgc_memcpy"(i32 %".313", i32 %".314", i32 8)
  %".316" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".317" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".318" = ptrtoint i8* %".316" to i32
  %".319" = ptrtoint i8* %".317" to i32
  call void @"sym.cgc_response_set_key"(i32 %".318", i32 %".319")
  br label %"1d"
"1d":
  %".322" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %".323" = ptrtoint i8* %".322" to i32
  %".324" = call i32 @"sym.cgc_send"(i32 %".323", i32 148)
  %".325" = load i32, i32* %"var_22h"
  %".326" = icmp ne i32 %".325", 0
  %".327" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".326", i1* %".327"
  %".329" = load i8, i8* %"register0x00000206"
  %".330" = trunc i8 %".329" to i1
  br i1 %".330", label %"1", label %"1e"
"1e":
  %".332" = load i32, i32* %"var_22h"
  call void @"sym.cgc_free"(i32 %".332")
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
