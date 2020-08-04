; ModuleID = "Glue_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_stderr" = global i32 0
@"obj.cgc_stdout" = global i32 0
@"obj.txcnt" = global i32 0
@"obj.secret_page" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_ch" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999436
  %"var_230h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999440
  %"var_22ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999444
  %"var_228h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999448
  %"var_224h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999452
  %"var_220h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999456
  %"var_21ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999460
  %"var_218h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".15" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  %".16" = alloca i8**
  %".17" = alloca i32**
  store i8** %"argv", i8*** %".16"
  store i32** %"envp", i32*** %".17"
  br label %"0"
"0":
  store i32 0, i32* %"var_10h"
  call void @"sym.cgc_poop_page_perfectly"()
  br label %"1"
"1":
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".25" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".26" = ptrtoint i8* %".25" to i32
  %".27" = ptrtoint i8* %".24" to i32
  %".28" = call i32 @"sym.cgc_read_n"(i32 0, i32 %".26", i32 512, i32 %".27")
  store i32 %".28", i32* %"iVar1"
  %".30" = load i32, i32* %"iVar1"
  %".31" = icmp ne i32 %".30", 512
  %".32" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".31", i1* %".32"
  %".34" = load i8, i8* %"register0x00000206"
  %".35" = trunc i8 %".34" to i1
  br i1 %".35", label %"3", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".38" = load i32, i32* %"register0x00000000"
  ret i32 %".38"
"3":
  %".40" = load i32, i32* %"var_ch"
  %".41" = icmp ne i32 %".40", 0
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"4", label %"5"
"4":
  store i32 0, i32* %"register0x00000000"
  %".48" = load i32, i32* %"register0x00000000"
  ret i32 %".48"
"5":
  %".50" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".51" = ptrtoint i8* %".50" to i32
  %".52" = call i32 @"sym.cgc_empty_block"(i32 %".51")
  store i32 %".52", i32* %"iVar1"
  %".54" = load i32, i32* %"iVar1"
  %".55" = icmp eq i32 %".54", 0
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"8", label %"6"
"6":
  %".61" = load i32, i32* %"var_10h"
  %".62" = add i32 %".61", 1
  store i32 %".62", i32* %"var_10h"
  %".64" = load i32, i32* %"var_10h"
  %".65" = icmp eq i32 %".64", 2
  %".66" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".65", i1* %".66"
  %".68" = load i8, i8* %"register0x00000206"
  %".69" = trunc i8 %".68" to i1
  br i1 %".69", label %"1", label %"7"
"7":
  store i32 0, i32* %"register0x00000000"
  %".72" = load i32, i32* %"register0x00000000"
  ret i32 %".72"
"8":
  store i32 0, i32* %"var_10h"
  %".75" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %".76" = ptrtoint i8* %".75" to i32
  %".77" = call i32 @"sym.cgc_initialize"(i32 %".76")
  store i32 %".77", i32* %"iVar1"
  %".79" = load i32, i32* %"iVar1"
  call void @"sym.cgc_print_entry"(i32 %".79")
  %".81" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".82" = load i32, i32* %"iVar1"
  %".83" = add i32 %".82", 125
  store i32 %".83", i32* %"register0x00000008"
  %".85" = ptrtoint i8* %".81" to i32
  %".86" = load i32, i32* %"register0x00000008"
  %".87" = call i32 @"sym.cgc_read_ascii_octal"(i32 %".86", i32 12, i32 %".85")
  store i32 %".87", i32* %"arg_ch"
  %".89" = load i32, i32* %"var_ch"
  %".90" = icmp ne i32 %".89", 0
  %".91" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000206"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"9", label %"a"
"9":
  store i32 0, i32* %"register0x00000000"
  %".97" = load i32, i32* %"register0x00000000"
  ret i32 %".97"
a:
  %".99" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".100" = ptrtoint i8* %".99" to i32
  %".101" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_skip_data"(i32 0, i32 %".101", i32 %".100")
  %".103" = load i32, i32* %"var_ch"
  %".104" = icmp ne i32 %".103", 0
  %".105" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".104", i1* %".105"
  %".107" = load i8, i8* %"register0x00000206"
  %".108" = trunc i8 %".107" to i1
  br i1 %".108", label %"b", label %"c"
b:
  store i32 0, i32* %"register0x00000000"
  %".111" = load i32, i32* %"register0x00000000"
  ret i32 %".111"
c:
  %".113" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".113")
  br label %"1"
}

declare void @"sym.cgc_skip_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_read_ascii_octal"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_xcalloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tiny_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_size_to_bin"(i32 %"arg_8h") 

declare i32 @"sym.cgc_run_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_small_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_small_unlink_free"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_heap_error"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__vsfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc__convert_unsigned"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memmove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc__convert_signed"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strtoul"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fwrite"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_xlat_2"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fflush"(i32 %"arg_8h") 

declare void @"sym.cgc_small_split"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_small_insert_free"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_small_alloc_run"(i32 %"arg_8h") 

declare i32 @"sym.cgc_large_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_reverse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_entry"(i32 %"arg_8h") 

declare i32 @"sym.cgc_sent_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_get_user_code"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_fprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_map_type"(i32 %"arg_8h") 

declare void @"sym.cgc_poop_page_perfectly"() 

declare void @"sym.cgc_send_flush"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

define void @"sym.malloc_free"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %"register0x00000018" = alloca i32
  %"register0x00000206" = alloca i8
  %".7" = alloca i32
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  store i32 %"arg_ch", i32* %".8"
  br label %"0"
"0":
  %".12" = load i32, i32* %".8"
  %".13" = lshr i32 %".12", 20
  store i32 %".13", i32* %"register0x00000018"
  %".15" = load i32, i32* %".7"
  %".16" = add i32 %".15", 524
  %".17" = load i32, i32* %"register0x00000018"
  %".18" = add i32 %".16", %".17"
  %".19" = bitcast i8* %"cVar1" to i32*
  store i32 %".18", i32* %".19"
  %".21" = load i32, i32* %".8"
  %".22" = icmp ne i32 %".21", 0
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"1", label %"7"
"1":
  %".28" = load i8, i8* %"cVar1"
  %".29" = icmp eq i8 %".28", 0
  %".30" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".29", i1* %".30"
  %".32" = load i8, i8* %"register0x00000206"
  %".33" = trunc i8 %".32" to i1
  br i1 %".33", label %"6", label %"2"
"2":
  %".35" = load i8, i8* %"cVar1"
  %".36" = icmp eq i8 %".35", 2
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"5", label %"3"
"3":
  %".42" = load i8, i8* %"cVar1"
  %".43" = icmp eq i8 %".42", 1
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"7", label %"4"
"4":
  %".49" = load i32, i32* %".7"
  %".50" = load i32, i32* %".8"
  call void @"sym.cgc_tiny_free"(i32 %".49", i32 %".50")
  br label %"7"
"5":
  %".53" = load i32, i32* %".7"
  %".54" = load i32, i32* %".8"
  call void @"sym.cgc_small_free"(i32 %".53", i32 %".54")
  br label %"7"
"6":
  %".57" = load i32, i32* %".7"
  %".58" = load i32, i32* %".8"
  call void @"sym.cgc_large_free"(i32 %".57", i32 %".58")
  br label %"7"
"7":
  ret void
}

declare void @"sym.cgc_tiny_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_small_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_large_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_initialize"(i32 %"arg_8h") 

declare i32 @"sym.cgc_empty_block"(i32 %"arg_8h") 
