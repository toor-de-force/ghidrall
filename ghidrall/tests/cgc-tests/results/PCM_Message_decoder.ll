; ModuleID = "PCM_Message_decoder"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_lh" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48608
  %"var_10001ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48604
  %"var_100018h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48600
  %"var_100014h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48596
  %"var_100010h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48592
  %"var_10000ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48588
  %"var_100008h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".10" to i32*
  %"register0x00000000" = alloca i32
  %".11" = alloca i8**
  %".12" = alloca i32**
  store i8** %"argv", i8*** %".11"
  store i32** %"envp", i32*** %".12"
  br label %"0"
"0":
  %".16" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48588
  %".17" = ptrtoint i8* %".16" to i32
  call void @"sym.cgc_bzero"(i32 %".17", i32 1048576)
  %".19" = ptrtoint i64* @"obj.cgc_lh" to i32
  call void @"sym.cgc_InitLang"(i32 %".19", i32 0)
  %".21" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48588
  %".22" = ptrtoint i8* %".21" to i32
  %".23" = call i32 @"sym.cgc_ReadWav"(i32 %".22")
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -48588
  %".25" = ptrtoint i8* %".24" to i32
  call void @"sym.cgc_ParseWav"(i32 %".25")
  store i32 0, i32* %"register0x00000000"
  %".28" = load i32, i32* %"register0x00000000"
  ret i32 %".28"
}

declare void @"sym.cgc_InitLang"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_FindCode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_ParseWav"(i32 %"arg_8h") 

declare void @"sym.cgc_ParseCode"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_AssignToBucket"(i32 %"arg_8h") 

declare void @"sym.cgc_ValidateBuckets"() 

declare void @"sym.cgc_CheckLimits"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ReadWav"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 
