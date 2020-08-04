; ModuleID = "NoHiC"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.num_list" = global i32 0
@"obj.nt" = global i32 0
@"obj.cgc_sorted_asc_num_list" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  store i32 0, i32* %"var_4h"
  store i32 0, i32* %"var_ch"
  br label %"1"
"1":
  %".23" = call i32 @"sym.cgc_do_nonce"()
  store i32 %".23", i32* %"var_ch"
  %".25" = load i32, i32* %"var_ch"
  %".26" = icmp eq i32 %".25", 0
  %".27" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".26", i1* %".27"
  %".29" = load i8, i8* %"register0x00000206"
  %".30" = trunc i8 %".29" to i1
  br i1 %".30", label %"2", label %"9"
"2":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999991
  %".33" = ptrtoint i8* %".32" to i32
  call void @"sym.cgc_recv_all"(i32 %".33", i32 1)
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp ne i32 %".35", 1
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".44" = load i8, i8* %".13"
  %".45" = icmp eq i8 %".44", 0
  %".46" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".45", i1* %".46"
  %".48" = load i8, i8* %"register0x00000206"
  %".49" = trunc i8 %".48" to i1
  br i1 %".49", label %"5", label %"6"
"5":
  %".51" = call i32 @"sym.cgc_do_create"()
  store i32 %".51", i32* %"var_ch"
  br label %"9"
"6":
  %".54" = load i8, i8* %".13"
  %".55" = icmp eq i8 %".54", 1
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"7", label %"8"
"7":
  %".61" = call i32 @"sym.cgc_do_eval"()
  store i32 %".61", i32* %"var_ch"
  br label %"9"
"8":
  store i32 -150, i32* %"var_ch"
  br label %"9"
"9":
  %".66" = load i32, i32* %"var_ch"
  %".67" = icmp slt i32 -1, %".66"
  %".68" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".67", i1* %".68"
  %".70" = load i8, i8* %"register0x00000207"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"1", label %"a"
a:
  %".73" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".74" = ptrtoint i8* %".73" to i32
  %".75" = call i32 @"sym.cgc_send"(i32 %".74", i32 4)
  %".76" = load i32, i32* %"var_ch"
  store i32 %".76", i32* %"register0x00000000"
  %".78" = load i32, i32* %"register0x00000000"
  ret i32 %".78"
}

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_do_eval"() 

declare void @"sym.cgc_do_dbl_odds"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_list_tail"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_first_node"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_sort"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_mean"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_median"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_rsort"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_list_head"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_last_node"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_mode"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_max"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_sum"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_product"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_odds"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_mean"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_rsort"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_min"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_mode"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_max"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_median"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_op_code"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_min"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_evens"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_range"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_sort"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_evens"(i32 %"arg_8h") 

declare void @"sym.cgc_do_int_product"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_range"(i32 %"arg_8h") 

declare void @"sym.cgc_do_dbl_sum"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_create"() 

declare void @"sym.cgc_get_num_count"(i32 %"arg_8h") 

declare i32 @"sym.cgc_load_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_append"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_dup_int_node"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_node_create"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_create_dup"() 

declare void @"sym.cgc_read_double_into_node"() 

declare void @"sym.cgc_dup_double_node"(i32 %"arg_8h") 

declare void @"sym.cgc_read_int_into_node"() 

declare i32 @"sym.cgc_list_insert_sort"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_list_type"() 

declare i32 @"sym.cgc_do_nonce"() 

declare void @"sym.cgc_rand"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
