; ModuleID = "CGC_File_System_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_root" = global i32 0
@"obj.g_memManager" = global i32 0
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
  call void @"sym.cgc_service_loop"()
  store i32 0, i32* %"register0x00000000"
  %".14" = load i32, i32* %"register0x00000000"
  ret i32 %".14"
}

declare void @"sym.cgc_service_loop"() 

declare i32 @"sym.cgc_handle_repo"() 

declare i32 @"sym.cgc_delete_file"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_next_slash"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_does_sub_file_exist"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_remove_sub_file"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_file"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_retrieve_sub"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_handle_ndir"() 

declare i32 @"sym.cgc_add_file"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_file_to_dir"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_fixup_dir_length"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_handle_recv"() 

declare i32 @"sym.cgc_get_file"(i32 %"arg_8h") 

declare void @"sym.cgc_handle_prnt"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_bubble_sort"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_set_name"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_handle_send"() 

declare i32 @"sym.cgc_set_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_init_file"() 

declare i32 @"sym.cgc_set_type"(i32 %"arg_8h", i32 %"arg_ch") 
