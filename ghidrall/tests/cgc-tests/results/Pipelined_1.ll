; ModuleID = "Pipelined_1"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.state" = global i32 0
@"str.Function_pipelines_made_easy" = external global i64
@"str.no_functions_configured." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %"arg_8h_00" = alloca i32
  %"arg_8h_01" = alloca i32
  %"placeholder_5" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"placeholder_1" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"in_stack_ffffffcc" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"in_stack_ffffffd0" = bitcast i8* %".6" to i32*
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
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  call void @"sym.cgc_setup"()
  %".23" = load i32, i32* %"in_stack_ffffffcc"
  %".24" = call i32 @"sym.cgc_printf"(i32 1, i32 134529029, i32 %".23")
  store i32 %".24", i32* %"arg_8h"
  %".26" = call i32 @"sym.cgc_print_available"()
  store i32 %".26", i32* %"arg_8h_00"
  %".28" = load i32, i32* %"arg_8h_00"
  %".29" = call i32 @"sym.cgc_enable_services"(i32 %".28")
  store i32 %".29", i32* %"arg_8h_01"
  %".31" = load i32, i32* %"arg_8h_01"
  %".32" = icmp eq i32 %".31", 0
  %".33" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".32", i1* %".33"
  %".35" = load i8, i8* %"register0x00000206"
  %".36" = trunc i8 %".35" to i1
  br i1 %".36", label %"1", label %"2"
"1":
  store i32 134529060, i32* %"placeholder_1"
  %".39" = load i32, i32* %"in_stack_ffffffcc"
  %".40" = call i32 @"sym.cgc_printf"(i32 1, i32 134529060, i32 %".39")
  store i32 %".40", i32* %"placeholder_5"
  %".42" = load i32, i32* %"placeholder_1"
  %".43" = load i32, i32* %"in_stack_ffffffcc"
  %".44" = load i32, i32* %"in_stack_ffffffd0"
  %".45" = load i32, i32* %"placeholder_5"
  %".46" = load i32, i32* %"arg_8h"
  %".47" = call i32 @"sym.cgc_exit"(i32 5, i32 %".42", i32 %".43", i32 %".44", i32 5, i32 %".45", i32 1, i32 %".46")
  br label %"2"
"2":
  %".49" = load i32, i32* %"arg_8h_00"
  call void @"sym.cgc_terminate_unused"(i32 %".49")
  %".51" = load i32, i32* %"arg_8h_01"
  call void @"sym.cgc_print_pipeline"(i32 %".51")
  %".53" = load i32, i32* %"arg_8h_01"
  call void @"sym.cgc_handle_configs"(i32 %".53")
  %".55" = load i32, i32* %"arg_8h_01"
  call void @"sym.cgc_setup_output"(i32 %".55")
  store i32 1, i32* %"register0x00000000"
  %".58" = load i32, i32* %"register0x00000000"
  ret i32 %".58"
}

declare void @"sym.cgc_setup_output"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_get_service_by_position"(i32 %"arg_8h") 

declare void @"sym.cgc_send_service_fd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h") 

declare void @"sym.cgc_terminate_service"(i32 %"arg_8h") 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_enable_services"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_unsigned"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_setup"() 

declare void @"sym.cgc_terminate_unused"(i32 %"arg_8h") 

declare i32 @"sym.cgc_print_available"() 

declare void @"sym.cgc_handle_configs"(i32 %"arg_8h") 

declare void @"sym.cgc_config_service"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strdup"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_request_chunk"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_malloc_large"(i32 %"arg_8h") 

declare void @"sym.cgc_malloc_init"() 

declare i32 @"sym.cgc_ffs_u"(i32 %"arg_8h") 

declare void @"sym.cgc_send_config"(i32 %"arg_8h") 

declare void @"sym.cgc_print_pipeline"(i32 %"arg_8h") 
