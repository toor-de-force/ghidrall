; ModuleID = "Game_Night"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_stdin" = global i32 0
@"obj.new_board" = global i32 0
@"obj.stdout" = global i32 0
@"str.Shall_we_play_a_game_____1._Hugman__2._Chess__3._Sudoku__4._Gallon_Challenge__5._Safari_Zone__6._Chance_of_Survival__7._Lesson_in_Futility__8._Quit" = external global i64
@"str.Wouldn_t_you_prefer_a_nice_game_of_chess" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  store i32 0, i32* %"arg_ch"
  call void @"sym.imp.memset"()
  call void @"sym.cgc_init_cookie"()
  br label %"1"
"1":
  %".27" = load i32, i32* %"arg_ch"
  %".28" = call i32 @"sym.cgc_printf"(i32 134554330, i32 %".27")
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  store i32 10, i32* %"arg_ch"
  %".31" = ptrtoint i8* %".29" to i32
  %".32" = load i32, i32* @"obj.cgc_stdin"
  %".33" = call i32 @"sym.cgc_fread_until"(i32 %".31", i32 10, i32 40, i32 %".32")
  store i32 %".33", i32* %"iVar1"
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp eq i32 %".35", -1
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"2", label %"3"
"2":
  store i32 0, i32* %"register0x00000000"
  %".43" = load i32, i32* %"register0x00000000"
  ret i32 %".43"
"3":
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %".46" = ptrtoint i8* %".45" to i32
  %".47" = call i32 @"sym.cgc_strlen"(i32 %".46")
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp eq i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"1", label %"4"
"4":
  %".56" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %".57" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  store i32 10, i32* %"arg_ch"
  %".59" = ptrtoint i8* %".57" to i32
  %".60" = ptrtoint i8* %".57" to i32
  %".61" = call i32 @"sym.cgc_strtou"(i32 %".59", i32 10, i32 %".60")
  store i32 %".61", i32* %"iVar1"
  %".63" = load i32, i32* %"iVar1"
  %".64" = icmp eq i32 %".63", -1
  %".65" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".64", i1* %".65"
  %".67" = load i8, i8* %"register0x00000206"
  %".68" = trunc i8 %".67" to i1
  br i1 %".68", label %"1", label %"5"
"5":
  %".70" = load i32, i32* %"var_38h"
  %".71" = icmp ne i32 %".70", 1
  %".72" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000206"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"6", label %"14"
"6":
  %".77" = load i32, i32* %"var_38h"
  %".78" = icmp eq i32 %".77", 2
  %".79" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".78", i1* %".79"
  %".81" = load i8, i8* %"register0x00000206"
  %".82" = trunc i8 %".81" to i1
  br i1 %".82", label %"7", label %"8"
"7":
  %".84" = call i32 @"sym.cgc_do_chess"()
  store i32 %".84", i32* %"iVar1"
  br label %"15"
"8":
  %".87" = load i32, i32* %"var_38h"
  %".88" = icmp eq i32 %".87", 3
  %".89" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".88", i1* %".89"
  %".91" = load i8, i8* %"register0x00000206"
  %".92" = trunc i8 %".91" to i1
  br i1 %".92", label %"9", label %"a"
"9":
  %".94" = call i32 @"sym.cgc_do_sudoku"()
  store i32 %".94", i32* %"iVar1"
  br label %"15"
a:
  %".97" = load i32, i32* %"var_38h"
  %".98" = icmp eq i32 %".97", 4
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"b", label %"c"
b:
  %".104" = call i32 @"sym.cgc_do_gallon_challenge"()
  store i32 %".104", i32* %"iVar1"
  br label %"15"
c:
  %".107" = load i32, i32* %"var_38h"
  %".108" = icmp eq i32 %".107", 5
  %".109" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".108", i1* %".109"
  %".111" = load i8, i8* %"register0x00000206"
  %".112" = trunc i8 %".111" to i1
  br i1 %".112", label %"d", label %"e"
d:
  %".114" = call i32 @"sym.cgc_do_safari_zone"()
  store i32 %".114", i32* %"iVar1"
  br label %"15"
e:
  %".117" = load i32, i32* %"var_38h"
  %".118" = icmp eq i32 %".117", 6
  %".119" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".118", i1* %".119"
  %".121" = load i8, i8* %"register0x00000206"
  %".122" = trunc i8 %".121" to i1
  br i1 %".122", label %"f", label %"10"
f:
  %".124" = call i32 @"sym.cgc_do_chance_of_survival"()
  store i32 %".124", i32* %"iVar1"
  br label %"15"
"10":
  %".127" = load i32, i32* %"var_38h"
  %".128" = icmp eq i32 %".127", 7
  %".129" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".128", i1* %".129"
  %".131" = load i8, i8* %"register0x00000206"
  %".132" = trunc i8 %".131" to i1
  br i1 %".132", label %"11", label %"12"
"11":
  %".134" = load i32, i32* %"arg_ch"
  %".135" = call i32 @"sym.cgc_printf"(i32 134554471, i32 %".134")
  %".136" = call i32 @"sym.cgc_do_lesson_in_futility"()
  store i32 %".136", i32* %"iVar1"
  br label %"15"
"12":
  %".139" = load i32, i32* %"var_38h"
  %".140" = icmp eq i32 %".139", 8
  %".141" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".140", i1* %".141"
  %".143" = load i8, i8* %"register0x00000206"
  %".144" = trunc i8 %".143" to i1
  br i1 %".144", label %"1", label %"13"
"13":
  store i32 0, i32* %"register0x00000000"
  %".147" = load i32, i32* %"register0x00000000"
  ret i32 %".147"
"14":
  %".149" = call i32 @"sym.cgc_do_hugman"()
  store i32 %".149", i32* %"iVar1"
  br label %"15"
"15":
  %".152" = load i32, i32* %"iVar1"
  %".153" = icmp ne i32 %".152", 0
  br i1 %".153", label %"1", label %"16"
"16":
  store i32 0, i32* %"register0x00000000"
  %".156" = load i32, i32* %"register0x00000000"
  ret i32 %".156"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_do_sudoku"() 

define i32 @"sym.read_board"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".7" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000000" = alloca i32
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  br label %"0"
"0":
  %".11" = load i32, i32* %".8"
  %".12" = load i32, i32* @"obj.cgc_stdin"
  %".13" = call i32 @"sym.cgc_fread"(i32 %".11", i32 90, i32 %".12")
  store i32 %".13", i32* %"iVar1"
  %".15" = load i32, i32* %"iVar1"
  %".16" = icmp eq i32 %".15", 90
  %".17" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".16", i1* %".17"
  %".19" = load i8, i8* %"register0x00000206"
  %".20" = trunc i8 %".19" to i1
  br i1 %".20", label %"1", label %"a"
"1":
  store i32 0, i32* %"var_ch"
  br label %"2"
"2":
  %".24" = load i32, i32* %"var_ch"
  %".25" = icmp slt i32 %".24", 90
  br i1 %".25", label %"3", label %"9"
"3":
  %".27" = load i32, i32* %"var_ch"
  %".28" = add i32 %".27", 1
  store i32 %".28", i32* %"register0x00000004"
  %".30" = load i32, i32* %"register0x00000004"
  %".31" = srem i32 %".30", 10
  store i32 %".31", i32* %"register0x00000008"
  %".33" = load i32, i32* %"register0x00000008"
  %".34" = icmp eq i32 %".33", 0
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"6", label %"4"
"4":
  %".40" = load i32, i32* %".8"
  %".41" = load i32, i32* %"var_ch"
  %".42" = add i32 %".40", %".41"
  %".43" = trunc i32 %".42" to i8
  %".44" = sext i8 %".43" to i32
  store i32 %".44", i32* %"register0x00000004"
  %".46" = load i32, i32* %"register0x00000004"
  %".47" = call i32 @"sym.cgc_strchr"(i32 134554593, i32 %".46")
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp eq i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"8", label %"5"
"5":
  store i32 -1, i32* %"register0x00000000"
  %".57" = load i32, i32* %"register0x00000000"
  ret i32 %".57"
"6":
  %".59" = load i32, i32* %".8"
  %".60" = load i32, i32* %"var_ch"
  %".61" = add i32 %".59", %".60"
  %".62" = zext i8 10 to i32
  %".63" = icmp ne i32 %".61", %".62"
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"8", label %"7"
"7":
  store i32 -1, i32* %"register0x00000000"
  %".70" = load i32, i32* %"register0x00000000"
  ret i32 %".70"
"8":
  %".72" = load i32, i32* %"var_ch"
  %".73" = add i32 %".72", 1
  store i32 %".73", i32* %"var_ch"
  br label %"2"
"9":
  store i32 0, i32* %"var_bp_8h"
  br label %"b"
a:
  store i32 -1, i32* %"var_bp_8h"
  br label %"b"
b:
  %".80" = load i32, i32* %"var_bp_8h"
  store i32 %".80", i32* %"register0x00000000"
  %".82" = load i32, i32* %"register0x00000000"
  ret i32 %".82"
}

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_validate_board"(i32 %"arg_8h") 

declare void @"sym.cgc_get_super_square"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_get_square"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_count_duplicates"(i32 %"arg_8h") 

declare i32 @"sym.cgc_solve_board"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_safari_zone"() 

declare i8 @"sym.cgc_get_flag_byte"(i32 %"arg_8h") 

declare i8 @"sym.cgc_check_cookie"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memchr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_do_lesson_in_futility"() 

declare void @"sym.cgc_defcon_2"() 

declare void @"sym.cgc_defcon_1"() 

declare void @"sym.cgc_init_cookie"() 

declare i32 @"sym.cgc_do_chess"() 

declare i32 @"sym.cgc_read_board"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_move"(i32 %"arg_8h") 

declare void @"sym.cgc_get_coords"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strpbrk"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strtou"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fromdigit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fread"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_allocate_buffer"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_do_hugman"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_fgetc"(i32 %"arg_8h") 

declare i8 @"sym.cgc_get_flag_byte_unsafe"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf_core"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_itostr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_utostr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_todigit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_toupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memmove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_dtostr"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_pow"() 

declare i8 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i64 @"sym.cgc_mantissa"(i32 %"arg_8h", i32 %"arg_ch") 

declare i64 @"sym.cgc_exponent"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i80 @"sym.cgc_abs"(i32 %"arg_8h", i32 %"arg_ch") 

declare i64 @"sym.cgc_sign"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fread_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_chance_of_survival"() 

declare i32 @"sym.cgc_do_gallon_challenge"() 

declare void @"_reloc.memset"() 

declare void @"_reloc.memcpy"() 
