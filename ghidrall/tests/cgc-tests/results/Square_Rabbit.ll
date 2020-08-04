; ModuleID = "Square_Rabbit"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_player" = global i32 0
@"obj.g_srabbit" = global i32 0
@"obj.a" = global i32 0
@"obj.d" = global i32 0
@"obj.b" = global i32 0
@"obj.c" = global i32 0
@"str.Bad_Choice._Select_another_option" = external global i64
@"str.Enter_a_number_greater_than_0:" = external global i64
@"str.Exiting..." = external global i64
@"str.INVALID_INPUT" = external global i64
@"str.Thanks_for_playing" = external global i64
@"str.Welcome_to_Game_Sultan" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999368
  %"in_stack_fffffd88" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999368
  %"arg_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999384
  %"var_264h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999388
  %"var_260h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999392
  %"var_25ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999396
  %"var_258h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999400
  %"var_254h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999404
  %"var_250h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999408
  %"var_24ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999412
  %"var_248h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999416
  %"var_244h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999420
  %"var_240h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999424
  %"var_23ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999428
  %"var_238h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999432
  %"var_234h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999436
  %"var_230h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999440
  %"var_22ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999444
  %"var_228h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999448
  %"var_224h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999452
  %"var_220h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999456
  %"var_21ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999460
  %"var_218h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999471
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %"var_20ch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %"var_208h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".30" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".31" = alloca i8**
  %".32" = alloca i32**
  store i8** %"argv", i8*** %".31"
  store i32** %"envp", i32*** %".32"
  br label %"0"
"0":
  store i32 0, i32* %"var_20ch"
  %".37" = load i32, i32* %"in_stack_fffffd88"
  %".38" = call i32 @"sym.cgc_printf"(i32 134536451, i32 %".37")
  %".39" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %".40" = bitcast i32* %"arg_ch" to i8**
  store i8* %".39", i8** %".40"
  %".42" = load i32, i32* %"arg_ch"
  %".43" = call i32 @"sym.cgc_readline"(i32 0, i32 %".42", i32 512)
  store i32 %".43", i32* %"iVar1"
  %".45" = load i32, i32* %"iVar1"
  %".46" = icmp eq i32 %".45", 0
  %".47" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i8, i8* %"register0x00000206"
  %".50" = trunc i8 %".49" to i1
  br i1 %".50", label %"1", label %"a"
"1":
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  store i32 0, i32* %"iVar1"
  %".54" = ptrtoint i8* %".52" to i32
  %".55" = call i32 @"sym.cgc_strtol"(i32 %".54", i32 0, i32 10)
  store i32 %".55", i32* %"var_20ch"
  %".57" = load i32, i32* %"var_20ch"
  %".58" = icmp eq i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"9", label %"2"
"2":
  %".64" = load i32, i32* %"iVar1"
  %".65" = call i32 @"sym.cgc_printf"(i32 134536589, i32 %".64")
  %".66" = load i32, i32* %"iVar1"
  %".67" = call i32 @"sym.cgc_printf"(i32 134536510, i32 %".66")
  %".68" = load i32, i32* %"iVar1"
  %".69" = call i32 @"sym.cgc_printf"(i32 134536537, i32 %".68")
  %".70" = load i32, i32* %"iVar1"
  %".71" = call i32 @"sym.cgc_printf"(i32 134536564, i32 %".70")
  call void @"sym.cgc_init_player"()
  %".73" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %".74" = ptrtoint i8* %".73" to i32
  call void @"sym.cgc_init_squarerabbit"(i32 %".74")
  store i8 48, i8* %".27"
  br label %"3"
"3":
  %".78" = load i8, i8* %".27"
  %".79" = icmp ne i8 %".78", 50
  %".80" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".79", i1* %".80"
  %".82" = load i8, i8* %"register0x00000206"
  %".83" = trunc i8 %".82" to i1
  br i1 %".83", label %"4", label %"8"
"4":
  call void @"sym.cgc_print_game_menu"()
  %".86" = call i32 @"sym.cgc_readchar"(i32 0)
  %".87" = bitcast i8* %".27" to i32*
  store i32 %".86", i32* %".87"
  %".89" = load i8, i8* %".27"
  %".90" = icmp eq i8 %".89", 49
  %".91" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000206"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"5", label %"6"
"5":
  call void @"sym.cgc_play_squarerabbit"()
  br label %"3"
"6":
  %".98" = load i8, i8* %".27"
  %".99" = icmp ne i8 %".98", 50
  %".100" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".99", i1* %".100"
  %".102" = load i8, i8* %"register0x00000206"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"3", label %"7"
"7":
  %".105" = load i32, i32* %"iVar1"
  %".106" = call i32 @"sym.cgc_printf"(i32 134536592, i32 %".105")
  br label %"3"
"8":
  %".108" = load i32, i32* %"iVar1"
  %".109" = call i32 @"sym.cgc_printf"(i32 134536628, i32 %".108")
  br label %"b"
"9":
  %".111" = load i32, i32* %"iVar1"
  %".112" = call i32 @"sym.cgc_printf"(i32 134536483, i32 %".111")
  %".113" = load i32, i32* %"iVar1"
  %".114" = call i32 @"sym.cgc_printf"(i32 134536498, i32 %".113")
  br label %"b"
a:
  %".116" = load i32, i32* %"arg_ch"
  %".117" = call i32 @"sym.cgc_printf"(i32 134536483, i32 %".116")
  %".118" = load i32, i32* %"arg_ch"
  %".119" = call i32 @"sym.cgc_printf"(i32 134536498, i32 %".118")
  br label %"b"
b:
  store i32 0, i32* %"register0x00000000"
  %".122" = load i32, i32* %"register0x00000000"
  ret i32 %".122"
}

declare i32 @"sym.cgc_readline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_readchar"(i32 %"arg_8h") 

declare void @"sym.cgc_init_player"() 

declare void @"sym.cgc_init_squarerabbit"(i32 %"arg_8h") 

declare void @"sym.cgc_init_deck"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_shuffle_deck"(i32 %"arg_8h") 

declare void @"sym.cgc_rng"() 

declare void @"sym.cgc_play_squarerabbit"() 

declare i32 @"sym.cgc_print_cards"() 

declare void @"sym.cgc_print_winner"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_split_hand"() 

declare i32 @"sym.cgc_split_len"() 

declare i32 @"sym.cgc_is_player_finished"() 

declare i32 @"sym.cgc_cardtos"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calc_score"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_split"() 

declare i32 @"sym.cgc_draw_card"(i32 %"arg_8h") 

declare i32 @"sym.cgc_remove_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_card"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_suittos"(i32 %"arg_8h") 

declare i32 @"sym.cgc_max_split"() 

declare i32 @"sym.cgc_can_split"(i32 %"arg_8h") 

declare i32 @"sym.cgc_dealer_hit"() 

declare i32 @"sym.cgc_all_hands_busted"() 

declare i32 @"sym.cgc_deal_srabbit"(i32 %"arg_8h") 

declare void @"sym.cgc_new_srabbit_game"(i32 %"arg_8h") 

declare void @"sym.cgc_clear_squarerabbit"(i32 %"arg_8h") 

declare void @"sym.cgc_discard_hand"(i32 %"arg_8h") 

declare void @"sym.cgc_clear_split_squarerabbit"() 

declare i32 @"sym.cgc_shuffle_deck_if_needed"(i32 %"arg_8h") 

declare i32 @"sym.cgc_dealer_has_duck"() 

declare i32 @"sym.cgc_srabbit_payout"() 

declare i32 @"sym.cgc_get_srabbit_game"() 

declare i32 @"sym.cgc_check_player_squarerabbit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_check_dealer_squarerabbit2"() 

declare i32 @"sym.cgc_check_dealer_squarerabbit"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_pay_insurance"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_print_game_menu"() 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
