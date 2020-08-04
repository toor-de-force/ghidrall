; ModuleID = "Palindrome2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.Nope__that_s_not_a_palindrome" = external global i64
@"str.Please_enter_a_possible_palindrome:" = external global i64
@"str.Welcome_to_Palindrome_Finder" = external global i64
@"str.Yes__that_s_a_palindrome" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".19" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".20" = alloca i8**
  %".21" = alloca i32**
  store i8** %"argv", i8*** %".20"
  store i32** %"envp", i32*** %".21"
  br label %"0"
"0":
  %".25" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134515792, i32 31)
  store i32 %".25", i32* %"iVar1"
  %".27" = load i32, i32* %"iVar1"
  %".28" = icmp ne i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"2", label %"1"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".36" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134515824, i32 37)
  store i32 %".36", i32* %"iVar1"
  %".38" = load i32, i32* %"iVar1"
  %".39" = icmp ne i32 %".38", 0
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".47" = call i32 @"sym.cgc_check"()
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp eq i32 %".49", -1
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"5", label %"6"
"5":
  store i32 0, i32* %"register0x00000000"
  %".57" = load i32, i32* %"register0x00000000"
  ret i32 %".57"
"6":
  %".59" = load i32, i32* %"iVar1"
  %".60" = icmp eq i32 %".59", 0
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000206"
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"9", label %"7"
"7":
  %".66" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134515896, i32 29)
  store i32 %".66", i32* %"iVar1"
  %".68" = load i32, i32* %"iVar1"
  %".69" = icmp ne i32 %".68", 0
  %".70" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000206"
  %".73" = trunc i8 %".72" to i1
  br i1 %".73", label %"2", label %"8"
"8":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"9":
  %".77" = call i32 @"sym.cgc_transmit_all"(i32 1, i32 134515862, i32 33)
  store i32 %".77", i32* %"iVar1"
  %".79" = load i32, i32* %"iVar1"
  %".80" = icmp ne i32 %".79", 0
  %".81" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".80", i1* %".81"
  %".83" = load i8, i8* %"register0x00000206"
  %".84" = trunc i8 %".83" to i1
  br i1 %".84", label %"2", label %"a"
a:
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
}

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_check"() 

declare i32 @"sym.cgc_receive_delim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
