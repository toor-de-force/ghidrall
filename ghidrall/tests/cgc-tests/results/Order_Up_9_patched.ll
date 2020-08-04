; ModuleID = "Order_Up_9_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_remaining" = global i32 0
@"obj.cgc_last" = global i32 0
@"obj.cgc_init_heap_done" = global i8 0
@"obj.table" = global i32 0
@"obj.todays_menu" = global i32 0
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
  %".18" = icmp ne i16 %".17", -2
  %".19" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".18", i1* %".19"
  %".21" = load i8, i8* %"register0x00000206"
  %".22" = trunc i8 %".21" to i1
  br i1 %".22", label %"1", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".25" = load i32, i32* %"register0x00000000"
  ret i32 %".25"
}

declare void @"sym.cgc_setup"() 

declare void @"sym.cgc_menu_setup"() 

declare void @"sym.cgc_load_menu"(i32 %"arg_8h") 

declare void @"sym.cgc_add_meal"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_add_dessert"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_add_appetizer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_set_block_size"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_heap"() 

declare void @"sym.cgc_list_init"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_remove_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find_node_with_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_list_head_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_end_marker"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_node_at_end"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_before_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_table_setup"() 

declare i8 @"sym.cgc_calculate_seats_count"() 

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

declare void @"sym.cgc_cmd_take_orders"() 

declare i32 @"sym.cgc_take_customer_order"(i32 %"arg_8h") 

declare i32 @"sym.cgc_select_appetizer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_appetizer_count"() 

declare i32 @"sym.cgc_get_dessert_list"() 

declare i32 @"sym.cgc_select_dessert"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_dessert_count"() 

declare i32 @"sym.cgc_select_meal"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_meal_count"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_meal_list"() 

declare i32 @"sym.cgc_get_appetizer_list"() 

declare i32 @"sym.cgc_pop_order_from_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i8 @"sym.cgc_take_customer_orders"(i32 %"arg_8h") 

declare void @"sym.cgc_set_table_status"(i32 %"arg_8h") 

declare void @"sym.cgc_append_order_to_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_cmd_seat_customers_at_table"() 

declare i32 @"sym.cgc_seat_customer"(i32 %"arg_8h") 

declare i8 @"sym.cgc_get_empty_seats_count"() 

declare i8 @"sym.cgc_get_occupied_seats_count"() 

declare i8 @"sym.cgc_get_seats_count"() 

declare void @"sym.cgc_append_customer_to_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_status"(i32 %"arg_8h") 

declare i32 @"sym.cgc_seat_customers"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_clear_customer_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_pop_customer_from_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_table_status"() 

declare void @"sym.cgc_cmd_quit"() 

declare void @"sym.cgc_cmd_get_table_status"() 

declare void @"sym.cgc_cmd_get_seat_count_at_table"() 

declare void @"sym.cgc_cmd_deliver_orders"() 

declare void @"sym.cgc_print_meal"(i32 %"arg_8h") 

declare void @"sym.cgc_print_appetizer"(i32 %"arg_8h") 

declare i8 @"sym.cgc_deliver_customer_orders"(i32 %"arg_8h") 

declare i32 @"sym.cgc_give_food_to_customer"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_accept_food"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_get_order_list_size"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_customer_by_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_dessert"(i32 %"arg_8h") 

declare void @"sym.cgc_cmd_clean_and_set_table"() 

declare void @"sym.cgc_table_clean_and_set"() 

declare i8 @"sym.cgc_get_customer_list_size"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memset"() 
