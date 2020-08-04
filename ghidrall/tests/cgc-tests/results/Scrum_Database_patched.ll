; ModuleID = "Scrum_Database_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_lookaside" = global i32 0
@"obj.cgc_Tool_Title" = external global i64
define i32 @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"placeholder_13", i32 %"placeholder_14", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_ch" = alloca i32
  %"iVar1" = alloca i32
  %"puVar2" = alloca i32
  %"arg_10h" = alloca i32
  %"arg_ch_00" = alloca i32
  %"bVar3" = alloca i8
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967288
  %"var_ch_2" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967276
  %"var_24h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967272
  %"var_20h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967268
  %"var_1ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967264
  %"var_18h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967260
  %"var_14h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967256
  %"var_10h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967252
  %"var_ch" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967248
  %"var_8h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967244
  %"var_4h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"uVar4" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h_2" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h_2" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch_2" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h_2" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h_2" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch_3" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h_2" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h_2" = bitcast i8* %".40" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  %".41" = alloca i32
  %".42" = alloca i32
  %".43" = alloca i32
  %".44" = alloca i32
  %".45" = alloca i32
  %".46" = alloca i32
  %".47" = alloca i32
  %".48" = alloca i32
  %".49" = alloca i32
  %".50" = alloca i32
  %".51" = alloca i32
  %".52" = alloca i32
  %".53" = alloca i32
  %".54" = alloca i32
  %".55" = alloca i32
  %".56" = alloca i8**
  %".57" = alloca i32**
  store i32 %"placeholder_0", i32* %".41"
  store i32 %"placeholder_1", i32* %".42"
  store i32 %"placeholder_2", i32* %".43"
  store i32 %"placeholder_3", i32* %".44"
  store i32 %"placeholder_4", i32* %".45"
  store i32 %"placeholder_5", i32* %".46"
  store i32 %"placeholder_6", i32* %".47"
  store i32 %"placeholder_7", i32* %".48"
  store i32 %"placeholder_8", i32* %".49"
  store i32 %"placeholder_9", i32* %".50"
  store i32 %"placeholder_10", i32* %".51"
  store i32 %"placeholder_11", i32* %".52"
  store i32 %"placeholder_12", i32* %".53"
  store i32 %"placeholder_13", i32* %".54"
  store i32 %"placeholder_14", i32* %".55"
  store i8** %"argv", i8*** %".56"
  store i32** %"envp", i32*** %".57"
  br label %"0"
"0":
  store i32 0, i32* %"var_ch_3"
  %".77" = call i32 @"sym.cgc_calc_version"()
  %".78" = inttoptr i32 %".77" to i32*
  %".79" = bitcast i32* %"arg_ch" to i32**
  store i32* %".78", i32** %".79"
  %".81" = ptrtoint i64* @"obj.cgc_Tool_Title" to i32
  %".82" = call i32 @"sym.cgc_obf_strings"(i32 %".81")
  store i32 %".82", i32* %"iVar1"
  %".84" = load i32, i32* %"arg_ch"
  %".85" = load i32, i32* %"iVar1"
  %".86" = call i32 @"sym.cgc_printf"(i32 %".85", i32 %".84")
  %".87" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".88" = ptrtoint i8* %".87" to i32
  %".89" = call i32 @"sym.cgc_receive_commands"(i32 %".88")
  %".90" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".91" = ptrtoint i8* %".90" to i32
  %".92" = call i32 @"sym.cgc_destroy_database"(i32 %".91")
  call void @"sym.imp.cgc__terminate"()
  br label %"1"
"1":
  %".95" = load i32, i32* %"arg_ch"
  %".96" = icmp ne i32 %".95", 0
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  store i8 0, i8* %"bVar3"
  %".100" = load i8, i8* %"register0x00000206"
  %".101" = trunc i8 %".100" to i1
  br i1 %".101", label %"2", label %"3"
"2":
  %".103" = load i32, i32* %"arg_ch"
  %".104" = load i32, i32* %"var_30h"
  %".105" = icmp ne i32 %".104", %".104"
  %".106" = bitcast i8* %"bVar3" to i1*
  store i1 %".105", i1* %".106"
  br label %"3"
"3":
  %".109" = load i8, i8* %"bVar3"
  %".110" = xor i8 %".109", -1
  %".111" = trunc i8 %".110" to i1
  br i1 %".111", label %"5", label %"4"
"4":
  %".113" = mul i32 8, 16
  %".114" = getelementptr inbounds i32, i32* %"arg_ch", i32 %".113"
  %".115" = ptrtoint i32* %".114" to i32
  store i32 %".115", i32* %"arg_ch"
  br label %"1"
"5":
  %".118" = load i32, i32* %"arg_ch"
  %".119" = icmp eq i32 %".118", 0
  %".120" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".119", i1* %".120"
  %".122" = load i8, i8* %"register0x00000206"
  %".123" = trunc i8 %".122" to i1
  br i1 %".123", label %"10", label %"6"
"6":
  %".125" = call i32 @"sym.cgc_calloc"(i32 24)
  %".126" = inttoptr i32 %".125" to i32*
  %".127" = bitcast i32* %"puVar2" to i32**
  store i32* %".126", i32** %".127"
  %".129" = load i32, i32* %"puVar2"
  %".130" = icmp eq i32 %".129", 0
  %".131" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".130", i1* %".131"
  %".133" = load i8, i8* %"register0x00000206"
  %".134" = trunc i8 %".133" to i1
  br i1 %".134", label %"7", label %"8"
"7":
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  %".138" = load i32, i32* %"var_30h"
  %".139" = add i32 %".138", 2
  %".140" = inttoptr i32 %".139" to i32*
  %".141" = load i32, i32* %".140"
  store i32 %".141", i32* %"puVar2"
  %".143" = load i32, i32* %"var_30h"
  %".144" = add i32 %".143", 4
  store i32 %".144", i32* %"register0x00000000"
  %".146" = load i32, i32* %"register0x00000000"
  %".147" = call i32 @"sym.cgc_strlen"(i32 %".146")
  store i32 %".147", i32* %"iVar1"
  %".149" = load i32, i32* %"iVar1"
  %".150" = add i32 %".149", 1
  store i32 %".150", i32* %"register0x00000000"
  %".152" = load i32, i32* %"register0x00000000"
  %".153" = call i32 @"sym.cgc_calloc"(i32 %".152")
  store i32 %".153", i32* %"uVar4"
  %".155" = mul i32 2, 16
  %".156" = getelementptr inbounds i32, i32* %"puVar2", i32 %".155"
  %".157" = ptrtoint i32* %".156" to i32
  %".158" = load i32, i32* %"uVar4"
  %".159" = mul i32 2, 16
  %".160" = getelementptr inbounds i32, i32* %"puVar2", i32 %".159"
  %".161" = ptrtoint i32* %".160" to i32
  %".162" = icmp eq i32 %".161", 0
  %".163" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".162", i1* %".163"
  %".165" = load i8, i8* %"register0x00000206"
  %".166" = trunc i8 %".165" to i1
  br i1 %".166", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".170" = mul i32 2, 16
  %".171" = getelementptr inbounds i32, i32* %"puVar2", i32 %".170"
  %".172" = ptrtoint i32* %".171" to i32
  store i32 %".172", i32* %"iVar1"
  %".174" = load i32, i32* %"var_30h"
  %".175" = add i32 %".174", 4
  store i32 %".175", i32* %"arg_ch_00"
  %".177" = load i32, i32* %"var_30h"
  %".178" = add i32 %".177", 4
  store i32 %".178", i32* %"register0x00000008"
  %".180" = load i32, i32* %"register0x00000008"
  %".181" = call i32 @"sym.cgc_strlen"(i32 %".180")
  store i32 %".181", i32* %"arg_10h"
  %".183" = load i32, i32* %"iVar1"
  %".184" = load i32, i32* %"arg_ch_00"
  %".185" = load i32, i32* %"arg_10h"
  %".186" = call i32 @"sym.cgc_strncpy"(i32 %".183", i32 %".184", i32 %".185")
  %".187" = mul i32 4, 16
  %".188" = getelementptr inbounds i32, i32* %"puVar2", i32 %".187"
  %".189" = mul i32 5, 16
  %".190" = getelementptr inbounds i32, i32* %"puVar2", i32 %".189"
  %".191" = mul i32 6, 16
  %".192" = getelementptr inbounds i32, i32* %"puVar2", i32 %".191"
  %".193" = mul i32 8, 16
  %".194" = getelementptr inbounds i32, i32* %"puVar2", i32 %".193"
  %".195" = ptrtoint i32* %".194" to i32
  %".196" = mul i32 10, 16
  %".197" = getelementptr inbounds i32, i32* %"puVar2", i32 %".196"
  %".198" = ptrtoint i32* %".197" to i32
  %".199" = mul i32 6, 16
  %".200" = getelementptr inbounds i32, i32* %"arg_ch", i32 %".199"
  %".201" = ptrtoint i32* %".200" to i32
  %".202" = icmp eq i32 %".201", 0
  %".203" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".202", i1* %".203"
  %".205" = load i8, i8* %"register0x00000206"
  %".206" = trunc i8 %".205" to i1
  br i1 %".206", label %"f", label %"b"
b:
  %".208" = mul i32 6, 16
  %".209" = getelementptr inbounds i32, i32* %"arg_ch", i32 %".208"
  %".210" = ptrtoint i32* %".209" to i32
  store i32 %".210", i32* %"iVar1"
  br label %"c"
c:
  %".213" = load i32, i32* %"iVar1"
  %".214" = add i32 %".213", 20
  %".215" = inttoptr i32 %".214" to i32*
  %".216" = load i32, i32* %".215"
  %".217" = icmp ne i32 %".216", 0
  %".218" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".217", i1* %".218"
  %".220" = load i8, i8* %"register0x00000206"
  %".221" = trunc i8 %".220" to i1
  br i1 %".221", label %"e", label %"d"
d:
  %".223" = load i32, i32* %"iVar1"
  %".224" = add i32 %".223", 20
  %".225" = inttoptr i32 %".224" to i32*
  %".226" = load i32, i32* %"puVar2"
  store i32 0, i32* %"uVar4"
  br label %"11"
e:
  %".229" = load i32, i32* %"iVar1"
  %".230" = add i32 %".229", 20
  store i32 %".230", i32* %"iVar1"
  br label %"c"
f:
  %".233" = mul i32 6, 16
  %".234" = getelementptr inbounds i32, i32* %"arg_ch", i32 %".233"
  %".235" = ptrtoint i32* %".234" to i32
  %".236" = load i32, i32* %"puVar2"
  store i32 0, i32* %"uVar4"
  br label %"11"
"10":
  store i32 4294967295, i32* %"uVar4"
  br label %"11"
"11":
  %".241" = load i32, i32* %"uVar4"
  store i32 %".241", i32* %"register0x00000000"
  %".243" = load i32, i32* %"register0x00000000"
  ret i32 %".243"
}

declare i32 @"sym.cgc_receive_commands"(i32 %"arg_8h") 

declare i32 @"sym.cgc_update_sbi_status"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_delete_product"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_link"(i32 %"arg_8h") 

declare i32 @"sym.cgc_move_pbi_to_sprint"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_delete_pbi"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_product"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_update_sbi_points"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_delete_sprint"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_bytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_update_sbi_description"(i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym.imp.malloc"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.malloc"()
  ret void
}

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_move_sbi_to_pbl"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_all_products"(i32 %"arg_8h") 

declare i32 @"sym.cgc_create_product"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_create_pbi"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_calc_version"() 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_destroy_database"(i32 %"arg_8h") 

declare i32 @"sym.cgc_obf_strings"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_freelist_alloc"(i32 %"arg_8h") 

declare void @"sym.cgc_unlink"(i32 %"arg_8h") 

declare void @"sym.cgc_add_freelist_block"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_init_freelist"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"_reloc.malloc"() 
