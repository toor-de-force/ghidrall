; ModuleID = "REMATCH_1--Hat_Trick--Morris_Worm_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.num_users" = global i32 0
@"obj.cgc_short_list" = global i32 0
@"obj.cgc_root_user" = global i32 0
@"obj.b" = global i8 0
@"obj.randIndex" = global i32 0
@"obj.mult" = global i32 0
@"obj.c" = global i8 0
@"obj.a" = global i8 0
@"obj.cgc_lookaside" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999252
  %"var_2e8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999256
  %"var_2e4h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999260
  %"var_2e0h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999264
  %"var_2dch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999268
  %"var_2d8h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999272
  %"var_2d4h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999276
  %"var_2d0h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999280
  %"var_2cch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999284
  %"var_2c8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999288
  %"var_2c4h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999292
  %"var_2c0h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999296
  %"var_2bch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999300
  %"var_2b8h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999304
  %"var_2b4h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999308
  %"var_2b0h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999312
  %"var_2ach" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %"var_2a8h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999320
  %"var_2a4h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %"var_29ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %"var_298h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999460
  %"var_218h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".26" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".27" = alloca i8**
  %".28" = alloca i32**
  store i8** %"argv", i8*** %".27"
  store i32** %"envp", i32*** %".28"
  br label %"0"
"0":
  store i32 0, i32* %"var_2a8h"
  call void @"sym.cgc_srand"()
  %".34" = call i32 @"sym.cgc_gen_random_user"()
  store i32 %".34", i32* %"var_2b0h"
  %".36" = load i32, i32* @"obj.num_users"
  %".37" = add i32 %".36", 1
  store i32 %".37", i32* @"obj.num_users"
  %".39" = load i32, i32* %"var_2b0h"
  store i32 %".39", i32* @"obj.cgc_root_user"
  %".41" = call i32 @"sym.cgc_calloc"(i32 4)
  %".42" = inttoptr i32 %".41" to i32*
  %".43" = bitcast i32* @"obj.cgc_short_list" to i32**
  store i32* %".42", i32** %".43"
  %".45" = load i32, i32* @"obj.cgc_root_user"
  store i32 %".45", i32* @"obj.cgc_short_list"
  store i32 0, i32* %"var_2b4h"
  br label %"1"
"1":
  %".49" = load i32, i32* %"var_2b4h"
  %".50" = icmp slt i32 %".49", 10
  br i1 %".50", label %"3", label %"2"
"2":
  %".52" = call i32 @"sym.cgc_gen_random_user"()
  store i32 %".52", i32* %"uVar1"
  %".54" = load i32, i32* %"var_2b0h"
  %".55" = add i32 %".54", 56
  %".56" = load i32, i32* %"uVar1"
  %".57" = load i32, i32* %"var_2b0h"
  %".58" = add i32 %".57", 56
  store i32 %".58", i32* %"var_2b0h"
  %".60" = load i32, i32* @"obj.num_users"
  %".61" = add i32 %".60", 1
  store i32 %".61", i32* @"obj.num_users"
  %".63" = load i32, i32* %"var_2b4h"
  %".64" = add i32 %".63", 1
  store i32 %".64", i32* %"var_2b4h"
  br label %"1"
"3":
  store i32 0, i32* %"var_2b8h"
  br label %"4"
"4":
  %".69" = load i32, i32* %"var_2b8h"
  %".70" = icmp ult i32 %".69", 32
  %".71" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000200"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"5", label %"6"
"5":
  %".76" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".77" = load i32, i32* %"var_2b8h"
  %".78" = mul i32 %".77", 32
  %".79" = getelementptr inbounds i8, i8* %".76", i32 %".78"
  %".80" = bitcast i8* %".79" to i32*
  %".81" = load i32, i32* %"var_2b8h"
  %".82" = add i32 %".81", 1
  store i32 %".82", i32* %"var_2b8h"
  br label %"4"
"6":
  %".85" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".86" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %".87" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %".88" = load i32, i32* %"var_298h"
  %".89" = or i32 %".88", 16
  store i32 %".89", i32* %"var_298h"
  call void @"sym.imp.cgc_fdwait"()
  %".92" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".93" = ptrtoint i8* %".92" to i32
  %".94" = call i32 @"sym.cgc_receive_until_fd"(i32 4, i32 %".93", i32 512, i32 10)
  store i32 %".94", i32* %"iVar2"
  %".96" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".97" = ptrtoint i8* %".96" to i32
  %".98" = load i32, i32* %"iVar2"
  %".99" = call i32 @"sym.cgc_force_newline"(i32 %".97", i32 512, i32 %".98")
  store i32 %".99", i32* %"iVar2"
  %".101" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".102" = ptrtoint i8* %".101" to i32
  %".103" = call i32 @"sym.cgc_equals"(i32 %".102", i32 134536269)
  store i32 %".103", i32* %"iVar3"
  %".105" = load i32, i32* %"iVar3"
  %".106" = icmp ne i32 %".105", 0
  %".107" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".106", i1* %".107"
  %".109" = load i8, i8* %"register0x00000206"
  %".110" = trunc i8 %".109" to i1
  br i1 %".110", label %"7", label %"8"
"7":
  store i32 0, i32* %"register0x00000000"
  %".113" = load i32, i32* %"register0x00000000"
  ret i32 %".113"
"8":
  %".115" = load i32, i32* %"iVar2"
  %".116" = icmp slt i32 0, %".115"
  br i1 %".116", label %"3", label %"9"
"9":
  call void @"sym.cgc_lookupd"()
  %".119" = call i32 @"sym.cgc_send_all_fd"(i32 5, i32 134536723, i32 2)
  br label %"3"
}

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_force_newline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_lookupd"() 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gets"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_srand"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_lookup"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_usage"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_quick_lookup"(i32 %"arg_8h") 

declare void @"sym.cgc_print_all_users_short"() 

declare void @"sym.cgc_print_user_short"(i32 %"arg_8h") 

declare void @"sym.cgc_print_all_users_long"() 

declare i32 @"sym.cgc_long_lookup"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_print_user_long"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_until_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_equals"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_gen_random_user"() 

declare i32 @"sym.cgc_random_in_range"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_rand"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_gen_random_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send_all_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
