; ModuleID = "Pipelined_6_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.read_fd" = global i32 0
@"obj.read_buf" = global i8 0
@"obj.write_fd" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBP" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967296
  %"unaff_retaddr" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"in_stack_ffffffd8" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"in_stack_ffffffdc" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"in_stack_ffffffe0" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".13" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".14" = alloca i8**
  %".15" = alloca i32**
  store i8** %"argv", i8*** %".14"
  store i32** %"envp", i32*** %".15"
  br label %"0"
"0":
  call void @"sym.cgc_setup"()
  call void @"sym.cgc_sleep"(i32 2)
  %".21" = load i32, i32* @"obj.read_fd"
  %".22" = icmp eq i32 %".21", 0
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"1", label %"2"
"1":
  store i32 0, i32* %"var_14h"
  %".29" = load i32, i32* %"in_stack_ffffffd8"
  %".30" = load i32, i32* %"in_stack_ffffffdc"
  %".31" = load i32, i32* %"in_stack_ffffffe0"
  %".32" = load i32, i32* %"var_18h"
  %".33" = load i8**, i8*** %".14"
  %".34" = load i32**, i32*** %".15"
  %".35" = load i32, i32* %"unaff_EBP"
  %".36" = load i32, i32* %"unaff_retaddr"
  %".37" = ptrtoint i8** %".33" to i32
  %".38" = ptrtoint i32** %".34" to i32
  %".39" = call i32 @"sym.cgc_exit"(i32 0, i32 %".29", i32 %".30", i32 %".31", i32 %".32", i32 0, i32 2, i32 %".37", i32 %".38", i32 0, i32 %".35", i32 %".36")
  br label %"2"
"2":
  call void @"sym.cgc_decompress"()
  %".42" = load i32, i32* %"in_stack_ffffffd8"
  %".43" = load i32, i32* %"in_stack_ffffffdc"
  %".44" = load i32, i32* %"in_stack_ffffffe0"
  %".45" = load i32, i32* %"var_14h"
  %".46" = load i8**, i8*** %".14"
  %".47" = load i32**, i32*** %".15"
  %".48" = load i32, i32* %"unaff_EBP"
  %".49" = load i32, i32* %"unaff_retaddr"
  %".50" = ptrtoint i8** %".46" to i32
  %".51" = ptrtoint i32** %".47" to i32
  %".52" = call i32 @"sym.cgc_exit"(i32 0, i32 %".42", i32 %".43", i32 %".44", i32 0, i32 %".45", i32 2, i32 %".50", i32 %".51", i32 0, i32 %".48", i32 %".49")
  store i32 0, i32* %"register0x00000000"
  %".54" = load i32, i32* %"register0x00000000"
  ret i32 %".54"
}

declare void @"sym.cgc_decompress"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_err"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_unsigned"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sleep"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_setup"() 
