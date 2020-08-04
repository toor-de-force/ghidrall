; ModuleID = "Order_Up_1"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_remaining" = global i32 0
@"obj.cgc_last" = global i32 0
@"obj.cgc_init_heap_done" = global i8 0
@"obj.cgc_waiting_list" = global i32 0
@"obj.STATUS_ERR" = external global i64
@"obj.STATUS_OK" = external global i64
@"str.DDQ_Q_QNQN" = external global i64
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
  br label %"1"
"1":
  %".13" = call i32 @"sym.cgc_process_cmd"()
  %".14" = bitcast i16* %"iVar1" to i32*
  store i32 %".13", i32* %".14"
  %".16" = load i16, i16* %"iVar1"
  %".17" = icmp eq i16 %".16", 0
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"5", label %"2"
"2":
  %".23" = load i16, i16* %"iVar1"
  %".24" = icmp ne i16 %".23", -1
  %".25" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".24", i1* %".25"
  %".27" = load i8, i8* %"register0x00000206"
  %".28" = trunc i8 %".27" to i1
  br i1 %".28", label %"3", label %"4"
"3":
  %".30" = ptrtoint i64* @"str.DDQ_Q_QNQN" to i32
  call void @"sym.cgc_send_status"(i32 %".30")
  store i32 0, i32* %"register0x00000000"
  %".33" = load i32, i32* %"register0x00000000"
  ret i32 %".33"
"4":
  %".35" = ptrtoint i64* @"obj.STATUS_ERR" to i32
  call void @"sym.cgc_send_status"(i32 %".35")
  br label %"1"
"5":
  %".38" = ptrtoint i64* @"obj.STATUS_OK" to i32
  call void @"sym.cgc_send_status"(i32 %".38")
  br label %"1"
}

declare i32 @"sym.cgc_process_cmd"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_do_table_status"() 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_get_status_of_table"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_table_quit"() 

declare i32 @"sym.cgc_close_table"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_order_up"() 

declare void @"sym.cgc_print_appetizer"(i32 %"arg_8h") 

declare void @"sym.cgc_append_order_to_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_set_block_size"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_heap"() 

declare void @"sym.cgc_list_init"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_node_at_end"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_before_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_end_marker"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find_node_with_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_list_head_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_deliver_orders_to_table"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_get_order_list_size"(i32 %"arg_8h") 

declare i32 @"sym.cgc_pop_order_from_list"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_print_meal"(i32 %"arg_8h") 

declare void @"sym.cgc_print_dessert"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_get_orders"() 

declare i8 @"sym.cgc_get_orders_from_table"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_bus_tables"() 

declare i32 @"sym.cgc_clean_and_set_table"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_add_customers"() 

declare i32 @"sym.cgc_pop_customer_from_waiting_list"() 

declare i32 @"sym.cgc_pop_customer_from_list"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_waiting_list_empty"() 

declare i8 @"sym.cgc_get_waiting_list_size"() 

declare i8 @"sym.cgc_get_customer_list_size"(i32 %"arg_8h") 

declare void @"sym.cgc_append_customer_to_waiting_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_seat_customers_at_table"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_seat_count_at_table"(i32 %"arg_8h") 

declare void @"sym.cgc_append_customer_to_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_next_vacant_table"() 

declare i32 @"sym.cgc_recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_send_status"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
