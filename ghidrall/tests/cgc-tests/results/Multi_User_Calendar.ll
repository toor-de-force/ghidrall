; ModuleID = "Multi_User_Calendar"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_g_cur_user" = global i32 0
@"obj.cgc_stdin" = global i32 0
@"obj.cgc_stdout" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999982
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".10" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".11" = alloca i8**
  %".12" = alloca i32**
  store i8** %"argv", i8*** %".11"
  store i32** %"envp", i32*** %".12"
  br label %"0"
"0":
  store i32 1, i32* %"var_ch"
  store i8 0, i8* %".7"
  store i8 1, i8* %".6"
  call void @"sym.cgc_check_seed"()
  br label %"1"
"1":
  %".21" = load i8, i8* %".6"
  %".22" = icmp ne i8 %".21", 0
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"2", label %"5"
"2":
  %".28" = load i8, i8* %".7"
  %".29" = icmp eq i8 %".28", 0
  %".30" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".29", i1* %".30"
  %".32" = load i8, i8* %"register0x00000206"
  %".33" = trunc i8 %".32" to i1
  br i1 %".33", label %"3", label %"4"
"3":
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".36" = ptrtoint i8* %".35" to i32
  %".37" = call i32 @"sym.cgc_user_menu"(i32 %".36")
  %".38" = bitcast i8* %".6" to i32*
  store i32 %".37", i32* %".38"
  br label %"1"
"4":
  %".41" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".42" = ptrtoint i8* %".41" to i32
  %".43" = call i32 @"sym.cgc_calendar_menu"(i32 %".42")
  %".44" = bitcast i8* %".6" to i32*
  store i32 %".43", i32* %".44"
  br label %"1"
"5":
  store i32 0, i32* %"register0x00000000"
  %".48" = load i32, i32* %"register0x00000000"
  ret i32 %".48"
}

declare i32 @"sym.cgc_calendar_menu"(i32 %"arg_8h") 

declare i32 @"sym.cgc_readnum"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_readline"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_fread"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_xlat_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__refill"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare void @"sym.cgc_print"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_print_date"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__vsfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc__convert_unsigned"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memmove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc__convert_signed"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strtoul"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fwrite"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_xlat_2"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_check_seed"() 

declare i32 @"sym.cgc_user_menu"(i32 %"arg_8h") 
