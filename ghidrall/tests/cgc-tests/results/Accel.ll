; ModuleID = "Accel"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_sheet" = global i32 0
@"obj._g_sheet" = global i32 0
@"str.Unknown_Input" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999384
  %"in_stack_fffffd98" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999400
  %"var_254h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999404
  %"var_250h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999432
  %"var_234h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999436
  %"var_230h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999440
  %"var_22ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999444
  %"var_228h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999448
  %"var_224h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999452
  %"var_220h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999456
  %"var_21ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999460
  %"var_218h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %"var_20ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %"var_208h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".19" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".20" = alloca i8**
  %".21" = alloca i32**
  store i8** %"argv", i8*** %".20"
  store i32** %"envp", i32*** %".21"
  br label %"0"
"0":
  %".25" = call i32 @"sym.cgc_init_sheet"()
  br label %"1"
"1":
  %".27" = load i32, i32* %"in_stack_fffffd98"
  %".28" = call i32 @"sym.cgc_printf"(i32 134549064, i32 %".27")
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %".30" = bitcast i32* %"in_stack_fffffd98" to i8**
  store i8* %".29", i8** %".30"
  %".32" = load i32, i32* %"in_stack_fffffd98"
  %".33" = call i32 @"sym.cgc_readline"(i32 0, i32 %".32", i32 512)
  store i32 %".33", i32* %"iVar1"
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp eq i32 %".35", 0
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"2", label %"5"
"2":
  %".42" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %".43" = ptrtoint i8* %".42" to i32
  %".44" = call i32 @"sym.cgc_parse_line"(i32 %".43")
  store i32 %".44", i32* %"iVar1"
  %".46" = load i32, i32* %"iVar1"
  %".47" = add i32 %".46", 8
  store i32 %".47", i32* %"register0x00000000"
  %".49" = load i32, i32* %"register0x00000000"
  %".50" = icmp ult i32 %".49", 9
  %".51" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i32, i32* %"iVar1"
  %".54" = icmp eq i32 %".53", 1
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000200"
  %".58" = load i8, i8* %"register0x00000200"
  %".59" = xor i8 %".57", %".58"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"3", label %"4"
"3":
  %".62" = load i32, i32* %"register0x00000000"
  %".63" = mul i32 %".62", 4
  %".64" = add i32 %".63", 134549024
  %".65" = call i32 @"unique0x00000f30"()
  %".66" = load i32, i32* %"uVar2"
  ret i32 %".66"
"4":
  %".68" = load i32, i32* %"in_stack_fffffd98"
  %".69" = call i32 @"sym.cgc_printf"(i32 134549214, i32 %".68")
  br label %"1"
"5":
  %".71" = load i32, i32* %"in_stack_fffffd98"
  %".72" = call i32 @"sym.cgc_printf"(i32 134549259, i32 %".71")
  br label %"1"
}

declare i32 @"sym.cgc_readline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_print_assigned_cells"() 

declare i32 @"sym.cgc_itoa"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parse_line"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strsep"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_toupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_set_cell"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parsearg"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_op"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_cell"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_rowcol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_clear_cell"(i32 %"arg_8h") 

declare i32 @"sym.cgc_show_cell"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i80 @"sym.cgc_eval_formula"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_infixtorpn"(i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_enqueue"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sanitize_formula"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_peek_top"(i32 %"arg_8h") 

declare i32 @"sym.cgc_eval_function"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i8 @"sym.cgc_is_arg_arithmetic"(i32 %"arg_8h") 

declare i32 @"sym.cgc_push_copy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i80 @"sym.cgc_atof"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare void @"sym.cgc_clear_stack"(i32 %"arg_8h") 

declare i32 @"sym.cgc_push"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_dequeue_copy"(i32 %"arg_8h") 

declare void @"sym.cgc_clear_queue"(i32 %"arg_8h") 

declare i32 @"sym.cgc_pop_copy"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ftoa"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare void @"sym.imp.cgc_log"() 

declare void @"sym.imp.cgc_remainder"() 

declare i32 @"sym.cgc_valid_cell_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtrim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_init_sheet"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"unique0x00000f30"() 

declare void @"_reloc.memset"() 
