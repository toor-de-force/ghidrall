; ModuleID = "Modern_Family_Tree_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_person_list" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_total_person_count" = global i32 0
@"obj.cgc_search_map" = global i32 0
@"obj.ERR" = external global i64
@"obj.OK" = external global i64
@"obj.cgc_ADD_PERSON" = external global i64
@"obj.cgc_ARE_RELATED" = external global i64
@"obj.cgc_DEGREES" = external global i64
@"obj.cgc_SET_ADOPTED_CHILD" = external global i64
@"obj.cgc_SET_BIOLOGICAL_CHILD" = external global i64
@"obj.cgc_SET_DECEASED" = external global i64
@"obj.cgc_SET_SEPARATED" = external global i64
@"obj.cgc_SET_UNION" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".24" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".25" = alloca i8**
  %".26" = alloca i32**
  store i8** %"argv", i8*** %".25"
  store i32** %"envp", i32*** %".26"
  br label %"0"
"0":
  call void @"sym.cgc_gen_result_bufs"()
  br label %"1"
"1":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".33" = ptrtoint i8* %".32" to i32
  call void @"sym.cgc_recv_all"(i32 %".33", i32 8)
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp ne i32 %".35", 8
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".45" = ptrtoint i64* @"obj.cgc_ADD_PERSON" to i32
  %".46" = ptrtoint i8* %".44" to i32
  %".47" = call i32 @"sym.cgc_memcmp"(i32 %".45", i32 %".46", i32 4)
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp eq i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"13", label %"4"
"4":
  %".56" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".57" = ptrtoint i64* @"obj.cgc_SET_BIOLOGICAL_CHILD" to i32
  %".58" = ptrtoint i8* %".56" to i32
  %".59" = call i32 @"sym.cgc_memcmp"(i32 %".57", i32 %".58", i32 4)
  store i32 %".59", i32* %"iVar1"
  %".61" = load i32, i32* %"iVar1"
  %".62" = icmp eq i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"12", label %"5"
"5":
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".69" = ptrtoint i64* @"obj.cgc_SET_ADOPTED_CHILD" to i32
  %".70" = ptrtoint i8* %".68" to i32
  %".71" = call i32 @"sym.cgc_memcmp"(i32 %".69", i32 %".70", i32 4)
  store i32 %".71", i32* %"iVar1"
  %".73" = load i32, i32* %"iVar1"
  %".74" = icmp eq i32 %".73", 0
  %".75" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000206"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"11", label %"6"
"6":
  %".80" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".81" = ptrtoint i64* @"obj.cgc_SET_UNION" to i32
  %".82" = ptrtoint i8* %".80" to i32
  %".83" = call i32 @"sym.cgc_memcmp"(i32 %".81", i32 %".82", i32 4)
  store i32 %".83", i32* %"iVar1"
  %".85" = load i32, i32* %"iVar1"
  %".86" = icmp eq i32 %".85", 0
  %".87" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".86", i1* %".87"
  %".89" = load i8, i8* %"register0x00000206"
  %".90" = trunc i8 %".89" to i1
  br i1 %".90", label %"10", label %"7"
"7":
  %".92" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".93" = ptrtoint i64* @"obj.cgc_SET_DECEASED" to i32
  %".94" = ptrtoint i8* %".92" to i32
  %".95" = call i32 @"sym.cgc_memcmp"(i32 %".93", i32 %".94", i32 4)
  store i32 %".95", i32* %"iVar1"
  %".97" = load i32, i32* %"iVar1"
  %".98" = icmp eq i32 %".97", 0
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"f", label %"8"
"8":
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".105" = ptrtoint i64* @"obj.cgc_SET_SEPARATED" to i32
  %".106" = ptrtoint i8* %".104" to i32
  %".107" = call i32 @"sym.cgc_memcmp"(i32 %".105", i32 %".106", i32 4)
  store i32 %".107", i32* %"iVar1"
  %".109" = load i32, i32* %"iVar1"
  %".110" = icmp eq i32 %".109", 0
  %".111" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".110", i1* %".111"
  %".113" = load i8, i8* %"register0x00000206"
  %".114" = trunc i8 %".113" to i1
  br i1 %".114", label %"e", label %"9"
"9":
  %".116" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".117" = ptrtoint i64* @"obj.cgc_ARE_RELATED" to i32
  %".118" = ptrtoint i8* %".116" to i32
  %".119" = call i32 @"sym.cgc_memcmp"(i32 %".117", i32 %".118", i32 4)
  store i32 %".119", i32* %"iVar1"
  %".121" = load i32, i32* %"iVar1"
  %".122" = icmp eq i32 %".121", 0
  %".123" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".122", i1* %".123"
  %".125" = load i8, i8* %"register0x00000206"
  %".126" = trunc i8 %".125" to i1
  br i1 %".126", label %"d", label %"a"
a:
  %".128" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".129" = ptrtoint i64* @"obj.cgc_DEGREES" to i32
  %".130" = ptrtoint i8* %".128" to i32
  %".131" = call i32 @"sym.cgc_memcmp"(i32 %".129", i32 %".130", i32 4)
  store i32 %".131", i32* %"iVar1"
  %".133" = load i32, i32* %"iVar1"
  %".134" = icmp eq i32 %".133", 0
  %".135" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".134", i1* %".135"
  %".137" = load i8, i8* %"register0x00000206"
  %".138" = trunc i8 %".137" to i1
  br i1 %".138", label %"c", label %"b"
b:
  store i32 -1, i32* %"var_8h"
  br label %"14"
c:
  %".142" = load i32, i32* %"var_14h"
  %".143" = call i32 @"sym.cgc_cmd_degrees_of_separation"(i32 %".142")
  store i32 %".143", i32* %"var_8h"
  br label %"14"
d:
  %".146" = load i32, i32* %"var_14h"
  %".147" = call i32 @"sym.cgc_cmd_are_related"(i32 %".146")
  store i32 %".147", i32* %"var_8h"
  br label %"14"
e:
  %".150" = load i32, i32* %"var_14h"
  %".151" = call i32 @"sym.cgc_cmd_set_separated"(i32 %".150")
  store i32 %".151", i32* %"var_8h"
  br label %"14"
f:
  %".154" = load i32, i32* %"var_14h"
  %".155" = call i32 @"sym.cgc_cmd_set_deceased"(i32 %".154")
  store i32 %".155", i32* %"var_8h"
  br label %"14"
"10":
  %".158" = load i32, i32* %"var_14h"
  %".159" = call i32 @"sym.cgc_cmd_set_union"(i32 %".158")
  store i32 %".159", i32* %"var_8h"
  br label %"14"
"11":
  %".162" = load i32, i32* %"var_14h"
  %".163" = call i32 @"sym.cgc_cmd_set_adopted_child"(i32 %".162")
  store i32 %".163", i32* %"var_8h"
  br label %"14"
"12":
  %".166" = load i32, i32* %"var_14h"
  %".167" = call i32 @"sym.cgc_cmd_set_biological_child"(i32 %".166")
  store i32 %".167", i32* %"var_8h"
  br label %"14"
"13":
  %".170" = load i32, i32* %"var_14h"
  %".171" = call i32 @"sym.cgc_cmd_add_person"(i32 %".170")
  store i32 %".171", i32* %"var_8h"
  br label %"14"
"14":
  %".174" = load i32, i32* %"var_8h"
  %".175" = icmp ne i32 %".174", 0
  %".176" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".175", i1* %".176"
  %".178" = load i8, i8* %"register0x00000206"
  %".179" = trunc i8 %".178" to i1
  br i1 %".179", label %"15", label %"16"
"15":
  %".181" = ptrtoint i64* @"obj.ERR" to i32
  %".182" = call i32 @"sym.cgc_send"(i32 %".181", i32 4)
  store i32 0, i32* %"register0x00000000"
  %".184" = load i32, i32* %"register0x00000000"
  ret i32 %".184"
"16":
  %".186" = ptrtoint i64* @"obj.OK" to i32
  %".187" = call i32 @"sym.cgc_send"(i32 %".186", i32 4)
  br label %"1"
}

declare i32 @"sym.cgc_cmd_set_union"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_person_by_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_union_two_persons"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_separate_two_persons"(i32 %"arg_8h", i32 %"arg_ch") 

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

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"sym.cgc_cmd_add_person"(i32 %"arg_8h") 

declare void @"sym.cgc_add_person_to_list"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_new_person"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_cmd_set_deceased"(i32 %"arg_8h") 

declare i32 @"sym.cgc_cmd_degrees_of_separation"(i32 %"arg_8h") 

declare i32 @"sym.cgc_new_search_map"() 

declare i32 @"sym.cgc_degrees_of_separation"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_is_search_locked"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_set_search_lock"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_gen_result_bufs"() 

declare i32 @"sym.cgc_cmd_set_separated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_cmd_set_adopted_child"(i32 %"arg_8h") 

declare i32 @"sym.cgc_set_adopted_child"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_can_have_more_adopted_children"(i32 %"arg_8h") 

declare void @"sym.cgc_set_adopting_parent"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_unset_adopted_child"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_cmd_are_related"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_are_related"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_cmd_set_biological_child"(i32 %"arg_8h") 

declare void @"sym.cgc_set_biological_mother"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_can_have_more_biological_children"(i32 %"arg_8h") 

declare void @"sym.cgc_set_biological_father"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_set_biological_child"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
