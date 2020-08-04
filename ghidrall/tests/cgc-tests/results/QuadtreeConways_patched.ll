; ModuleID = "QuadtreeConways_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_game_board" = global i32 0
@"obj.g_num_steps_left" = global i32 0
@"obj.g_board_revealed" = global i8 0
@"obj.g_current_score" = global i32 0
@"obj.g_buf" = global i8 0
@"obj.g_high_score" = global i32 0
@"obj.g_shots_left" = global i32 0
@"obj.g_bombs_left" = global i32 0
@"obj.b" = global i32 0
@"obj.a" = global i32 0
@"obj.d" = global i32 0
@"obj.c" = global i32 0
@"obj.g_conway_gld" = global i32 0
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  call void @"sym.cgc_init_randomness"()
  %".4" = call i32 @"sym.cgc_gld_init_game"()
  store i32 %".4", i32* @"obj.g_game_board"
  call void @"sym.cgc_new_game"()
  br label %"1"
"1":
  call void @"sym.cgc_print_menu"()
  %".9" = call i32 @"sym.cgc_game_selection"()
  store i32 %".9", i32* %"iVar1"
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp ne i32 %".11", 0
  %".13" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000206"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"1", label %"2"
"2":
  %".18" = inttoptr i32 134531164 to i32**
  %".19" = call i32 @"sym.cgc_fdprintf"(i32 1, i32** %".18")
  store i32 0, i32* %"register0x00000000"
  %".21" = load i32, i32* %"register0x00000000"
  ret i32 %".21"
}

declare i32 @"sym.cgc_game_selection"() 

declare void @"sym.cgc_run"(i32 %"param_1") 

declare i32 @"sym.cgc_parse_num_steps"() 

declare i8 @"sym.cgc_isdigit"(i32 %"param_1") 

declare i32 @"sym.cgc_readline"() 

declare void @"sym.cgc_create_runner"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_gld_clear_board"() 

declare i32 @"sym.cgc_qt_delete"(i32 %"param_1", i32 %"param_2", i64 %"param_3") 

declare i8 @"sym.cgc_within_region"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5", i32 %"param_6", i32 %"param_7") 

declare void @"sym.cgc_move_pixels"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_find_subregion_tree"() 

declare i32 @"sym.cgc_create_cell_list"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_memset"(i32 %"param_1", i8 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare i32 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare void @"sym.cgc_find_fit"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.cgc_free"(i32 %"param_1") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32** %"param_1") 

declare void @"sym.cgc_reveal_board"() 

declare void @"sym.cgc_gld_print_board"(i32 %"param_1") 

declare void @"sym.cgc_print_board_helper"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.cgc_quit"() 

declare void @"sym.cgc_take_shot"() 

declare i32 @"sym.cgc_parse_coordinate"() 

declare i32 @"sym.cgc_strsep"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_strchr"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

declare void @"sym.cgc_place_bomb"() 

declare i8 @"sym.cgc_readopt"() 

declare void @"sym.cgc_print_menu"() 

declare void @"sym.cgc_new_game"() 

declare void @"sym.cgc_init_randomness"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"param_1", i32** %"param_2") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare i32 @"sym.cgc_gld_init_game"() 

declare void @"sym.cgc_qt_create"(i64 %"param_1", i64 %"param_2") 
