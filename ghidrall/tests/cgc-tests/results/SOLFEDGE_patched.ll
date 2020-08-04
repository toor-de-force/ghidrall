; ModuleID = "SOLFEDGE_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".31" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".32" = alloca i8**
  %".33" = alloca i32**
  store i8** %"argv", i8*** %".32"
  store i32** %"envp", i32*** %".33"
  br label %"0"
"0":
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_18h"
  call void @"sym.imp.cgc_allocate"()
  %".42" = load i32, i32* %"iVar1"
  %".43" = icmp ne i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".51" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  call void @"sym.imp.cgc_allocate"()
  %".53" = load i32, i32* %"iVar1"
  %".54" = icmp ne i32 %".53", 0
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"4", label %"3"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".62" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".63" = ptrtoint i8* %".62" to i32
  call void @"sym.cgc_recv_all"(i32 %".63", i32 4)
  %".65" = load i32, i32* %"iVar1"
  %".66" = icmp ne i32 %".65", 4
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"5", label %"6"
"5":
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  %".74" = load i32, i32* %"var_14h"
  %".75" = icmp eq i32 %".74", 804619
  %".76" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".75", i1* %".76"
  %".78" = load i8, i8* %"register0x00000206"
  %".79" = trunc i8 %".78" to i1
  br i1 %".79", label %"7", label %"8"
"7":
  %".81" = load i32, i32* %"var_1ch"
  %".82" = load i32, i32* %"var_20h"
  %".83" = call i32 @"sym.cgc_to_syllables"(i32 %".81", i32 %".82")
  store i32 %".83", i32* %"var_18h"
  br label %"b"
"8":
  %".86" = load i32, i32* %"var_14h"
  %".87" = icmp eq i32 %".86", 1128809
  %".88" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".87", i1* %".88"
  %".90" = load i8, i8* %"register0x00000206"
  %".91" = trunc i8 %".90" to i1
  br i1 %".91", label %"9", label %"a"
"9":
  %".93" = load i32, i32* %"var_1ch"
  %".94" = load i32, i32* %"var_20h"
  %".95" = call i32 @"sym.cgc_to_notes"(i32 %".93", i32 %".94")
  store i32 %".95", i32* %"var_18h"
  br label %"b"
a:
  store i32 -901, i32* %"var_18h"
  br label %"b"
b:
  %".100" = load i32, i32* %"var_18h"
  %".101" = icmp slt i32 %".100", 0
  %".102" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".101", i1* %".102"
  %".104" = load i8, i8* %"register0x00000207"
  %".105" = trunc i8 %".104" to i1
  br i1 %".105", label %"c", label %"d"
c:
  %".107" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".108" = ptrtoint i8* %".107" to i32
  %".109" = call i32 @"sym.cgc_send"(i32 %".108", i32 4)
  %".110" = load i32, i32* %"var_18h"
  store i32 %".110", i32* %"register0x00000000"
  %".112" = load i32, i32* %"register0x00000000"
  ret i32 %".112"
d:
  %".114" = load i32, i32* %"var_1ch"
  %".115" = call i32 @"sym.cgc_memset"(i32 %".114", i32 0, i32 4096)
  %".116" = load i32, i32* %"var_20h"
  %".117" = call i32 @"sym.cgc_memset"(i32 %".116", i32 0, i32 4096)
  br label %"4"
}

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_to_syllables"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_syllables"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv_bytes_count"() 

declare i32 @"sym.cgc_process_notes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_next_note_id"(i32 %"arg_8h") 

declare i32 @"sym.cgc_write_syllable_to_buf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_syllable_for_note_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_to_notes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_process_syllables"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_next_syllable_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_write_note_to_buf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_note_for_syllable_id"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_send_notes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_recv_all"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_read_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

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
