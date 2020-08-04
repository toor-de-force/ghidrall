; ModuleID = "expression_database_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_g_lasterror" = global i32 0
@"obj.g_recordCount" = global i32 0
@"obj.cgc_g_exceptionFrameCur" = global i8 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000000" = alloca i32
  %".7" = alloca i8**
  %".8" = alloca i32**
  store i8** %"argv", i8*** %".7"
  store i32** %"envp", i32*** %".8"
  br label %"0"
"0":
  call void @"sym.cgc_init_exception_handler"()
  call void @"sym.cgc_init_database"()
  call void @"sym.cgc_run_parser"()
  store i32 0, i32* %"register0x00000000"
  %".16" = load i32, i32* %"register0x00000000"
  ret i32 %".16"
}

declare void @"sym.cgc_run_parser"() 

declare void @"sym.cgc_init_user"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parse_command"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_stringbeg"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_readLine"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_init_database"() 

declare void @"sym.cgc_init_exception_handler"() 
