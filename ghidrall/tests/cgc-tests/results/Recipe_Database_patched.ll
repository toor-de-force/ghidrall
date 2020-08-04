; ModuleID = "Recipe_Database_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999978
  %"var_12h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  br label %"1"
"1":
  call void @"sym.cgc_print_main_menu"()
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999978
  store i32 10, i32* %"arg_ch"
  %".24" = ptrtoint i8* %".22" to i32
  %".25" = call i32 @"sym.cgc_getline"(i32 %".24", i32 10)
  store i32 %".25", i32* %"iVar1"
  %".27" = load i32, i32* %"iVar1"
  %".28" = icmp eq i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"1", label %"2"
"2":
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999978
  %".35" = ptrtoint i8* %".34" to i32
  %".36" = call i32 @"sym.cgc_atoi"(i32 %".35")
  store i32 %".36", i32* %"iVar1"
  %".38" = load i32, i32* %"iVar1"
  %".39" = sub i32 %".38", 1
  store i32 %".39", i32* %"register0x00000000"
  %".41" = load i32, i32* %"register0x00000000"
  %".42" = icmp ult i32 %".41", 4
  %".43" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i32, i32* %"iVar1"
  %".46" = icmp eq i32 %".45", 5
  %".47" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i8, i8* %"register0x00000200"
  %".50" = load i8, i8* %"register0x00000200"
  %".51" = xor i8 %".49", %".50"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"3", label %"4"
"3":
  %".54" = load i32, i32* %"register0x00000000"
  %".55" = mul i32 %".54", 4
  %".56" = add i32 %".55", 134538460
  call void @"unique0x00000f30"()
  ret void
"4":
  %".59" = load i32, i32* %"arg_ch"
  %".60" = call i32 @"sym.cgc_printf"(i32 134538480, i32 %".59")
  br label %"1"
}

declare i32 @"sym.cgc_getline"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_flush_input"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_uint_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_print_main_menu"() 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 
