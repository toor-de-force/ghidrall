; ModuleID = "Resort_Modeller_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_sizes" = global i32 0
@"obj.resort" = global i32 0
@"obj.ERR" = external global i64
@"obj.OK" = external global i64
@"obj.cgc_LIFT_STATS" = external global i64
@"obj.cgc_LOAD_DIGRAPH" = external global i64
@"obj.cgc_RESET" = external global i64
@"obj.cgc_RIDER_STATS" = external global i64
@"obj.cgc_START" = external global i64
@"obj.cgc_TRAIL_STATS" = external global i64
@"obj.cgc_UNLOAD_RIDERS" = external global i64
@"str.ABC" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".23" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".24" = alloca i8**
  %".25" = alloca i32**
  store i8** %"argv", i8*** %".24"
  store i32** %"envp", i32*** %".25"
  br label %"0"
"0":
  call void @"sym.cgc_gen_result_bufs"()
  br label %"1"
"1":
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".32" = ptrtoint i8* %".31" to i32
  call void @"sym.cgc_recv_all"(i32 %".32", i32 4)
  %".34" = load i32, i32* %"iVar1"
  %".35" = icmp ne i32 %".34", 4
  %".36" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".35", i1* %".36"
  %".38" = load i8, i8* %"register0x00000206"
  %".39" = trunc i8 %".38" to i1
  br i1 %".39", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".43" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".44" = ptrtoint i64* @"obj.cgc_LOAD_DIGRAPH" to i32
  %".45" = ptrtoint i8* %".43" to i32
  %".46" = call i32 @"sym.cgc_memcmp"(i32 %".44", i32 %".45", i32 4)
  store i32 %".46", i32* %"iVar1"
  %".48" = load i32, i32* %"iVar1"
  %".49" = icmp eq i32 %".48", 0
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"15", label %"4"
"4":
  %".55" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".56" = ptrtoint i64* @"str.ABC" to i32
  %".57" = ptrtoint i8* %".55" to i32
  %".58" = call i32 @"sym.cgc_memcmp"(i32 %".56", i32 %".57", i32 4)
  store i32 %".58", i32* %"iVar1"
  %".60" = load i32, i32* %"iVar1"
  %".61" = icmp eq i32 %".60", 0
  %".62" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".61", i1* %".62"
  %".64" = load i8, i8* %"register0x00000206"
  %".65" = trunc i8 %".64" to i1
  br i1 %".65", label %"14", label %"5"
"5":
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".68" = ptrtoint i8* %".67" to i32
  %".69" = call i32 @"sym.cgc_memcmp"(i32 134537897, i32 %".68", i32 4)
  store i32 %".69", i32* %"iVar1"
  %".71" = load i32, i32* %"iVar1"
  %".72" = icmp eq i32 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"13", label %"6"
"6":
  %".78" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".79" = ptrtoint i64* @"obj.cgc_UNLOAD_RIDERS" to i32
  %".80" = ptrtoint i8* %".78" to i32
  %".81" = call i32 @"sym.cgc_memcmp"(i32 %".79", i32 %".80", i32 4)
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"12", label %"7"
"7":
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".91" = ptrtoint i64* @"obj.cgc_START" to i32
  %".92" = ptrtoint i8* %".90" to i32
  %".93" = call i32 @"sym.cgc_memcmp"(i32 %".91", i32 %".92", i32 4)
  store i32 %".93", i32* %"iVar1"
  %".95" = load i32, i32* %"iVar1"
  %".96" = icmp eq i32 %".95", 0
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"11", label %"8"
"8":
  %".102" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".103" = ptrtoint i64* @"obj.cgc_RESET" to i32
  %".104" = ptrtoint i8* %".102" to i32
  %".105" = call i32 @"sym.cgc_memcmp"(i32 %".103", i32 %".104", i32 4)
  store i32 %".105", i32* %"iVar1"
  %".107" = load i32, i32* %"iVar1"
  %".108" = icmp eq i32 %".107", 0
  %".109" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".108", i1* %".109"
  %".111" = load i8, i8* %"register0x00000206"
  %".112" = trunc i8 %".111" to i1
  br i1 %".112", label %"10", label %"9"
"9":
  %".114" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".115" = ptrtoint i64* @"obj.cgc_LIFT_STATS" to i32
  %".116" = ptrtoint i8* %".114" to i32
  %".117" = call i32 @"sym.cgc_memcmp"(i32 %".115", i32 %".116", i32 4)
  store i32 %".117", i32* %"iVar1"
  %".119" = load i32, i32* %"iVar1"
  %".120" = icmp eq i32 %".119", 0
  %".121" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".120", i1* %".121"
  %".123" = load i8, i8* %"register0x00000206"
  %".124" = trunc i8 %".123" to i1
  br i1 %".124", label %"f", label %"a"
a:
  %".126" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".127" = ptrtoint i64* @"obj.cgc_TRAIL_STATS" to i32
  %".128" = ptrtoint i8* %".126" to i32
  %".129" = call i32 @"sym.cgc_memcmp"(i32 %".127", i32 %".128", i32 4)
  store i32 %".129", i32* %"iVar1"
  %".131" = load i32, i32* %"iVar1"
  %".132" = icmp eq i32 %".131", 0
  %".133" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".132", i1* %".133"
  %".135" = load i8, i8* %"register0x00000206"
  %".136" = trunc i8 %".135" to i1
  br i1 %".136", label %"e", label %"b"
b:
  %".138" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".139" = ptrtoint i64* @"obj.cgc_RIDER_STATS" to i32
  %".140" = ptrtoint i8* %".138" to i32
  %".141" = call i32 @"sym.cgc_memcmp"(i32 %".139", i32 %".140", i32 4)
  store i32 %".141", i32* %"iVar1"
  %".143" = load i32, i32* %"iVar1"
  %".144" = icmp eq i32 %".143", 0
  %".145" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".144", i1* %".145"
  %".147" = load i8, i8* %"register0x00000206"
  %".148" = trunc i8 %".147" to i1
  br i1 %".148", label %"d", label %"c"
c:
  store i32 -1, i32* %"var_8h"
  br label %"16"
d:
  %".152" = call i32 @"sym.cgc_rider_stats"()
  store i32 %".152", i32* %"var_8h"
  br label %"16"
e:
  %".155" = call i32 @"sym.cgc_trail_stats"()
  store i32 %".155", i32* %"var_8h"
  br label %"16"
f:
  %".158" = call i32 @"sym.cgc_lift_stats"()
  store i32 %".158", i32* %"var_8h"
  br label %"16"
"10":
  call void @"sym.cgc_reset_simulation"()
  br label %"16"
"11":
  %".163" = call i32 @"sym.cgc_start_simulation"()
  store i32 %".163", i32* %"var_8h"
  br label %"16"
"12":
  %".166" = call i32 @"sym.cgc_unload_riders"()
  store i32 %".166", i32* %"var_8h"
  br label %"16"
"13":
  %".169" = call i32 @"sym.cgc_load_rider_single"()
  store i32 %".169", i32* %"var_8h"
  br label %"16"
"14":
  %".172" = call i32 @"sym.cgc_load_rider_group"()
  store i32 %".172", i32* %"var_8h"
  br label %"16"
"15":
  %".175" = call i32 @"sym.cgc_load_resort_digraph"()
  store i32 %".175", i32* %"var_8h"
  br label %"16"
"16":
  %".178" = load i32, i32* %"var_8h"
  %".179" = icmp ne i32 %".178", 0
  %".180" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".179", i1* %".180"
  %".182" = load i8, i8* %"register0x00000206"
  %".183" = trunc i8 %".182" to i1
  br i1 %".183", label %"17", label %"18"
"17":
  %".185" = ptrtoint i64* @"obj.ERR" to i32
  %".186" = call i32 @"sym.cgc_send"(i32 %".185", i32 4)
  store i32 0, i32* %"register0x00000000"
  %".188" = load i32, i32* %"register0x00000000"
  ret i32 %".188"
"18":
  %".190" = ptrtoint i64* @"obj.OK" to i32
  %".191" = call i32 @"sym.cgc_send"(i32 %".190", i32 4)
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_trail_stats"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_start_simulation"() 

declare i32 @"sym.cgc_go_simul8"(i32 %"arg_8h") 

declare i32 @"sym.cgc_rider_pop"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_decider_min"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_load_rider_single"() 

declare i32 @"sym.cgc_gen_riders"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_rider_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_rider_destroy"(i32 %"arg_8h") 

declare i32 @"sym.cgc_validate_rider"(i32 %"arg_8h") 

declare void @"sym.cgc_rider_append"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_load_rider_group"() 

declare void @"sym.cgc_gen_result_bufs"() 

declare i32 @"sym.cgc_lift_stats"() 

declare i32 @"sym.cgc_unload_riders"() 

declare i32 @"sym.cgc_reset_simulation_do"() 

declare void @"sym.cgc_rider_reset"(i32 %"arg_8h") 

declare void @"sym.cgc_trail_reset"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_decider_reset"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_lift_reset"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_chair_reset_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_chair_reset"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_rider_destroy_list"(i32 %"arg_8h") 

declare void @"sym.cgc_reset_simulation"() 

declare i32 @"sym.cgc_load_resort_digraph"() 

declare i32 @"sym.cgc_gen_lifts"(i32 %"arg_8h") 

declare void @"sym.cgc_decider_add_option"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_option_append_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_option_new"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_lift_destroy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_chair_destroy_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_chair_destroy_single"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_chair_pop"(i32 %"arg_8h") 

declare i32 @"sym.cgc_lift_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_chair_new"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_chair_append_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_validate_lift"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_lift_by_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_decider_by_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_trails"(i32 %"arg_8h") 

declare i32 @"sym.cgc_validate_trail"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_trail_by_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_trail_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_trail_destroy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_resort_destroy_digraph"() 

declare void @"sym.cgc_decider_destroy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_option_destroy_list"(i32 %"arg_8h") 

declare void @"sym.cgc_option_destroy_single"(i32 %"arg_8h") 

declare i32 @"sym.cgc_option_pop"(i32 %"arg_8h") 

declare i32 @"sym.cgc_gen_deciders"(i32 %"arg_8h") 

declare i32 @"sym.cgc_validate_decider"(i32 %"arg_8h") 

declare i32 @"sym.cgc_decider_new"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_rider_stats"() 
