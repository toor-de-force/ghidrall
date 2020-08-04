; ModuleID = "greeter_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_sizes" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"pcVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %"arg_10h" = alloca i32
  %"iVar4" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999963
  %"var_21h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".25" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %".26" = alloca i8**
  %".27" = alloca i32**
  store i8** %"argv", i8*** %".26"
  store i32** %"envp", i32*** %".27"
  br label %"0"
"0":
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  call void @"sym.imp.memcpy"()
  br label %"1"
"1":
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".35" = ptrtoint i8* %".34" to i32
  %".36" = call i32 @"sym.cgc_read_line"(i32 0, i32 %".35")
  store i32 %".36", i32* %"iVar3"
  %".38" = load i32, i32* %"iVar3"
  %".39" = icmp slt i32 %".38", 0
  %".40" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000207"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"2", label %"3"
"2":
  store i32 4294967295, i32* %"register0x00000000"
  %".46" = load i32, i32* %"register0x00000000"
  ret i32 %".46"
"3":
  %".48" = load i32, i32* %"iVar3"
  %".49" = add i32 %".48", -1
  store i32 %".49", i32* %"register0x00000004"
  %".51" = load i32, i32* %"var_10h"
  %".52" = load i32, i32* %"register0x00000004"
  %".53" = add i32 %".51", %".52"
  %".54" = zext i8 10 to i32
  %".55" = icmp eq i32 %".53", %".54"
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"4", label %"5"
"4":
  %".61" = load i32, i32* %"iVar3"
  %".62" = add i32 %".61", -1
  store i32 %".62", i32* %"register0x00000004"
  %".64" = load i32, i32* %"var_10h"
  %".65" = load i32, i32* %"register0x00000004"
  %".66" = add i32 %".64", %".65"
  br label %"5"
"5":
  store i32 -1, i32* %"var_18h"
  store i32 0, i32* %"var_28h"
  br label %"6"
"6":
  %".71" = load i32, i32* %"var_10h"
  store i32 %".71", i32* %"iVar2"
  %".73" = load i32, i32* %"var_28h"
  %".74" = icmp ult i32 %".73", 3
  %".75" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000200"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"7", label %"a"
"7":
  %".80" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %".81" = load i32, i32* %"var_28h"
  %".82" = mul i32 %".81", 2
  %".83" = mul i32 %".82", 32
  %".84" = getelementptr inbounds i8, i8* %".80", i32 %".83"
  %".85" = bitcast i8* %".84" to i32*
  %".86" = load i32, i32* %".85"
  store i32 %".86", i32* %"iVar4"
  %".88" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %".89" = load i32, i32* %"var_28h"
  %".90" = mul i32 %".89", 2
  %".91" = mul i32 %".90", 32
  %".92" = getelementptr inbounds i8, i8* %".88", i32 %".91"
  %".93" = bitcast i8* %".92" to i32*
  %".94" = load i32, i32* %".93"
  %".95" = call i32 @"sym.cgc_strlen"(i32 %".94")
  store i32 %".95", i32* %"arg_10h"
  %".97" = load i32, i32* %"iVar2"
  %".98" = load i32, i32* %"iVar4"
  %".99" = load i32, i32* %"arg_10h"
  %".100" = call i32 @"sym.cgc_strncmp"(i32 %".97", i32 %".98", i32 %".99")
  store i32 %".100", i32* %"iVar4"
  %".102" = load i32, i32* %"var_10h"
  store i32 %".102", i32* %"iVar2"
  %".104" = load i32, i32* %"iVar4"
  %".105" = icmp eq i32 %".104", 0
  %".106" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".105", i1* %".106"
  %".108" = load i8, i8* %"register0x00000206"
  %".109" = trunc i8 %".108" to i1
  br i1 %".109", label %"8", label %"9"
"8":
  %".111" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %".112" = load i32, i32* %"var_28h"
  %".113" = mul i32 %".112", 2
  %".114" = mul i32 %".113", 32
  %".115" = getelementptr inbounds i8, i8* %".111", i32 %".114"
  %".116" = bitcast i8* %".115" to i32*
  %".117" = load i32, i32* %".116"
  %".118" = inttoptr i32 %".117" to i32*
  %".119" = bitcast i32* %"pcVar1" to i32**
  store i32* %".118", i32** %".119"
  %".121" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %".122" = load i32, i32* %"var_28h"
  %".123" = mul i32 %".122", 2
  %".124" = mul i32 %".123", 32
  %".125" = getelementptr inbounds i8, i8* %".121", i32 %".124"
  %".126" = bitcast i8* %".125" to i32*
  %".127" = load i32, i32* %".126"
  %".128" = call i32 @"sym.cgc_strlen"(i32 %".127")
  store i32 %".128", i32* %"iVar4"
  %".130" = load i32, i32* %"iVar2"
  %".131" = load i32, i32* %"iVar4"
  %".132" = add i32 %".130", %".131"
  store i32 %".132", i32* %"register0x00000004"
  %".134" = call i32 @"pcVar1"()
  br label %"a"
"9":
  %".136" = load i32, i32* %"var_28h"
  %".137" = add i32 %".136", 1
  store i32 %".137", i32* %"var_28h"
  br label %"6"
a:
  %".140" = load i32, i32* %"var_10h"
  %".141" = load i32, i32* %"iVar3"
  %".142" = call i32 @"sym.cgc_memset"(i32 %".140", i32 0, i32 %".141")
  %".143" = load i32, i32* %"var_10h"
  call void @"sym.cgc_free"(i32 %".143")
  %".145" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".146" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999963
  %".147" = ptrtoint i8* %".146" to i32
  %".148" = ptrtoint i8* %".146" to i32
  %".149" = call i32 @"sym.cgc_bin_to_hex"(i32 %".147", i32 %".148", i32 4)
  %".150" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999963
  %".151" = ptrtoint i8* %".150" to i32
  %".152" = call i32 @"sym.cgc_write_all"(i32 1, i32 %".151", i32 9)
  store i32 %".152", i32* %"iVar3"
  %".154" = load i32, i32* %"iVar3"
  %".155" = icmp ne i32 %".154", 9
  %".156" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".155", i1* %".156"
  %".158" = load i8, i8* %"register0x00000206"
  %".159" = trunc i8 %".158" to i1
  br i1 %".159", label %"1", label %"b"
b:
  store i32 4294967295, i32* %"register0x00000000"
  %".162" = load i32, i32* %"register0x00000000"
  ret i32 %".162"
}

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_write_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_bin_to_hex"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_to_hex"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

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

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_line"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare i32 @"pcVar1"() 

declare void @"_reloc.memcpy"() 
