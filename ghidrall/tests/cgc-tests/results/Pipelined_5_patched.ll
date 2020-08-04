; ModuleID = "Pipelined_5_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.read_fd" = global i32 0
@"obj.write_fd" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBP" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967296
  %"unaff_retaddr" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967284
  %"in_stack_0000000c" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967280
  %"in_stack_00000010" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"in_stack_ffffffe8" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".11" to i32*
  %"register0x00000000" = alloca i32
  %".12" = alloca i8**
  %".13" = alloca i32**
  store i8** %"argv", i8*** %".12"
  store i32** %"envp", i32*** %".13"
  br label %"0"
"0":
  call void @"sym.cgc_setup"()
  call void @"sym.cgc_sleep"(i32 2)
  call void @"sym.cgc_compress"()
  %".20" = load i32, i32* %"in_stack_ffffffe8"
  %".21" = load i8**, i8*** %".12"
  %".22" = load i32**, i32*** %".13"
  %".23" = load i32, i32* %"unaff_EBP"
  %".24" = load i32, i32* %"unaff_retaddr"
  %".25" = load i8**, i8*** %".12"
  %".26" = load i32**, i32*** %".13"
  %".27" = load i32, i32* %"in_stack_0000000c"
  %".28" = load i32, i32* %"in_stack_00000010"
  %".29" = ptrtoint i8** %".21" to i32
  %".30" = ptrtoint i32** %".22" to i32
  %".31" = ptrtoint i8** %".25" to i32
  %".32" = ptrtoint i32** %".26" to i32
  %".33" = call i32 @"sym.cgc_exit"(i32 0, i32 %".20", i32 0, i32 2, i32 %".29", i32 %".30", i32 %".23", i32 %".24", i32 %".31", i32 %".32", i32 %".27", i32 %".28")
  store i32 0, i32* %"register0x00000000"
  %".35" = load i32, i32* %"register0x00000000"
  ret i32 %".35"
}

declare void @"sym.cgc_sleep"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_setup"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_err"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_unsigned"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h") 

declare void @"sym.cgc_compress"() 

declare i32 @"sym.cgc_write_char"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_byte"(i32 %"arg_8h") 
