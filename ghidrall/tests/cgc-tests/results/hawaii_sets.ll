; ModuleID = "hawaii_sets"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_root" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000000" = alloca i32
  %".7" = alloca i8**
  %".8" = alloca i32**
  store i8** %"argv", i8*** %".7"
  store i32** %"envp", i32*** %".8"
  br label %"0"
"0":
  call void @"sym.cgc_command_loop"()
  store i32 0, i32* %"register0x00000000"
  %".14" = load i32, i32* %"register0x00000000"
  ret i32 %".14"
}

declare void @"sym.cgc_command_loop"() 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_exec_command"(i32 %"arg_8h") 

declare void @"sym.cgc_print_sets"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_print_subsets"(i32 %"arg_8h", i32 %"arg_ch", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"arg_2ch", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"placeholder_13", i32 %"placeholder_14", i32 %"placeholder_15", i32 %"placeholder_16", i32 %"placeholder_17", i32 %"placeholder_18", i32 %"placeholder_19", i32 %"placeholder_20", i32 %"placeholder_21", i32 %"placeholder_22", i32 %"placeholder_23", i32 %"placeholder_24", i32 %"placeholder_25", i32 %"placeholder_26", i32 %"placeholder_27", i32 %"placeholder_28", i32 %"arg_7ch") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_copymem"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_isalnum"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isalpha"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i32 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_retrieve_set"(i32 %"arg_8h") 

declare void @"sym.cgc_print_set"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_handle_set_var"(i32 %"arg_8h") 

declare void @"sym.cgc_add_set"(i32 %"arg_8h") 

declare void @"sym.cgc_free_element"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parse_operations"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_copy_set"(i32 %"arg_8h") 

declare i32 @"sym.cgc_copy_element"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_element_to_set"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_set_difference"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_element_in_set"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_symmetric_difference"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parse_set"(i32 %"arg_8h") 

declare i32 @"sym.cgc_create_element"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free_set_array"(i32 %"arg_8h") 

declare i32 @"sym.cgc_intersect"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_unionset"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_issubset"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_command_line"(i32 %"arg_8h") 
