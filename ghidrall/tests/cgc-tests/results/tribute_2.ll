; ModuleID = "tribute_2"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.__cgc_errno" = global i32 0
@"obj.cgc_stdout" = global i32 0
define void @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"unaff_EBX" = alloca i32
  %"iVar2" = alloca i32
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967260
  %"var_ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967256
  %"var_8h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967252
  %"var_4h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"uStack24" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"uStack20" = bitcast i8* %".21" to i32*
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
  %".53" = call i32 @"sym.cgc_parse_instructions"()
  store i32 %".53", i32* %"uVar1"
  %".55" = load i32, i32* %"uVar1"
  call void @"sym.imp.cgc__terminate"()
  call void @"sym.__x86.get_pc_thunk.bx"()
  call void @"sym._init"()
  store i32 0, i32* %"iVar2"
  br label %"1"
"1":
  %".61" = load i32, i32* %"unaff_EBX"
  %".62" = add i32 %".61", 5495
  %".63" = load i32, i32* %"iVar2"
  %".64" = mul i32 %".63", 4
  %".65" = add i32 %".62", %".64"
  call void @"unique0x00000f30"()
  %".67" = load i32, i32* %"iVar2"
  %".68" = add i32 %".67", 1
  store i32 %".68", i32* %"iVar2"
  %".70" = load i32, i32* %"iVar2"
  %".71" = icmp ne i32 %".70", 1
  %".72" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000206"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"1", label %"2"
"2":
  ret void
}

declare void @"sym.imp.cgc__terminate"() 

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
  %".5" = add i32 %".4", 23167
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x08048c20"()
  br label %"2"
"2":
  ret void
}

declare i32 @"sym.cgc_parse_inst"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strsep"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_op"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_valueOf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_toupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isalpha"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_instructions"() 

declare i32 @"sym.cgc_write_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_vdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_printf_core"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_read_until_delim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare void @"unique0x00000f30"() 

declare void @"func_0x08048c20"() 
