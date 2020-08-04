; ModuleID = "Pipelined_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.read_fd" = global i32 0
@"obj.write_fd" = global i32 0
@"obj.pattern_skip" = global i32 0
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998888
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998892
  %"placeholder_2" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998896
  %"placeholder_3" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998900
  %"in_stack_fffffbb4" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998904
  %"in_stack_fffffbb8" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %"var_440h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998912
  %"var_43ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998916
  %"var_438h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998920
  %"var_434h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998924
  %"var_430h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998928
  %"var_42ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %"var_428h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998936
  %"var_424h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998940
  %"var_420h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998944
  %"var_41ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998948
  %"var_418h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %"var_414h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  %"var_410h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %"var_40ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".23" to i32*
  %"register0x00000206" = alloca i8
  %".24" = alloca i8**
  %".25" = alloca i32**
  store i8** %"argv", i8*** %".24"
  store i32** %"envp", i32*** %".25"
  br label %"0"
"0":
  call void @"sym.cgc_do_config"()
  call void @"sym.cgc_setup"()
  call void @"sym.cgc_sleep"(i32 2)
  br label %"1"
"1":
  %".33" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".34" = ptrtoint i8* %".33" to i32
  %".35" = call i32 @"sym.cgc_memset"(i32 %".34", i32 0, i32 1024)
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".37" = bitcast i32* %"arg_ch" to i8**
  store i8* %".36", i8** %".37"
  store i32 1023, i32* %"placeholder_2"
  store i32 10, i32* %"placeholder_3"
  %".41" = load i32, i32* %"arg_ch"
  %".42" = load i32, i32* @"obj.read_fd"
  %".43" = call i32 @"sym.cgc_read_until"(i32 %".42", i32 %".41", i32 1023, i32 10)
  store i32 %".43", i32* %"iVar1"
  %".45" = load i32, i32* %"iVar1"
  %".46" = icmp eq i32 %".45", -1
  %".47" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i8, i8* %"register0x00000206"
  %".50" = trunc i8 %".49" to i1
  br i1 %".50", label %"2", label %"3"
"2":
  store i32 4, i32* %"var_434h"
  %".53" = load i32, i32* %"arg_ch"
  %".54" = load i32, i32* %"placeholder_2"
  %".55" = load i32, i32* %"placeholder_3"
  %".56" = load i32, i32* %"in_stack_fffffbb4"
  %".57" = load i32, i32* %"in_stack_fffffbb8"
  %".58" = load i32, i32* %"var_440h"
  %".59" = load i32, i32* %"var_43ch"
  %".60" = load i32, i32* %"var_438h"
  call void @"sym.cgc_exit"(i32 4, i32 %".53", i32 %".54", i32 %".55", i32 %".56", i32 %".57", i32 %".58", i32 %".59", i32 %".60", i32 4, i32 10, i32 1023)
  br label %"3"
"3":
  %".63" = load i32, i32* %"iVar1"
  %".64" = icmp slt i32 %".63", 1
  br i1 %".64", label %"1", label %"4"
"4":
  %".66" = load i32, i32* %"var_40ch"
  %".67" = zext i8 0 to i32
  %".68" = icmp eq i32 %".66", %".67"
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"5", label %"6"
"5":
  store i32 0, i32* %"var_438h"
  %".75" = load i32, i32* %"arg_ch"
  %".76" = load i32, i32* %"placeholder_2"
  %".77" = load i32, i32* %"placeholder_3"
  %".78" = load i32, i32* %"in_stack_fffffbb4"
  %".79" = load i32, i32* %"in_stack_fffffbb8"
  %".80" = load i32, i32* %"var_440h"
  %".81" = load i32, i32* %"var_43ch"
  %".82" = load i32, i32* %"var_434h"
  call void @"sym.cgc_exit"(i32 0, i32 %".75", i32 %".76", i32 %".77", i32 %".78", i32 %".79", i32 %".80", i32 %".81", i32 0, i32 %".82", i32 10, i32 1023)
  br label %"6"
"6":
  %".85" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".86" = bitcast i8* %".85" to i32*
  %".87" = bitcast i32* %"var_43ch" to i32**
  store i32* %".86", i32** %".87"
  %".89" = load i32, i32* %"var_43ch"
  %".90" = call i32 @"sym.cgc_strlen"(i32 %".89")
  store i32 %".90", i32* %"iVar1"
  %".92" = load i32, i32* %"var_43ch"
  %".93" = load i32, i32* %"iVar1"
  %".94" = call i32 @"sym.cgc_morris_pratt"(i32 %".92", i32 %".93")
  store i32 %".94", i32* %"iVar1"
  %".96" = load i32, i32* %"iVar1"
  %".97" = icmp eq i32 %".96", 1
  %".98" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".97", i1* %".98"
  %".100" = load i8, i8* %"register0x00000206"
  %".101" = trunc i8 %".100" to i1
  br i1 %".101", label %"1", label %"7"
"7":
  %".103" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".104" = ptrtoint i8* %".103" to i32
  %".105" = load i32, i32* @"obj.write_fd"
  %".106" = call i32 @"sym.cgc_printf"(i32 %".105", i32 134526993, i32 %".104")
  store i32 %".106", i32* %"var_440h"
  br label %"1"
}

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sleep"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_setup"() 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_err"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_transmit_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_unsigned"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_string"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_do_config"() 

declare i32 @"sym.cgc_morris_pratt"(i32 %"arg_8h", i32 %"arg_ch") 
