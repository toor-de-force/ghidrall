; ModuleID = "REMATCH_1--Hat_Trick--Morris_Worm_3"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.b" = global i8 0
@"obj.randIndex" = global i32 0
@"obj.mult" = global i32 0
@"obj.c" = global i8 0
@"obj.a" = global i8 0
@"obj.cgc_lookaside" = global i32 0
@"obj.hostlist" = external global i64
@"obj.userlist" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999204
  %"var_318h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999208
  %"var_314h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999212
  %"var_310h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999216
  %"var_30ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999220
  %"var_308h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999224
  %"var_304h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999228
  %"var_300h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999232
  %"var_2fch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999236
  %"var_2f8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999240
  %"var_2f4h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999244
  %"var_2f0h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999248
  %"var_2ech" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999252
  %"var_2e8h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999256
  %"var_2e4h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999260
  %"var_2e0h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999264
  %"var_2dch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999268
  %"var_2d8h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999272
  %"var_2d4h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999276
  %"var_2d0h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999280
  %"var_2cch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999284
  %"var_2c8h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999288
  %"var_2c4h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999292
  %"var_2c0h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999296
  %"var_2bch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999300
  %"var_2b8h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999304
  %"var_2b4h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999308
  %"var_2b0h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999312
  %"var_2ach" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %"var_2a8h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999320
  %"var_2a4h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %"var_29ch" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %"var_298h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".38" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".39" = alloca i8**
  %".40" = alloca i32**
  store i8** %"argv", i8*** %".39"
  store i32** %"envp", i32*** %".40"
  br label %"0"
"0":
  store i32 0, i32* %"var_2a8h"
  %".45" = call i32 @"sym.cgc_calloc"(i32 4096)
  store i32 %".45", i32* %"iVar1"
  store i32 0, i32* %"var_2b4h"
  br label %"1"
"1":
  %".49" = load i32, i32* %"var_2b4h"
  %".50" = icmp slt i32 %".49", 1024
  br i1 %".50", label %"2", label %"3"
"2":
  %".52" = load i32, i32* %"var_2b4h"
  %".53" = mul i32 %".52", 4
  %".54" = add i32 %".53", 1128775680
  %".55" = and i32 %".54", 4278190080
  store i32 %".55", i32* %"register0x00000000"
  %".57" = load i32, i32* %"var_2b4h"
  %".58" = mul i32 %".57", 4
  %".59" = load i32, i32* %"iVar1"
  %".60" = add i32 %".59", %".58"
  %".61" = load i32, i32* %"register0x00000000"
  %".62" = load i32, i32* %"var_2b4h"
  %".63" = add i32 %".62", 1
  store i32 %".63", i32* %"var_2b4h"
  br label %"1"
"3":
  call void @"sym.cgc_srand"()
  store i32 1, i32* %"var_2b8h"
  br label %"4"
"4":
  %".69" = load i32, i32* %"var_2b8h"
  %".70" = icmp slt i32 %".69", 32
  br i1 %".70", label %"5", label %"6"
"5":
  %".72" = call i32 @"sym.cgc_gen_random_string"(i32 5, i32 32)
  store i32 %".72", i32* %"uVar2"
  %".74" = load i32, i32* %"var_2b8h"
  %".75" = mul i32 %".74", 8
  %".76" = mul i32 %".75", 8
  %".77" = getelementptr inbounds i64, i64* @"obj.userlist", i32 %".76"
  %".78" = bitcast i64* %".77" to i32*
  %".79" = ptrtoint i32* %".78" to i32
  %".80" = load i32, i32* %"uVar2"
  %".81" = call i32 @"sym.cgc_gen_random_string"(i32 5, i32 32)
  store i32 %".81", i32* %"uVar2"
  %".83" = load i32, i32* %"var_2b8h"
  %".84" = mul i32 %".83", 8
  %".85" = add i32 %".84", 134537548
  %".86" = inttoptr i32 %".85" to i32*
  %".87" = load i32, i32* %"uVar2"
  %".88" = load i32, i32* %"var_2b8h"
  %".89" = add i32 %".88", 1
  store i32 %".89", i32* %"var_2b8h"
  br label %"4"
"6":
  store i32 1, i32* %"var_2bch"
  br label %"7"
"7":
  %".94" = load i32, i32* %"var_2bch"
  %".95" = icmp slt i32 %".94", 32
  br i1 %".95", label %"9", label %"8"
"8":
  %".97" = call i32 @"sym.cgc_gen_random_string"(i32 5, i32 32)
  store i32 %".97", i32* %"uVar2"
  %".99" = load i32, i32* %"var_2bch"
  %".100" = mul i32 %".99", 8
  %".101" = mul i32 %".100", 8
  %".102" = getelementptr inbounds i64, i64* @"obj.hostlist", i32 %".101"
  %".103" = bitcast i64* %".102" to i32*
  %".104" = ptrtoint i32* %".103" to i32
  %".105" = load i32, i32* %"uVar2"
  %".106" = call i32 @"sym.cgc_random_in_range"(i32 1, i32 31)
  store i32 %".106", i32* %"iVar1"
  %".108" = load i32, i32* %"iVar1"
  %".109" = mul i32 %".108", 8
  %".110" = mul i32 %".109", 8
  %".111" = getelementptr inbounds i64, i64* @"obj.userlist", i32 %".110"
  %".112" = bitcast i64* %".111" to i32*
  %".113" = ptrtoint i32* %".112" to i32
  %".114" = load i32, i32* %"var_2bch"
  %".115" = mul i32 %".114", 8
  %".116" = add i32 %".115", 134537804
  %".117" = inttoptr i32 %".116" to i32*
  %".118" = load i32, i32* %"var_2bch"
  %".119" = add i32 %".118", 1
  store i32 %".119", i32* %"var_2bch"
  br label %"7"
"9":
  store i32 0, i32* %"var_2c4h"
  br label %"a"
a:
  %".124" = load i32, i32* %"var_2c4h"
  %".125" = icmp ult i32 %".124", 32
  %".126" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".125", i1* %".126"
  %".128" = load i8, i8* %"register0x00000200"
  %".129" = trunc i8 %".128" to i1
  br i1 %".129", label %"b", label %"c"
b:
  %".131" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".132" = load i32, i32* %"var_2c4h"
  %".133" = mul i32 %".132", 32
  %".134" = getelementptr inbounds i8, i8* %".131", i32 %".133"
  %".135" = bitcast i8* %".134" to i32*
  %".136" = load i32, i32* %"var_2c4h"
  %".137" = add i32 %".136", 1
  store i32 %".137", i32* %"var_2c4h"
  br label %"a"
c:
  %".140" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".141" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %".142" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %".143" = load i32, i32* %"var_298h"
  %".144" = or i32 %".143", 256
  store i32 %".144", i32* %"var_298h"
  call void @"sym.imp.cgc_fdwait"()
  %".147" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".148" = ptrtoint i8* %".147" to i32
  %".149" = call i32 @"sym.cgc_receive_until_fd"(i32 8, i32 %".148", i32 512, i32 10)
  store i32 %".149", i32* %"iVar1"
  %".151" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".152" = ptrtoint i8* %".151" to i32
  %".153" = load i32, i32* %"iVar1"
  %".154" = call i32 @"sym.cgc_force_newline"(i32 %".152", i32 511, i32 %".153")
  store i32 %".154", i32* %"iVar1"
  %".156" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".157" = ptrtoint i8* %".156" to i32
  %".158" = call i32 @"sym.cgc_equals"(i32 %".157", i32 134536013)
  store i32 %".158", i32* %"iVar3"
  %".160" = load i32, i32* %"iVar3"
  %".161" = icmp ne i32 %".160", 0
  %".162" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".161", i1* %".162"
  %".164" = load i8, i8* %"register0x00000206"
  %".165" = trunc i8 %".164" to i1
  br i1 %".165", label %"d", label %"e"
d:
  store i32 0, i32* %"register0x00000000"
  %".168" = load i32, i32* %"register0x00000000"
  ret i32 %".168"
e:
  %".170" = load i32, i32* %"iVar1"
  %".171" = icmp slt i32 0, %".170"
  br i1 %".171", label %"9", label %"f"
f:
  %".173" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".174" = ptrtoint i8* %".173" to i32
  %".175" = call i32 @"sym.cgc_ish"(i32 %".174")
  %".176" = call i32 @"sym.cgc_send_all_fd"(i32 5, i32 134536478, i32 2)
  br label %"9"
}

declare void @"sym.imp.cgc_fdwait"() 

declare i32 @"sym.cgc_random_in_range"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_force_newline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_srand"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_rand"() 

declare i32 @"sym.cgc_gen_random_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_equals"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ish"(i32 %"arg_8h") 

declare i32 @"sym.cgc_userlookup"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_hostlookup"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_runshellcommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_until_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send_all_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
