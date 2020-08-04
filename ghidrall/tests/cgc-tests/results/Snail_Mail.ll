; ModuleID = "Snail_Mail"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_remaining" = global i32 0
@"obj.cgc_last" = global i32 0
@"obj.cgc_init_heap_done" = global i8 0
@"obj.cgc_seed_idx" = global i16 0
@"obj.seed" = global i32 0
@"obj.lost_box" = global i32 0
@"obj.received_box" = global i32 0
@"obj.undeliverable_box" = global i32 0
@"obj.sorted_box" = global i32 0
@"obj.STATUS_ERR" = external global i64
@"obj.STATUS_OK" = external global i64
@"obj.STATUS_QUIT" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i16
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".7" = alloca i8**
  %".8" = alloca i32**
  store i8** %"argv", i8*** %".7"
  store i32** %"envp", i32*** %".8"
  br label %"0"
"0":
  call void @"sym.cgc_setup"()
  br label %"1"
"1":
  %".14" = call i32 @"sym.cgc_process_cmd"()
  %".15" = bitcast i16* %"iVar1" to i32*
  store i32 %".14", i32* %".15"
  %".17" = load i16, i16* %"iVar1"
  %".18" = icmp eq i16 %".17", 0
  %".19" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".18", i1* %".19"
  %".21" = load i8, i8* %"register0x00000206"
  %".22" = trunc i8 %".21" to i1
  br i1 %".22", label %"5", label %"2"
"2":
  %".24" = load i16, i16* %"iVar1"
  %".25" = icmp ne i16 %".24", -1
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"3", label %"4"
"3":
  %".31" = ptrtoint i64* @"obj.STATUS_QUIT" to i32
  call void @"sym.cgc_send_status"(i32 %".31")
  store i32 0, i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  ret i32 %".34"
"4":
  %".36" = ptrtoint i64* @"obj.STATUS_ERR" to i32
  call void @"sym.cgc_send_status"(i32 %".36")
  br label %"1"
"5":
  %".39" = ptrtoint i64* @"obj.STATUS_OK" to i32
  call void @"sym.cgc_send_status"(i32 %".39")
  br label %"1"
}

declare i32 @"sym.cgc_process_cmd"() 

declare i32 @"sym.cgc_do_sort_mail"() 

declare void @"sym.cgc_put_mail_in_mailbox"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_at_end"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_create_node"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_node_at_end"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_before_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_end_marker"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_set_block_size"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_heap"() 

declare void @"sym.cgc_list_remove_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find_node_with_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_list_head_node"(i32 %"arg_8h") 

declare void @"sym.cgc_list_init"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_pop_mail_from_mailbox"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_pop"(i32 %"arg_8h") 

declare void @"sym.cgc_list_destroy_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_length"(i32 %"arg_8h") 

declare void @"sym.cgc_list_destroy"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_mailbox_empty"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_undeliverable_mailbox"() 

declare i32 @"sym.cgc_get_sorted_mailbox"() 

declare i32 @"sym.cgc_get_received_mailbox"() 

declare i8 @"sym.cgc_address_exists"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_search"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_return_to_sender"() 

declare i32 @"sym.cgc_get_lost_mailbox"() 

declare i32 @"sym.cgc_do_receive_mail"() 

declare i32 @"sym.cgc_use_stamp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_list_undeliverable_mail"() 

declare void @"sym.cgc_list_insert_sorted"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_list_insert_node_sorted"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_list_insert_node_at_start"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_start_marker"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_next_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_do_list_lost_mail"() 

declare void @"sym.cgc_hash_mail"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_do_list_addresses"() 

declare i32 @"sym.cgc_bst_iter_next"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_successor"(i32 %"arg_8h") 

declare void @"sym.cgc_bst_min_node"(i32 %"arg_8h") 

declare void @"sym.cgc_bst_min"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_min_subtree"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_min_node_subtree"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_predecessor"(i32 %"arg_8h") 

declare void @"sym.cgc_bst_max"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_max_subtree"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_max_node_subtree"(i32 %"arg_8h") 

declare void @"sym.cgc_bst_max_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_bst_iter_start"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_destroy_lost_mail"() 

declare void @"sym.cgc_delete_mail"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_deliver_mail"() 

declare void @"sym.cgc_get_mailbox_for_address"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_buy_postage"() 

declare i32 @"sym.cgc_get_new_stamp"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_do_add_address"() 

declare void @"sym.cgc_bst_insert"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_bst_insert_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_bst_create_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_send_status"(i32 %"arg_8h") 

declare void @"sym.cgc_setup"() 

declare void @"sym.cgc_bst_init"(i32 %"arg_8h") 

declare void @"sym.cgc_init_stamp_roll"() 
