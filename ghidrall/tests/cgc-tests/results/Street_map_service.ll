; ModuleID = "Street_map_service"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.Newville" = external global i64
@"str.This_is_Mapper." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_ch" = alloca i32
  %"arg_8h" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".8" to i32*
  %"register0x00000000" = alloca i32
  %".9" = alloca i8**
  %".10" = alloca i32**
  store i8** %"argv", i8*** %".9"
  store i32** %"envp", i32*** %".10"
  br label %"0"
"0":
  %".14" = call i32 @"sym.cgc_init_turnList"()
  store i32 %".14", i32* %"arg_ch"
  %".16" = call i32 @"sym.cgc_init_map"(i32 134533988)
  store i32 %".16", i32* %"arg_8h"
  call void @"sym.cgc_puts"(i32 134533997)
  %".19" = load i32, i32* %"arg_8h"
  %".20" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_prompt_loop"(i32 %".19", i32 %".20")
  store i32 1, i32* %"register0x00000000"
  %".23" = load i32, i32* %"register0x00000000"
  ret i32 %".23"
}

declare i32 @"sym.cgc_init_turnList"() 

declare i32 @"sym.cgc_create_single_list"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_insert_single_list_node"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_init_map"(i32 %"arg_8h") 

declare i32 @"sym.cgc_create_double_list"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_prompt_loop"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
