; ModuleID = "CGC_Video_Format_Parser_and_Viewer_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_memManager" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".8" = alloca i8**
  %".9" = alloca i32**
  store i8** %"argv", i8*** %".8"
  store i32** %"envp", i32*** %".9"
  br label %"0"
"0":
  %".13" = call i32 @"sym.cgc_readImageData"()
  store i32 %".13", i32* %"var_ch"
  %".15" = load i32, i32* %"var_ch"
  %".16" = icmp ne i32 %".15", 0
  %".17" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".16", i1* %".17"
  %".19" = load i8, i8* %"register0x00000206"
  %".20" = trunc i8 %".19" to i1
  br i1 %".20", label %"1", label %"2"
"1":
  %".22" = load i32, i32* %"var_ch"
  call void @"sym.cgc_renderCVF"(i32 %".22")
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".25" = ptrtoint i8* %".24" to i32
  call void @"sym.cgc_freeStream"(i32 %".25")
  br label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".29" = load i32, i32* %"register0x00000000"
  ret i32 %".29"
}

declare void @"sym.cgc_freeStream"(i32 %"arg_8h") 

declare i32 @"sym.cgc_readImageData"() 

declare i32 @"sym.cgc_initStream"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_receiveIt"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_renderCVF"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parseCVFHeader"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_freeCVF"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parseCVFFrame"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_bitsNeeded"(i32 %"arg_8h") 

declare i32 @"sym.cgc_playVideo"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receiveWrapper"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_readBits"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parseCVFName"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isascii"(i32 %"arg_8h") 

declare i32 @"sym.cgc_parseCVFPixelDict"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_parseCVFDescription"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isalpha"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i32 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_initCVF"() 
