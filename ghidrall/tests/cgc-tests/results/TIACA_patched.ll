; ModuleID = "TIACA_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000000" = alloca i32
  %".6" = alloca i8**
  %".7" = alloca i32**
  store i8** %"argv", i8*** %".6"
  store i32** %"envp", i32*** %".7"
  br label %"0"
"0":
  %".11" = load i8**, i8*** %".6"
  %".12" = load i32**, i32*** %".7"
  call void @"sym.cgc_serviceLoop"()
  call void @"sym.cgc_validateRet"()
  store i32 0, i32* %"register0x00000000"
  %".16" = load i32, i32* %"register0x00000000"
  ret i32 %".16"
}

declare void @"sym.cgc_serviceLoop"() 

declare void @"sym.cgc_handleShift"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_raiseAlarm"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_updateBTMetadata"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_handleTrunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_bookKeeping"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_validatePtr"(i32 %"arg_8h") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_initCar"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recvUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_validateRet"() 
