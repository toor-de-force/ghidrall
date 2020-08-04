; ModuleID = "REMATCH_3--Address_Resolution_Service--SQL_Slammer"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.serverList" = global i32 0
@"obj.adminPortOffset" = global i32 0
@"obj.cgc_lookaside" = global i32 0
@"obj.z" = global i32 0
@"obj.x" = global i32 0
@"obj.w" = global i32 0
@"obj.y" = global i32 0
@"obj.cgc_bytesInBuffer" = global i32 0
@"obj.receiveBuffer" = global i8 0
@"obj.pData" = global i32 0
@"str.Invalid_Query" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_8h" = alloca i32
  %"uVar2" = alloca i32
  %"uVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998696
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998708
  %"var_508h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998712
  %"var_504h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998716
  %"var_500h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998808
  %"var_4a4h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998812
  %"var_4a0h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998816
  %"var_49ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998820
  %"var_498h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998824
  %"var_494h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998828
  %"var_490h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998944
  %"var_41ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998948
  %"var_418h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %"var_414h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  %"var_410h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".18" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %".19" = alloca i8**
  %".20" = alloca i32**
  store i8** %"argv", i8*** %".19"
  store i32** %"envp", i32*** %".20"
  br label %"0"
"0":
  call void @"sym.cgc_InitializeRandomness"()
  call void @"sym.cgc_InitializeSimulation"()
  br label %"1"
"1":
  %".27" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  store i32 1024, i32* %"arg_ch"
  %".29" = ptrtoint i8* %".27" to i32
  %".30" = call i32 @"sym.cgc_ReceiveUntil"(i32 %".29", i32 1024, i32 10)
  store i32 %".30", i32* %"iVar1"
  %".32" = load i32, i32* %"iVar1"
  %".33" = icmp slt i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000207"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"2", label %"3"
"2":
  store i32 0, i32* %"register0x00000000"
  %".40" = load i32, i32* %"register0x00000000"
  ret i32 %".40"
"3":
  %".42" = load i32, i32* %"iVar1"
  %".43" = icmp eq i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"1", label %"4"
"4":
  %".49" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  %".50" = ptrtoint i8* %".49" to i32
  %".51" = call i32 @"sym.cgc_ParseQuery"(i32 %".50")
  %".52" = inttoptr i32 %".51" to i32*
  %".53" = bitcast i32* %"arg_8h" to i32**
  store i32* %".52", i32** %".53"
  %".55" = call i32 @"sym.cgc_GenerateBlankResponse"()
  store i32 %".55", i32* %"iVar1"
  %".57" = load i32, i32* %"arg_8h"
  %".58" = trunc i32 %".57" to i8
  %".59" = zext i8 %".58" to i32
  store i32 %".59", i32* %"register0x00000000"
  %".61" = load i32, i32* %"register0x00000000"
  %".62" = sub i32 %".61", 1
  store i32 %".62", i32* %"uVar2"
  %".64" = load i32, i32* %"uVar2"
  %".65" = icmp ult i32 %".64", 3
  %".66" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".65", i1* %".66"
  %".68" = load i32, i32* %"register0x00000000"
  %".69" = icmp eq i32 %".68", 4
  %".70" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000200"
  %".73" = load i8, i8* %"register0x00000200"
  %".74" = xor i8 %".72", %".73"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"5", label %"6"
"5":
  %".77" = load i32, i32* %"uVar2"
  %".78" = mul i32 %".77", 4
  %".79" = add i32 %".78", 134537984
  %".80" = call i32 @"unique0x00000f30"()
  %".81" = load i32, i32* %"uVar3"
  ret i32 %".81"
"6":
  %".83" = load i32, i32* %"arg_ch"
  %".84" = call i32 @"sym.cgc_printf"(i32 134538086, i32 %".83")
  call void @"sym.imp.cgc__terminate"()
  %".86" = load i32, i32* %"iVar1"
  %".87" = call i32 @"sym.cgc_SendResponse"(i32 %".86")
  %".88" = load i32, i32* %"arg_8h"
  %".89" = call i32 @"sym.cgc_DestroyQuery"(i32 %".88")
  %".90" = load i32, i32* %"iVar1"
  %".91" = call i32 @"sym.cgc_DestroyResponse"(i32 %".90")
  br label %"1"
}

declare void @"sym.cgc_InitializeSimulation"() 

declare i32 @"sym.cgc_CreateServer"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_GenerateRandomString"(i32 %"arg_8h") 

declare i32 @"sym.cgc_rand"() 

declare i32 @"sym.cgc_random_in_range"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_AddInstanceToServer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_AddToList"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_NewList"(i32 %"arg_8h") 

declare void @"sym.cgc_GenerateRandomNumber"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_CreateInstance"(i32 %"arg_8h") 

declare i32 @"sym.cgc_GetNextAdminPort"() 

declare i32 @"sym.cgc_ParseQuery"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_DestroyQuery"(i32 %"arg_8h") 

declare i32 @"sym.cgc_SendResponse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_InitializeRandomness"() 

declare void @"sym.cgc_srand"() 

declare i32 @"sym.cgc_ReceiveUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_GenerateBlankResponse"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_DestroyResponse"(i32 %"arg_8h") 

declare i32 @"unique0x00000f30"() 
