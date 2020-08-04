; ModuleID = "Shortest_Path_Tree_Calculator_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_Nodes" = global i32 0
@"obj.cgc_Edges" = global i32 0
@"obj.cgc_lookaside" = global i32 0
@"obj.cgc_NumEdges" = global i32 0
@"obj.rand_page" = global i32 0
@"obj.cgc_NumNodes" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
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
  store i32 0, i32* %"var_8h"
  store i32 0, i32* @"obj.cgc_Nodes"
  store i32 0, i32* @"obj.cgc_Edges"
  br label %"1"
"1":
  %".17" = call i8 @"sym.cgc_ReadCmd"()
  store i8 %".17", i8* %"cVar1"
  %".19" = load i8, i8* %"cVar1"
  %".20" = icmp ne i8 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i32, i32* %"var_8h"
  %".24" = icmp ult i32 %".23", 32
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = and i8 %".25", %".26"
  %".28" = trunc i8 %".27" to i1
  br i1 %".28", label %"3", label %"2"
"2":
  %".30" = call i8 @"sym.cgc_DestroyNodes"()
  %".31" = call i8 @"sym.cgc_DestroyEdges"()
  store i32 0, i32* %"register0x00000000"
  %".33" = load i32, i32* %"register0x00000000"
  ret i32 %".33"
"3":
  %".35" = load i32, i32* %"var_8h"
  %".36" = add i32 %".35", 1
  store i32 %".36", i32* %"var_8h"
  br label %"1"
}

declare i8 @"sym.cgc_DestroyNodes"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare i8 @"sym.cgc_DestroyEdges"() 

declare i8 @"sym.cgc_ReadCmd"() 

declare i32 @"sym.cgc_AddEdge"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReadNull"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_FindSpt"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_FindMinDistanceNode"() 

declare i32 @"sym.cgc_AddNode"(i32 %"arg_8h") 

declare i8 @"sym.cgc_SendErrorResponse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_FindEdge"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_SendResponse"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_FindNode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReadBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 
