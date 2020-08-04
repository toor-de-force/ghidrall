; ModuleID = "middleout_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.end_marker" = external global i64
@"str.decompress" = external global i64
@"str.quit" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %"uVar4" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901584
  %"var_1806ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901588
  %"var_18068h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901592
  %"var_18064h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901596
  %"var_18060h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901600
  %"var_1805ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901604
  %"var_18058h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901608
  %"var_18054h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901612
  %"var_18050h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901616
  %"var_1804ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901620
  %"var_18048h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901624
  %"var_18044h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901628
  %"var_18040h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901632
  %"var_1803ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901636
  %"var_18038h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901640
  %"var_18034h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901644
  %"var_18030h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901648
  %"var_1802ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901652
  %"var_18028h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901656
  %"var_18024h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901660
  %"var_18020h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901664
  %"var_1801ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901668
  %"var_18018h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901672
  %"var_18014h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901676
  %"var_18010h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967212
  %"var_8010h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".29" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".30" = alloca i8**
  %".31" = alloca i32**
  store i8** %"argv", i8*** %".30"
  store i32** %"envp", i32*** %".31"
  br label %"0"
"0":
  br label %"1"
"1":
  %".36" = call i32 @"sym.cgc_readline"(i32 0)
  store i32 %".36", i32* %"iVar1"
  %".38" = load i32, i32* %"iVar1"
  %".39" = icmp eq i32 %".38", 0
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"2", label %"3"
"2":
  store i32 4294967295, i32* %"register0x00000000"
  %".46" = load i32, i32* %"register0x00000000"
  ret i32 %".46"
"3":
  %".48" = load i32, i32* %"iVar1"
  %".49" = call i32 @"sym.cgc_strcmp"(i32 %".48", i32 134536246)
  store i32 %".49", i32* %"iVar2"
  %".51" = load i32, i32* %"iVar2"
  %".52" = icmp eq i32 %".51", 0
  %".53" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".52", i1* %".53"
  %".55" = load i8, i8* %"register0x00000206"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"4", label %"b"
"4":
  %".58" = call i32 @"sym.cgc_readline"(i32 0)
  store i32 %".58", i32* %"iVar2"
  %".60" = load i32, i32* %"iVar2"
  %".61" = call i32 @"sym.cgc_alnumspc_filter"(i32 %".60")
  store i32 %".61", i32* %"iVar3"
  %".63" = load i32, i32* %"iVar2"
  call void @"sym.cgc_free"(i32 %".63")
  %".65" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".65")
  %".67" = load i32, i32* %"iVar3"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"5", label %"6"
"5":
  store i32 4294967295, i32* %"register0x00000000"
  %".75" = load i32, i32* %"register0x00000000"
  ret i32 %".75"
"6":
  %".77" = load i32, i32* %"iVar3"
  %".78" = call i32 @"sym.cgc_strlen"(i32 %".77")
  store i32 %".78", i32* %"uVar4"
  %".80" = load i32, i32* %"uVar4"
  %".81" = icmp ult i32 65536, %".80"
  br i1 %".81", label %"7", label %"8"
"7":
  store i32 4294967295, i32* %"register0x00000000"
  %".84" = load i32, i32* %"register0x00000000"
  ret i32 %".84"
"8":
  %".86" = load i32, i32* %"iVar3"
  %".87" = call i32 @"sym.cgc_build_suffix_array"(i32 %".86")
  store i32 %".87", i32* %"iVar1"
  %".89" = load i32, i32* %"iVar1"
  %".90" = icmp eq i32 %".89", 0
  %".91" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000206"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"9", label %"a"
"9":
  store i32 4294967295, i32* %"register0x00000000"
  %".97" = load i32, i32* %"register0x00000000"
  ret i32 %".97"
a:
  %".99" = load i32, i32* %"iVar3"
  %".100" = call i32 @"sym.cgc_strlen"(i32 %".99")
  store i32 %".100", i32* %"iVar2"
  %".102" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967212
  %".103" = ptrtoint i8* %".102" to i32
  %".104" = load i32, i32* %"iVar3"
  %".105" = load i32, i32* %"iVar2"
  %".106" = load i32, i32* %"iVar1"
  %".107" = call i32 @"sym.cgc_compress"(i32 %".104", i32 %".105", i32 %".103", i32 32772, i32 %".106")
  store i32 %".107", i32* %"iVar2"
  %".109" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967212
  %".110" = ptrtoint i8* %".109" to i32
  %".111" = load i32, i32* %"iVar2"
  %".112" = call i32 @"sym.cgc_send_n_bytes"(i32 1, i32 %".111", i32 %".110")
  %".113" = load i32, i32* %"iVar3"
  call void @"sym.cgc_free"(i32 %".113")
  %".115" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".115")
  br label %"1"
b:
  %".118" = load i32, i32* %"iVar1"
  %".119" = call i32 @"sym.cgc_strcmp"(i32 %".118", i32 134536244)
  store i32 %".119", i32* %"iVar2"
  %".121" = load i32, i32* %"iVar2"
  %".122" = icmp eq i32 %".121", 0
  %".123" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".122", i1* %".123"
  %".125" = load i8, i8* %"register0x00000206"
  %".126" = trunc i8 %".125" to i1
  br i1 %".126", label %"e", label %"c"
c:
  %".128" = load i32, i32* %"iVar1"
  %".129" = call i32 @"sym.cgc_strcmp"(i32 %".128", i32 134536255)
  store i32 %".129", i32* %"iVar1"
  %".131" = load i32, i32* %"iVar1"
  %".132" = icmp eq i32 %".131", 0
  %".133" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".132", i1* %".133"
  %".135" = load i8, i8* %"register0x00000206"
  %".136" = trunc i8 %".135" to i1
  br i1 %".136", label %"1", label %"d"
d:
  store i32 0, i32* %"register0x00000000"
  %".139" = load i32, i32* %"register0x00000000"
  ret i32 %".139"
e:
  %".141" = ptrtoint i64* @"obj.end_marker" to i32
  %".142" = call i32 @"sym.cgc_read_until_sequence"(i32 0, i32 %".141", i32 4)
  store i32 %".142", i32* %"iVar2"
  %".144" = load i32, i32* %"iVar2"
  %".145" = icmp eq i32 %".144", 0
  %".146" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".145", i1* %".146"
  %".148" = load i8, i8* %"register0x00000206"
  %".149" = trunc i8 %".148" to i1
  br i1 %".149", label %"f", label %"10"
f:
  store i32 4294967295, i32* %"register0x00000000"
  %".152" = load i32, i32* %"register0x00000000"
  ret i32 %".152"
"10":
  %".154" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901676
  %".155" = ptrtoint i8* %".154" to i32
  %".156" = call i32 @"sym.cgc_memset"(i32 %".155", i32 0, i32 65536)
  %".157" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901676
  %".158" = ptrtoint i8* %".157" to i32
  %".159" = load i32, i32* %"iVar2"
  %".160" = call i32 @"sym.cgc_decompress"(i32 %".159", i32 %".158", i32 65536)
  store i32 %".160", i32* %"iVar3"
  %".162" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 901676
  %".163" = ptrtoint i8* %".162" to i32
  %".164" = load i32, i32* %"iVar3"
  %".165" = call i32 @"sym.cgc_send_n_bytes"(i32 1, i32 %".164", i32 %".163")
  %".166" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".166")
  %".168" = load i32, i32* %"iVar2"
  call void @"sym.cgc_free"(i32 %".168")
  br label %"1"
}

declare i32 @"sym.cgc_build_suffix_array"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_suffix"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_append_suffix_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_merge"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_cmp_suffix"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_make_suffix"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_make_suffix_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_merge_sort"(i32 %"arg_8h") 

declare i32 @"sym.cgc_mcalloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_decompress"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_unpack_lzelem_bp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_swap_u32"(i32 %"arg_8h") 

declare i32 @"sym.cgc_writer_write"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_writer_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_compress"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_pack_lzelem_bp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_prefix_len"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_print_lzelem"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_search"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_lz_literal_new"(i32 %"arg_8h") 

declare i32 @"sym.cgc_any_list_alloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_lz_backpointer_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_until_sequence"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_realloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_alnumspc_filter"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isalnum"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isalpha"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_readline"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memchr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 
