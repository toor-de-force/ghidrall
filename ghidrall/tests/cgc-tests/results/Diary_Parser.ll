; ModuleID = "Diary_Parser"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.buffer_length" = global i32 0
@"obj.required_entries" = global i8 0
@"obj.successful" = global i8 0
@"obj.success_info" = global i16 0
@"obj.cgc_heap_manager" = global i32 0
@"str.Buffer_length_is_too_small." = external global i64
@"str.Buffer_received_is_not_correct_size." = external global i64
@"str.Failed_to_allocate_enough_space_for_this_buffer." = external global i64
@"str.Future:_0x_x" = external global i64
@"str.Length:__d" = external global i64
@"str.Magic_number:_0x_x" = external global i64
@"str.Offset:_0x_x" = external global i64
@"str.Welcome_to_the_diary_logger" = external global i64
@"str.bad_book." = external global i64
@"str.good_book." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i16
  %"arg_8h" = alloca i32
  %"arg_ch" = alloca i32
  %"arg_ch_00" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"iVar2" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".33" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000008" = alloca i32
  %".34" = alloca i8**
  %".35" = alloca i32**
  store i8** %"argv", i8*** %".34"
  store i32** %"envp", i32*** %".35"
  br label %"0"
"0":
  call void @"sym.cgc_init"()
  %".40" = ptrtoint i8* @"obj.successful" to i32
  %".41" = call i32 @"sym.cgc_memset"(i32 %".40", i32 0, i32 5)
  store i32 0, i32* %"iVar2"
  %".43" = ptrtoint i16* @"obj.success_info" to i32
  %".44" = call i32 @"sym.cgc_memset"(i32 %".43", i32 0, i32 20)
  %".45" = load i32, i32* %"iVar2"
  %".46" = call i32 @"sym.cgc_printf"(i32 134550595, i32 %".45")
  %".47" = call i16 @"sym.cgc_read_short"()
  store i16 %".47", i16* %"uVar1"
  %".49" = load i16, i16* %"uVar1"
  %".50" = zext i16 %".49" to i32
  store i32 %".50", i32* @"obj.buffer_length"
  %".52" = load i16, i16* %"uVar1"
  %".53" = icmp eq i16 %".52", 0
  br i1 %".53", label %"1", label %"2"
"1":
  %".55" = load i32, i32* %"iVar2"
  %".56" = call i32 @"sym.cgc_printf"(i32 134550625, i32 %".55")
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".59" = load i16, i16* %"uVar1"
  %".60" = zext i16 %".59" to i32
  store i32 %".60", i32* %"register0x00000000"
  %".62" = load i32, i32* %"register0x00000000"
  %".63" = call i32 @"sym.cgc_malloc"(i32 %".62")
  %".64" = inttoptr i32 %".63" to i32*
  %".65" = bitcast i32* %"arg_8h" to i32**
  store i32* %".64", i32** %".65"
  %".67" = load i32, i32* %"arg_8h"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"3", label %"4"
"3":
  %".74" = load i32, i32* %"iVar2"
  %".75" = call i32 @"sym.cgc_printf"(i32 134550654, i32 %".74")
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".78" = load i16, i16* %"uVar1"
  %".79" = zext i16 %".78" to i32
  store i32 %".79", i32* %"arg_ch_00"
  %".81" = load i32, i32* %"arg_8h"
  %".82" = load i32, i32* %"arg_ch_00"
  %".83" = call i32 @"sym.cgc_receive_bytes"(i32 %".81", i32 %".82")
  store i32 %".83", i32* %"arg_ch"
  %".85" = load i16, i16* %"uVar1"
  %".86" = zext i16 %".85" to i32
  store i32 %".86", i32* %"register0x00000004"
  %".88" = load i32, i32* %"arg_ch"
  %".89" = load i32, i32* %"register0x00000004"
  %".90" = icmp ne i32 %".88", %".89"
  %".91" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000206"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"5", label %"6"
"5":
  %".96" = load i32, i32* %"arg_ch_00"
  %".97" = call i32 @"sym.cgc_printf"(i32 134550704, i32 %".96")
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  %".100" = load i16, i16* %"uVar1"
  %".101" = icmp ult i16 %".100", 8
  %".102" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".101", i1* %".102"
  %".104" = load i8, i8* %"register0x00000200"
  %".105" = trunc i8 %".104" to i1
  br i1 %".105", label %"7", label %"8"
"7":
  %".107" = load i32, i32* %"arg_ch_00"
  %".108" = call i32 @"sym.cgc_printf"(i32 134550704, i32 %".107")
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  %".111" = load i16, i16* %"uVar1"
  %".112" = zext i16 %".111" to i32
  store i32 %".112", i32* %"register0x00000004"
  %".114" = load i32, i32* %"register0x00000004"
  %".115" = call i32 @"sym.cgc_printf"(i32 134550742, i32 %".114")
  %".116" = load i32, i32* %"arg_8h"
  %".117" = trunc i32 %".116" to i16
  %".118" = zext i16 %".117" to i32
  store i32 %".118", i32* %"register0x00000008"
  %".120" = load i32, i32* %"register0x00000008"
  %".121" = call i32 @"sym.cgc_printf"(i32 134550754, i32 %".120")
  %".122" = mul i32 1, 16
  %".123" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".122"
  %".124" = load i32, i32* %".123"
  %".125" = trunc i32 %".124" to i16
  %".126" = zext i16 %".125" to i32
  store i32 %".126", i32* %"register0x00000008"
  %".128" = load i32, i32* %"register0x00000008"
  %".129" = call i32 @"sym.cgc_printf"(i32 134550774, i32 %".128")
  %".130" = mul i32 2, 16
  %".131" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".130"
  %".132" = ptrtoint i32* %".131" to i32
  %".133" = call i32 @"sym.cgc_printf"(i32 134550788, i32 %".132")
  %".134" = mul i32 2, 16
  %".135" = getelementptr inbounds i32, i32* %"arg_8h", i32 %".134"
  %".136" = ptrtoint i32* %".135" to i32
  %".137" = load i32, i32* %"arg_8h"
  %".138" = load i32, i32* %"arg_ch"
  %".139" = call i32 @"sym.cgc_parse_book"(i32 %".137", i32 %".138", i32 %".136")
  store i32 %".139", i32* %"iVar2"
  %".141" = load i32, i32* %"iVar2"
  %".142" = icmp eq i32 %".141", -1
  %".143" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".142", i1* %".143"
  %".145" = load i8, i8* %"register0x00000206"
  %".146" = trunc i8 %".145" to i1
  br i1 %".146", label %"a", label %"9"
"9":
  call void @"sym.cgc_test_win"()
  %".149" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_free"(i32 %".149")
  %".151" = load i32, i32* %"arg_ch"
  %".152" = call i32 @"sym.cgc_printf"(i32 134550813, i32 %".151")
  store i32 0, i32* %"var_8h"
  br label %"b"
a:
  %".155" = load i32, i32* %"arg_ch"
  %".156" = call i32 @"sym.cgc_printf"(i32 134550802, i32 %".155")
  store i32 -1, i32* %"var_8h"
  br label %"b"
b:
  %".159" = load i32, i32* %"var_8h"
  store i32 %".159", i32* %"register0x00000000"
  %".161" = load i32, i32* %"register0x00000000"
  ret i32 %".161"
}

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_init"() 

declare void @"sym.cgc_populateSubEntryInfo"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_populate_sub_entry"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch", i32 %"arg_20h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_populateEntryInfo"() 

declare void @"sym.cgc_populate_entry"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch", i32 %"arg_20h") 

declare void @"sym.cgc_test_win"() 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_parse_book"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_verify_entry"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getEntryInfo"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_verify_chapter"(i32 %"arg_8h") 

declare i16 @"sym.cgc_read_short"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_bytes"(i32 %"arg_8h", i32 %"arg_ch") 
