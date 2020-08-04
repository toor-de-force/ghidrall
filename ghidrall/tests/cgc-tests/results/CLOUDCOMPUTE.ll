; ModuleID = "CLOUDCOMPUTE"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_session_dat" = global i32 0
@"obj.cgc_session_window" = global i32 0
@"obj.rx_buf" = global i32 0
@"obj.cgc_sessions_num" = global i8 0
@"obj.cgc_tmp" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"bVar1" = alloca i8
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".13" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".14" = alloca i8**
  %".15" = alloca i32**
  store i8** %"argv", i8*** %".14"
  store i32** %"envp", i32*** %".15"
  br label %"0"
"0":
  store i8 0, i8* %"bVar1"
  store i32 0, i32* %"var_18h"
  call void @"sym.imp.cgc_allocate"()
  %".22" = load i32, i32* %"var_10h"
  %".23" = icmp eq i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"1", label %"c"
"1":
  %".29" = load i32, i32* @"obj.cgc_session_dat"
  %".30" = add i32 %".29", 15420
  store i32 %".30", i32* @"obj.cgc_session_window"
  br label %"2"
"2":
  %".33" = load i8, i8* %"bVar1"
  %".34" = xor i8 %".33", -1
  %".35" = trunc i8 %".34" to i1
  br i1 %".35", label %"3", label %"7"
"3":
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  store i32 0, i32* %"var_18h"
  %".39" = ptrtoint i8* %".37" to i32
  %".40" = call i32 @"sym.cgc_do_init"(i32 %".39")
  store i32 %".40", i32* %"iVar2"
  %".42" = load i32, i32* %"iVar2"
  %".43" = icmp ne i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"4", label %"5"
"4":
  %".49" = load i32, i32* %"iVar2"
  store i32 %".49", i32* %"register0x00000000"
  %".51" = load i32, i32* %"register0x00000000"
  ret i32 %".51"
"5":
  %".53" = load i32, i32* %"var_18h"
  %".54" = icmp ne i32 %".53", 0
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"2", label %"6"
"6":
  store i8 1, i8* %"bVar1"
  br label %"2"
"7":
  %".62" = load i8, i8* %"bVar1"
  %".63" = xor i8 %".62", -1
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"8", label %"9"
"8":
  store i32 65, i32* %"var_10h"
  br label %"c"
"9":
  %".68" = load i32, i32* %"var_18h"
  %".69" = call i32 @"sym.cgc_do_exec"(i32 %".68")
  store i32 %".69", i32* %"iVar2"
  %".71" = load i32, i32* %"iVar2"
  %".72" = icmp ne i32 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"a", label %"b"
a:
  %".78" = load i32, i32* %"iVar2"
  store i32 %".78", i32* %"register0x00000000"
  %".80" = load i32, i32* %"register0x00000000"
  ret i32 %".80"
b:
  store i8 0, i8* %"bVar1"
  br label %"2"
c:
  %".84" = load i32, i32* %"var_10h"
  store i32 %".84", i32* %"register0x00000000"
  %".86" = load i32, i32* %"register0x00000000"
  ret i32 %".86"
}

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_do_init"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_find_session"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_do_exec"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_bytecode_exec"(i32 %"arg_8h", i32 %"arg_ch") 
