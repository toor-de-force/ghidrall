; ModuleID = "Cereal_Mixup__A_Cereal_Vending_Machine_Controller"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.in" = global i32 0
@"obj.typeName" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_bowl_set" = global i8 0
@"obj.cgc_units" = global i8 0
@"obj.cgc_ready" = global i8 0
@"obj.ERR" = external global i64
@"obj.OK" = external global i64
@"obj.cgc_INPUT_TYPE_PLAIN" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".15" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".16" = alloca i8**
  %".17" = alloca i32**
  store i8** %"argv", i8*** %".16"
  store i32** %"envp", i32*** %".17"
  br label %"0"
"0":
  store i32 4242, i32* %"var_10h"
  call void @"sym.cgc_gen_result_bufs"()
  br label %"1"
"1":
  %".24" = call i32 @"sym.cgc_receive_input"()
  store i32 %".24", i32* %"var_ch"
  %".26" = load i32, i32* %"var_ch"
  %".27" = icmp slt i32 -1, %".26"
  br i1 %".27", label %"2", label %"5"
"2":
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".30" = ptrtoint i8* %".29" to i32
  %".31" = call i32 @"sym.cgc_send"(i32 %".30", i32 4)
  %".32" = ptrtoint i64* @"obj.cgc_INPUT_TYPE_PLAIN" to i32
  %".33" = load i32, i32* @"obj.in"
  %".34" = call i32 @"sym.cgc_memcmp"(i32 %".32", i32 %".33", i32 4)
  store i32 %".34", i32* %"iVar1"
  %".36" = load i32, i32* %"iVar1"
  %".37" = icmp eq i32 %".36", 0
  %".38" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".37", i1* %".38"
  %".40" = load i8, i8* %"register0x00000206"
  %".41" = trunc i8 %".40" to i1
  br i1 %".41", label %"4", label %"3"
"3":
  %".43" = load i32, i32* @"obj.in"
  %".44" = call i32 @"sym.cgc_process_serialized_input"(i32 %".43")
  store i32 %".44", i32* %"var_ch"
  br label %"5"
"4":
  %".47" = load i32, i32* @"obj.in"
  %".48" = call i32 @"sym.cgc_process_plain_input"(i32 %".47")
  store i32 %".48", i32* %"var_ch"
  br label %"5"
"5":
  %".51" = load i32, i32* %"var_ch"
  %".52" = icmp ne i32 %".51", 0
  %".53" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".52", i1* %".53"
  %".55" = load i8, i8* %"register0x00000206"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"6", label %"7"
"6":
  %".58" = ptrtoint i64* @"obj.ERR" to i32
  %".59" = call i32 @"sym.cgc_send"(i32 %".58", i32 4)
  store i32 0, i32* %"register0x00000000"
  %".61" = load i32, i32* %"register0x00000000"
  ret i32 %".61"
"7":
  %".63" = ptrtoint i64* @"obj.OK" to i32
  %".64" = call i32 @"sym.cgc_send"(i32 %".63", i32 4)
  %".65" = load i32, i32* @"obj.in"
  call void @"sym.cgc_free"(i32 %".65")
  %".67" = load i32, i32* %"var_10h"
  %".68" = add i32 %".67", 1
  store i32 %".68", i32* %"var_10h"
  br label %"1"
}

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_gen_result_bufs"() 

declare i32 @"sym.cgc_process_serialized_input"(i32 %"arg_8h") 

declare void @"sym.cgc_reset_buffers"() 

declare i32 @"sym.cgc_deserialize_liquids"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_liquids"() 

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

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_deserialize_cereals"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_cereals"() 

declare i32 @"sym.cgc_deserialize_toppings"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_toppings"() 

declare void @"sym.cgc_dispense_breakfast"() 

declare void @"sym.cgc_dispense_bowl"() 

declare i32 @"sym.cgc_units_of_liquids"() 

declare void @"sym.cgc_dispense_toppings"(i32 %"arg_8h") 

declare void @"sym.cgc_dispense_blueberries"() 

declare void @"sym.cgc_dispense_chocolate_drops"() 

declare void @"sym.cgc_dispense_sugar_cube"() 

declare void @"sym.cgc_dispense_berry_medley"() 

declare void @"sym.cgc_dispense_strawberries"() 

declare void @"sym.cgc_init_dispenser"() 

declare i32 @"sym.cgc_units_of_toppings"() 

declare i32 @"sym.cgc_units_of_cereals"() 

declare void @"sym.cgc_dispense_cereal"(i32 %"arg_8h") 

declare void @"sym.cgc_dispense_chocolate_rice_pellets"() 

declare void @"sym.cgc_dispense_frutiz_n_nuts"() 

declare void @"sym.cgc_dispense_oohs_of_oats"() 

declare void @"sym.cgc_dispense_sugar_loops"() 

declare void @"sym.cgc_dispense_marshmallow_figuringes"() 

declare void @"sym.cgc_dispense_maize_flakes"() 

declare void @"sym.cgc_dispense_crunchy_puffs"() 

declare void @"sym.cgc_dispense_liquid"(i32 %"arg_8h") 

declare void @"sym.cgc_dispense_almond_milk"() 

declare void @"sym.cgc_dispense_dairy_milk"() 

declare void @"sym.cgc_dispense_soy_milk"() 

declare void @"sym.cgc_dispense_water"() 

declare void @"sym.cgc_dispense_dairy_cream"() 

declare void @"sym.cgc_completion_buzzer"() 

declare i32 @"sym.cgc_check_inherited_types"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_deserialize_command_runner"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_command_runner"() 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_deserialize_printer_string"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_printer_string"() 

declare i32 @"sym.cgc_deserialize_generic_string"(i32 %"arg_8h") 

declare i32 @"sym.cgc_constructor_generic_string"() 

declare i32 @"sym.cgc_receive_input"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_process_plain_input"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 
