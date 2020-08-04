; ModuleID = "SFTSCBSISS"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_pVARS" = global i32 0
@"obj.g_memManager" = global i32 0
@"str.InitVARS_failure" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".9" to i32*
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
  %".16" = call i32 @"sym.cgc_InitVARS"()
  store i32 %".16", i32* %"iVar1"
  %".18" = load i32, i32* %"iVar1"
  %".19" = icmp eq i32 %".18", 0
  %".20" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000206"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"2", label %"1"
"1":
  call void @"sym.cgc_puts"(i32 134530626)
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".28" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %".29" = ptrtoint i8* %".28" to i32
  %".30" = call i32 @"sym.cgc_ReceivePacket"(i32 %".29")
  store i32 %".30", i32* %"iVar1"
  %".32" = load i32, i32* %"iVar1"
  %".33" = icmp ne i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"4", label %"3"
"3":
  %".39" = call i32 @"sym.cgc_DestroyVARS"()
  store i32 0, i32* %"register0x00000000"
  %".41" = load i32, i32* %"register0x00000000"
  ret i32 %".41"
"4":
  %".43" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %".44" = ptrtoint i8* %".43" to i32
  %".45" = call i32 @"sym.cgc_HandlePacket"(i32 %".44")
  br label %"2"
}

declare i32 @"sym.cgc_DestroyVARS"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_HandlePacket"(i32 %"arg_8h") 

declare i32 @"sym.cgc_SendError"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_write"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_HandleReadRequest"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_SearchVARS"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_SendResponse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_HandleWriteRequest"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_UpdateVARSObject"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_CreateVARSObject"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_InsertVARSObject"(i32 %"arg_8h") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_InitVARS"() 

declare i32 @"sym.cgc_ReceivePacket"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 
