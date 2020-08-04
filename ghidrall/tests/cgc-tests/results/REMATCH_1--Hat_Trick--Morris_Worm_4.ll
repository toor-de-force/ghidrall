; ModuleID = "REMATCH_1--Hat_Trick--Morris_Worm_4"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_debug_mode" = global i32 0
@"obj.abook" = global i32 0
@"obj.root_queue" = global i32 0
@"obj.b" = global i8 0
@"obj.randIndex" = global i32 0
@"obj.mult" = global i32 0
@"obj.c" = global i8 0
@"obj.a" = global i8 0
@"obj.cgc_lookaside" = global i32 0
@"str.mailsend" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"bVar3" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999196
  %"var_320h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999200
  %"var_31ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999204
  %"var_318h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999212
  %"var_310h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999216
  %"var_30ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999220
  %"var_308h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999224
  %"var_304h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999228
  %"var_300h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999232
  %"var_2fch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999236
  %"var_2f8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999240
  %"var_2f4h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999244
  %"var_2f0h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999248
  %"var_2ech" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999308
  %"var_2b0h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999312
  %"var_2ach" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %"var_2a8h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999320
  %"var_2a4h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %"var_29ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %"var_298h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999460
  %"var_218h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".25" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %".26" = alloca i8**
  %".27" = alloca i32**
  store i8** %"argv", i8*** %".26"
  store i32** %"envp", i32*** %".27"
  br label %"0"
"0":
  store i32 0, i32* %"var_2a8h"
  br label %"1"
"1":
  store i32 0, i32* %"var_2b0h"
  br label %"2"
"2":
  %".35" = load i32, i32* %"var_2b0h"
  %".36" = icmp ult i32 %".35", 32
  %".37" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000200"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"3", label %"4"
"3":
  %".42" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".43" = load i32, i32* %"var_2b0h"
  %".44" = mul i32 %".43", 32
  %".45" = getelementptr inbounds i8, i8* %".42", i32 %".44"
  %".46" = bitcast i8* %".45" to i32*
  %".47" = load i32, i32* %"var_2b0h"
  %".48" = add i32 %".47", 1
  store i32 %".48", i32* %"var_2b0h"
  br label %"2"
"4":
  %".51" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999332
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999316
  %".53" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999328
  %".54" = load i32, i32* %"var_298h"
  %".55" = or i32 %".54", 1024
  store i32 %".55", i32* %"var_298h"
  call void @"sym.imp.cgc_fdwait"()
  %".58" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".59" = ptrtoint i8* %".58" to i32
  %".60" = call i32 @"sym.cgc_receive_until_fd"(i32 10, i32 %".59", i32 512, i32 10)
  store i32 %".60", i32* %"iVar1"
  %".62" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".63" = ptrtoint i8* %".62" to i32
  %".64" = load i32, i32* %"iVar1"
  %".65" = call i32 @"sym.cgc_force_newline"(i32 %".63", i32 512, i32 %".64")
  store i32 %".65", i32* %"iVar1"
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %".68" = ptrtoint i8* %".67" to i32
  %".69" = call i32 @"sym.cgc_equals"(i32 %".68", i32 134538893)
  store i32 %".69", i32* %"iVar2"
  %".71" = load i32, i32* %"iVar2"
  %".72" = icmp ne i32 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"5", label %"6"
"5":
  store i32 0, i32* %"register0x00000000"
  %".79" = load i32, i32* %"register0x00000000"
  ret i32 %".79"
"6":
  %".81" = load i32, i32* %"iVar1"
  %".82" = icmp slt i32 %".81", 1
  br i1 %".82", label %"1", label %"7"
"7":
  %".84" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  store i32 1, i32* %"register0x00000018"
  store i32 134539477, i32* %"var_2ech"
  %".87" = ptrtoint i8* %".84" to i32
  store i32 %".87", i32* %"var_2f4h"
  %".89" = load i32, i32* %"register0x00000018"
  store i32 %".89", i32* %"var_2f0h"
  br label %"8"
"8":
  %".92" = load i32, i32* %"var_2f0h"
  %".93" = icmp slt i32 %".92", 14
  br i1 %".93", label %"9", label %"14"
"9":
  %".95" = load i32, i32* %"var_2f4h"
  %".96" = trunc i32 %".95" to i8
  %".97" = sext i8 %".96" to i32
  store i32 %".97", i32* %"register0x00000000"
  %".99" = load i32, i32* %"register0x00000000"
  %".100" = call i32 @"sym.cgc_isspace"(i32 %".99")
  store i32 %".100", i32* %"iVar1"
  %".102" = load i32, i32* %"iVar1"
  %".103" = icmp ne i32 %".102", 0
  %".104" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".103", i1* %".104"
  %".106" = load i8, i8* %"register0x00000206"
  %".107" = trunc i8 %".106" to i1
  br i1 %".107", label %"13", label %"a"
a:
  %".109" = load i32, i32* %"var_2f4h"
  %".110" = zext i8 0 to i32
  %".111" = icmp eq i32 %".109", %".110"
  %".112" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".111", i1* %".112"
  %".114" = load i8, i8* %"register0x00000206"
  %".115" = trunc i8 %".114" to i1
  br i1 %".115", label %"14", label %"b"
b:
  %".117" = load i32, i32* %"var_2f4h"
  %".118" = zext i8 0 to i32
  %".119" = icmp ne i32 %".117", %".118"
  %".120" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".119", i1* %".120"
  %".122" = load i8, i8* %"register0x00000206"
  %".123" = trunc i8 %".122" to i1
  br i1 %".123", label %"8", label %"c"
c:
  %".125" = load i32, i32* %"var_2f4h"
  %".126" = trunc i32 %".125" to i8
  %".127" = sext i8 %".126" to i32
  store i32 %".127", i32* %"register0x00000000"
  %".129" = load i32, i32* %"register0x00000000"
  %".130" = call i32 @"sym.cgc_isspace"(i32 %".129")
  store i32 %".130", i32* %"iVar1"
  %".132" = load i32, i32* %"iVar1"
  %".133" = icmp eq i32 %".132", 0
  %".134" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".133", i1* %".134"
  %".136" = load i8, i8* %"register0x00000206"
  %".137" = trunc i8 %".136" to i1
  br i1 %".137", label %"8", label %"d"
d:
  %".139" = load i32, i32* %"var_2f0h"
  %".140" = add i32 %".139", 1
  store i32 %".140", i32* %"register0x00000008"
  %".142" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999248
  %".143" = load i32, i32* %"var_2f0h"
  %".144" = mul i32 %".143", 32
  %".145" = getelementptr inbounds i8, i8* %".142", i32 %".144"
  %".146" = bitcast i8* %".145" to i32*
  %".147" = load i32, i32* %"var_2f4h"
  br label %"e"
e:
  %".149" = load i32, i32* %"var_2f4h"
  %".150" = zext i8 0 to i32
  %".151" = icmp ne i32 %".149", %".150"
  %".152" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".151", i1* %".152"
  store i8 0, i8* %"bVar3"
  %".155" = load i8, i8* %"register0x00000206"
  %".156" = trunc i8 %".155" to i1
  br i1 %".156", label %"f", label %"10"
f:
  %".158" = load i32, i32* %"var_2f4h"
  %".159" = trunc i32 %".158" to i8
  %".160" = sext i8 %".159" to i32
  store i32 %".160", i32* %"register0x00000000"
  %".162" = load i32, i32* %"register0x00000000"
  %".163" = call i32 @"sym.cgc_isspace"(i32 %".162")
  store i32 %".163", i32* %"iVar1"
  %".165" = load i32, i32* %"iVar1"
  %".166" = icmp eq i32 %".165", 0
  %".167" = bitcast i8* %"bVar3" to i1*
  store i1 %".166", i1* %".167"
  br label %"10"
"10":
  %".170" = load i8, i8* %"bVar3"
  %".171" = xor i8 %".170", -1
  %".172" = trunc i8 %".171" to i1
  br i1 %".172", label %"11", label %"12"
"11":
  %".174" = load i32, i32* %"var_2f4h"
  %".175" = add i32 %".174", 1
  store i32 %".175", i32* %"register0x00000004"
  %".177" = load i32, i32* %"var_2f4h"
  %".178" = load i32, i32* %"register0x00000004"
  store i32 %".178", i32* %"var_2f4h"
  %".180" = load i32, i32* %"register0x00000008"
  store i32 %".180", i32* %"var_2f0h"
  br label %"8"
"12":
  %".183" = load i32, i32* %"var_2f4h"
  %".184" = add i32 %".183", 1
  store i32 %".184", i32* %"var_2f4h"
  br label %"e"
"13":
  %".187" = load i32, i32* %"var_2f4h"
  %".188" = add i32 %".187", 1
  store i32 %".188", i32* %"var_2f4h"
  br label %"9"
"14":
  %".191" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999248
  %".192" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999248
  %".193" = load i32, i32* %"var_2f0h"
  %".194" = mul i32 %".193", 32
  %".195" = getelementptr inbounds i8, i8* %".192", i32 %".194"
  %".196" = bitcast i8* %".195" to i32*
  %".197" = ptrtoint i8* %".191" to i32
  %".198" = load i32, i32* %"var_2f0h"
  call void @"sym.cgc_mailsend"(i32 %".198", i32 %".197")
  %".200" = call i32 @"sym.cgc_send_all_fd"(i32 5, i32 134539486, i32 2)
  br label %"1"
}

declare void @"sym.imp.cgc_fdwait"() 

declare i32 @"sym.cgc_force_newline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_mailsend"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_read_message"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_locate_queue"(i32 %"arg_8h") 

declare void @"sym.cgc_srand"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_initialize_address_book"() 

declare i32 @"sym.cgc_add_random_addressbook_entry"() 

declare i32 @"sym.cgc_random_in_range"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_rand"() 

declare i32 @"sym.cgc_gen_random_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_all_queues"() 

declare void @"sym.cgc_list_queue"(i32 %"arg_8h") 

declare void @"sym.cgc_print_address_book"() 

declare void @"sym.cgc_initialize_mail_queues"() 

declare i32 @"sym.cgc_add_random_queue"() 

declare i32 @"sym.cgc_pick_address"() 

declare i32 @"sym.cgc_add_random_message"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc_mailsend_post"(i32 %"arg_8h") 

declare i32 @"sym.cgc_lookup_name"(i32 %"arg_8h") 

declare i32 @"sym.cgc_make_string"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strstr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_runshellcommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

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

declare i32 @"sym.cgc_equals"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_send_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send_all_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
