; ModuleID = "TAINTEDLOVE"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.rx_bytes" = global i32 0
@"obj.rx_buf" = external global i64
@"sym.cgc_dispatch" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".13" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".14" = alloca i8**
  %".15" = alloca i32**
  store i8** %"argv", i8*** %".14"
  store i32** %"envp", i32*** %".15"
  br label %"0"
"0":
  br label %"1"
"1":
  store i32 0, i32* @"obj.rx_bytes"
  %".21" = ptrtoint i64* @"obj.rx_buf" to i32
  %".22" = call i32 @"sym.cgc_memset"(i32 %".21", i32 0, i32 65535)
  %".23" = ptrtoint i64* @"obj.rx_buf" to i32
  %".24" = ptrtoint i32* @"obj.rx_bytes" to i32
  %".25" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".23", i32 65535, i32 %".24")
  store i32 %".25", i32* %"iVar1"
  %".27" = load i32, i32* %"iVar1"
  %".28" = icmp ne i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"2", label %"3"
"2":
  store i32 4294967289, i32* %"register0x00000000"
  %".35" = load i32, i32* %"register0x00000000"
  ret i32 %".35"
"3":
  %".37" = load i32, i32* @"obj.rx_bytes"
  %".38" = icmp eq i32 %".37", 0
  %".39" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".38", i1* %".39"
  %".41" = load i8, i8* %"register0x00000206"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"4", label %"5"
"4":
  store i32 0, i32* %"register0x00000000"
  %".45" = load i32, i32* %"register0x00000000"
  ret i32 %".45"
"5":
  call void @"func_0x080497f0"()
  br label %"1"
}

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"func_0x080497f0"() 
