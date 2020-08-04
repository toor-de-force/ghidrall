; ModuleID = "commerce_webscale_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.__rpc" = global i32 0
@"obj.size_class_limits" = global i32 0
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".3" = call i32 @"sym.cgc_database_run"(i32 6, i32 3)
  store i32 0, i32* %"register0x00000000"
  %".5" = load i32, i32* %"register0x00000000"
  ret i32 %".5"
}

declare i32 @"sym.cgc_database_run"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_marshal_rpc_msg"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_call_body"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_rejected_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_accepted_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_DB_CURRENT_db_lookup"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_tree_lookup"(i32** %"param_1", i32 %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare i8 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare i32 @"sym.cgc_DB_CURRENT_db_next"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_tree_smallest"(i32** %"param_1") 

declare i32 @"sym.cgc_tree_next"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc__rpc_send"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc__rpc_recv"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_unmarshal_record"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_memset"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_DB_CURRENT_db_insert"(i32** %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare i32 @"sym.cgc_tree_insert"(i32** %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_DB_CURRENT_db_delete"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_tree_delete"(i32** %"param_1", i32 %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_key"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_result"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_record"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_DB_CURRENT_db_prev"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_tree_prev"(i32** %"param_1", i32 %"param_2", i32** %"param_3") 

declare void @"sym.cgc_tree_largest"(i32** %"param_1") 

declare i32 @"sym.cgc_unmarshal_rpc_msg"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_call_body"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_opaque_auth"(i32 %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_rejected_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_accepted_reply"(i32 %"param_1", i32** %"param_2", i32** %"param_3") 
