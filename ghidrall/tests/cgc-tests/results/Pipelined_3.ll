; ModuleID = "Pipelined_3"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.write_fd" = global i32 0
@"obj.read_fd" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"placeholder_0" = alloca i32
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
  %".19" = call i32 @"sym.count"()
  store i32 %".19", i32* %"placeholder_0"
  %".21" = load i32, i32* %"placeholder_0"
  %".22" = load i32, i32* %"in_stack_ffffffe8"
  %".23" = load i8**, i8*** %".12"
  %".24" = load i32**, i32*** %".13"
  %".25" = load i32, i32* %"placeholder_0"
  %".26" = load i32, i32* %"unaff_EBP"
  %".27" = load i32, i32* %"unaff_retaddr"
  %".28" = load i8**, i8*** %".12"
  %".29" = load i32**, i32*** %".13"
  %".30" = load i32, i32* %"in_stack_0000000c"
  %".31" = load i32, i32* %"in_stack_00000010"
  %".32" = ptrtoint i8** %".23" to i32
  %".33" = ptrtoint i32** %".24" to i32
  %".34" = ptrtoint i8** %".28" to i32
  %".35" = ptrtoint i32** %".29" to i32
  %".36" = call i32 @"sym.cgc_exit"(i32 %".21", i32 %".22", i32 2, i32 %".32", i32 %".33", i32 %".25", i32 %".26", i32 %".27", i32 %".34", i32 %".35", i32 %".30", i32 %".31")
  store i32 0, i32* %"register0x00000000"
  %".38" = load i32, i32* %"register0x00000000"
  ret i32 %".38"
}

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_err"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_unsigned"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define i32 @"sym.count"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"bVar1" = alloca i8
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".3" to i32*
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
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %"var_dh" = bitcast i8* %".12" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  store i8 0, i8* %"bVar1"
  store i32 0, i32* %"var_18h"
  store i32 0, i32* %"var_24h"
  br label %"1"
"1":
  %".18" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".19" = ptrtoint i8* %".18" to i32
  %".20" = load i32, i32* @"obj.read_fd"
  %".21" = call i32 @"sym.cgc_receive_all"(i32 %".20", i32 %".19", i32 1)
  %".22" = load i32, i32* %"var_18h"
  %".23" = add i32 %".22", 1
  store i32 %".23", i32* %"var_18h"
  %".25" = load i32, i32* %"var_dh"
  %".26" = zext i8 0 to i32
  %".27" = icmp eq i32 %".25", %".26"
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  store i32 0, i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  ret i32 %".34"
"3":
  %".36" = load i32, i32* %"var_dh"
  %".37" = zext i8 65 to i32
  %".38" = icmp slt i32 %".36", %".37"
  br i1 %".38", label %"5", label %"4"
"4":
  %".40" = load i32, i32* %"var_dh"
  %".41" = zext i8 90 to i32
  %".42" = icmp slt i32 %".41", %".40"
  br i1 %".42", label %"5", label %"7"
"5":
  %".44" = load i32, i32* %"var_dh"
  %".45" = zext i8 97 to i32
  %".46" = icmp slt i32 %".44", %".45"
  br i1 %".46", label %"9", label %"6"
"6":
  %".48" = load i32, i32* %"var_dh"
  %".49" = zext i8 122 to i32
  %".50" = icmp slt i32 %".49", %".48"
  br i1 %".50", label %"9", label %"7"
"7":
  %".52" = load i8, i8* %"bVar1"
  %".53" = xor i8 %".52", -1
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"b", label %"8"
"8":
  store i8 1, i8* %"bVar1"
  br label %"b"
"9":
  %".58" = load i8, i8* %"bVar1"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"b", label %"a"
a:
  store i8 0, i8* %"bVar1"
  br label %"b"
b:
  %".63" = load i32, i32* %"var_dh"
  %".64" = zext i8 10 to i32
  %".65" = icmp eq i32 %".63", %".64"
  %".66" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".65", i1* %".66"
  %".68" = load i8, i8* %"register0x00000206"
  %".69" = trunc i8 %".68" to i1
  br i1 %".69", label %"d", label %"c"
c:
  %".71" = load i32, i32* %"var_24h"
  %".72" = add i32 %".71", 1
  store i32 %".72", i32* %"var_24h"
  br label %"10"
d:
  %".75" = load i32, i32* @"obj.write_fd"
  %".76" = load i32, i32* %"var_18h"
  %".77" = call i32 @"sym.cgc_printf"(i32 %".75", i32 134526081, i32 %".76")
  %".78" = load i32, i32* %"var_24h"
  %".79" = icmp eq i32 %".78", 0
  %".80" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".79", i1* %".80"
  %".82" = load i8, i8* %"register0x00000206"
  %".83" = trunc i8 %".82" to i1
  br i1 %".83", label %"e", label %"f"
e:
  store i32 0, i32* %"register0x00000000"
  %".86" = load i32, i32* %"register0x00000000"
  ret i32 %".86"
f:
  store i32 0, i32* %"var_24h"
  br label %"10"
"10":
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".91" = ptrtoint i8* %".90" to i32
  %".92" = load i32, i32* @"obj.write_fd"
  %".93" = call i32 @"sym.cgc_transmit_all"(i32 %".92", i32 %".91", i32 1)
  br label %"1"
}

declare void @"sym.cgc_sleep"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_setup"() 
