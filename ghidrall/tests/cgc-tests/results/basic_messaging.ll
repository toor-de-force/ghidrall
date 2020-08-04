; ModuleID = "basic_messaging"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

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
  call void @"sym.cgc_handle_menu"()
  store i32 0, i32* %"register0x00000000"
  %".14" = load i32, i32* %"register0x00000000"
  ret i32 %".14"
}

declare void @"sym.cgc_handle_menu"() 

declare void @"sym.cgc_handle_loggedin"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_delete_message"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_read_message"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_itoa"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_list_messages"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_user_message"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_create_message"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_add_message"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_unread_messages"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_init_manager"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_init_users"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_user"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 
