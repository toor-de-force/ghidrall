; ModuleID = "FSK_BBS"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.out_buf_len" = global i32 0
@"obj.buf_read" = global i32 0
@"obj.buf_offset" = global i32 0
@"obj.cgc__modem_encode.t" = global i16 0
@"obj.convolution.buf" = global i80 0
@"obj.cgc_modem_decode.phase" = global i32 0
@"obj.field" = global i32 0
@"str.L_ist___H_elp___P_ost___R_ead" = external global i64
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  call void @"sym.cgc_modem_init"()
  %".4" = call i32 @"sym.cgc_strlen"(i32 134541537)
  store i32 %".4", i32* %"uVar1"
  %".6" = load i32, i32* %"uVar1"
  call void @"sym.cgc_modem_output"(i32 134541537, i32 %".6")
  %".8" = bitcast i32* @"0x804b910" to i32**
  call void @"sym.cgc_modem_loop"(i32** %".8")
  store i32 0, i32* %"register0x00000000"
  %".11" = load i32, i32* %"register0x00000000"
  ret i32 %".11"
}

declare void @"sym.cgc_modem_loop"(i32** %"param_1") 

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
  %".5" = add i32 %".4", 29043
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x08049550"()
  br label %"2"
"2":
  ret void
}

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare i8 @"sym.cgc__modem_encode"(i32 %"param_1") 

declare i64 @"sym.cgc_buffer_read_bytes"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_exit_1"() 

declare void @"sym.cgc_modem_encode_frame"(i32 %"param_1") 

declare void @"sym.cgc_buffer_write_bit"(i32 %"param_1", i8 %"param_2") 

declare void @"sym.cgc_buffer_write_bits"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_frame_decode"(i32 %"param_1", i32 %"param_2") 

declare i8 @"sym.cgc_ecc_decode"(i32 %"param_1") 

declare void @"sym.cgc_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_fdprintf"(i32 %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_output_number_printf"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare i32 @"sym.cgc_strtol"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_memset"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_buffer_read_bit"(i32** %"param_1") 

declare i64 @"sym.cgc_buffer_read_tell"(i32** %"param_1") 

declare void @"sym.cgc_buffer_read_seek"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_modem_decode"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_memmove"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i64 @"sym.cgc_buffer_read_remaining"(i32** %"param_1") 

declare void @"sym.cgc_buffer_write_bytes"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_ready_to_read"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_buffer_init"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_modem_encode"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_modem_init"() 

declare void @"sym.cgc_ecc_init"() 

declare void @"sym.cgc_modem_output"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_buffer_write_seek"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_frame_encode"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_ecc_encode"(i32** %"param_1") 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

@"0x804b910" = external global i32
declare void @"func_0x08049550"() 
