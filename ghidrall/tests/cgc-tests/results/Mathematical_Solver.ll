; ModuleID = "Mathematical_Solver"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.game_info" = global i32 0
@"obj.position" = global i32 0
@"obj.game_stats" = external global i64
@"str.improper_input._exiting" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".23" = bitcast i32* %"arg_ch" to i8**
  store i8* %".22", i8** %".23"
  store i32 0, i32* %"var_50h"
  %".26" = load i32, i32* %"arg_ch"
  call void @"sym.imp.memcpy"()
  store i32 0, i32* @"obj.game_info"
  %".29" = call i32 @"sym.cgc_seed_prng"()
  store i32 %".29", i32* %"iVar1"
  %".31" = load i32, i32* %"iVar1"
  %".32" = icmp eq i32 %".31", 1
  %".33" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".32", i1* %".33"
  %".35" = load i8, i8* %"register0x00000206"
  %".36" = trunc i8 %".35" to i1
  br i1 %".36", label %"1", label %"4"
"1":
  %".38" = call i32 @"sym.cgc_print_menu"()
  store i32 %".38", i32* %"iVar1"
  %".40" = load i32, i32* %"iVar1"
  %".41" = sub i32 %".40", 1
  store i32 %".41", i32* %"register0x00000000"
  %".43" = load i32, i32* %"register0x00000000"
  %".44" = icmp ult i32 %".43", 6
  %".45" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i32, i32* %"iVar1"
  %".48" = icmp eq i32 %".47", 7
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000200"
  %".52" = load i8, i8* %"register0x00000200"
  %".53" = xor i8 %".51", %".52"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"3", label %"2"
"2":
  %".56" = load i32, i32* %"arg_ch"
  %".57" = call i32 @"sym.cgc_printf"(i32 134541930, i32 %".56")
  store i32 0, i32* %"var_10h"
  br label %"5"
"3":
  %".60" = load i32, i32* %"register0x00000000"
  %".61" = mul i32 %".60", 4
  %".62" = add i32 %".61", 134541280
  %".63" = call i32 @"unique0x00000f30"()
  %".64" = load i32, i32* %"iVar1"
  ret i32 %".64"
"4":
  store i32 1, i32* %"var_10h"
  br label %"5"
"5":
  %".68" = load i32, i32* %"var_10h"
  store i32 %".68", i32* %"register0x00000000"
  %".70" = load i32, i32* %"register0x00000000"
  ret i32 %".70"
}

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_seed_prng"() 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_sprng"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_print_menu"() 

declare i32 @"sym.cgc_get_user_answer"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"unique0x00000f30"() 

declare void @"_reloc.memcpy"() 
