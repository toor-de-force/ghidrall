; ModuleID = "Eddy"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_do_coalesce" = global i32 0
@"obj.size_class_sizes" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %"uVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".23" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000008" = alloca i32
  %".24" = alloca i8**
  %".25" = alloca i32**
  store i8** %"argv", i8*** %".24"
  store i32** %"envp", i32*** %".25"
  br label %"0"
"0":
  %".29" = call i32 @"sym.cgc_calloc"(i32 270)
  store i32 %".29", i32* %"arg_8h"
  %".31" = load i32, i32* %"arg_8h"
  %".32" = icmp ne i32 %".31", 0
  %".33" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".32", i1* %".33"
  %".35" = load i8, i8* %"register0x00000206"
  %".36" = trunc i8 %".35" to i1
  br i1 %".36", label %"2", label %"1"
"1":
  store i32 4294967295, i32* %"register0x00000000"
  %".39" = load i32, i32* %"register0x00000000"
  ret i32 %".39"
"2":
  %".41" = load i32, i32* %"arg_8h"
  %".42" = call i32 @"sym.cgc_memset"(i32 %".41", i32 0, i32 270)
  %".43" = load i32, i32* %"arg_8h"
  %".44" = call i32 @"sym.cgc_read_all"(i32 0, i32 %".43", i32 13)
  %".45" = load i32, i32* %"arg_8h"
  %".46" = add i32 %".45", 9
  %".47" = icmp ne i32 %".46", 0
  %".48" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".47", i1* %".48"
  %".50" = load i8, i8* %"register0x00000206"
  %".51" = trunc i8 %".50" to i1
  br i1 %".51", label %"3", label %"5"
"3":
  %".53" = load i32, i32* %"arg_8h"
  %".54" = add i32 %".53", 9
  %".55" = icmp ult i32 %".54", 257
  br i1 %".55", label %"4", label %"5"
"4":
  %".57" = load i32, i32* %"arg_8h"
  %".58" = add i32 %".57", 13
  store i32 %".58", i32* %"register0x00000004"
  %".60" = load i32, i32* %"arg_8h"
  %".61" = add i32 %".60", 9
  %".62" = load i32, i32* %"register0x00000004"
  %".63" = call i32 @"sym.cgc_read_all"(i32 0, i32 %".62", i32 %".61")
  br label %"5"
"5":
  %".65" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".66" = ptrtoint i8* %".65" to i32
  %".67" = load i32, i32* %"arg_8h"
  %".68" = call i32 @"sym.cgc_run_command"(i32 %".67", i32 %".66")
  store i32 %".68", i32* %"var_ch"
  %".70" = load i32, i32* %"var_14h"
  %".71" = icmp eq i32 %".70", 0
  %".72" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000206"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"6", label %"7"
"6":
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".78" = ptrtoint i8* %".77" to i32
  %".79" = call i32 @"sym.cgc_write_all"(i32 1, i32 %".78", i32 4)
  br label %"2"
"7":
  %".81" = load i32, i32* %"var_14h"
  %".82" = load i32, i32* %"var_ch"
  %".83" = load i32, i32* %"var_14h"
  %".84" = add i32 %".83", 12
  store i32 %".84", i32* %"register0x00000000"
  %".86" = load i32, i32* %"var_14h"
  %".87" = add i32 %".86", 4
  %".88" = inttoptr i32 %".87" to i8*
  %".89" = load i8, i8* %".88"
  %".90" = load i32, i32* %"register0x00000000"
  %".91" = zext i8 %".89" to i32
  %".92" = call i32 @"sym.cgc_generate_csum"(i32 %".90", i32 %".91")
  store i32 %".92", i32* %"uVar1"
  %".94" = load i32, i32* %"var_14h"
  %".95" = add i32 %".94", 8
  %".96" = inttoptr i32 %".95" to i8*
  %".97" = load i32, i32* %"uVar1"
  %".98" = load i32, i32* %"var_14h"
  %".99" = add i32 %".98", 4
  %".100" = add i32 %".99", 12
  store i32 %".100", i32* %"register0x00000008"
  %".102" = load i32, i32* %"var_14h"
  %".103" = load i32, i32* %"register0x00000008"
  %".104" = call i32 @"sym.cgc_write_all"(i32 1, i32 %".102", i32 %".103")
  %".105" = load i32, i32* %"var_14h"
  call void @"sym.cgc_free"(i32 %".105")
  br label %"2"
}

declare i32 @"sym.cgc_write_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_generate_csum"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

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

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_run_command"(i32 %"arg_8h", i32 %"arg_ch") 
