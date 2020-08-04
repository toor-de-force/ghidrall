; ModuleID = "Audio_Visualizer"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.filter_type" = global i32 0
@"obj.vis_multiplier" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"in_stack_ffffffd8" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".10" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".11" = alloca i8**
  %".12" = alloca i32**
  store i8** %"argv", i8*** %".11"
  store i32** %"envp", i32*** %".12"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  store i32 1, i32* %"var_ch"
  br label %"1"
"1":
  %".19" = load i32, i32* %"var_ch"
  call void @"sym.cgc_print_error_code"(i32 %".19")
  %".21" = load i32, i32* %"var_8h"
  call void @"sym.cgc_print_menu"(i32 %".21")
  %".23" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".24" = ptrtoint i8* %".23" to i32
  %".25" = call i32 @"sym.cgc_select_option"(i32 %".24")
  store i32 %".25", i32* %"var_ch"
  %".27" = load i32, i32* %"var_ch"
  %".28" = icmp ne i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"1", label %"2"
"2":
  %".34" = load i32, i32* %"in_stack_ffffffd8"
  %".35" = call i32 @"sym.cgc_printf"(i32 134533348, i32 %".34")
  store i32 0, i32* %"register0x00000000"
  %".37" = load i32, i32* %"register0x00000000"
  ret i32 %".37"
}

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_print_menu"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_vis_multiplier"() 

declare void @"sym.cgc_print_error_code"(i32 %"arg_8h") 

declare i32 @"sym.cgc_select_option"(i32 %"arg_8h") 

declare i32 @"sym.cgc_readopt"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_quit"(i32 %"arg_8h") 

declare void @"sym.cgc_clear_track"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_load_file"(i32 %"arg_8h") 

declare i32 @"sym.cgc_init_track"() 

declare i32 @"sym.cgc_validate_header"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_allocate_new_blk"() 
