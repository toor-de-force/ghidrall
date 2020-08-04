; ModuleID = "Cromulence_All_Service_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_prev_str" = global i32 0
@"obj.cgc_prev_str_len" = global i32 0
@"obj.cgc_prev_str_ptr" = global i32 0
@"obj.cgc_token" = global i32 0
@"str.This_command_encodes_data." = external global i64
@"str.This_command_performs_matrix_math." = external global i64
@"str.This_command_plays_a_game_like_Simon_Says." = external global i64
@"str.This_command_sorts_integers." = external global i64
@"str.encode" = external global i64
@"str.simon" = external global i64
@"str.sort" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987092
  %"var_3268h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987096
  %"var_3264h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %"var_3260h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".7" to i32*
  %"register0x00000000" = alloca i32
  %".8" = alloca i8**
  %".9" = alloca i32**
  store i8** %"argv", i8*** %".8"
  store i32** %"envp", i32*** %".9"
  br label %"0"
"0":
  %".13" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".14" = ptrtoint i8* %".13" to i32
  call void @"method.CCommandHandler.CCommandHandler"(i32 %".14")
  %".16" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".17" = ptrtoint i8* %".16" to i32
  %".18" = ptrtoint i32* @"0x804e420" to i32
  call void @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char
              "(i32 %".17", i32 134539649, i32 134539654, i32 %".18")
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".21" = ptrtoint i8* %".20" to i32
  %".22" = ptrtoint i32* @"0x804de10" to i32
  call void @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char
              "(i32 %".21", i32 134539464, i32 134539683, i32 %".22")
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".25" = ptrtoint i8* %".24" to i32
  %".26" = ptrtoint i32* @"0x804e110" to i32
  call void @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char
              "(i32 %".25", i32 134539718, i32 134539724, i32 %".26")
  %".28" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".29" = ptrtoint i8* %".28" to i32
  %".30" = ptrtoint i32* @"0x804d390" to i32
  call void @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char
              "(i32 %".29", i32 134539767, i32 134539774, i32 %".30")
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".33" = ptrtoint i8* %".32" to i32
  call void @"method.CCommandHandler.Run"(i32 %".33")
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 987100
  %".36" = ptrtoint i8* %".35" to i32
  call void @"method.CCommandHandler._CCommandHandler"(i32 %".36")
  store i32 0, i32* %"register0x00000000"
  %".39" = load i32, i32* %"register0x00000000"
  ret i32 %".39"
}

define void @"method.CCommandHandler.Run"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"pcVar1" = alloca i32
  %"uVar2" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998920
  %"in_stack_fffffbc8" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998920
  %"iVar3" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998920
  %"iVar4" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998928
  %"var_42ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %"var_428h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998936
  %"var_424h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998940
  %"var_420h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998944
  %"var_41ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998948
  %"var_418h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %"var_414h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  %"var_410h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %"var_40ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998964
  %"var_408h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998968
  %"var_404h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998972
  %"var_400h" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %".18" = alloca i32
  store i32 %"arg_8h", i32* %".18"
  br label %"0"
"0":
  br label %"1"
"1":
  %".22" = load i32, i32* %"in_stack_fffffbc8"
  %".23" = call i32 @"sym.cgc_printf"(i32 134539504, i32 %".22")
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998972
  %".25" = ptrtoint i8* %".24" to i32
  %".26" = call i32 @"sym.cgc_getline"(i32 %".25", i32 1024)
  %".27" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998972
  store i32 134539505, i32* %"iVar3"
  %".29" = ptrtoint i8* %".27" to i32
  %".30" = call i32 @"sym.cgc_strtok"(i32 %".29", i32 134539505)
  store i32 %".30", i32* %"in_stack_fffffbc8"
  %".32" = load i32, i32* %"in_stack_fffffbc8"
  %".33" = icmp ne i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"2", label %"9"
"2":
  %".39" = load i32, i32* %"in_stack_fffffbc8"
  %".40" = call i32 @"sym.cgc_stricmp"(i32 %".39", i32 134539250)
  store i32 %".40", i32* %"iVar3"
  %".42" = load i32, i32* %"iVar3"
  %".43" = icmp eq i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"8", label %"3"
"3":
  store i32 134539255, i32* %"iVar4"
  %".50" = load i32, i32* %"in_stack_fffffbc8"
  %".51" = call i32 @"sym.cgc_stricmp"(i32 %".50", i32 134539255)
  store i32 %".51", i32* %"iVar3"
  %".53" = load i32, i32* %"iVar3"
  %".54" = icmp eq i32 %".53", 0
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"7", label %"4"
"4":
  %".60" = load i32, i32* %".18"
  %".61" = load i32, i32* %"in_stack_fffffbc8"
  %".62" = call i32 @"method.CCommandHandler.GetCommandFunction_char_const"(i32 %".60", i32 %".61")
  %".63" = inttoptr i32 %".62" to i32*
  %".64" = bitcast i32* %"pcVar1" to i32**
  store i32* %".63", i32** %".64"
  %".66" = load i32, i32* %"pcVar1"
  %".67" = icmp eq i32 %".66", 0
  %".68" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".67", i1* %".68"
  %".70" = load i8, i8* %"register0x00000206"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"6", label %"5"
"5":
  store i32 134539940, i32* %"in_stack_fffffbc8"
  %".74" = call i32 @"sym.cgc_strtok"(i32 0, i32 134539940)
  store i32 %".74", i32* %"uVar2"
  call void @"pcVar1"()
  br label %"1"
"6":
  %".78" = load i32, i32* %"in_stack_fffffbc8"
  %".79" = call i32 @"sym.cgc_printf"(i32 134539232, i32 %".78")
  br label %"1"
"7":
  %".81" = load i32, i32* %".18"
  call void @"method.CCommandHandler.ListCommands"(i32 %".81")
  %".83" = load i32, i32* %"iVar4"
  store i32 %".83", i32* %"in_stack_fffffbc8"
  br label %"1"
"8":
  ret void
"9":
  %".87" = load i32, i32* %"iVar3"
  %".88" = call i32 @"sym.cgc_printf"(i32 134539232, i32 %".87")
  %".89" = load i32, i32* %"iVar3"
  store i32 %".89", i32* %"in_stack_fffffbc8"
  br label %"1"
}

define i32 @"method.CCommandHandler.GetCommandFunction_char_const"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".8" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  %".9" = alloca i32
  %".10" = alloca i32
  store i32 %"arg_8h", i32* %".9"
  store i32 %"arg_ch", i32* %".10"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  br label %"1"
"1":
  %".16" = load i32, i32* %".9"
  %".17" = add i32 %".16", 12880
  %".18" = load i32, i32* %"var_8h"
  %".19" = icmp ule i32 %".17", %".18"
  %".20" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000200"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"2", label %"3"
"2":
  store i32 0, i32* %"register0x00000000"
  %".26" = load i32, i32* %"register0x00000000"
  ret i32 %".26"
"3":
  %".28" = load i32, i32* %"var_8h"
  %".29" = mul i32 %".28", 644
  store i32 %".29", i32* %"register0x00000000"
  %".31" = load i32, i32* %".9"
  %".32" = load i32, i32* %"register0x00000000"
  %".33" = add i32 %".31", %".32"
  store i32 %".33", i32* %"register0x00000004"
  %".35" = load i32, i32* %"register0x00000004"
  %".36" = load i32, i32* %".10"
  %".37" = call i32 @"sym.cgc_stricmp"(i32 %".35", i32 %".36")
  store i32 %".37", i32* %"iVar1"
  %".39" = load i32, i32* %"iVar1"
  %".40" = icmp eq i32 %".39", 0
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"4", label %"5"
"4":
  %".46" = load i32, i32* %"var_8h"
  %".47" = mul i32 %".46", 644
  store i32 %".47", i32* %"register0x00000000"
  %".49" = load i32, i32* %".9"
  %".50" = load i32, i32* %"register0x00000000"
  %".51" = add i32 %".49", %".50"
  store i32 %".51", i32* %"register0x00000004"
  %".53" = load i32, i32* %"register0x00000004"
  %".54" = add i32 %".53", 640
  store i32 %".54", i32* %"register0x00000000"
  %".56" = load i32, i32* %"register0x00000000"
  ret i32 %".56"
"5":
  %".58" = load i32, i32* %"var_8h"
  %".59" = add i32 %".58", 1
  store i32 %".59", i32* %"var_8h"
  br label %"1"
}

declare i32 @"sym.cgc_stricmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

define void @"method.CCommandHandler.ListCommands"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"in_stack_ffffffd8" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".8" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000008" = alloca i32
  %".9" = alloca i32
  store i32 %"arg_8h", i32* %".9"
  br label %"0"
"0":
  %".12" = load i32, i32* %"in_stack_ffffffd8"
  %".13" = call i32 @"sym.cgc_printf"(i32 134539257, i32 %".12")
  store i32 0, i32* %"var_8h"
  br label %"1"
"1":
  %".16" = load i32, i32* %".9"
  %".17" = add i32 %".16", 12880
  %".18" = load i32, i32* %"var_8h"
  %".19" = icmp ult i32 %".18", %".17"
  %".20" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000200"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"3", label %"2"
"2":
  ret void
"3":
  %".26" = load i32, i32* %"var_8h"
  %".27" = mul i32 %".26", 644
  store i32 %".27", i32* %"register0x00000004"
  %".29" = load i32, i32* %".9"
  %".30" = load i32, i32* %"register0x00000004"
  %".31" = add i32 %".29", %".30"
  store i32 %".31", i32* %"register0x00000008"
  %".33" = load i32, i32* %"register0x00000008"
  %".34" = call i32 @"sym.cgc_printf"(i32 134539278, i32 %".33")
  %".35" = load i32, i32* %"var_8h"
  %".36" = add i32 %".35", 1
  store i32 %".36", i32* %"var_8h"
  br label %"1"
}

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_getline"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

define void @"method.CCommandHandler._CCommandHandler"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  ret void
}

define i8 @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %"var_9h" = bitcast i8* %".15" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i8
  %".16" = alloca i32
  %".17" = alloca i32
  %".18" = alloca i32
  %".19" = alloca i32
  store i32 %"arg_8h", i32* %".16"
  store i32 %"arg_ch", i32* %".17"
  store i32 %"arg_10h", i32* %".18"
  store i32 %"arg_14h", i32* %".19"
  br label %"0"
"0":
  %".25" = load i32, i32* %".16"
  %".26" = add i32 %".25", 12880
  %".27" = icmp eq i32 %".26", 20
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"6", label %"1"
"1":
  %".33" = load i32, i32* %".17"
  %".34" = icmp eq i32 %".33", 0
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"5", label %"2"
"2":
  %".40" = load i32, i32* %".19"
  %".41" = icmp eq i32 %".40", 0
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"4", label %"3"
"3":
  %".47" = load i32, i32* %".16"
  %".48" = add i32 %".47", 12880
  %".49" = mul i32 %".48", 644
  store i32 %".49", i32* %"register0x00000008"
  %".51" = load i32, i32* %".16"
  %".52" = load i32, i32* %"register0x00000008"
  %".53" = add i32 %".51", %".52"
  store i32 %".53", i32* %"register0x00000004"
  %".55" = load i32, i32* %"register0x00000004"
  %".56" = load i32, i32* %".17"
  %".57" = call i32 @"sym.cgc_strncpy"(i32 %".55", i32 %".56", i32 128)
  %".58" = load i32, i32* %".16"
  %".59" = add i32 %".58", 12880
  %".60" = mul i32 %".59", 644
  store i32 %".60", i32* %"register0x00000018"
  %".62" = load i32, i32* %".16"
  %".63" = load i32, i32* %"register0x00000018"
  %".64" = add i32 %".62", %".63"
  store i32 %".64", i32* %"register0x00000008"
  %".66" = load i32, i32* %"register0x00000008"
  %".67" = add i32 %".66", 128
  store i32 %".67", i32* %"register0x00000008"
  %".69" = load i32, i32* %"register0x00000008"
  %".70" = load i32, i32* %".18"
  %".71" = call i32 @"sym.cgc_strncpy"(i32 %".69", i32 %".70", i32 512)
  %".72" = load i32, i32* %".16"
  %".73" = add i32 %".72", 12880
  %".74" = mul i32 %".73", 644
  store i32 %".74", i32* %"register0x00000018"
  %".76" = load i32, i32* %".16"
  %".77" = load i32, i32* %"register0x00000018"
  %".78" = add i32 %".76", %".77"
  store i32 %".78", i32* %"register0x00000008"
  %".80" = load i32, i32* %"register0x00000008"
  %".81" = add i32 %".80", 640
  %".82" = load i32, i32* %".19"
  %".83" = load i32, i32* %".16"
  %".84" = add i32 %".83", 12880
  %".85" = add i32 %".84", 1
  store i32 %".85", i32* %"register0x00000008"
  %".87" = load i32, i32* %".16"
  %".88" = add i32 %".87", 12880
  %".89" = load i32, i32* %"register0x00000008"
  %".90" = getelementptr i32, i32* %"var_9h", i8 0
  %".91" = bitcast i32* %".90" to i8*
  store i8 1, i8* %".91"
  br label %"7"
"4":
  %".94" = getelementptr i32, i32* %"var_9h", i8 0
  %".95" = bitcast i32* %".94" to i8*
  store i8 0, i8* %".95"
  br label %"7"
"5":
  %".98" = getelementptr i32, i32* %"var_9h", i8 0
  %".99" = bitcast i32* %".98" to i8*
  store i8 0, i8* %".99"
  br label %"7"
"6":
  %".102" = getelementptr i32, i32* %"var_9h", i8 0
  %".103" = bitcast i32* %".102" to i8*
  store i8 0, i8* %".103"
  br label %"7"
"7":
  %".106" = load i32, i32* %"var_9h"
  %".107" = bitcast i8* %"register0x00000000" to i32*
  store i32 %".106", i32* %".107"
  %".109" = load i8, i8* %"register0x00000000"
  ret i8 %".109"
}

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"method.CCommandHandler.CCommandHandler"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".6" to i32*
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  %".10" = load i32, i32* %".7"
  %".11" = add i32 %".10", 12880
  %".12" = load i32, i32* %".7"
  %".13" = call i32 @"sym.cgc_memset"(i32 %".12", i32 0, i32 12880)
  ret void
}

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

@"0x804e420" = external global i32
declare void @"method.CCommandHandler.RegisterCommand_char_const___char_const___void_____char
              "(i32 %".1", i32 %".2", i32 %".3", i32 %".4") 

@"0x804de10" = external global i32
@"0x804e110" = external global i32
@"0x804d390" = external global i32
declare void @"pcVar1"() 
