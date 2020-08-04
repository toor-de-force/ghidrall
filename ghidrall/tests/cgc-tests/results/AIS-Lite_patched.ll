; ModuleID = "AIS-Lite_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_sizes" = global i32 0
@"str.INVALID_MESSAGE." = external global i64
@"str.INVALID_SENTENCE." = external global i64
@"str.PARTIAL_AIS_MESSAGE." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"bVar1" = alloca i8
  %"arg_ch" = alloca i32
  %"arg_8h" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".21" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %".22" = alloca i8**
  %".23" = alloca i32**
  store i8** %"argv", i8*** %".22"
  store i32** %"envp", i32*** %".23"
  br label %"0"
"0":
  %".27" = call i32 @"sym.cgc_malloc"(i32 65)
  %".28" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".29" = ptrtoint i8* %".28" to i32
  call void @"sym.cgc_reset_sentence_struct"(i32 %".29")
  br label %"1"
"1":
  %".32" = call i32 @"sym.cgc_calloc"(i32 65)
  store i32 %".32", i32* %"arg_ch"
  %".34" = call i32 @"sym.cgc_calloc"(i32 140)
  store i32 %".34", i32* %"arg_8h"
  store i8 1, i8* %"bVar1"
  %".37" = load i32, i32* %"arg_ch"
  %".38" = call i32 @"sym.cgc_recv_until_delim"(i32 0, i32 %".37", i32 65, i32 7)
  store i32 %".38", i32* %"iVar2"
  %".40" = load i32, i32* %"iVar2"
  %".41" = icmp slt i32 %".40", 1
  %".42" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000207"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"3", label %"2"
"2":
  %".47" = load i32, i32* %"iVar2"
  %".48" = add i32 %".47", -1
  store i32 %".48", i32* %"register0x00000008"
  %".50" = load i32, i32* %"arg_ch"
  %".51" = load i32, i32* %"register0x00000008"
  %".52" = add i32 %".50", %".51"
  %".53" = zext i8 7 to i32
  %".54" = icmp ne i32 %".52", %".53"
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"3", label %"4"
"3":
  store i32 4294967287, i32* %"register0x00000000"
  %".61" = load i32, i32* %"register0x00000000"
  ret i32 %".61"
"4":
  %".63" = load i32, i32* %"iVar2"
  %".64" = add i32 %".63", -1
  store i32 %".64", i32* %"register0x00000004"
  %".66" = load i32, i32* %"arg_ch"
  %".67" = load i32, i32* %"register0x00000004"
  %".68" = add i32 %".66", %".67"
  %".69" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".70" = ptrtoint i8* %".69" to i32
  %".71" = load i32, i32* %"arg_ch"
  %".72" = call i32 @"sym.cgc_parse_sentence"(i32 %".71", i32 %".70")
  store i32 %".72", i32* %"iVar2"
  %".74" = load i32, i32* %"iVar2"
  %".75" = icmp eq i32 %".74", 0
  %".76" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".75", i1* %".76"
  %".78" = load i8, i8* %"register0x00000206"
  %".79" = trunc i8 %".78" to i1
  br i1 %".79", label %"6", label %"5"
"5":
  store i32 134533641, i32* %"var_34h"
  br label %"a"
"6":
  %".83" = load i32, i32* %"var_18h"
  %".84" = zext i8 3 to i32
  %".85" = icmp eq i32 %".83", %".84"
  %".86" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".85", i1* %".86"
  %".88" = load i8, i8* %"register0x00000206"
  %".89" = trunc i8 %".88" to i1
  br i1 %".89", label %"8", label %"7"
"7":
  store i32 134533620, i32* %"var_34h"
  store i8 0, i8* %"bVar1"
  br label %"a"
"8":
  %".94" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".95" = ptrtoint i8* %".94" to i32
  %".96" = load i32, i32* %"arg_8h"
  %".97" = call i32 @"sym.cgc_to_english"(i32 %".96", i32 %".95")
  store i32 %".97", i32* %"iVar2"
  %".99" = load i32, i32* %"iVar2"
  %".100" = icmp ne i32 %".99", 0
  %".101" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".100", i1* %".101"
  %".103" = load i32, i32* %"arg_8h"
  store i32 %".103", i32* %"var_34h"
  %".105" = load i8, i8* %"register0x00000206"
  %".106" = trunc i8 %".105" to i1
  br i1 %".106", label %"9", label %"a"
"9":
  store i32 134533603, i32* %"var_34h"
  br label %"a"
a:
  %".110" = load i32, i32* %"var_34h"
  %".111" = call i32 @"sym.cgc_strlen"(i32 %".110")
  store i32 %".111", i32* %"iVar2"
  %".113" = load i32, i32* %"var_34h"
  %".114" = load i32, i32* %"iVar2"
  %".115" = call i32 @"sym.cgc_send"(i32 %".113", i32 %".114")
  %".116" = load i8, i8* %"bVar1"
  %".117" = trunc i8 %".116" to i1
  br i1 %".117", label %"b", label %"c"
b:
  %".119" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".120" = ptrtoint i8* %".119" to i32
  call void @"sym.cgc_reset_sentence_struct"(i32 %".120")
  br label %"c"
c:
  %".123" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_free"(i32 %".123")
  %".125" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_free"(i32 %".125")
  br label %"1"
}

declare i32 @"sym.cgc_to_english"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_msg_type_5"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_vsnprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_int2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_sixer_bits_to_ASCII_str_char"(i32 %"arg_8h") 

declare i32 @"sym.cgc_sixer_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_bits_from_sixer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_unarmor_ASCII_char"(i32 %"arg_8h") 

declare i8 @"sym.cgc_get_byte_mask"(i32 %"arg_8h") 

declare void @"sym.cgc_init_sixer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_msg_type_4"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sixer_bits_twos_to_sint"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_msg_type_1"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_msg_type"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_until_delim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_parse_sentence"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_fieldncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_next_field"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_sentence_start"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_field_to_uint"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ascii_hex_to_bin"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_checksum_correct"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_hex_digit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_reset_sentence_struct"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 
