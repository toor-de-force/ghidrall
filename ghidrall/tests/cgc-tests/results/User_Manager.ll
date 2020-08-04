; ModuleID = "User_Manager"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000000" = alloca i32
  %".8" = alloca i8**
  %".9" = alloca i32**
  store i8** %"argv", i8*** %".8"
  store i32** %"envp", i32*** %".9"
  br label %"0"
"0":
  %".13" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".14" = ptrtoint i8* %".13" to i32
  call void @"method.CUserManager.CUserManager"(i32 %".14")
  %".16" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".17" = ptrtoint i8* %".16" to i32
  call void @"method.CUserManager.Run"(i32 %".17")
  %".19" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %".20" = ptrtoint i8* %".19" to i32
  call void @"method.CUserManager._CUserManager"(i32 %".20")
  store i32 0, i32* %"register0x00000000"
  %".23" = load i32, i32* %"register0x00000000"
  ret i32 %".23"
}

define void @"method.CUserManager.Run"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"in_stack_ffffffb8" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".4" to i32*
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
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".17" = alloca i32
  store i32 %"arg_8h", i32* %".17"
  br label %"0"
"0":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".21" = ptrtoint i8* %".20" to i32
  call void @"method.String.String"(i32 %".21")
  %".23" = load i32, i32* %"in_stack_ffffffb8"
  %".24" = call i32 @"sym.cgc_printf"(i32 134543906, i32 %".23")
  br label %"1"
"1":
  %".26" = load i32, i32* %"in_stack_ffffffb8"
  %".27" = call i32 @"sym.cgc_printf"(i32 134543929, i32 %".26")
  %".28" = load i32, i32* %"in_stack_ffffffb8"
  %".29" = call i32 @"sym.cgc_printf"(i32 134543945, i32 %".28")
  %".30" = load i32, i32* %"in_stack_ffffffb8"
  %".31" = call i32 @"sym.cgc_printf"(i32 134543960, i32 %".30")
  %".32" = load i32, i32* %"in_stack_ffffffb8"
  %".33" = call i32 @"sym.cgc_printf"(i32 134543976, i32 %".32")
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".35" = ptrtoint i8* %".34" to i32
  call void @"sym.ReadLine_String"(i32 %".35")
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".39" = bitcast i32* %"in_stack_ffffffb8" to i8**
  store i8* %".38", i8** %".39"
  %".41" = ptrtoint i8* %".37" to i32
  %".42" = load i32, i32* %"in_stack_ffffffb8"
  %".43" = call i8 @"method.String.ToInteger_int"(i32 %".41", i32 %".42")
  %".44" = bitcast i32* %"uVar1" to i8*
  store i8 %".43", i8* %".44"
  %".46" = load i32, i32* %"uVar1"
  %".47" = and i32 %".46", 1
  %".48" = icmp eq i32 %".47", 0
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"2", label %"3"
"2":
  store i32 -1, i32* %"var_10h"
  br label %"3"
"3":
  %".56" = load i32, i32* %"var_10h"
  %".57" = sub i32 %".56", 1
  store i32 %".57", i32* %"register0x00000000"
  %".59" = load i32, i32* %"register0x00000000"
  %".60" = icmp ult i32 %".59", 3
  %".61" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i32, i32* %"var_10h"
  %".64" = icmp eq i32 %".63", 4
  %".65" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".64", i1* %".65"
  %".67" = load i8, i8* %"register0x00000200"
  %".68" = load i8, i8* %"register0x00000200"
  %".69" = xor i8 %".67", %".68"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"4", label %"5"
"4":
  %".72" = load i32, i32* %"register0x00000000"
  %".73" = mul i32 %".72", 4
  %".74" = add i32 %".73", 134543840
  call void @"unique0x00000f30"()
  ret void
"5":
  %".77" = load i32, i32* %"in_stack_ffffffb8"
  %".78" = call i32 @"sym.cgc_printf"(i32 134543985, i32 %".77")
  br label %"1"
}

define void @"sym.ReadLine_String"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %"var_20ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %"var_208h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999483
  %"var_201h" = bitcast i8* %".6" to i32*
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  %".10" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999483
  %".11" = ptrtoint i8* %".10" to i32
  %".12" = call i32 @"sym.cgc_getline"(i32 %".11", i32 512)
  %".13" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999483
  %".14" = ptrtoint i8* %".13" to i32
  %".15" = load i32, i32* %".7"
  call void @"method.String.SetString_char_const"(i32 %".15", i32 %".14")
  ret void
}

define void @"method.String.SetString_char_const"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_10h" = alloca i32
  %"uVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".10" = alloca i32
  %".11" = alloca i32
  store i32 %"arg_8h", i32* %".10"
  store i32 %"arg_ch", i32* %".11"
  br label %"0"
"0":
  %".15" = load i32, i32* %".10"
  %".16" = add i32 %".15", 4
  %".17" = icmp ne i32 %".16", 0
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"1", label %"3"
"1":
  %".23" = load i32, i32* %".10"
  %".24" = add i32 %".23", 4
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"3", label %"2"
"2":
  call void @"sym.imp.operator_delete___void"()
  br label %"3"
"3":
  %".33" = load i32, i32* %".11"
  %".34" = call i32 @"sym.cgc_strlen"(i32 %".33")
  store i32 %".34", i32* %"arg_10h"
  %".36" = load i32, i32* %"arg_10h"
  %".37" = add i32 %".36", 1
  store i32 %".37", i32* %"register0x00000000"
  %".39" = load i32, i32* %"register0x00000000"
  call void @"sym.imp.operator_new___unsigned_int"()
  %".41" = load i32, i32* %".10"
  %".42" = add i32 %".41", 4
  %".43" = load i32, i32* %"uVar1"
  %".44" = load i32, i32* %".10"
  %".45" = add i32 %".44", 4
  %".46" = load i32, i32* %".11"
  %".47" = load i32, i32* %"arg_10h"
  %".48" = call i32 @"sym.cgc_memcpy"(i32 %".45", i32 %".46", i32 %".47")
  %".49" = load i32, i32* %".10"
  %".50" = add i32 %".49", 4
  %".51" = load i32, i32* %"arg_10h"
  %".52" = add i32 %".50", %".51"
  %".53" = load i32, i32* %".10"
  %".54" = load i32, i32* %"arg_10h"
  ret void
}

define void @"sym.imp.operator_delete___void"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.operator_delete___void"()
  ret void
}

define void @"sym.imp.operator_new___unsigned_int"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.operator_new___unsigned_int"()
  ret void
}

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getline"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_flush_input"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

define void @"method.String.String"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = load i32, i32* %".4"
  %".9" = add i32 %".8", 4
  ret void
}

define i8 @"method.String.ToInteger_int"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"bVar2" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999995
  %"var_1h" = bitcast i8* %".7" to i32*
  %"register0x00000000" = alloca i8
  %".8" = alloca i32
  %".9" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  store i32 %"arg_ch", i32* %".9"
  br label %"0"
"0":
  %".13" = load i32, i32* %".8"
  %".14" = add i32 %".13", 4
  %".15" = icmp ne i32 %".14", 0
  %".16" = bitcast i8* %"bVar2" to i1*
  store i1 %".15", i1* %".16"
  %".18" = load i8, i8* %"bVar2"
  %".19" = trunc i8 %".18" to i1
  br i1 %".19", label %"2", label %"1"
"1":
  %".21" = load i32, i32* %".8"
  %".22" = add i32 %".21", 4
  %".23" = call i32 @"sym.cgc_atoi"(i32 %".22")
  store i32 %".23", i32* %"uVar1"
  %".25" = load i32, i32* %".9"
  %".26" = load i32, i32* %"uVar1"
  br label %"2"
"2":
  %".28" = load i8, i8* %"bVar2"
  store i8 %".28", i8* %"register0x00000000"
  %".30" = load i8, i8* %"register0x00000000"
  ret i8 %".30"
}

define void @"method.CUserManager._CUserManager"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %"register0x00000008" = alloca i32
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  %".8" = load i32, i32* %".5"
  %".9" = add i32 %".8", 8
  store i32 %".9", i32* %"register0x00000008"
  %".11" = load i32, i32* %"register0x00000008"
  call void @"method.CUserDatabase._CUserDatabase"(i32 %".11")
  %".13" = load i32, i32* %".5"
  call void @"method.String._String"(i32 %".13")
  ret void
}

define void @"method.CUserDatabase._CUserDatabase"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h_00" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  store i32 0, i32* %"var_4h"
  br label %"1"
"1":
  %".12" = load i32, i32* %"var_4h"
  %".13" = icmp ult i32 %".12", 64
  %".14" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".13", i1* %".14"
  %".16" = load i8, i8* %"register0x00000200"
  %".17" = trunc i8 %".16" to i1
  br i1 %".17", label %"2", label %"6"
"2":
  %".19" = load i32, i32* %"var_4h"
  %".20" = mul i32 %".19", 4
  %".21" = load i32, i32* %".7"
  %".22" = add i32 %".21", %".20"
  %".23" = icmp ne i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"3", label %"5"
"3":
  %".29" = load i32, i32* %"var_4h"
  %".30" = mul i32 %".29", 4
  %".31" = load i32, i32* %".7"
  %".32" = add i32 %".31", %".30"
  store i32 %".32", i32* %"arg_8h_00"
  %".34" = load i32, i32* %"arg_8h_00"
  %".35" = icmp ne i32 %".34", 0
  %".36" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".35", i1* %".36"
  %".38" = load i8, i8* %"register0x00000206"
  %".39" = trunc i8 %".38" to i1
  br i1 %".39", label %"5", label %"4"
"4":
  %".41" = load i32, i32* %"arg_8h_00"
  call void @"method.CUserEntry._CUserEntry"(i32 %".41")
  %".43" = load i32, i32* %"arg_8h_00"
  call void @"sym.imp.operator_delete_void"()
  br label %"5"
"5":
  %".46" = load i32, i32* %"var_4h"
  %".47" = add i32 %".46", 1
  store i32 %".47", i32* %"var_4h"
  br label %"1"
"6":
  ret void
}

define void @"sym.imp.operator_delete_void"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.operator_delete_void"()
  ret void
}

define void @"method.CUserEntry._CUserEntry"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000000" = alloca i32
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  %".8" = load i32, i32* %".5"
  %".9" = add i32 %".8", 20
  store i32 %".9", i32* %"register0x00000008"
  %".11" = load i32, i32* %"register0x00000008"
  call void @"method.CDoubleQueue._CDoubleQueue"(i32 %".11")
  %".13" = load i32, i32* %".5"
  %".14" = add i32 %".13", 8
  store i32 %".14", i32* %"register0x00000000"
  %".16" = load i32, i32* %"register0x00000000"
  call void @"method.String._String"(i32 %".16")
  %".18" = load i32, i32* %".5"
  call void @"method.String._String"(i32 %".18")
  ret void
}

define void @"method.CDoubleQueue._CDoubleQueue"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  call void @"method.CDoubleItemList._CDoubleItemList"(i32 %".7")
  ret void
}

define void @"method.CDoubleItemList._CDoubleItemList"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  call void @"method.CDoubleItemList.DeleteAll"(i32 %".7")
  ret void
}

define void @"method.CDoubleItemList.DeleteAll"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000206" = alloca i8
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  %".10" = load i32, i32* %".7"
  store i32 %".10", i32* %"iVar1"
  br label %"1"
"1":
  %".13" = load i32, i32* %"iVar1"
  store i32 %".13", i32* %"var_8h"
  %".15" = load i32, i32* %"var_8h"
  %".16" = icmp ne i32 %".15", 0
  %".17" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".16", i1* %".17"
  %".19" = load i8, i8* %"register0x00000206"
  %".20" = trunc i8 %".19" to i1
  br i1 %".20", label %"2", label %"4"
"2":
  %".22" = load i32, i32* %"var_8h"
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"var_8h"
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"1", label %"3"
"3":
  %".31" = load i32, i32* %"var_8h"
  call void @"method.CDoubleItemLink._CDoubleItemLink"(i32 %".31")
  %".33" = load i32, i32* %"var_8h"
  call void @"sym.imp.operator_delete_void"()
  br label %"1"
"4":
  ret void
}

define void @"method.CDoubleItemLink._CDoubleItemLink"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  call void @"method.CDoubleItemLink.Unlink"(i32 %".7")
  ret void
}

define void @"method.CDoubleItemLink.Unlink"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  %".10" = add i32 %".9", 8
  %".11" = icmp ne i32 %".10", 0
  %".12" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".11", i1* %".12"
  %".14" = load i8, i8* %"register0x00000206"
  %".15" = trunc i8 %".14" to i1
  br i1 %".15", label %"1", label %"2"
"1":
  %".17" = load i32, i32* %".6"
  %".18" = add i32 %".17", 8
  %".19" = load i32, i32* %".6"
  %".20" = call i32 @"method.CDoubleItemList.RemoveItem_CDoubleItemLink"(i32 %".18", i32 %".19")
  br label %"2"
"2":
  ret void
}

define i32 @"method.CDoubleItemList.RemoveItem_CDoubleItemLink"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".8" = alloca i32
  %".9" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  store i32 %"arg_ch", i32* %".9"
  br label %"0"
"0":
  %".13" = load i32, i32* %".9"
  %".14" = add i32 %".13", 8
  %".15" = load i32, i32* %".8"
  %".16" = icmp eq i32 %".14", %".15"
  %".17" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".16", i1* %".17"
  %".19" = load i8, i8* %"register0x00000206"
  %".20" = trunc i8 %".19" to i1
  br i1 %".20", label %"1", label %"a"
"1":
  %".22" = load i32, i32* %".9"
  %".23" = icmp ne i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"2", label %"3"
"2":
  %".29" = load i32, i32* %".9"
  %".30" = add i32 %".29", 4
  %".31" = load i32, i32* %".9"
  %".32" = add i32 %".31", 4
  br label %"3"
"3":
  %".34" = load i32, i32* %".9"
  %".35" = add i32 %".34", 4
  %".36" = icmp ne i32 %".35", 0
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"4", label %"5"
"4":
  %".42" = load i32, i32* %".9"
  %".43" = load i32, i32* %".9"
  %".44" = add i32 %".43", 4
  br label %"5"
"5":
  %".46" = load i32, i32* %".8"
  %".47" = add i32 %".46", 4
  %".48" = load i32, i32* %".9"
  %".49" = icmp eq i32 %".48", %".47"
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"6", label %"7"
"6":
  %".55" = load i32, i32* %".9"
  %".56" = add i32 %".55", 4
  %".57" = load i32, i32* %".8"
  %".58" = add i32 %".57", 4
  br label %"7"
"7":
  %".60" = load i32, i32* %".8"
  %".61" = load i32, i32* %".9"
  %".62" = icmp eq i32 %".61", %".60"
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"8", label %"9"
"8":
  %".68" = load i32, i32* %".9"
  %".69" = load i32, i32* %".8"
  br label %"9"
"9":
  %".71" = load i32, i32* %".9"
  call void @"method.CDoubleItemLink.ClearList"(i32 %".71")
  %".73" = load i32, i32* %".9"
  store i32 %".73", i32* %"var_8h"
  br label %"b"
a:
  store i32 0, i32* %"var_8h"
  br label %"b"
b:
  %".78" = load i32, i32* %"var_8h"
  store i32 %".78", i32* %"register0x00000000"
  %".80" = load i32, i32* %"register0x00000000"
  ret i32 %".80"
}

define void @"method.CDoubleItemLink.ClearList"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 8
  ret void
}

define void @"method.String._String"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  %".10" = add i32 %".9", 4
  %".11" = icmp ne i32 %".10", 0
  %".12" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".11", i1* %".12"
  %".14" = load i8, i8* %"register0x00000206"
  %".15" = trunc i8 %".14" to i1
  br i1 %".15", label %"1", label %"3"
"1":
  %".17" = load i32, i32* %".6"
  %".18" = add i32 %".17", 4
  %".19" = icmp ne i32 %".18", 0
  %".20" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000206"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"3", label %"2"
"2":
  call void @"sym.imp.operator_delete___void"()
  br label %"3"
"3":
  ret void
}

define void @"method.CUserManager.CUserManager"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %"register0x00000000" = alloca i32
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  call void @"method.String.String"(i32 %".9")
  %".11" = load i32, i32* %".6"
  %".12" = add i32 %".11", 8
  store i32 %".12", i32* %"register0x00000000"
  %".14" = load i32, i32* %"register0x00000000"
  call void @"method.CUserDatabase.CUserDatabase"(i32 %".14")
  %".16" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".17" = ptrtoint i8* %".16" to i32
  call void @"method.String.String_char_const"(i32 %".17", i32 134543896)
  %".19" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".20" = ptrtoint i8* %".19" to i32
  %".21" = load i32, i32* %".6"
  call void @"method.String.operator__String_const"(i32 %".21", i32 %".20")
  %".23" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".24" = ptrtoint i8* %".23" to i32
  call void @"method.String._String"(i32 %".24")
  ret void
}

define void @"method.String.operator__String_const"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".10" = alloca i32
  %".11" = alloca i32
  store i32 %"arg_8h", i32* %".10"
  store i32 %"arg_ch", i32* %".11"
  br label %"0"
"0":
  %".15" = load i32, i32* %".10"
  %".16" = add i32 %".15", 4
  %".17" = icmp ne i32 %".16", 0
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"1", label %"3"
"1":
  %".23" = load i32, i32* %".10"
  %".24" = add i32 %".23", 4
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"3", label %"2"
"2":
  call void @"sym.imp.operator_delete___void"()
  br label %"3"
"3":
  %".33" = load i32, i32* %".11"
  store i32 %".33", i32* %"iVar1"
  %".35" = load i32, i32* %"iVar1"
  %".36" = add i32 %".35", 1
  store i32 %".36", i32* %"register0x00000000"
  %".38" = load i32, i32* %"register0x00000000"
  call void @"sym.imp.operator_new___unsigned_int"()
  %".40" = load i32, i32* %".10"
  %".41" = add i32 %".40", 4
  %".42" = load i32, i32* %"uVar2"
  %".43" = load i32, i32* %".10"
  %".44" = add i32 %".43", 4
  %".45" = load i32, i32* %".11"
  %".46" = add i32 %".45", 4
  %".47" = load i32, i32* %".11"
  %".48" = call i32 @"sym.cgc_memcpy"(i32 %".47", i32 %".47", i32 %".47")
  %".49" = load i32, i32* %".10"
  %".50" = add i32 %".49", 4
  %".51" = load i32, i32* %"iVar1"
  %".52" = add i32 %".50", %".51"
  %".53" = load i32, i32* %".11"
  %".54" = load i32, i32* %".10"
  ret void
}

define void @"method.String.String_char_const"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_10h" = alloca i32
  %"uVar1" = alloca i32
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
  %"register0x00000000" = alloca i32
  %".9" = alloca i32
  %".10" = alloca i32
  store i32 %"arg_8h", i32* %".9"
  store i32 %"arg_ch", i32* %".10"
  br label %"0"
"0":
  %".14" = load i32, i32* %".10"
  %".15" = call i32 @"sym.cgc_strlen"(i32 %".14")
  store i32 %".15", i32* %"arg_10h"
  %".17" = load i32, i32* %"arg_10h"
  %".18" = add i32 %".17", 1
  store i32 %".18", i32* %"register0x00000000"
  %".20" = load i32, i32* %"register0x00000000"
  call void @"sym.imp.operator_new___unsigned_int"()
  %".22" = load i32, i32* %".9"
  %".23" = add i32 %".22", 4
  %".24" = load i32, i32* %"uVar1"
  %".25" = load i32, i32* %".9"
  %".26" = add i32 %".25", 4
  %".27" = load i32, i32* %".10"
  %".28" = load i32, i32* %"arg_10h"
  %".29" = call i32 @"sym.cgc_memcpy"(i32 %".26", i32 %".27", i32 %".28")
  %".30" = load i32, i32* %".9"
  %".31" = add i32 %".30", 4
  %".32" = load i32, i32* %"arg_10h"
  %".33" = add i32 %".31", %".32"
  %".34" = load i32, i32* %".9"
  %".35" = load i32, i32* %"arg_10h"
  ret void
}

define void @"method.CUserDatabase.CUserDatabase"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000200" = alloca i8
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  store i32 0, i32* %"var_4h"
  br label %"1"
"1":
  %".11" = load i32, i32* %"var_4h"
  %".12" = icmp ult i32 %".11", 64
  %".13" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000200"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"3", label %"2"
"2":
  ret void
"3":
  %".19" = load i32, i32* %"var_4h"
  %".20" = mul i32 %".19", 4
  %".21" = load i32, i32* %".6"
  %".22" = add i32 %".21", %".20"
  %".23" = load i32, i32* %"var_4h"
  %".24" = add i32 %".23", 1
  store i32 %".24", i32* %"var_4h"
  br label %"1"
}

declare void @"unique0x00000f30"() 

declare void @"_reloc.operator_delete___void"() 

declare void @"_reloc.operator_new___unsigned_int"() 

declare void @"_reloc.operator_delete_void"() 
