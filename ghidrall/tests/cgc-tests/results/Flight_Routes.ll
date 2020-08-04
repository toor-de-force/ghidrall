; ModuleID = "Flight_Routes"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_memManager" = global i32 0
@"obj.airports" = external global i64
@"str.AIRPORT_CODE_EXISTS" = external global i64
@"str.BAD_COMMAND_FORMAT" = external global i64
@"str.COMMAND_TERMINATED" = external global i64
@"str.Database_checksum:__d" = external global i64
@"str.EMPTY_DB" = external global i64
@"str.NO_RESULTS" = external global i64
@"str.TERMINATING" = external global i64
@"str.UNKNOWN_AIRPORT" = external global i64
@"str.UNSPECIFIED_ERROR" = external global i64
define i32 @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"placeholder_13", i32 %"placeholder_14", i32 %"placeholder_15", i32 %"placeholder_16", i32 %"placeholder_17", i32 %"placeholder_18", i32 %"placeholder_19", i32 %"placeholder_20", i32 %"placeholder_21", i32 %"placeholder_22", i32 %"placeholder_23", i32 %"placeholder_24", i32 %"placeholder_25", i32 %"placeholder_26", i32 %"placeholder_27", i32 %"placeholder_28", i32 %"placeholder_29", i32 %"placeholder_30", i32 %"placeholder_31", i32 %"placeholder_32", i32 %"placeholder_33", i32 %"placeholder_34", i32 %"placeholder_35", i32 %"placeholder_36", i32 %"placeholder_37", i32 %"placeholder_38", i32 %"placeholder_39", i32 %"placeholder_40", i32 %"placeholder_41", i32 %"placeholder_42", i32 %"placeholder_43", i32 %"placeholder_44", i32 %"placeholder_45", i32 %"placeholder_46", i32 %"placeholder_47", i32 %"placeholder_48", i32 %"placeholder_49", i32 %"placeholder_50", i32 %"placeholder_51", i32 %"placeholder_52", i32 %"placeholder_53", i32 %"placeholder_54", i32 %"placeholder_55", i32 %"placeholder_56", i32 %"placeholder_57", i32 %"placeholder_58", i32 %"placeholder_59", i32 %"placeholder_60", i32 %"placeholder_61", i32 %"placeholder_62", i32 %"placeholder_63", i32 %"placeholder_64", i32 %"placeholder_65", i32 %"placeholder_66", i32 %"placeholder_67", i32 %"placeholder_68", i32 %"placeholder_69", i32 %"placeholder_70", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".75" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967288
  %"var_110h" = bitcast i8* %".75" to i32*
  %".76" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967280
  %"var_108h" = bitcast i8* %".76" to i32*
  %".77" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967276
  %"var_104h" = bitcast i8* %".77" to i32*
  %".78" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967272
  %"var_100h" = bitcast i8* %".78" to i32*
  %".79" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967212
  %"var_c4h" = bitcast i8* %".79" to i32*
  %".80" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967208
  %"var_c0h" = bitcast i8* %".80" to i32*
  %".81" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967204
  %"var_bch" = bitcast i8* %".81" to i32*
  %".82" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967200
  %"var_b8h" = bitcast i8* %".82" to i32*
  %".83" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967192
  %"var_b0h" = bitcast i8* %".83" to i32*
  %".84" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967188
  %"var_ach" = bitcast i8* %".84" to i32*
  %".85" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967184
  %"var_a8h" = bitcast i8* %".85" to i32*
  %".86" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967180
  %"var_a4h" = bitcast i8* %".86" to i32*
  %".87" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967176
  %"var_a0h" = bitcast i8* %".87" to i32*
  %".88" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967170
  %"var_9ah" = bitcast i8* %".88" to i32*
  %".89" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967020
  %"var_4h" = bitcast i8* %".89" to i32*
  %".90" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"iVar2" = bitcast i8* %".90" to i32*
  %".91" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"arg_8h" = bitcast i8* %".91" to i32*
  %".92" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".92" to i32*
  %".93" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".93" to i32*
  %".94" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".94" to i32*
  %".95" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".95" to i32*
  %".96" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".96" to i32*
  %".97" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".97" to i32*
  %".98" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".98" to i32*
  %".99" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".99" to i32*
  %".100" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".100" to i32*
  %".101" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".101" to i32*
  %".102" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".102" to i32*
  %".103" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".103" to i32*
  %".104" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".104" to i32*
  %".105" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".105" to i32*
  %".106" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".106" to i32*
  %".107" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999804
  %"var_c0h_2" = bitcast i8* %".107" to i32*
  %".108" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999816
  %"var_b4h" = bitcast i8* %".108" to i32*
  %".109" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h_2" = bitcast i8* %".109" to i32*
  %".110" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999842
  %"auStack158" = bitcast i8* %".110" to i1168*
  %".111" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".111" to i32*
  %".112" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h_2" = bitcast i8* %".112" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".113" = alloca i32
  %".114" = alloca i32
  %".115" = alloca i32
  %".116" = alloca i32
  %".117" = alloca i32
  %".118" = alloca i32
  %".119" = alloca i32
  %".120" = alloca i32
  %".121" = alloca i32
  %".122" = alloca i32
  %".123" = alloca i32
  %".124" = alloca i32
  %".125" = alloca i32
  %".126" = alloca i32
  %".127" = alloca i32
  %".128" = alloca i32
  %".129" = alloca i32
  %".130" = alloca i32
  %".131" = alloca i32
  %".132" = alloca i32
  %".133" = alloca i32
  %".134" = alloca i32
  %".135" = alloca i32
  %".136" = alloca i32
  %".137" = alloca i32
  %".138" = alloca i32
  %".139" = alloca i32
  %".140" = alloca i32
  %".141" = alloca i32
  %".142" = alloca i32
  %".143" = alloca i32
  %".144" = alloca i32
  %".145" = alloca i32
  %".146" = alloca i32
  %".147" = alloca i32
  %".148" = alloca i32
  %".149" = alloca i32
  %".150" = alloca i32
  %".151" = alloca i32
  %".152" = alloca i32
  %".153" = alloca i32
  %".154" = alloca i32
  %".155" = alloca i32
  %".156" = alloca i32
  %".157" = alloca i32
  %".158" = alloca i32
  %".159" = alloca i32
  %".160" = alloca i32
  %".161" = alloca i32
  %".162" = alloca i32
  %".163" = alloca i32
  %".164" = alloca i32
  %".165" = alloca i32
  %".166" = alloca i32
  %".167" = alloca i32
  %".168" = alloca i32
  %".169" = alloca i32
  %".170" = alloca i32
  %".171" = alloca i32
  %".172" = alloca i32
  %".173" = alloca i32
  %".174" = alloca i32
  %".175" = alloca i32
  %".176" = alloca i32
  %".177" = alloca i32
  %".178" = alloca i32
  %".179" = alloca i32
  %".180" = alloca i32
  %".181" = alloca i32
  %".182" = alloca i32
  %".183" = alloca i32
  %".184" = alloca i8**
  %".185" = alloca i32**
  store i32 %"placeholder_0", i32* %".113"
  store i32 %"placeholder_1", i32* %".114"
  store i32 %"placeholder_2", i32* %".115"
  store i32 %"placeholder_3", i32* %".116"
  store i32 %"placeholder_4", i32* %".117"
  store i32 %"placeholder_5", i32* %".118"
  store i32 %"placeholder_6", i32* %".119"
  store i32 %"placeholder_7", i32* %".120"
  store i32 %"placeholder_8", i32* %".121"
  store i32 %"placeholder_9", i32* %".122"
  store i32 %"placeholder_10", i32* %".123"
  store i32 %"placeholder_11", i32* %".124"
  store i32 %"placeholder_12", i32* %".125"
  store i32 %"placeholder_13", i32* %".126"
  store i32 %"placeholder_14", i32* %".127"
  store i32 %"placeholder_15", i32* %".128"
  store i32 %"placeholder_16", i32* %".129"
  store i32 %"placeholder_17", i32* %".130"
  store i32 %"placeholder_18", i32* %".131"
  store i32 %"placeholder_19", i32* %".132"
  store i32 %"placeholder_20", i32* %".133"
  store i32 %"placeholder_21", i32* %".134"
  store i32 %"placeholder_22", i32* %".135"
  store i32 %"placeholder_23", i32* %".136"
  store i32 %"placeholder_24", i32* %".137"
  store i32 %"placeholder_25", i32* %".138"
  store i32 %"placeholder_26", i32* %".139"
  store i32 %"placeholder_27", i32* %".140"
  store i32 %"placeholder_28", i32* %".141"
  store i32 %"placeholder_29", i32* %".142"
  store i32 %"placeholder_30", i32* %".143"
  store i32 %"placeholder_31", i32* %".144"
  store i32 %"placeholder_32", i32* %".145"
  store i32 %"placeholder_33", i32* %".146"
  store i32 %"placeholder_34", i32* %".147"
  store i32 %"placeholder_35", i32* %".148"
  store i32 %"placeholder_36", i32* %".149"
  store i32 %"placeholder_37", i32* %".150"
  store i32 %"placeholder_38", i32* %".151"
  store i32 %"placeholder_39", i32* %".152"
  store i32 %"placeholder_40", i32* %".153"
  store i32 %"placeholder_41", i32* %".154"
  store i32 %"placeholder_42", i32* %".155"
  store i32 %"placeholder_43", i32* %".156"
  store i32 %"placeholder_44", i32* %".157"
  store i32 %"placeholder_45", i32* %".158"
  store i32 %"placeholder_46", i32* %".159"
  store i32 %"placeholder_47", i32* %".160"
  store i32 %"placeholder_48", i32* %".161"
  store i32 %"placeholder_49", i32* %".162"
  store i32 %"placeholder_50", i32* %".163"
  store i32 %"placeholder_51", i32* %".164"
  store i32 %"placeholder_52", i32* %".165"
  store i32 %"placeholder_53", i32* %".166"
  store i32 %"placeholder_54", i32* %".167"
  store i32 %"placeholder_55", i32* %".168"
  store i32 %"placeholder_56", i32* %".169"
  store i32 %"placeholder_57", i32* %".170"
  store i32 %"placeholder_58", i32* %".171"
  store i32 %"placeholder_59", i32* %".172"
  store i32 %"placeholder_60", i32* %".173"
  store i32 %"placeholder_61", i32* %".174"
  store i32 %"placeholder_62", i32* %".175"
  store i32 %"placeholder_63", i32* %".176"
  store i32 %"placeholder_64", i32* %".177"
  store i32 %"placeholder_65", i32* %".178"
  store i32 %"placeholder_66", i32* %".179"
  store i32 %"placeholder_67", i32* %".180"
  store i32 %"placeholder_68", i32* %".181"
  store i32 %"placeholder_69", i32* %".182"
  store i32 %"placeholder_70", i32* %".183"
  store i8** %"argv", i8*** %".184"
  store i32** %"envp", i32*** %".185"
  br label %"0"
"0":
  %".260" = call i32 @"sym.cgc_check_db"()
  store i32 %".260", i32* %"iVar1"
  %".262" = load i32, i32* %"iVar1"
  %".263" = call i32 @"sym.cgc_printf"(i32 134537912, i32 %".262")
  %".264" = ptrtoint i64* @"obj.airports" to i32
  %".265" = call i32 @"sym.cgc_loadDB"(i32 %".264")
  store i32 %".265", i32* %"iVar1"
  %".267" = load i32, i32* %"iVar1"
  %".268" = icmp eq i32 %".267", -1
  %".269" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".268", i1* %".269"
  %".271" = load i8, i8* %"register0x00000206"
  %".272" = trunc i8 %".271" to i1
  br i1 %".272", label %"2", label %"1"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".276" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999842
  %".277" = bitcast i32* %"arg_8h" to i8**
  store i8* %".276", i8** %".277"
  %".279" = load i32, i32* %"arg_8h"
  %".280" = call i32 @"sym.cgc_getline"(i32 %".279", i32 150)
  %".281" = ptrtoint i64* @"obj.airports" to i32
  %".282" = load i32, i32* %"arg_8h"
  %".283" = call i32 @"sym.cgc_execute_cmd"(i32 %".281", i32 %".282")
  store i32 %".283", i32* %"iVar1"
  %".285" = load i32, i32* %"iVar1"
  %".286" = icmp eq i32 %".285", -100
  %".287" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".286", i1* %".287"
  %".289" = load i8, i8* %"register0x00000206"
  %".290" = trunc i8 %".289" to i1
  br i1 %".290", label %"3", label %"4"
"3":
  %".292" = load i32, i32* %"arg_8h"
  %".293" = call i32 @"sym.cgc_printf"(i32 134538039, i32 %".292")
  call void @"sym.imp.cgc__terminate"()
  br label %"5"
"4":
  %".296" = load i32, i32* %"iVar1"
  %".297" = icmp eq i32 %".296", -99
  %".298" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".297", i1* %".298"
  %".300" = load i8, i8* %"register0x00000206"
  %".301" = trunc i8 %".300" to i1
  br i1 %".301", label %"5", label %"6"
"5":
  %".303" = load i32, i32* %"arg_8h"
  %".304" = call i32 @"sym.cgc_printf"(i32 134537935, i32 %".303")
  br label %"15"
"6":
  %".306" = load i32, i32* %"iVar1"
  %".307" = icmp eq i32 %".306", -7
  %".308" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".307", i1* %".308"
  %".310" = load i8, i8* %"register0x00000206"
  %".311" = trunc i8 %".310" to i1
  br i1 %".311", label %"7", label %"8"
"7":
  %".313" = load i32, i32* %"arg_8h"
  %".314" = call i32 @"sym.cgc_printf"(i32 134538027, i32 %".313")
  br label %"15"
"8":
  %".316" = load i32, i32* %"iVar1"
  %".317" = icmp eq i32 %".316", -6
  %".318" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".317", i1* %".318"
  %".320" = load i8, i8* %"register0x00000206"
  %".321" = trunc i8 %".320" to i1
  br i1 %".321", label %"9", label %"a"
"9":
  %".323" = load i32, i32* %"arg_8h"
  %".324" = call i32 @"sym.cgc_printf"(i32 134538007, i32 %".323")
  br label %"15"
a:
  %".326" = load i32, i32* %"iVar1"
  %".327" = icmp eq i32 %".326", -5
  %".328" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".327", i1* %".328"
  %".330" = load i8, i8* %"register0x00000206"
  %".331" = trunc i8 %".330" to i1
  br i1 %".331", label %"b", label %"c"
b:
  %".333" = load i32, i32* %"arg_8h"
  %".334" = call i32 @"sym.cgc_printf"(i32 134537997, i32 %".333")
  br label %"15"
c:
  %".336" = load i32, i32* %"iVar1"
  %".337" = icmp eq i32 %".336", -4
  %".338" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".337", i1* %".338"
  %".340" = load i8, i8* %"register0x00000206"
  %".341" = trunc i8 %".340" to i1
  br i1 %".341", label %"d", label %"e"
d:
  %".343" = load i32, i32* %"arg_8h"
  %".344" = call i32 @"sym.cgc_printf"(i32 134537980, i32 %".343")
  br label %"15"
e:
  %".346" = load i32, i32* %"iVar1"
  %".347" = icmp eq i32 %".346", -3
  %".348" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".347", i1* %".348"
  %".350" = load i8, i8* %"register0x00000206"
  %".351" = trunc i8 %".350" to i1
  br i1 %".351", label %"f", label %"10"
f:
  %".353" = load i32, i32* %"arg_8h"
  %".354" = call i32 @"sym.cgc_printf"(i32 134537959, i32 %".353")
  br label %"15"
"10":
  %".356" = load i32, i32* %"iVar1"
  %".357" = icmp eq i32 %".356", -2
  %".358" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".357", i1* %".358"
  %".360" = load i8, i8* %"register0x00000206"
  %".361" = trunc i8 %".360" to i1
  br i1 %".361", label %"11", label %"12"
"11":
  %".363" = load i32, i32* %"arg_8h"
  %".364" = call i32 @"sym.cgc_printf"(i32 134537939, i32 %".363")
  br label %"15"
"12":
  %".366" = load i32, i32* %"iVar1"
  %".367" = icmp eq i32 %".366", 0
  %".368" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".367", i1* %".368"
  %".370" = load i8, i8* %"register0x00000206"
  %".371" = trunc i8 %".370" to i1
  br i1 %".371", label %"14", label %"13"
"13":
  %".373" = load i32, i32* %"arg_8h"
  %".374" = call i32 @"sym.cgc_printf"(i32 134538052, i32 %".373")
  br label %"15"
"14":
  %".376" = load i32, i32* %"arg_8h"
  %".377" = call i32 @"sym.cgc_printf"(i32 134537935, i32 %".376")
  br label %"15"
"15":
  %".379" = load i32, i32* %"iVar1"
  %".380" = icmp eq i32 %".379", -99
  %".381" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".380", i1* %".381"
  %".383" = load i8, i8* %"register0x00000206"
  %".384" = trunc i8 %".383" to i1
  br i1 %".384", label %"2", label %"16"
"16":
  %".386" = load i32, i32* %"arg_8h"
  call void @"sym.imp.cgc__terminate"()
  store i32 0, i32* %"iVar1"
  store i32 0, i32* %"iVar2"
  br label %"17"
"17":
  %".391" = load i32, i32* %"iVar2"
  %".392" = icmp slt i32 %".391", 4096
  br i1 %".392", label %"18", label %"19"
"18":
  %".394" = load i32, i32* %"iVar2"
  %".395" = add i32 %".394", 1128775680
  %".396" = trunc i32 %".395" to i8
  %".397" = zext i8 %".396" to i32
  store i32 %".397", i32* %"register0x00000000"
  %".399" = load i32, i32* %"register0x00000000"
  %".400" = load i32, i32* %"iVar1"
  %".401" = add i32 %".399", %".400"
  store i32 %".401", i32* %"iVar1"
  %".403" = load i32, i32* %"iVar2"
  %".404" = add i32 %".403", 1
  store i32 %".404", i32* %"iVar2"
  br label %"17"
"19":
  %".407" = load i32, i32* %"iVar1"
  store i32 %".407", i32* %"register0x00000000"
  %".409" = load i32, i32* %"register0x00000000"
  ret i32 %".409"
}

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_vsprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

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

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_loadDB"(i32 %"arg_8h") 

declare i32 @"sym.cgc_check4ConnectionCode"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_makeAirportCode"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_findAirportCodebyNumber"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_check4Code"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_getline"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_flush_input"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_check_db"() 

declare i32 @"sym.cgc_execute_cmd"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 
