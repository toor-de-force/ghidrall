; ModuleID = "Document_Rendering_Engine_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_sizes" = global i32 0
@"obj.columnWidth" = global i32 0
@"obj.cgc_strtok.prev" = global i32 0
@"obj.cgc_stdin" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  store i32 0, i32* %"var_14h"
  %".21" = call i32 @"sym.cgc_getDocumentID"()
  store i32 %".21", i32* %"arg_8h"
  %".23" = call i32 @"sym.cgc_malloc"(i32 12)
  store i32 %".23", i32* %"iVar1"
  %".25" = load i32, i32* %"iVar1"
  %".26" = icmp eq i32 %".25", 0
  %".27" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".26", i1* %".27"
  %".29" = load i8, i8* %"register0x00000206"
  %".30" = trunc i8 %".29" to i1
  br i1 %".30", label %"2", label %"1"
"1":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".33" = ptrtoint i8* %".32" to i32
  call void @"sym.cgc_initMacros"(i32 %".33")
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".36" = ptrtoint i8* %".35" to i32
  call void @"sym.cgc_initCustomMacros"(i32 %".36")
  %".38" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".38")
  %".40" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".41" = ptrtoint i8* %".40" to i32
  %".42" = call i32 @"sym.cgc_getObject"(i32 %".41", i32 0, i32 0)
  store i32 %".42", i32* %"iVar1"
  %".44" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_sendDocumentID"(i32 %".44")
  %".46" = load i32, i32* %"var_ch"
  %".47" = load i32, i32* %"iVar1"
  %".48" = call i32 @"sym.cgc_document"(i32 %".46", i32 %".47")
  store i32 0, i32* %"var_4h"
  br label %"3"
"2":
  store i32 -1, i32* %"var_4h"
  br label %"3"
"3":
  %".53" = load i32, i32* %"var_4h"
  store i32 %".53", i32* %"register0x00000000"
  %".55" = load i32, i32* %"register0x00000000"
  ret i32 %".55"
}

declare void @"sym.cgc_sendDocumentID"(i32 %"arg_8h") 

declare i32 @"sym.cgc_itoa"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getDocumentID"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getMacro"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_romanNumeral"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_to_hex"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_initMacros"(i32 %"arg_8h") 

declare i32 @"sym.cgc_newMacro"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_document"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getObject"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fgets"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fgetc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_getCustomMacro"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getNextInputLine"(i32 %"arg_8h") 

declare i32 @"sym.cgc_executeMacro"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_reverseObjectList"(i32 %"arg_8h") 

declare void @"sym.cgc_initCustomMacros"(i32 %"arg_8h") 

declare void @"_reloc.memcpy"() 
