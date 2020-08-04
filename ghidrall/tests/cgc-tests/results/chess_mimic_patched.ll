; ModuleID = "chess_mimic_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.current_team" = global i8 0
@"obj.ptr_array" = global i32 0
@"str.BLACK:" = external global i64
@"str.Not_a_legal_move_format" = external global i64
@"str.WHITE:" = external global i64
@"str.good_game" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"in_stack_ffffff58" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"iStack96" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".20" to i32*
  %"register0x00000206" = alloca i8
  %".21" = alloca i8**
  %".22" = alloca i32**
  store i8** %"argv", i8*** %".21"
  store i32** %"envp", i32*** %".22"
  br label %"0"
"0":
  %".26" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %".27" = bitcast i32* @"obj.ptr_array" to i8**
  store i8* %".26", i8** %".27"
  call void @"sym.cgc_initboard"()
  call void @"sym.cgc_displayboard"()
  br label %"1"
"1":
  %".32" = load i8, i8* @"obj.current_team"
  %".33" = icmp eq i8 %".32", 1
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"3", label %"2"
"2":
  %".39" = load i32, i32* %"in_stack_ffffff58"
  %".40" = call i32 @"sym.cgc_printf"(i32 134526681, i32 %".39")
  br label %"4"
"3":
  %".42" = load i32, i32* %"in_stack_ffffff58"
  %".43" = call i32 @"sym.cgc_printf"(i32 134526673, i32 %".42")
  br label %"4"
"4":
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".46" = ptrtoint i8* %".45" to i32
  %".47" = call i32 @"sym.cgc_parseUserInput"(i32 %".46")
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp ne i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"5", label %"e"
"5":
  %".56" = load i32, i32* %"iVar1"
  %".57" = icmp eq i32 %".56", 2
  %".58" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".57", i1* %".58"
  %".60" = load i8, i8* %"register0x00000206"
  %".61" = trunc i8 %".60" to i1
  br i1 %".61", label %"d", label %"6"
"6":
  %".63" = load i32, i32* %"iVar1"
  %".64" = icmp eq i32 %".63", 3
  %".65" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".64", i1* %".65"
  %".67" = load i8, i8* %"register0x00000206"
  %".68" = trunc i8 %".67" to i1
  br i1 %".68", label %"7", label %"8"
"7":
  %".70" = load i32, i32* %"in_stack_ffffff58"
  %".71" = call i32 @"sym.cgc_printf"(i32 134526714, i32 %".70")
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  %".74" = load i32, i32* %"iVar1"
  %".75" = icmp eq i32 %".74", -1
  %".76" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".75", i1* %".76"
  %".78" = load i8, i8* %"register0x00000206"
  %".79" = trunc i8 %".78" to i1
  br i1 %".79", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".83" = load i32, i32* %"iStack96"
  store i32 %".83", i32* %"in_stack_ffffff58"
  %".85" = load i32, i32* %"var_60h"
  %".86" = call i32 @"sym.cgc_performMove"(i32 %".85")
  store i32 %".86", i32* %"iVar1"
  %".88" = load i32, i32* %"iVar1"
  %".89" = icmp eq i32 %".88", 0
  %".90" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".89", i1* %".90"
  %".92" = load i8, i8* %"register0x00000206"
  %".93" = trunc i8 %".92" to i1
  br i1 %".93", label %"b", label %"c"
b:
  %".95" = load i32, i32* %"in_stack_ffffff58"
  %".96" = call i32 @"sym.cgc_printf"(i32 134526729, i32 %".95")
  br label %"1"
c:
  %".98" = load i32, i32* %"in_stack_ffffff58"
  %".99" = call i32 @"sym.cgc_printf"(i32 134526725, i32 %".98")
  %".100" = load i8, i8* @"obj.current_team"
  %".101" = icmp ne i8 %".100", 1
  %".102" = inttoptr i1 %".101" to i8*
  %".103" = bitcast i8* @"obj.current_team" to i8**
  store i8* %".102", i8** %".103"
  br label %"1"
d:
  call void @"sym.cgc_displayboard"()
  br label %"1"
e:
  %".108" = load i32, i32* %"in_stack_ffffff58"
  %".109" = call i32 @"sym.cgc_printf"(i32 134526689, i32 %".108")
  br label %"1"
}

declare i32 @"sym.cgc_parseUserInput"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_verifyFormat"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_performMove"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getColor"(i32 %"arg_8h") 

declare void @"sym.cgc_swap"(i32 %"arg_8h") 

declare i32 @"sym.cgc_abs"(i32 %"arg_8h") 

declare i32 @"sym.cgc_checkNoCollision"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getPiece"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_displayboard"() 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_initboard"() 
