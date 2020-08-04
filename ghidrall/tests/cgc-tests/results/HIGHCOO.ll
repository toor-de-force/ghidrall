; ModuleID = "HIGHCOO"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_haiku_list" = global i32 0
@"obj.next_haiku_id" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".20" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".21" = alloca i8**
  %".22" = alloca i32**
  store i8** %"argv", i8*** %".21"
  store i32** %"envp", i32*** %".22"
  br label %"0"
"0":
  %".26" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_14h"
  br label %"1"
"1":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".31" = ptrtoint i8* %".30" to i32
  call void @"sym.cgc_recv_all"(i32 %".31", i32 4)
  %".33" = load i32, i32* %"iVar1"
  %".34" = icmp ne i32 %".33", 4
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".42" = load i32, i32* %"var_10h"
  %".43" = icmp eq i32 %".42", 1492
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"4", label %"5"
"4":
  %".49" = call i32 @"sym.cgc_add_haiku"()
  store i32 %".49", i32* %"var_14h"
  br label %"e"
"5":
  %".52" = load i32, i32* %"var_10h"
  %".53" = icmp eq i32 %".52", 1999
  %".54" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".53", i1* %".54"
  %".56" = load i8, i8* %"register0x00000206"
  %".57" = trunc i8 %".56" to i1
  br i1 %".57", label %"6", label %"7"
"6":
  %".59" = call i32 @"sym.cgc_get_haiku_by_id"()
  store i32 %".59", i32* %"var_14h"
  br label %"e"
"7":
  %".62" = load i32, i32* %"var_10h"
  %".63" = icmp eq i32 %".62", 200042
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"8", label %"9"
"8":
  %".69" = call i32 @"sym.cgc_get_haiku_cgc_random"()
  store i32 %".69", i32* %"var_14h"
  br label %"e"
"9":
  %".72" = load i32, i32* %"var_10h"
  %".73" = icmp eq i32 %".72", 1210000
  %".74" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".73", i1* %".74"
  %".76" = load i8, i8* %"register0x00000206"
  %".77" = trunc i8 %".76" to i1
  br i1 %".77", label %"a", label %"b"
a:
  %".79" = call i32 @"sym.cgc_get_haiku_count"()
  store i32 %".79", i32* %"var_14h"
  br label %"e"
b:
  %".82" = load i32, i32* %"var_10h"
  %".83" = icmp eq i32 %".82", 8675309
  %".84" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".83", i1* %".84"
  %".86" = load i8, i8* %"register0x00000206"
  %".87" = trunc i8 %".86" to i1
  br i1 %".87", label %"c", label %"d"
c:
  %".89" = call i32 @"sym.cgc_get_haiku_ids"()
  store i32 %".89", i32* %"var_14h"
  br label %"e"
d:
  store i32 -999, i32* %"var_14h"
  br label %"e"
e:
  %".94" = load i32, i32* %"var_14h"
  %".95" = icmp slt i32 %".94", 0
  %".96" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".95", i1* %".96"
  %".98" = load i8, i8* %"register0x00000207"
  %".99" = trunc i8 %".98" to i1
  br i1 %".99", label %"10", label %"f"
f:
  store i32 0, i32* %"var_10h"
  br label %"1"
"10":
  %".103" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".104" = ptrtoint i8* %".103" to i32
  %".105" = call i32 @"sym.cgc_send"(i32 %".104", i32 4)
  %".106" = load i32, i32* %"var_14h"
  store i32 %".106", i32* %"register0x00000000"
  %".108" = load i32, i32* %"register0x00000000"
  ret i32 %".108"
}

declare i32 @"sym.cgc_get_haiku_ids"() 

declare i32 @"sym.cgc_get_count"() 

declare i8 @"sym.cgc_haiku_list_exists"() 

declare i32 @"sym.cgc_get_id_from_haiku"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_haiku_cgc_random"() 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_send_haiku"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_random_idx"(i32 %"arg_8h") 

declare void @"sym.cgc_rand"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_populate_array_with_haiku_ids"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_find_haiku_with_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_haiku_by_id"() 

declare i32 @"sym.cgc_recv_uint32"() 

declare void @"sym.cgc_send_easter_egg_haiku"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_haiku_count"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_add_haiku"() 

declare void @"sym.cgc_add_haiku_to_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_node_create"(i32 %"arg_8h") 

declare i32 @"sym.cgc_list_push"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_init_haiku_list"() 

declare i32 @"sym.cgc_list_create"() 

declare void @"sym.cgc_send_haiku_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_haiku"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv_haiku_line"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_vsnprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_int2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_get_next_haiku_id"() 

declare i16 @"sym.cgc_recv_haiku_size"() 

declare i16 @"sym.cgc_recv_uint16"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare void @"_reloc.memset"() 
