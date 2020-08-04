; ModuleID = "Facilities_Access_Control_System"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_NumUsers" = global i8 0
@"obj.cgc_lookaside" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".7" = alloca i8**
  %".8" = alloca i32**
  store i8** %"argv", i8*** %".7"
  store i32** %"envp", i32*** %".8"
  br label %"0"
"0":
  br label %"1"
"1":
  %".13" = call i32 @"sym.cgc_RecvCommand"()
  %".14" = bitcast i8* %"cVar1" to i32*
  store i32 %".13", i32* %".14"
  %".16" = load i8, i8* %"cVar1"
  %".17" = icmp ne i8 %".16", 0
  %".18" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".17", i1* %".18"
  %".20" = load i8, i8* %"register0x00000206"
  %".21" = trunc i8 %".20" to i1
  br i1 %".21", label %"1", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".24" = load i32, i32* %"register0x00000000"
  ret i32 %".24"
}

declare i32 @"sym.cgc_RecvCommand"() 

declare i8 @"sym.cgc_DelUser"() 

declare i8 @"sym.cgc_FindUsername"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_RevokeAccess"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_ListValidAlarmCodes"(i32 %"arg_8h") 

declare void @"sym.cgc_SortCodes"(i32 %"arg_8h") 

declare i8 @"sym.cgc_FindDeviceId"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare i32 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_init_freelist"() 

declare i8 @"sym.cgc_DeleteDevice"(i32 %"arg_8h") 

declare void @"sym.cgc_ProcessAlarms"() 

declare i32 @"sym.cgc_IsDeviceInAlarm"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReadBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i8 @"sym.cgc_FindAvailableDevice"() 

declare i8 @"sym.cgc_SendResp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_AddUser"() 

declare i8 @"sym.cgc_FindCode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_FindAvailableUser"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i8 @"sym.cgc_GrantAccess"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_AddDeviceToAlarm"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_UpdateDevice"(i32 %"arg_8h") 
