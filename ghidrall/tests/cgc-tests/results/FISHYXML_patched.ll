; ModuleID = "FISHYXML_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.game" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_prng_setup" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
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
  %".13" = call i32 @"sym.cgc_play_game"()
  store i32 %".13", i32* %"iVar1"
  %".15" = load i32, i32* %"iVar1"
  %".16" = icmp slt i32 %".15", 0
  br i1 %".16", label %"1", label %"2"
"1":
  %".18" = load i32, i32* %"iVar1"
  %".19" = trunc i32 %".18" to i8
  %".20" = sext i8 %".19" to i32
  store i32 %".20", i32* %"register0x00000000"
  %".22" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_send_error"(i32 %".22")
  br label %"2"
"2":
  %".25" = load i32, i32* %"iVar1"
  store i32 %".25", i32* %"register0x00000000"
  %".27" = load i32, i32* %"register0x00000000"
  ret i32 %".27"
}

declare void @"sym.cgc_send_error"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_error"(i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_play_game"() 

declare i32 @"sym.cgc_do_turn"() 

declare i32 @"sym.cgc_do_player_turn"() 

declare i32 @"sym.cgc_process_remote_player_empty_hand"() 

declare i32 @"sym.cgc_recv_draw_request"() 

declare i32 @"sym.cgc_recv_until_delim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_parse_xml_draw"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_player_hand_empty"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_hand_empty"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_count_cards_in_hand"(i32 %"arg_8h") 

declare void @"sym.cgc_send_hand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_cards"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_gen_xml_cards"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_gen_xml_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_hand_size"() 

declare i32 @"sym.cgc_draw_new_hand"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_take_top_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_add_card_to_hand"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_pop"(i32 %"arg_8h") 

declare i32 @"sym.cgc_process_remote_player_books"() 

declare i32 @"sym.cgc_recv_and_match_count_books_played"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parse_xml_books"(i32 %"arg_8h") 

declare i32 @"sym.cgc_play_books"(i32 %"arg_8h") 

declare i32 @"sym.cgc_qty_of_rank_in_hand"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_rank"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_all_of_rank_from_hand"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_rm_card_from_hand"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_consolidate_hand"(i32 %"arg_8h") 

declare void @"sym.cgc_destroy_card"(i32 %"arg_8h") 

declare i32 @"sym.cgc_process_remote_player_ask"() 

declare i32 @"sym.cgc_process_remote_player_fishing"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_and_match_cards"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv_cards"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_xml_cards"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parse_xml_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_valid_rank"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_valid_suit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_set_equal"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_is_equal"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_players_newest_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_latest_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv_fish_request"() 

declare i32 @"sym.cgc_parse_xml_fishing"(i32 %"arg_8h") 

declare void @"sym.cgc_process_remote_player_accept_cards"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_accept_cards"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_add_cards_to_hand"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_send_go_fish_notice"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_go_fish"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_have_cards_of_rank"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv_ask_and_get_rank"() 

declare i32 @"sym.cgc_parse_xml_ask"(i32 %"arg_8h") 

declare i32 @"sym.cgc_turn_complete"(i32 %"arg_8h") 

declare void @"sym.cgc_send_turn_notice"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_turn"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_bot_turn"() 

declare i32 @"sym.cgc_process_bot_player_empty_hand"() 

declare i32 @"sym.cgc_process_bot_player_books"() 

declare void @"sym.cgc_send_count_books_played"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_books"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_process_bot_player_ask"() 

declare i32 @"sym.cgc_process_bot_player_fishing"(i32 %"arg_8h") 

declare i32 @"sym.cgc_process_bot_player_accept_cards"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_select_random_card"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_rank_of_random_card_in_hand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_prng_get_next"() 

declare i32 @"sym.cgc__prng_load_four"() 

declare void @"sym.cgc__prng_setup"() 

declare void @"sym.cgc_send_ask"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_ask"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv_go_fish_notice"() 

declare i32 @"sym.cgc_parse_xml_go_fish"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_player_turn"(i32 %"arg_8h") 

declare void @"sym.cgc_send_final_results"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_xml_final_results"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_send_initial_hand_to_player"(i32 %"arg_8h") 

declare i32 @"sym.cgc_create_game"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_create_player"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_hand"() 

declare i32 @"sym.cgc_get_shuffled_deck"(i32 %"arg_8h") 

declare i32 @"sym.cgc_shuffle_deck"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_deck"() 

declare i32 @"sym.cgc_recv_player_name"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parse_xml_player_name"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_deal"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_game_over"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_deck_empty"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"_reloc.memset"() 
