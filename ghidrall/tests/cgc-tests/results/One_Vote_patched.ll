; ModuleID = "One_Vote_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.recv_files" = global i32 0
@"obj.e" = global i32 0
@"obj.cgc_remaining" = global i32 0
@"obj.cgc_last" = global i32 0
@"obj.cgc_init_heap_done" = global i8 0
@"str.Is_voting_too_hard" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".12" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %".13" = alloca i8**
  %".14" = alloca i32**
  store i8** %"argv", i8*** %".13"
  store i32** %"envp", i32*** %".14"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  store i32 0, i32* %"var_ch"
  call void @"sym.cgc_init_election"()
  br label %"1"
"1":
  %".22" = load i32, i32* %"var_ch"
  %".23" = icmp eq i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"2", label %"3"
"2":
  call void @"sym.cgc_print_menu"(i32 4)
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".31" = ptrtoint i8* %".30" to i32
  call void @"sym.cgc_get_choice"(i32 %".31")
  %".33" = load i32, i32* %"var_ch"
  %".34" = icmp eq i32 %".33", -15
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"7", label %"3"
"3":
  %".40" = load i32, i32* %"var_ch"
  %".41" = icmp slt i32 %".40", 0
  br i1 %".41", label %"4", label %"6"
"4":
  %".43" = call i32 @"sym.cgc_send_bytes"(i32 1, i32 134547252, i32 22)
  store i32 %".43", i32* %"iVar1"
  %".45" = load i32, i32* %"iVar1"
  %".46" = icmp ne i32 %".45", 22
  %".47" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i8, i8* %"register0x00000206"
  %".50" = trunc i8 %".49" to i1
  br i1 %".50", label %"6", label %"5"
"5":
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  store i32 0, i32* %"register0x00000000"
  %".55" = load i32, i32* %"register0x00000000"
  ret i32 %".55"
"7":
  %".57" = load i32, i32* %"var_8h"
  %".58" = and i32 %".57", 255
  store i32 %".58", i32* %"register0x00000004"
  %".60" = load i32, i32* %"register0x00000004"
  %".61" = call i32 @"sym.cgc_decider"(i32 %".60")
  store i32 %".61", i32* %"var_ch"
  %".63" = load i32, i32* %"var_ch"
  %".64" = icmp eq i32 %".63", 2
  %".65" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".64", i1* %".65"
  %".67" = load i8, i8* %"register0x00000206"
  %".68" = trunc i8 %".67" to i1
  br i1 %".68", label %"9", label %"8"
"8":
  %".70" = load i32, i32* %"var_ch"
  %".71" = icmp eq i32 %".70", 1
  %".72" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000206"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"9", label %"c"
"9":
  %".77" = load i32, i32* %"var_ch"
  call void @"sym.cgc_print_menu"(i32 %".77")
  %".79" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".80" = ptrtoint i8* %".79" to i32
  call void @"sym.cgc_get_choice"(i32 %".80")
  %".82" = load i32, i32* %"var_ch"
  %".83" = icmp ne i32 %".82", -15
  %".84" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".83", i1* %".84"
  %".86" = load i8, i8* %"register0x00000206"
  %".87" = trunc i8 %".86" to i1
  br i1 %".87", label %"1", label %"a"
a:
  %".89" = load i32, i32* %"var_8h"
  %".90" = and i32 %".89", 255
  store i32 %".90", i32* %"register0x00000004"
  %".92" = load i32, i32* %"register0x00000004"
  %".93" = call i32 @"sym.cgc_decider"(i32 %".92")
  store i32 %".93", i32* %"var_ch"
  %".95" = load i32, i32* %"var_ch"
  %".96" = icmp eq i32 %".95", 4
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"1", label %"b"
b:
  store i32 -1, i32* %"var_ch"
  br label %"1"
c:
  %".104" = load i32, i32* %"var_ch"
  %".105" = icmp eq i32 %".104", 4
  %".106" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".105", i1* %".106"
  %".108" = load i8, i8* %"register0x00000206"
  %".109" = trunc i8 %".108" to i1
  br i1 %".109", label %"1", label %"d"
d:
  store i32 -1, i32* %"var_ch"
  br label %"1"
}

declare void @"sym.cgc_get_choice"(i32 %"arg_8h") 

declare void @"sym.cgc_receive_number"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtou"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fromdigit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_upper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_digit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_until_delim_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_recv_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_init_election"() 

declare void @"sym.cgc_list_init"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ht_str_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ht_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_next_largest_prime"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_set_block_size"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_heap"() 

declare void @"sym.cgc_list_remove_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find_node_with_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_list_head_node"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_end_marker"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_node_at_end"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_before_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ht_int_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_decider"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_print_menu"(i32 %"arg_8h") 

declare void @"sym.cgc_print_results_menu"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_voting_menu"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_length"(i32 %"arg_8h") 

declare void @"sym.cgc_print_admin_menu"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_login_menu"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 
