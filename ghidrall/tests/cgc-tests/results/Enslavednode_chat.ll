; ModuleID = "Enslavednode_chat"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_b1_cmds" = global i32 0
@"obj.cgc_crosstalk" = global i32 0
@"obj.cgc_b2_cmds" = global i32 0
@"obj.cgc_ct" = global i32 0
@"obj.size_class_limits" = global i32 0
@"str..._challenges_Enslavednode_chat_src_main.c" = external global i64
@"str.case" = external global i64
@"str.molly" = external global i64
@"str.you" = external global i64
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"iStack12" = bitcast i8* %".2" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000010" = alloca i32*
  br label %"0"
"0":
  %".4" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".5" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".4", i8** %".5"
  call void @"sym.cgc_init"()
  br label %"1"
"1":
  %".9" = call i32 @"sym.cgc_calloc"(i32 1, i32 8127)
  store i32 %".9", i32* %"iVar1"
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp eq i32 %".11", 0
  %".13" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000206"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"2", label %"3"
"2":
  %".18" = call i32 @"sym.cgc__error"(i32 1, i32 134534082, i32 388)
  br label %"3"
"3":
  %".20" = inttoptr i32 134534145 to i32**
  %".21" = call i32 @"sym.cgc_fdprintf"(i32 1, i32** %".20")
  %".22" = load i32, i32* %"iVar1"
  %".23" = inttoptr i32 %".22" to i32**
  %".24" = call i32 @"sym.cgc_memset"(i32** %".23", i32 0, i32 8127)
  %".25" = load i32, i32* %"iVar1"
  %".26" = inttoptr i32 %".25" to i32**
  %".27" = inttoptr i32 8126 to i32**
  %".28" = call i32 @"sym.cgc_readline"(i32 1, i32** %".26", i32** %".27", i32** %"register0x00000010")
  store i32 %".28", i32* %"iVar2"
  %".30" = load i32, i32* %"iVar2"
  %".31" = icmp slt i32 -1, %".30"
  %".32" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".31", i1* %".32"
  %".34" = load i8, i8* %"register0x00000207"
  %".35" = trunc i8 %".34" to i1
  br i1 %".35", label %"4", label %"5"
"4":
  %".37" = load i32, i32* %"iStack12"
  %".38" = icmp ne i32 %".37", 0
  %".39" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".38", i1* %".39"
  %".41" = load i8, i8* %"register0x00000206"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"6", label %"5"
"5":
  %".44" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".44")
  br label %"1"
"6":
  %".47" = load i32, i32* %"iVar1"
  %".48" = load i32, i32* %"iStack12"
  %".49" = add i32 %".47", %".48"
  %".50" = load i32, i32* %"iVar1"
  %".51" = load i32, i32* @"obj.cgc_b1_cmds"
  %".52" = inttoptr i32 %".51" to i32**
  %".53" = call i32 @"sym.cgc_tick_common"(i32 %".50", i32** %".52", i32 134534134, i32 33)
  store i32 %".53", i32* %"iVar2"
  %".55" = load i32, i32* %"iVar2"
  %".56" = icmp slt i32 %".55", 0
  %".57" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000207"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"7", label %"8"
"7":
  %".62" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".62")
  store i32 0, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  ret i32 %".65"
"8":
  %".67" = load i32, i32* @"obj.cgc_crosstalk"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"a", label %"9"
"9":
  %".74" = load i32, i32* @"obj.cgc_crosstalk"
  %".75" = add i32 %".74", 4
  %".76" = icmp eq i32 %".75", 0
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"a", label %"b"
a:
  %".82" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".82")
  br label %"1"
b:
  %".85" = load i32, i32* @"obj.cgc_b2_cmds"
  %".86" = inttoptr i32 %".85" to i32**
  %".87" = call i32 @"sym.cgc_tick_common"(i32 %".75", i32** %".86", i32 134534139, i32 10)
  store i32 0, i32* @"obj.cgc_crosstalk"
  %".89" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".89")
  br label %"1"
}

declare void @"sym.cgc_init"() 

declare i32 @"sym.cgc_split_words"(i32 %"param_1", i32 %"param_2") 

declare i8 @"sym.cgc_isspace"(i32 %"param_1") 

declare void @"sym.cgc_strcpy"(i32 %"param_1", i32** %"param_2") 

declare i8 @"sym.cgc_isprint"(i32 %"param_1") 

declare void @"sym.cgc_strncpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

declare void @"sym.cgc_hash_str"(i32** %"param_1") 

declare i32 @"sym.cgc_insert_wordlist"(i32 %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_lindex"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_ins_tree"(i32** %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_init_list"(i32 %"param_1") 

declare i32 @"sym.cgc_copy_list"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_word_list_to_str"(i32** %"param_1") 

declare i32 @"sym.cgc_strcat"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_realloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare i8 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare void @"sym.cgc_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_len_list"(i32** %"param_1") 

declare i32 @"sym.cgc_init_tree"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_append_list"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_strcmp"(i32** %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_memset"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_free"(i32 %"param_1") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32** %"param_1") 

declare i32 @"sym.cgc_readline"(i32 %"param_1", i32** %"param_2", i32** %"param_3", i32** %"param_4") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strchr"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc__error"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"param_1", i32** %"param_2") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare i32 @"sym.cgc_strtol"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_tick_common"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_append_string"(i32** %"param_1", i32 %"param_2") 

declare void @"sym.cgc_free_string"(i32 %"param_1") 

declare i32 @"sym.cgc_follow_chain"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_random_element"(i32** %"param_1") 

declare i64 @"sym.cgc_key_from_wordlist"(i32 %"param_1") 

declare i32 @"sym.cgc_upto_last"(i32 %"param_1") 

declare i32 @"sym.cgc_get_tree"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_str_to_wordlists"(i32 %"param_1") 

declare i32 @"sym.cgc_insert_wordlists"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_new_string"(i32 %"param_1") 

declare i32 @"sym.cgc_strncmp"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 
