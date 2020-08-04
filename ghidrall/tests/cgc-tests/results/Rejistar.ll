; ModuleID = "Rejistar"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_strtok.ptr" = global i32 0
@"obj.std_input" = global i32 0
@"obj.largeChunks" = global i32 0
@"obj.digits" = global i32 0
@"obj.attributes" = global i32 0
@"obj.issuer" = global i32 0
@"obj.CRL" = global i32 0
@"obj.tokenStore" = global i32 0
@"obj.private_key_1" = external global i64
@"str.Invalid_Message" = external global i64
@"str.quit" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_ch" = alloca i32
  %"arg_10h" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997888
  %"var_83ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997892
  %"var_838h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997896
  %"var_834h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997900
  %"var_830h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997904
  %"var_82ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997908
  %"var_828h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997912
  %"var_824h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997916
  %"var_820h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997920
  %"var_81ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997924
  %"var_818h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".15" to i32*
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
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  store i32 0, i32* %"var_81ch"
  call void @"sym.imp.cgc_random"()
  %".25" = load i32, i32* %"iVar1"
  %".26" = icmp ne i32 %".25", 0
  %".27" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".26", i1* %".27"
  %".29" = load i8, i8* %"register0x00000206"
  %".30" = trunc i8 %".29" to i1
  br i1 %".30", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997920
  %".35" = ptrtoint i8* %".34" to i32
  call void @"sym.cgc_initServices"(i32 %".35")
  br label %"3"
"3":
  %".38" = call i32 @"sym.cgc_getMessage"()
  %".39" = inttoptr i32 %".38" to i32*
  %".40" = bitcast i32* %"arg_ch" to i32**
  store i32* %".39", i32** %".40"
  %".42" = load i32, i32* %"arg_ch"
  %".43" = icmp eq i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"4", label %"5"
"4":
  call void @"sym.cgc_sendErrorResponse"(i32 134535246)
  store i32 0, i32* %"register0x00000000"
  %".51" = load i32, i32* %"register0x00000000"
  ret i32 %".51"
"5":
  %".53" = load i32, i32* %"arg_ch"
  store i32 %".53", i32* %"iVar1"
  %".55" = call i32 @"sym.cgc_strlen"(i32 134535262)
  store i32 %".55", i32* %"arg_10h"
  %".57" = load i32, i32* %"iVar1"
  %".58" = load i32, i32* %"arg_10h"
  %".59" = call i32 @"sym.cgc_strncmp"(i32 %".57", i32 134535262, i32 %".58")
  store i32 %".59", i32* %"iVar1"
  %".61" = load i32, i32* %"iVar1"
  %".62" = icmp eq i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"6", label %"9"
"6":
  %".68" = call i32 @"sym.cgc_strlen"(i32 134535141)
  store i32 %".68", i32* %"uVar2"
  %".70" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".71" = load i32, i32* %"uVar2"
  call void @"sym.imp.cgc_transmit"()
  %".73" = load i32, i32* %"iVar1"
  %".74" = icmp eq i32 %".73", 0
  %".75" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000206"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"8", label %"7"
"7":
  call void @"sym.imp.cgc__terminate"()
  store i32 0, i32* %"register0x00000000"
  %".82" = load i32, i32* %"register0x00000000"
  ret i32 %".82"
"8":
  store i32 0, i32* %"register0x00000000"
  %".85" = load i32, i32* %"register0x00000000"
  ret i32 %".85"
"9":
  %".87" = load i32, i32* %"arg_ch"
  %".88" = load i32, i32* %"var_81ch"
  call void @"sym.cgc_runService"(i32 %".88", i32 %".87")
  %".90" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_freeMessage"(i32 %".90")
  br label %"3"
}

declare void @"sym.imp.cgc_random"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_getMessage"() 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcspn"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strspn"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_until_delim_or_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_get_char"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fill_buffer"() 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_getNextFreeChunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_initRun"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getMSB"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_clearRun"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isClear"(i32 %"arg_8h") 

declare void @"sym.cgc_freeMessage"(i32 %"arg_8h") 

declare void @"sym.cgc_sendErrorResponse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_sprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_vsprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_b16_2w"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_b10_uint"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_runService"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_authenticate"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_checkCertUse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isCertCommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parseToken"(i32 %"arg_8h") 

declare void @"sym.cgc_getStringAttribute"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_initializeAttributes"(i32 %"arg_8h") 

declare void @"sym.cgc_clearAttributes"() 

declare void @"sym.cgc_getIntegerAttribute"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parseCertificate"(i32 %"arg_8h") 

declare i32 @"sym.cgc_checkTokenUse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_validateCert"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_signCert"(i32 %"arg_8h") 

declare i32 @"sym.cgc_checkCRLs"(i32 %"arg_8h") 

declare i32 @"sym.cgc_validateToken"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_removeToken"(i32 %"arg_8h") 

declare i32 @"sym.cgc_findToken"(i32 %"arg_8h") 

declare void @"sym.cgc_initServices"(i32 %"arg_8h") 

declare void @"sym.cgc_addService"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 
