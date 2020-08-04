; ModuleID = "Email_System_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_msg_count_login" = global i32 0
@"obj.cgc_user_count" = global i32 0
@"obj.bad_login_count" = global i32 0
@"obj.cgc_current_user" = global i32 0
@"obj.cgc_heap_manager" = global i32 0
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %".7" = alloca i8**
  %".8" = alloca i32**
  store i8** %"argv", i8*** %".7"
  store i32** %"envp", i32*** %".8"
  br label %"0"
"0":
  store i32 0, i32* @"obj.cgc_msg_count_login"
  store i32 0, i32* @"obj.cgc_user_count"
  store i32 0, i32* @"obj.bad_login_count"
  br label %"1"
"1":
  call void @"sym.cgc_print_A"()
  %".17" = call i32 @"sym.cgc_handle_A_input"()
  store i32 %".17", i32* %"iVar1"
  br label %"2"
"2":
  %".20" = load i32, i32* %"iVar1"
  %".21" = icmp eq i32 %".20", 2
  br i1 %".21", label %"1", label %"3"
"3":
  call void @"sym.cgc_print_B"()
  %".24" = call i32 @"sym.cgc_handle_B_input"()
  store i32 %".24", i32* %"iVar1"
  br label %"2"
}

declare void @"sym.cgc_print_B"() 

declare i32 @"sym.cgc_get_inbox_count"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_user_index"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_draft_count"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_total_count"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_print_A"() 

declare i32 @"sym.cgc_handle_A_input"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare void @"sym.cgc_create_user"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_list_users"() 

declare i32 @"sym.cgc_login"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_handle_B_input"() 

declare i32 @"sym.cgc_add_message"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_list_all_messages"() 

declare i32 @"sym.cgc_logout"() 

declare void @"sym.cgc_list_inbox"(i32 %"arg_8h") 

declare void @"sym.cgc_list_drafts"(i32 %"arg_8h") 

declare void @"sym.cgc_print_draft_for_send"(i32 %"arg_8h") 

declare void @"sym.cgc_print_draft_for_del"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
