; ModuleID = "Thermal_Controller_v3_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_lookaside" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
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
  call void @"sym.cgc_ui_main"()
  store i32 0, i32* %"register0x00000000"
  %".15" = load i32, i32* %"register0x00000000"
  ret i32 %".15"
}

declare void @"sym.cgc_ui_main"() 

declare i32 @"sym.cgc_init_state"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_command"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_signed_int"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_status"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_new_state"(i32 %"arg_8h") 

declare void @"sym.cgc_reset_sensors"(i32 %"arg_8h") 

declare void @"sym.cgc_free_program"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_int"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_step"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_smoke_off"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_steps"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_remove_sensor"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_sensor"(i32 %"arg_8h", i32 %"arg_ch") 

declare i16 @"sym.cgc_get_short"(i32 %"arg_8h") 

declare i32 @"sym.cgc_power_off"(i32 %"arg_8h") 

declare i32 @"sym.cgc_smoke_on"(i32 %"arg_8h") 

declare void @"sym.cgc_prime_buf"(i32 %"arg_8h") 

declare void @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_simulate_seconds"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_add_history"(i32 %"arg_8h") 

declare void @"sym.cgc_check_program"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_step"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_update_sensors"(i32 %"arg_8h") 

declare void @"sym.cgc_get_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_get_program"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_get_sensors"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_check_val"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_power_on"(i32 %"arg_8h") 

declare i32 @"sym.cgc_set_ambient_temp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_validate_fw"(i32 %"arg_8h") 

declare void @"sym.cgc_exit_normal"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_add_sensor"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_set_temp"(i32 %"arg_8h", i32 %"arg_ch") 
