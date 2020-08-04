; ModuleID = "UTF-late"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.pubroot" = global i32 0
@"obj.admin" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_strtok.prev" = global i32 0
@"obj.vfs" = external global i64
@"str.admin" = external global i64
@"str.public" = external global i64
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
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".18" = alloca i8**
  %".19" = alloca i32**
  store i8** %"argv", i8*** %".18"
  store i32** %"envp", i32*** %".19"
  br label %"0"
"0":
  %".23" = ptrtoint i64* @"obj.vfs" to i32
  %".24" = call i32 @"sym.cgc_vfs_init"(i32 %".23")
  %".25" = ptrtoint i64* @"obj.vfs" to i32
  %".26" = call i32 @"sym.cgc_create_dir"(i32 %".25", i32 134527223)
  store i32 %".26", i32* @"obj.pubroot"
  %".28" = ptrtoint i64* @"obj.vfs" to i32
  %".29" = call i32 @"sym.cgc_create_dir"(i32 %".28", i32 134527232)
  store i32 %".29", i32* @"obj.admin"
  br label %"1"
"1":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".33" = ptrtoint i8* %".32" to i32
  %".34" = call i32 @"sym.cgc_read_all"(i32 0, i32 %".33", i32 4)
  store i32 %".34", i32* %"iVar1"
  %".36" = load i32, i32* %"iVar1"
  %".37" = icmp ne i32 %".36", 4
  %".38" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".37", i1* %".38"
  %".40" = load i8, i8* %"register0x00000206"
  %".41" = trunc i8 %".40" to i1
  br i1 %".41", label %"1", label %"2"
"2":
  %".43" = load i32, i32* %"var_8h"
  %".44" = icmp eq i32 %".43", -1
  %".45" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i8, i8* %"register0x00000206"
  %".48" = trunc i8 %".47" to i1
  br i1 %".48", label %"3", label %"4"
"3":
  %".50" = ptrtoint i64* @"obj.vfs" to i32
  call void @"sym.cgc_vfs_destroy"(i32 %".50")
  store i32 0, i32* %"register0x00000000"
  %".53" = load i32, i32* %"register0x00000000"
  ret i32 %".53"
"4":
  %".55" = load i32, i32* %"var_8h"
  %".56" = icmp eq i32 %".55", 0
  %".57" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000206"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"5", label %"6"
"5":
  %".62" = call i32 @"sym.cgc_read_file"()
  store i32 %".62", i32* %"var_ch"
  br label %"a"
"6":
  %".65" = load i32, i32* %"var_8h"
  %".66" = icmp eq i32 %".65", 1
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"7", label %"8"
"7":
  %".72" = call i32 @"sym.cgc_write_file"()
  store i32 %".72", i32* %"var_ch"
  br label %"a"
"8":
  %".75" = load i32, i32* %"var_8h"
  %".76" = icmp eq i32 %".75", 2
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"9", label %"1"
"9":
  %".82" = call i32 @"sym.cgc_list_files"()
  store i32 %".82", i32* %"var_ch"
  br label %"a"
a:
  %".85" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".86" = ptrtoint i8* %".85" to i32
  %".87" = call i32 @"sym.cgc_write_all"(i32 1, i32 %".86", i32 4)
  br label %"1"
}

declare i32 @"sym.cgc_write_file"() 

declare i32 @"sym.cgc_canonicalize_path"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_utf8_canonicalize"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_utf8_decode"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_utf8_encode"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_delete_file"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_remove_1"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare i32 @"sym.cgc_lookup_file"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_lookup_dir"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strrchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_file"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_file_in_dir"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_front"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_before_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_file"() 

declare i32 @"sym.cgc_list_files"() 

declare i32 @"sym.cgc_write_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_create_dir"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_dir_in_dir"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_vfs_destroy"(i32 %"arg_8h") 

declare void @"sym.cgc_directory_destroy"(i32 %"arg_8h") 

declare i32 @"sym.cgc_vfs_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 
