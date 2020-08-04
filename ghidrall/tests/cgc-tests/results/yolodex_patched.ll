; ModuleID = "yolodex_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_head" = global i32 0
@"obj.cgc_cookie" = global i32 0
@"obj.g_memManager" = global i32 0
@"str.Welcome_to_the_yolodex." = external global i64
define void @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBX" = alloca i32
  %"iVar1" = alloca i32
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967264
  %"var_10h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967260
  %"var_ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967256
  %"var_8h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967252
  %"var_4h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"uStack24" = bitcast i8* %".21" to i32*
  %"register0x00000206" = alloca i8
  %".22" = alloca i32
  %".23" = alloca i32
  %".24" = alloca i32
  %".25" = alloca i32
  %".26" = alloca i32
  %".27" = alloca i32
  %".28" = alloca i32
  %".29" = alloca i32
  %".30" = alloca i32
  %".31" = alloca i32
  %".32" = alloca i32
  %".33" = alloca i32
  %".34" = alloca i32
  %".35" = alloca i8**
  %".36" = alloca i32**
  store i32 %"placeholder_0", i32* %".22"
  store i32 %"placeholder_1", i32* %".23"
  store i32 %"placeholder_2", i32* %".24"
  store i32 %"placeholder_3", i32* %".25"
  store i32 %"placeholder_4", i32* %".26"
  store i32 %"placeholder_5", i32* %".27"
  store i32 %"placeholder_6", i32* %".28"
  store i32 %"placeholder_7", i32* %".29"
  store i32 %"placeholder_8", i32* %".30"
  store i32 %"placeholder_9", i32* %".31"
  store i32 %"placeholder_10", i32* %".32"
  store i32 %"placeholder_11", i32* %".33"
  store i32 %"placeholder_12", i32* %".34"
  store i8** %"argv", i8*** %".35"
  store i32** %"envp", i32*** %".36"
  br label %"0"
"0":
  call void @"sym.cgc_initCookies"()
  call void @"sym.cgc_puts"(i32 134531320)
  call void @"sym.cgc_initYolodex"()
  call void @"sym.cgc_inputLoop"()
  call void @"sym.imp.cgc__terminate"()
  call void @"sym.__x86.get_pc_thunk.bx"()
  call void @"sym._init"()
  store i32 0, i32* %"iVar1"
  br label %"1"
"1":
  %".62" = load i32, i32* %"unaff_EBX"
  %".63" = add i32 %".62", 6003
  %".64" = load i32, i32* %"iVar1"
  %".65" = mul i32 %".64", 4
  %".66" = add i32 %".63", %".65"
  call void @"unique0x00000f30"()
  %".68" = load i32, i32* %"iVar1"
  %".69" = add i32 %".68", 1
  store i32 %".69", i32* %"iVar1"
  %".71" = load i32, i32* %"iVar1"
  %".72" = icmp ne i32 %".71", 1
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"1", label %"2"
"2":
  ret void
}

declare void @"sym.cgc_inputLoop"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recvUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

define void @"sym._init"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBX" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  call void @"sym.__x86.get_pc_thunk.bx"()
  %".4" = load i32, i32* %"unaff_EBX"
  %".5" = add i32 %".4", 19911
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x08048e10"()
  br label %"2"
"2":
  ret void
}

declare void @"sym.cgc_initYolodex"() 

declare i32 @"sym.cgc_createContact"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_validateName"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_validatePhone"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_insert"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_initCookies"() 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.cgc_put"(i32 %"arg_8h") 

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 

declare void @"func_0x08048e10"() 
