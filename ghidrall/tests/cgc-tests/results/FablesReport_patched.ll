; ModuleID = "FablesReport_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_heapinit_done" = global i8 0
@"obj.cgc_lastpage" = global i32 0
@"obj.cgc_freed" = global i32 0
@"obj.cgc_curleft" = global i32 0
@"obj.cgc_allocated" = global i32 0
@"obj.cgc_allocatedc" = global i32 0
@"obj.cgc_freedc" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".12" = alloca i8**
  %".13" = alloca i32**
  store i8** %"argv", i8*** %".12"
  store i32** %"envp", i32*** %".13"
  br label %"0"
"0":
  %".17" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  call void @"sym.imp.memset"()
  %".19" = ptrtoint i8* %".17" to i32
  call void @"sym.cgc_newReport"(i32 %".19")
  br label %"1"
"1":
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".23" = ptrtoint i8* %".22" to i32
  %".24" = call i32 @"sym.cgc_newRecord"(i32 %".23")
  store i32 %".24", i32* %"iVar1"
  %".26" = load i32, i32* %"iVar1"
  %".27" = icmp ne i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"1", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  ret i32 %".34"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_newRecord"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_startswith"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_sendReport"(i32 %"arg_8h") 

declare void @"sym.cgc_filterReport"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_remove"(i32 %"arg_8h") 

declare void @"sym.cgc_insert"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_heapinit"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_sortReport"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_splitReport"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_mergeReport"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_newReport"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
