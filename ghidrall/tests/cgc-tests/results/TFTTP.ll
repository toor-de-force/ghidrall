; ModuleID = "TFTTP"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.curpkt" = global i32 0
@"obj.cgc_numentries" = global i32 0
@"str.Clever_girl." = external global i64
@"str.Mkay" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"iVar2" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  store i32 96264, i32* %"iVar2"
  call void @"sym.imp.cgc_allocate"()
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"4", label %"1"
"1":
  %".31" = call i32 @"sym.cgc_sendline"(i32 1, i32 134522620, i32 12)
  store i32 %".31", i32* %"iVar2"
  %".33" = load i32, i32* %"iVar2"
  %".34" = icmp slt i32 %".33", 0
  %".35" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000207"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  store i32 9, i32* %"iVar2"
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".45" = load i32, i32* %"iVar2"
  %".46" = call i32 @"sym.cgc_process_next_dgram"()
  store i32 %".46", i32* %"iVar1"
  %".48" = load i32, i32* %"iVar1"
  %".49" = icmp slt i32 -1, %".48"
  %".50" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000207"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"4", label %"5"
"5":
  %".55" = load i32, i32* @"obj.curpkt"
  call void @"sym.cgc_create_resp_pkt"(i32 %".55", i32 134522433)
  %".57" = load i32, i32* @"obj.curpkt"
  %".58" = load i32, i32* @"obj.curpkt"
  %".59" = call i32 @"sym.cgc_senddgram"(i32 1, i32 %".58", i32 %".57")
  store i32 %".59", i32* %"iVar2"
  %".61" = load i32, i32* %"iVar2"
  %".62" = icmp slt i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000207"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"6", label %"7"
"6":
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  call void @"sym.imp.cgc__terminate"()
  %".71" = load i32, i32* %"iVar1"
  store i32 %".71", i32* %"iVar2"
  br label %"4"
}

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_create_resp_pkt"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_senddgram"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_process_next_dgram"() 

declare i32 @"sym.cgc_do_rand"() 

declare i32 @"sym.cgc_easteregg"() 

declare i64 @"sym.cgc_getrand"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_random"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i8 @"sym.cgc_startswith"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_str2uint"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_do_put"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i8 @"sym.cgc_streq"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_get"() 

declare i32 @"sym.cgc_recvdgram"(i32 %"arg_8h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_recvmsg"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memcpy"() 

declare void @"_reloc.memset"() 
