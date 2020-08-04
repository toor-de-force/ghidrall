; ModuleID = "H20FlowInc"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_prng_setup" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"str.H2FLOW_Service_Ready." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"in_stack_ffffffbc" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 0, i32* %"var_ch"
  store i8 0, i8* %".15"
  store i32 0, i32* %"var_14h"
  %".26" = ptrtoint i8* %".22" to i32
  %".27" = call i32 @"sym.cgc_create_tanks"(i32 %".26", i32 10)
  %".28" = bitcast i8* %".15" to i32*
  store i32 %".27", i32* %".28"
  %".30" = load i8, i8* %".15"
  %".31" = icmp eq i8 %".30", 0
  %".32" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".31", i1* %".32"
  %".34" = load i8, i8* %"register0x00000206"
  %".35" = trunc i8 %".34" to i1
  br i1 %".35", label %"1", label %"6"
"1":
  %".37" = load i32, i32* %"in_stack_ffffffbc"
  %".38" = call i32 @"sym.cgc_syslog"(i32 6, i32 134527899, i32 %".37")
  br label %"2"
"2":
  %".40" = load i32, i32* %"var_14h"
  %".41" = call i32 @"sym.cgc_update_drain_factors"(i32 %".40")
  %".42" = bitcast i8* %".15" to i32*
  store i32 %".41", i32* %".42"
  %".44" = load i8, i8* %".15"
  %".45" = icmp eq i8 %".44", 0
  %".46" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".45", i1* %".46"
  %".48" = load i8, i8* %"register0x00000206"
  %".49" = trunc i8 %".48" to i1
  br i1 %".49", label %"3", label %"6"
"3":
  %".51" = load i32, i32* %"var_14h"
  %".52" = call i32 @"sym.cgc_rxtx"(i32 %".51")
  %".53" = bitcast i8* %".15" to i32*
  store i32 %".52", i32* %".53"
  %".55" = load i8, i8* %".15"
  %".56" = icmp eq i8 %".55", 0
  %".57" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000206"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"4", label %"6"
"4":
  call void @"sym.cgc_sleep"(i32 0, i32 577)
  %".63" = load i32, i32* %"var_14h"
  %".64" = call i32 @"sym.cgc_update_water_levels"(i32 %".63")
  %".65" = bitcast i8* %".15" to i32*
  store i32 %".64", i32* %".65"
  %".67" = load i8, i8* %".15"
  %".68" = icmp ne i8 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"6", label %"5"
"5":
  %".74" = load i32, i32* %"var_14h"
  %".75" = call i32 @"sym.cgc_check_levels"(i32 %".74")
  %".76" = bitcast i8* %".15" to i32*
  store i32 %".75", i32* %".76"
  %".78" = load i8, i8* %".15"
  %".79" = icmp ne i8 %".78", 0
  %".80" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".79", i1* %".80"
  %".82" = load i8, i8* %"register0x00000206"
  %".83" = trunc i8 %".82" to i1
  br i1 %".83", label %"2", label %"6"
"6":
  %".85" = load i8, i8* %".15"
  %".86" = icmp slt i8 %".85", 0
  br i1 %".86", label %"7", label %"8"
"7":
  %".88" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".89" = ptrtoint i8* %".88" to i32
  %".90" = call i32 @"sym.cgc_send"(i32 %".89", i32 1)
  br label %"8"
"8":
  %".92" = load i8, i8* %".15"
  %".93" = sext i8 %".92" to i32
  store i32 %".93", i32* %"register0x00000000"
  %".95" = load i32, i32* %"register0x00000000"
  ret i32 %".95"
}

declare i32 @"sym.cgc_update_drain_factors"(i32 %"arg_8h") 

declare i32 @"sym.cgc_prng_get_next"() 

declare void @"sym.cgc__prng_setup"() 

declare i32 @"sym.cgc__prng_load_four"() 

declare i32 @"sym.cgc_is_in_service"(i32 %"arg_8h") 

declare i32 @"sym.cgc_set_drain_rate"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_end_of_life"(i32 %"arg_8h") 

declare void @"sym.cgc_sleep"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_fdwait"() 

declare i32 @"sym.cgc_create_tank"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_h2o"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_create_tanks"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_syslog"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_vsnprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_int2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_check_levels"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_water"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_level_crit_low"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_level_low"(i32 %"arg_8h") 

declare i32 @"sym.cgc_update_water_levels"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_fill"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_drain"(i32 %"arg_8h") 

declare i32 @"sym.cgc_rm_water"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_destroy_h2o"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_rxtx"(i32 %"arg_8h") 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"_reloc.memset"() 
