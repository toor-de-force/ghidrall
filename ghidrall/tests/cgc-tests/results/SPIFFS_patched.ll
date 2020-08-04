; ModuleID = "SPIFFS_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_memManager" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000000" = alloca i32
  %".8" = alloca i8**
  %".9" = alloca i32**
  store i8** %"argv", i8*** %".8"
  store i32** %"envp", i32*** %".9"
  br label %"0"
"0":
  %".13" = call i32 @"sym.cgc_init_data"()
  store i32 %".13", i32* %"arg_8h"
  %".15" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_start_UI"(i32 %".15")
  store i32 0, i32* %"register0x00000000"
  %".18" = load i32, i32* %"register0x00000000"
  ret i32 %".18"
}

declare i32 @"sym.cgc_init_data"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_add_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc__add_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_perm"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_die"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_mallocOrDie"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc__add_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_add_user_to_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_start_UI"(i32 %"arg_8h") 

declare void @"sym.cgc_main_loop"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_user_in_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_users_in_group"(i32 %"arg_8h") 

declare void @"sym.cgc_delete_file_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_delete_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_file_node_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strict_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_remove_user_from_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_delete_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_working_dir"(i32 %"arg_8h") 

declare void @"sym.cgc_print_perms"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_arg"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_print_group_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_string"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_print_user_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_directory"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__add_node"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_find_directory_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_remove_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_file_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_write"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_add_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_delete_perms"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_perm_by_name"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_file_size"(i32 %"arg_8h") 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare void @"sym.cgc_strofdate"(i32 %"arg_8h") 

declare void @"sym.cgc_date_from_epoch"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_user_by_number"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_user_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_str_of_path"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"sym.imp.strncpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.strncpy"()
  ret void
}

declare i32 @"sym.cgc_recursive_path"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_prompt"(i32 %"arg_8h") 

declare i32 @"sym.cgc_remove_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_delete_file"(i32 %"arg_8h") 

declare void @"sym.cgc_validate_current_perms"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_user_valid"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_group_valid"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_group"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_group_by_number"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_group_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_add_file"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_receive_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_node_by_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_help"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_add_file_chunk"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_get_time"() 

declare i32 @"sym.cgc_make_epoch"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_get_int"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"arg_30h") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"_reloc.memcpy"() 

declare void @"_reloc.strncpy"() 
