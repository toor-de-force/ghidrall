; ModuleID = "FASTLANE"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.ptr_credits" = global i32 0
@"obj.ptr_uri_mooch" = global i32 0
@"obj.ptr_uri_auth" = global i32 0
@"obj.ptr_uri_gimme" = global i32 0
@"obj.ptr_uri_tip" = global i32 0
@"obj.ptr_uri_smore" = global i32 0
@"obj.num_files" = global i8 0
@"obj.files" = global i32 0
@"obj.buf_recv" = external global i64
@"str.fatal_error_during_init_content" = external global i64
@"str.you_re_too_poor_to_use_this_verb_:" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
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
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".40" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %".41" = alloca i8**
  %".42" = alloca i32**
  store i8** %"argv", i8*** %".41"
  store i32** %"envp", i32*** %".42"
  br label %"0"
"0":
  %".46" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".49" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %".50" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %".51" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %".53" = ptrtoint i8* %".52" to i32
  %".54" = trunc i32 %".53" to i8
  %".55" = trunc i32 1 to i8
  %".56" = add i8 %".54", %".55"
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  %".60" = getelementptr i32, i32* %"var_44h", i8 0
  %".61" = bitcast i32* %".60" to i8*
  store i8 0, i8* %".61"
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  %".66" = bitcast i32* @"obj.ptr_credits" to i8*
  store i8 %".56", i8* %".66"
  %".68" = bitcast i32* @"obj.ptr_uri_mooch" to i8*
  store i8 %".56", i8* %".68"
  %".70" = bitcast i32* @"obj.ptr_uri_auth" to i8*
  store i8 %".56", i8* %".70"
  %".72" = bitcast i32* @"obj.ptr_uri_gimme" to i8*
  store i8 %".56", i8* %".72"
  %".74" = bitcast i32* @"obj.ptr_uri_tip" to i8*
  store i8 %".56", i8* %".74"
  %".76" = bitcast i32* @"obj.ptr_uri_smore" to i8*
  store i8 %".56", i8* %".76"
  %".78" = call i32 @"sym.cgc_init_content"()
  store i32 %".78", i32* %"iVar1"
  %".80" = load i32, i32* %"iVar1"
  %".81" = icmp ne i32 %".80", 0
  %".82" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".81", i1* %".82"
  %".84" = load i8, i8* %"register0x00000206"
  %".85" = trunc i8 %".84" to i1
  br i1 %".85", label %"2", label %"1"
"1":
  call void @"sym.imp.cgc_transmit"()
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".90" = ptrtoint i64* @"obj.buf_recv" to i32
  %".91" = call i32 @"sym.cgc_recvline"(i32 0, i32 %".90", i32 1024)
  store i32 %".91", i32* %"iVar1"
  %".93" = load i32, i32* %"iVar1"
  %".94" = icmp slt i32 %".93", 0
  %".95" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".94", i1* %".95"
  %".97" = load i8, i8* %"register0x00000207"
  %".98" = trunc i8 %".97" to i1
  br i1 %".98", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".102" = call i32 @"sym.cgc_dispatch_verb"()
  store i32 %".102", i32* %"iVar1"
  %".104" = load i32, i32* %"iVar1"
  %".105" = icmp eq i32 %".104", 1009
  %".106" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".105", i1* %".106"
  %".108" = load i8, i8* %"register0x00000206"
  %".109" = trunc i8 %".108" to i1
  br i1 %".109", label %"5", label %"7"
"5":
  %".111" = call i32 @"sym.cgc_sendallnulltrunc"(i32 1, i32 134523951, i32 37)
  store i32 %".111", i32* %"iVar1"
  %".113" = load i32, i32* %"iVar1"
  %".114" = icmp slt i32 %".113", 1
  br i1 %".114", label %"7", label %"6"
"6":
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  %".118" = call i32 @"sym.cgc_sendallnulltrunc"(i32 1, i32 134523988, i32 2)
  store i32 %".118", i32* %"iVar1"
  %".120" = load i32, i32* %"iVar1"
  %".121" = icmp slt i32 %".120", 1
  br i1 %".121", label %"2", label %"8"
"8":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
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

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_dispatch_verb"() 

declare i32 @"sym.cgc_check_plebian"() 

declare i32 @"sym.cgc_do_smore"(i32 %"arg_8h") 

declare i32 @"sym.cgc_head_file"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_file_contents"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_list"() 

declare i32 @"sym.cgc_list_files"() 

declare i32 @"sym.cgc_do_sup"() 

declare i32 @"sym.cgc_do_mooch"(i32 %"arg_8h") 

declare i32 @"sym.cgc_dump_file"(i32 %"arg_8h") 

declare void @"sym.cgc_pause"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare i32 @"sym.cgc_do_status"() 

declare i32 @"sym.cgc_copy_uri"(i32 %"arg_8h") 

declare void @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_findchar"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_youup"() 

declare i32 @"sym.cgc_do_auth"(i32 %"arg_8h") 

declare i32 @"sym.cgc_hex2UINT32"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_my_pow"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_gimme"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_tip"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_init_content"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendallnulltrunc"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"_reloc.memset"() 
