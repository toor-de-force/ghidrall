; ModuleID = "ASL6parse"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.too_big" = external global i64
@"sym.cgc_read_exactly" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_ch" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967128
  %"piVar2" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967128
  %"placeholder_1" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967132
  %"iVar3" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967136
  %"arg_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967144
  %"var_8054h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967148
  %"var_8050h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967152
  %"var_804ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967156
  %"var_8048h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967160
  %"var_8044h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967164
  %"var_8040h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967168
  %"var_803ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967172
  %"var_8038h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967176
  %"var_8034h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967180
  %"var_8030h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967184
  %"var_802ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967188
  %"var_8028h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967192
  %"var_8024h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967196
  %"var_8020h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967200
  %"var_801ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967204
  %"var_8018h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967208
  %"var_8014h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".27" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".28" = alloca i8**
  %".29" = alloca i32**
  store i8** %"argv", i8*** %".28"
  store i32** %"envp", i32*** %".29"
  br label %"0"
"0":
  %".33" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967208
  store i32 0, i32* %"var_10h"
  store i32 0, i32* %"var_14h"
  %".36" = ptrtoint i8* %".33" to i32
  %".37" = call i32 @"sym.cgc_memset"(i32 %".36", i32 0, i32 32768)
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".39" = bitcast i32* %"arg_8h" to i8**
  store i8* %".38", i8** %".39"
  %".41" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".42" = bitcast i32* %"piVar2" to i8**
  store i8* %".41", i8** %".42"
  store i32 4, i32* %"iVar3"
  call void @"sym.imp.cgc_receive"()
  %".46" = load i32, i32* %"iVar1"
  %".47" = icmp ne i32 %".46", 0
  %".48" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".47", i1* %".48"
  %".50" = load i8, i8* %"register0x00000206"
  %".51" = trunc i8 %".50" to i1
  br i1 %".51", label %"1", label %"2"
"1":
  %".53" = load i32, i32* %"arg_8h"
  %".54" = load i32, i32* %"piVar2"
  %".55" = load i32, i32* %"iVar3"
  %".56" = call i32 @"sym.cgc_exit"(i32 1, i32 %".54", i32 %".55", i32 %".53")
  br label %"2"
"2":
  %".58" = load i32, i32* %"var_14h"
  %".59" = icmp ne i32 %".58", 4
  %".60" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000206"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"3", label %"4"
"3":
  %".65" = load i32, i32* %"arg_8h"
  %".66" = load i32, i32* %"piVar2"
  %".67" = load i32, i32* %"iVar3"
  %".68" = call i32 @"sym.cgc_exit"(i32 1, i32 %".66", i32 %".67", i32 %".65")
  br label %"4"
"4":
  %".70" = load i32, i32* %"var_10h"
  %".71" = icmp ult i32 32768, %".70"
  br i1 %".71", label %"5", label %"6"
"5":
  store i32 134531631, i32* %"placeholder_1"
  %".74" = load i32, i32* %"iVar3"
  %".75" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531631, i32 %".74")
  %".76" = load i32, i32* %"arg_8h"
  %".77" = load i32, i32* %"placeholder_1"
  %".78" = load i32, i32* %"iVar3"
  %".79" = call i32 @"sym.cgc_exit"(i32 1, i32 %".77", i32 %".78", i32 %".76")
  br label %"6"
"6":
  %".81" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967208
  %".82" = bitcast i32* %"piVar2" to i8**
  store i8* %".81", i8** %".82"
  %".84" = load i32, i32* %"var_10h"
  store i32 %".84", i32* %"iVar1"
  %".86" = call i32 @"func_0x0804c510"(i32 0)
  store i32 %".86", i32* %"iVar3"
  store i32 %".86", i32* %"iVar3"
  %".89" = load i32, i32* %"iVar3"
  %".90" = icmp ne i32 %".89", 0
  %".91" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000206"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"7", label %"8"
"7":
  %".96" = load i32, i32* %"arg_8h"
  %".97" = load i32, i32* %"piVar2"
  %".98" = load i32, i32* %"iVar1"
  %".99" = call i32 @"sym.cgc_exit"(i32 1, i32 %".97", i32 %".98", i32 %".96")
  br label %"8"
"8":
  %".101" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 967208
  %".102" = ptrtoint i8* %".101" to i32
  %".103" = load i32, i32* %"var_10h"
  %".104" = add i32 %".102", %".103"
  store i32 %".104", i32* %"arg_ch"
  %".106" = ptrtoint i8* %".101" to i32
  %".107" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_decode"(i32 %".106", i32 %".107")
  %".109" = load i32, i32* %"iVar3"
  %".110" = icmp eq i32 %".109", 0
  %".111" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".110", i1* %".111"
  %".113" = load i8, i8* %"register0x00000206"
  %".114" = trunc i8 %".113" to i1
  br i1 %".114", label %"9", label %"a"
"9":
  %".116" = load i32, i32* %"arg_8h"
  %".117" = load i32, i32* %"arg_ch"
  %".118" = load i32, i32* %"iVar1"
  %".119" = call i32 @"sym.cgc_exit"(i32 1, i32 %".117", i32 %".118", i32 %".116")
  br label %"a"
a:
  %".121" = load i32, i32* %"iVar3"
  call void @"sym.cgc_pprint"(i32 %".121")
  store i32 0, i32* %"register0x00000000"
  %".124" = load i32, i32* %"register0x00000000"
  ret i32 %".124"
}

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_decode"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc__decode"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_within"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_parse_tag_class"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_tag"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parse_length"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free_element"(i32 %"arg_8h") 

declare i32 @"sym.cgc_append_sub"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_realloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_pprint"(i32 %"arg_8h") 

declare void @"sym.cgc_print_tag"(i32 %"arg_8h") 

declare void @"sym.cgc_print_primitive"(i32 %"arg_8h") 

declare void @"sym.cgc_print_indent"(i32 %"arg_8h") 

declare i32 @"func_0x0804c510"(i32 %".1") 
