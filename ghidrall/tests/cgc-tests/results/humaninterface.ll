; ModuleID = "humaninterface"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_current_packet" = global i32 0
@"obj.g_dynamic_id" = global i32 0
@"obj.g_temp_packet" = global i32 0
@"obj.g_psm_head" = global i32 0
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".3" = ptrtoint i32* @"0x804a030" to i32
  call void @"sym.cgc_session_register_psm"(i32 4113, i32 %".3")
  %".5" = ptrtoint i32* @"0x804a060" to i32
  call void @"sym.cgc_session_register_psm"(i32 4115, i32 %".5")
  call void @"sym.cgc_session_loop"()
  store i32 0, i32* %"register0x00000000"
  %".9" = load i32, i32* %"register0x00000000"
  ret i32 %".9"
}

declare void @"sym.cgc_session_loop"() 

declare void @"sym.cgc_session_handle_packet"() 

declare void @"sym.cgc_session_handle_command"() 

declare void @"sym.cgc_session_new_channel"() 

declare void @"sym.cgc_session_send_reject"(i32 %"param_1", i16 %"param_2", i32 %"param_3") 

declare void @"sym.cgc__session_send"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare void @"sym.cgc_link_send"(i16 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_session_send"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_free"(i32 %"param_1") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32** %"param_1") 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare i32 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare void @"sym.cgc_session_configuration_response"(i32 %"param_1") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_find_fit"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_session_find_psm"() 

declare i32 @"sym.cgc_memset"(i32 %"param_1", i8 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_link_recv"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_session_register_psm"(i32 %"param_1", i32 %"param_2") 

@"0x804a030" = external global i32
@"0x804a060" = external global i32