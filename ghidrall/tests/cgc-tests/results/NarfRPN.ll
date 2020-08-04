; ModuleID = "NarfRPN"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_sizes" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".21" = ptrtoint i8* %".20" to i32
  call void @"sym.cgc_rpncalc_init"(i32 %".21")
  br label %"1"
"1":
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".25" = ptrtoint i8* %".24" to i32
  %".26" = call i32 @"sym.cgc_read_all"(i32 0, i32 %".25", i32 4)
  store i32 %".26", i32* %"iVar1"
  %".28" = load i32, i32* %"iVar1"
  %".29" = icmp ne i32 %".28", 4
  %".30" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".29", i1* %".30"
  %".32" = load i8, i8* %"register0x00000206"
  %".33" = trunc i8 %".32" to i1
  br i1 %".33", label %"1", label %"2"
"2":
  %".35" = load i32, i32* %"var_ch"
  %".36" = icmp eq i32 %".35", -1
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"3", label %"4"
"3":
  %".42" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".43" = ptrtoint i8* %".42" to i32
  call void @"sym.cgc_rpncalc_destroy"(i32 %".43")
  store i32 0, i32* %"register0x00000000"
  %".46" = load i32, i32* %"register0x00000000"
  ret i32 %".46"
"4":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".49" = ptrtoint i8* %".48" to i32
  %".50" = load i32, i32* %"var_ch"
  %".51" = call i32 @"sym.cgc_perform_rpncalc_op"(i32 %".49", i32 %".50")
  store i32 %".51", i32* %"var_10h"
  %".53" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".54" = ptrtoint i8* %".53" to i32
  %".55" = call i32 @"sym.cgc_write_all"(i32 1, i32 %".54", i32 4)
  br label %"1"
}

declare void @"sym.cgc_rpncalc_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_rpncalc_destroy"(i32 %"arg_8h") 

declare i32 @"sym.cgc_clear"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove_1"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_type"(i32 %"placeholder_0", i32 %"arg_ch") 

declare i32 @"sym.cgc_as_matrix"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare i32 @"sym.cgc_perform_rpncalc_op"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_write_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
