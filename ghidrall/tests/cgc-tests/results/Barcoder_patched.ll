; ModuleID = "Barcoder_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_stdout" = global i32 0
@"obj.cgc_stdin" = global i32 0
@"obj.g_input" = external global i64
@"str.1._Input_a_new_barcode" = external global i64
@"str.2._View_barcode_ascii" = external global i64
@"str.3._Generate_barcode_image" = external global i64
@"str.4._View_cached_barcodes" = external global i64
@"str.5._Clear_cached_barcodes" = external global i64
@"str.6._Quit" = external global i64
@"str.:" = external global i64
@"str.Invalid_Selection" = external global i64
@"str.Select_an_option" = external global i64
@"str.Welcome_to_the_EZ_Barcode_Encoder_Decoder_Service" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"iVar2" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"arg_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"uVar3" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".33" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".34" = alloca i8**
  %".35" = alloca i32**
  store i8** %"argv", i8*** %".34"
  store i32** %"envp", i32*** %".35"
  br label %"0"
"0":
  store i32 1, i32* %"iVar2"
  %".40" = load i32, i32* @"obj.cgc_stdout"
  call void @"sym.cgc_fbuffered"(i32 %".40", i32 1)
  call void @"sym.cgc_check_seed"()
  %".43" = load i32, i32* %"iVar2"
  %".44" = call i32 @"sym.cgc_printf"(i32 134544428, i32 %".43")
  br label %"1"
"1":
  %".46" = load i32, i32* %"iVar2"
  %".47" = call i32 @"sym.cgc_printf"(i32 134544479, i32 %".46")
  %".48" = load i32, i32* %"iVar2"
  %".49" = call i32 @"sym.cgc_printf"(i32 134544501, i32 %".48")
  %".50" = load i32, i32* %"iVar2"
  %".51" = call i32 @"sym.cgc_printf"(i32 134544525, i32 %".50")
  %".52" = load i32, i32* %"iVar2"
  %".53" = call i32 @"sym.cgc_printf"(i32 134544548, i32 %".52")
  %".54" = load i32, i32* %"iVar2"
  %".55" = call i32 @"sym.cgc_printf"(i32 134544575, i32 %".54")
  %".56" = load i32, i32* %"iVar2"
  %".57" = call i32 @"sym.cgc_printf"(i32 134544600, i32 %".56")
  %".58" = load i32, i32* %"iVar2"
  %".59" = call i32 @"sym.cgc_printf"(i32 134544626, i32 %".58")
  %".60" = load i32, i32* %"iVar2"
  %".61" = call i32 @"sym.cgc_printf"(i32 134544101, i32 %".60")
  %".62" = load i32, i32* @"obj.cgc_stdout"
  %".63" = call i32 @"sym.cgc_fflush"(i32 %".62")
  store i32 2048, i32* %"arg_ch"
  store i32 10, i32* %"uVar3"
  %".66" = load i32, i32* @"obj.cgc_stdin"
  store i32 %".66", i32* %"iVar2"
  %".68" = ptrtoint i64* @"obj.g_input" to i32
  %".69" = load i32, i32* @"obj.cgc_stdin"
  %".70" = call i32 @"sym.cgc_freaduntil"(i32 %".68", i32 2048, i32 10, i32 %".69")
  store i32 %".70", i32* %"iVar1"
  %".72" = load i32, i32* %"iVar1"
  %".73" = icmp eq i32 %".72", -1
  %".74" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".73", i1* %".74"
  %".76" = load i8, i8* %"register0x00000206"
  %".77" = trunc i8 %".76" to i1
  br i1 %".77", label %"2", label %"3"
"2":
  %".79" = load i32, i32* %"arg_ch"
  %".80" = call i32 @"sym.cgc_printf"(i32 134544107, i32 %".79")
  %".81" = load i32, i32* @"obj.cgc_stdout"
  %".82" = call i32 @"sym.cgc_fflush"(i32 %".81")
  %".83" = load i32, i32* %"arg_ch"
  %".84" = load i32, i32* %"uVar3"
  %".85" = load i32, i32* %"iVar2"
  %".86" = call i32 @"sym.cgc_exit"(i32 0, i32 %".83", i32 %".84", i32 %".85")
  br label %"3"
"3":
  store i32 0, i32* %"iVar2"
  %".89" = ptrtoint i64* @"obj.g_input" to i32
  %".90" = call i32 @"sym.cgc_strtol"(i32 %".89", i32 0, i32 10)
  store i32 %".90", i32* %"iVar1"
  %".92" = load i32, i32* %"iVar1"
  %".93" = sub i32 %".92", 1
  store i32 %".93", i32* %"register0x00000000"
  %".95" = load i32, i32* %"register0x00000000"
  %".96" = icmp ult i32 %".95", 5
  %".97" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i32, i32* %"iVar1"
  %".100" = icmp eq i32 %".99", 6
  %".101" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".100", i1* %".101"
  %".103" = load i8, i8* %"register0x00000200"
  %".104" = load i8, i8* %"register0x00000200"
  %".105" = xor i8 %".103", %".104"
  %".106" = trunc i8 %".105" to i1
  br i1 %".106", label %"4", label %"5"
"4":
  %".108" = load i32, i32* %"register0x00000000"
  %".109" = mul i32 %".108", 4
  %".110" = add i32 %".109", 134544008
  %".111" = call i32 @"unique0x00000f30"()
  %".112" = load i32, i32* %"uVar3"
  ret i32 %".112"
"5":
  %".114" = load i32, i32* %"iVar2"
  %".115" = call i32 @"sym.cgc_printf"(i32 134544107, i32 %".114")
  br label %"1"
}

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare void @"sym.cgc_fbuffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__vsfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc__convert_unsigned"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memmove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc__convert_signed"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strtoul"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fwrite"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_xlat_2"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.cgc_check_seed"() 

declare i32 @"sym.cgc_freaduntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__getc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_xlat_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__refill"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fflush"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fread"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"unique0x00000f30"() 
