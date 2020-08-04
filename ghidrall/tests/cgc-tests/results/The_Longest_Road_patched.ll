; ModuleID = "The_Longest_Road_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.goal_len" = global i32 0
@"obj.seed_length" = global i32 0
@"obj.current_packet_count_recvd" = global i32 0
@"obj.current_packet_count_sent" = global i32 0
@"obj.last_connection_number" = global i32 0
@"obj.current_connection_number" = global i32 0
@"obj.current_encryption" = global i32 0
@"obj.encryption_confirmed" = global i32 0
@"obj.enc_chal" = global i32 0
@"obj.cgc_current_max_road_len" = global i8 0
@"obj.position" = global i32 0
@"obj.offset" = global i32 0
@"obj.LAST_CHAR_POS" = global i32 0
@"obj.VALID_CHARS" = global i32 0
@"str.1212" = external global i64
@"str.Good_game" = external global i64
@"str.I_got:__s" = external global i64
@"str.didn_t_succeed_in_seeding_prng" = external global i64
@"str.exiting_main_loop" = external global i64
@"str.go_time" = external global i64
@"str.good_bye" = external global i64
@"str.not_proper_packet_length:_got__d__should_be__d" = external global i64
@"str.ready_for_next_packet" = external global i64
@"str.skipping_packet_processing_due_to_malformed_packet" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999592
  %"in_stack_fffffe68" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999592
  %"arg_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999592
  %"arg_ch_00" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999608
  %"var_184h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999612
  %"var_180h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999616
  %"var_17ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999620
  %"var_178h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999624
  %"var_174h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999628
  %"var_170h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999632
  %"var_16ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999636
  %"var_168h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999640
  %"var_164h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999644
  %"var_160h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999648
  %"var_15ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999652
  %"var_158h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999656
  %"var_154h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"var_150h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"var_14ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999717
  %"var_117h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".34" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000018" = alloca i32*
  %".35" = alloca i8**
  %".36" = alloca i32**
  store i8** %"argv", i8*** %".35"
  store i32** %"envp", i32*** %".36"
  br label %"0"
"0":
  %".40" = load i32, i32* %"in_stack_fffffe68"
  %".41" = call i32 @"sym.cgc_printf"(i32 134537708, i32 %".40")
  store i32 4294967295, i32* @"obj.current_packet_count_recvd"
  store i32 4294967295, i32* @"obj.current_packet_count_sent"
  store i32 4294967295, i32* @"obj.last_connection_number"
  store i32 4294967295, i32* @"obj.current_connection_number"
  store i32 4294967295, i32* @"obj.current_encryption"
  store i32 0, i32* @"obj.encryption_confirmed"
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %".49" = bitcast i32** %"register0x00000018" to i8**
  store i8* %".48", i8** %".49"
  store i32 0, i32* %"arg_ch"
  call void @"sym.imp.memset"()
  %".53" = load i8, i8* %".31"
  store i8 %".53", i8* %".31"
  store i32 0, i32* @"obj.enc_chal"
  %".56" = load i32, i32* %"var_11ch"
  %".57" = load i8, i8* %".31"
  store i32 0, i32* %"var_134h"
  %".59" = call i32 @"sym.cgc_seed_prng"()
  store i32 %".59", i32* %"iVar1"
  %".61" = load i32, i32* %"iVar1"
  %".62" = icmp eq i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"11", label %"1"
"1":
  %".68" = load i32, i32* %"iVar1"
  store i32 %".68", i32* @"obj.seed_length"
  %".70" = load i32, i32* %"arg_ch"
  %".71" = call i32 @"sym.cgc_printf"(i32 134537750, i32 %".70")
  %".72" = load i32, i32* @"obj.goal_len"
  %".73" = call i32 @"sym.cgc_check_win"(i32 %".72")
  store i32 %".73", i32* %"iVar1"
  %".75" = load i32, i32* %"iVar1"
  %".76" = icmp eq i32 %".75", 1
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"2", label %"3"
"2":
  %".82" = load i32, i32* %"arg_ch"
  %".83" = call i32 @"sym.cgc_printf"(i32 134537773, i32 %".82")
  store i32 1, i32* %"register0x00000000"
  %".85" = load i32, i32* %"register0x00000000"
  ret i32 %".85"
"3":
  %".87" = load i32, i32* %"var_134h"
  %".88" = icmp slt i32 2, %".87"
  br i1 %".88", label %"4", label %"5"
"4":
  %".90" = load i32, i32* %"arg_ch"
  %".91" = call i32 @"sym.cgc_printf"(i32 134537789, i32 %".90")
  store i32 0, i32* %"register0x00000000"
  %".93" = load i32, i32* %"register0x00000000"
  ret i32 %".93"
"5":
  %".95" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %".96" = ptrtoint i8* %".95" to i32
  %".97" = call i32 @"sym.cgc_receive_until"(i32 %".96", i32 10, i32 255)
  store i32 %".97", i32* %"iVar1"
  %".99" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  store i32 134537784, i32* %"arg_ch_00"
  %".101" = ptrtoint i8* %".99" to i32
  %".102" = call i32 @"sym.cgc_strcmp"(i32 %".101", i32 134537784)
  store i32 %".102", i32* %"iVar2"
  %".104" = load i32, i32* %"iVar2"
  %".105" = icmp eq i32 %".104", 0
  %".106" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".105", i1* %".106"
  %".108" = load i8, i8* %"register0x00000206"
  %".109" = trunc i8 %".108" to i1
  br i1 %".109", label %"6", label %"7"
"6":
  %".111" = load i32, i32* %"arg_ch_00"
  %".112" = call i32 @"sym.cgc_printf"(i32 134537789, i32 %".111")
  store i32 1, i32* %"register0x00000000"
  %".114" = load i32, i32* %"register0x00000000"
  ret i32 %".114"
"7":
  %".116" = load i32, i32* %"iVar1"
  %".117" = icmp eq i32 %".116", 16
  %".118" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".117", i1* %".118"
  %".120" = load i8, i8* %"register0x00000206"
  %".121" = trunc i8 %".120" to i1
  br i1 %".121", label %"8", label %"10"
"8":
  %".123" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %".124" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %".125" = bitcast i32* %"arg_ch" to i8**
  store i8* %".124", i8** %".125"
  %".127" = ptrtoint i8* %".123" to i32
  %".128" = load i32, i32* %"arg_ch"
  %".129" = call i32 @"sym.cgc_populate_packet"(i32 %".127", i32 %".128", i32 16)
  store i32 %".129", i32* %"iVar1"
  %".131" = load i32, i32* %"iVar1"
  %".132" = icmp ne i32 %".131", 0
  %".133" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".132", i1* %".133"
  %".135" = load i8, i8* %"register0x00000206"
  %".136" = trunc i8 %".135" to i1
  br i1 %".136", label %"9", label %"f"
"9":
  %".138" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %".139" = ptrtoint i8* %".138" to i32
  %".140" = call i32 @"sym.cgc_validate_packet"(i32 %".139")
  store i32 %".140", i32* %"iVar1"
  %".142" = load i32, i32* %"iVar1"
  %".143" = icmp ne i32 %".142", 0
  %".144" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".143", i1* %".144"
  %".146" = load i8, i8* %"register0x00000206"
  %".147" = trunc i8 %".146" to i1
  br i1 %".147", label %"a", label %"e"
a:
  %".149" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %".150" = ptrtoint i8* %".149" to i32
  %".151" = call i32 @"sym.cgc_packet_handler"(i32 %".150")
  store i32 %".151", i32* %"iVar2"
  %".153" = load i32, i32* %"iVar2"
  %".154" = icmp ne i32 %".153", 0
  %".155" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".154", i1* %".155"
  %".157" = load i32, i32* @"obj.seed_length"
  store i32 %".157", i32* %"iVar1"
  %".159" = load i8, i8* %"register0x00000206"
  %".160" = trunc i8 %".159" to i1
  br i1 %".160", label %"b", label %"d"
b:
  %".162" = load i32, i32* %"iVar2"
  %".163" = icmp ne i32 %".162", 2
  %".164" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".163", i1* %".164"
  %".166" = load i8, i8* %"register0x00000206"
  %".167" = trunc i8 %".166" to i1
  br i1 %".167", label %"1", label %"c"
c:
  %".169" = load i32, i32* %"arg_ch"
  %".170" = call i32 @"sym.cgc_printf"(i32 134537862, i32 %".169")
  br label %"12"
d:
  %".172" = load i32, i32* %"var_134h"
  %".173" = add i32 %".172", 1
  store i32 %".173", i32* %"var_134h"
  br label %"1"
e:
  %".176" = load i32, i32* %"arg_ch"
  %".177" = call i32 @"sym.cgc_printf"(i32 134537810, i32 %".176")
  %".178" = load i32, i32* %"var_134h"
  %".179" = add i32 %".178", 1
  store i32 %".179", i32* %"var_134h"
  %".181" = load i32, i32* @"obj.seed_length"
  store i32 %".181", i32* %"iVar1"
  br label %"1"
f:
  %".184" = load i32, i32* %"var_134h"
  %".185" = add i32 %".184", 1
  store i32 %".185", i32* %"var_134h"
  %".187" = load i32, i32* @"obj.seed_length"
  store i32 %".187", i32* %"iVar1"
  br label %"1"
"10":
  %".190" = load i32, i32* %"iVar1"
  %".191" = call i32 @"sym.cgc_printf"(i32 134537020, i32 %".190")
  %".192" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %".193" = bitcast i32* %"arg_ch" to i8**
  store i8* %".192", i8** %".193"
  %".195" = load i32, i32* %"arg_ch"
  %".196" = call i32 @"sym.cgc_printf"(i32 134537799, i32 %".195")
  %".197" = load i32, i32* %"var_134h"
  %".198" = add i32 %".197", 1
  store i32 %".198", i32* %"var_134h"
  %".200" = load i32, i32* @"obj.seed_length"
  store i32 %".200", i32* %"iVar1"
  br label %"1"
"11":
  %".203" = load i32, i32* %"arg_ch"
  %".204" = call i32 @"sym.cgc_printf"(i32 134537717, i32 %".203")
  br label %"12"
"12":
  store i32 1, i32* %"register0x00000000"
  %".207" = load i32, i32* %"register0x00000000"
  ret i32 %".207"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_populate_packet"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_check_win"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_max_road_len"() 

declare i32 @"sym.cgc_packet_handler"(i32 %"arg_8h") 

declare void @"sym.cgc_send_ack"(i32 %"arg_8h") 

declare void @"sym.cgc_send_assoc_response"(i32 %"arg_8h") 

declare i32 @"sym.cgc_connect_pieces"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_send_auth_response"(i32 %"arg_8h") 

declare void @"sym.cgc_send_auth_challenge"(i32 %"arg_8h") 

declare i32 @"sym.cgc_random_in_range"(i32 %"arg_8h", i32 %"arg_ch") 

declare i64 @"sym.cgc_prng"() 

declare void @"sym.cgc_send_packet_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_write"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_set_checksum"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calculateCS"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_nack"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_piece_to_pkt"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_decrypt_packet"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_locate_char"(i32 %"arg_8h") 

declare i32 @"sym.cgc_encrypt_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_piece"(i32 %"arg_8h") 

declare i32 @"sym.cgc_handle_deauth_req"(i32 %"arg_8h") 

declare i32 @"sym.cgc_handle_disass_req"(i32 %"arg_8h") 

declare i32 @"sym.cgc_handle_auth_challenge_resp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_send_packet"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_create_random_piece"(i32 %"arg_8h") 

declare void @"sym.cgc_push_piece"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isTopPiecePlaced"() 

declare i32 @"sym.cgc_getNextPieceNum"() 

declare i32 @"sym.cgc_discard_piece"() 

declare i32 @"sym.cgc_seed_prng"() 

declare void @"sym.cgc_sprng"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_validate_packet"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_checksum"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
