; ModuleID = "Corinth_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.random_page" = global i32 0
@"obj.kajigger" = global i64 0
@"obj.counter" = global i32 0
@"obj.splatter" = global i64 0
@"obj.scaler" = global i64 0
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
  call void @"sym.cgc_types_check"()
  call void @"sym.cgc_monte_initialize"()
  call void @"sym.cgc_say_hello"()
  call void @"sym.cgc_run_loop"()
  store i32 4294967295, i32* %"register0x00000000"
  %".17" = load i32, i32* %"register0x00000000"
  ret i32 %".17"
}

declare void @"sym.cgc_run_loop"() 

declare void @"sym.cgc_protocol_with_recv_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_rx"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_monte_initialize"() 

declare i80 @"sym.cgc_kajigger_from_random_int"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_sin"() 

declare void @"sym.cgc_say_hello"() 

declare i80 @"sym.cgc_monte_gen"() 

declare i80 @"sym.cgc_monte_gen_step"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"placeholder_5", i32 %"arg_20h") 

declare void @"sym.imp.cgc_tan"() 

declare void @"sym.cgc_protocol_send"(i32 %"arg_8h") 

declare void @"sym.cgc_tx"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_types_check"() 

declare void @"sym.cgc_chk"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

define void @"sym._init"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBX" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  call void @"sym.__x86.get_pc_thunk.bx"()
  %".4" = load i32, i32* %"unaff_EBX"
  %".5" = add i32 %".4", 34331
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x08049be0"()
  br label %"2"
"2":
  ret void
}

declare void @"func_0x08049be0"() 
