; ModuleID = "GREYMATTER_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.buf_recv_tmp" = external global i64
@"str.SRC" = external global i64
define i32 @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"placeholder_13", i32 %"placeholder_14", i32 %"placeholder_15", i32 %"placeholder_16", i32 %"placeholder_17", i32 %"placeholder_18", i32 %"placeholder_19", i32 %"placeholder_20", i32 %"placeholder_21", i32 %"placeholder_22", i32 %"placeholder_23", i32 %"placeholder_24", i32 %"placeholder_25", i32 %"placeholder_26", i32 %"placeholder_27", i32 %"placeholder_28", i32 %"placeholder_29", i32 %"placeholder_30", i32 %"placeholder_31", i32 %"placeholder_32", i32 %"placeholder_33", i32 %"placeholder_34", i32 %"placeholder_35", i32 %"placeholder_36", i32 %"placeholder_37", i32 %"placeholder_38", i32 %"placeholder_39", i32 %"placeholder_40", i32 %"placeholder_41", i32 %"placeholder_42", i32 %"placeholder_43", i32 %"placeholder_44", i32 %"placeholder_45", i32 %"placeholder_46", i32 %"placeholder_47", i32 %"placeholder_48", i32 %"placeholder_49", i32 %"placeholder_50", i32 %"placeholder_51", i32 %"placeholder_52", i32 %"placeholder_53", i32 %"placeholder_54", i32 %"placeholder_55", i32 %"placeholder_56", i32 %"placeholder_57", i32 %"placeholder_58", i32 %"placeholder_59", i32 %"placeholder_60", i32 %"placeholder_61", i32 %"placeholder_62", i32 %"placeholder_63", i32 %"placeholder_64", i32 %"placeholder_65", i32 %"placeholder_66", i32 %"placeholder_67", i32 %"placeholder_68", i32 %"placeholder_69", i32 %"placeholder_70", i32 %"placeholder_71", i32 %"placeholder_72", i32 %"placeholder_73", i32 %"placeholder_74", i32 %"placeholder_75", i32 %"placeholder_76", i32 %"placeholder_77", i32 %"placeholder_78", i32 %"placeholder_79", i32 %"placeholder_80", i32 %"placeholder_81", i32 %"placeholder_82", i32 %"placeholder_83", i32 %"placeholder_84", i32 %"placeholder_85", i32 %"placeholder_86", i32 %"placeholder_87", i32 %"placeholder_88", i32 %"placeholder_89", i32 %"placeholder_90", i32 %"placeholder_91", i32 %"placeholder_92", i32 %"placeholder_93", i32 %"placeholder_94", i32 %"placeholder_95", i32 %"placeholder_96", i32 %"placeholder_97", i32 %"placeholder_98", i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"puVar3" = alloca i32
  %"uVar4" = alloca i32
  %"piVar5" = alloca i32
  %".103" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967292
  %"var_bp_8h" = bitcast i8* %".103" to i32*
  %".104" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967288
  %"var_180h" = bitcast i8* %".104" to i32*
  %".105" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967284
  %"var_17ch" = bitcast i8* %".105" to i32*
  %".106" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967280
  %"var_178h" = bitcast i8* %".106" to i32*
  %".107" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967276
  %"var_174h" = bitcast i8* %".107" to i32*
  %".108" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967272
  %"var_170h" = bitcast i8* %".108" to i32*
  %".109" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967268
  %"var_16ch" = bitcast i8* %".109" to i32*
  %".110" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967264
  %"var_168h" = bitcast i8* %".110" to i32*
  %".111" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967260
  %"var_164h" = bitcast i8* %".111" to i32*
  %".112" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967256
  %"var_160h" = bitcast i8* %".112" to i32*
  %".113" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967252
  %"var_15ch" = bitcast i8* %".113" to i32*
  %".114" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967248
  %"var_158h" = bitcast i8* %".114" to i32*
  %".115" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967244
  %"var_154h" = bitcast i8* %".115" to i32*
  %".116" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967240
  %"var_150h" = bitcast i8* %".116" to i32*
  %".117" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967236
  %"var_14ch" = bitcast i8* %".117" to i32*
  %".118" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967232
  %"var_148h" = bitcast i8* %".118" to i32*
  %".119" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967228
  %"var_144h" = bitcast i8* %".119" to i32*
  %".120" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967224
  %"var_140h" = bitcast i8* %".120" to i32*
  %".121" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967220
  %"var_13ch" = bitcast i8* %".121" to i32*
  %".122" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967216
  %"var_138h" = bitcast i8* %".122" to i32*
  %".123" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967212
  %"var_134h" = bitcast i8* %".123" to i32*
  %".124" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967208
  %"var_130h" = bitcast i8* %".124" to i32*
  %".125" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966952
  %"var_30h" = bitcast i8* %".125" to i32*
  %".126" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966948
  %"var_2ch" = bitcast i8* %".126" to i32*
  %".127" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966944
  %"var_28h" = bitcast i8* %".127" to i32*
  %".128" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966940
  %"var_24h" = bitcast i8* %".128" to i32*
  %".129" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966936
  %"var_20h" = bitcast i8* %".129" to i32*
  %".130" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966928
  %"var_18h" = bitcast i8* %".130" to i32*
  %".131" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966924
  %"var_14h" = bitcast i8* %".131" to i32*
  %".132" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966920
  %"var_10h" = bitcast i8* %".132" to i32*
  %".133" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293966916
  %"var_bp_ch" = bitcast i8* %".133" to i32*
  %".134" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %"auStack396" = bitcast i8* %".134" to i96*
  %".135" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999616
  %"iStack384" = bitcast i8* %".135" to i32*
  %".136" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999620
  %"iStack380" = bitcast i8* %".136" to i32*
  %".137" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999624
  %"uStack376" = bitcast i8* %".137" to i32*
  %".138" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999628
  %"uStack372" = bitcast i8* %".138" to i32*
  %".139" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999632
  %"puStack368" = bitcast i8* %".139" to i32*
  %".140" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999636
  %"uStack364" = bitcast i8* %".140" to i32*
  %".141" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999640
  %"puStack360" = bitcast i8* %".141" to i32*
  %".142" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999644
  %"uStack356" = bitcast i8* %".142" to i32*
  %".143" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999648
  %"uStack352" = bitcast i8* %".143" to i32*
  %".144" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999652
  %"uStack348" = bitcast i8* %".144" to i32*
  %".145" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999656
  %"uStack344" = bitcast i8* %".145" to i32*
  %".146" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"uStack340" = bitcast i8* %".146" to i32*
  %".147" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"uStack336" = bitcast i8* %".147" to i32*
  %".148" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"uStack332" = bitcast i8* %".148" to i32*
  %".149" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"uStack328" = bitcast i8* %".149" to i32*
  %".150" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"iStack324" = bitcast i8* %".150" to i32*
  %".151" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"iStack320" = bitcast i8* %".151" to i32*
  %".152" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"iStack316" = bitcast i8* %".152" to i32*
  %".153" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h_2" = bitcast i8* %".153" to i32*
  %".154" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"auStack308" = bitcast i8* %".154" to i2048*
  %".155" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"puStack52" = bitcast i8* %".155" to i32*
  %".156" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch_2" = bitcast i8* %".156" to i32*
  %".157" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h_2" = bitcast i8* %".157" to i32*
  %".158" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h_2" = bitcast i8* %".158" to i32*
  %".159" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h_2" = bitcast i8* %".159" to i32*
  %".160" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".160" to i32*
  %".161" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"uStack28" = bitcast i8* %".161" to i32*
  %".162" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h_2" = bitcast i8* %".162" to i32*
  %".163" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h_2" = bitcast i8* %".163" to i24*
  %".164" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %"var_dh" = bitcast i8* %".164" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000008" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x0000001c" = alloca i32
  %"register0x00000010" = alloca i32*
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
  %".184" = alloca i32
  %".185" = alloca i32
  %".186" = alloca i32
  %".187" = alloca i32
  %".188" = alloca i32
  %".189" = alloca i32
  %".190" = alloca i32
  %".191" = alloca i32
  %".192" = alloca i32
  %".193" = alloca i32
  %".194" = alloca i32
  %".195" = alloca i32
  %".196" = alloca i32
  %".197" = alloca i32
  %".198" = alloca i32
  %".199" = alloca i32
  %".200" = alloca i32
  %".201" = alloca i32
  %".202" = alloca i32
  %".203" = alloca i32
  %".204" = alloca i32
  %".205" = alloca i32
  %".206" = alloca i32
  %".207" = alloca i32
  %".208" = alloca i32
  %".209" = alloca i32
  %".210" = alloca i32
  %".211" = alloca i32
  %".212" = alloca i32
  %".213" = alloca i32
  %".214" = alloca i32
  %".215" = alloca i32
  %".216" = alloca i32
  %".217" = alloca i32
  %".218" = alloca i32
  %".219" = alloca i32
  %".220" = alloca i32
  %".221" = alloca i32
  %".222" = alloca i32
  %".223" = alloca i32
  %".224" = alloca i32
  %".225" = alloca i32
  %".226" = alloca i32
  %".227" = alloca i32
  %".228" = alloca i32
  %".229" = alloca i32
  %".230" = alloca i32
  %".231" = alloca i32
  %".232" = alloca i32
  %".233" = alloca i32
  %".234" = alloca i32
  %".235" = alloca i32
  %".236" = alloca i32
  %".237" = alloca i32
  %".238" = alloca i32
  %".239" = alloca i32
  %".240" = alloca i32
  %".241" = alloca i32
  %".242" = alloca i32
  %".243" = alloca i32
  %".244" = alloca i32
  %".245" = alloca i32
  %".246" = alloca i32
  %".247" = alloca i32
  %".248" = alloca i32
  %".249" = alloca i32
  %".250" = alloca i32
  %".251" = alloca i32
  %".252" = alloca i32
  %".253" = alloca i32
  %".254" = alloca i32
  %".255" = alloca i32
  %".256" = alloca i32
  %".257" = alloca i32
  %".258" = alloca i32
  %".259" = alloca i32
  %".260" = alloca i32
  %".261" = alloca i32
  %".262" = alloca i32
  %".263" = alloca i32
  %".264" = alloca i32
  %".265" = alloca i32
  store i32 %"placeholder_0", i32* %".165"
  store i32 %"placeholder_1", i32* %".166"
  store i32 %"placeholder_2", i32* %".167"
  store i32 %"placeholder_3", i32* %".168"
  store i32 %"placeholder_4", i32* %".169"
  store i32 %"placeholder_5", i32* %".170"
  store i32 %"placeholder_6", i32* %".171"
  store i32 %"placeholder_7", i32* %".172"
  store i32 %"placeholder_8", i32* %".173"
  store i32 %"placeholder_9", i32* %".174"
  store i32 %"placeholder_10", i32* %".175"
  store i32 %"placeholder_11", i32* %".176"
  store i32 %"placeholder_12", i32* %".177"
  store i32 %"placeholder_13", i32* %".178"
  store i32 %"placeholder_14", i32* %".179"
  store i32 %"placeholder_15", i32* %".180"
  store i32 %"placeholder_16", i32* %".181"
  store i32 %"placeholder_17", i32* %".182"
  store i32 %"placeholder_18", i32* %".183"
  store i32 %"placeholder_19", i32* %".184"
  store i32 %"placeholder_20", i32* %".185"
  store i32 %"placeholder_21", i32* %".186"
  store i32 %"placeholder_22", i32* %".187"
  store i32 %"placeholder_23", i32* %".188"
  store i32 %"placeholder_24", i32* %".189"
  store i32 %"placeholder_25", i32* %".190"
  store i32 %"placeholder_26", i32* %".191"
  store i32 %"placeholder_27", i32* %".192"
  store i32 %"placeholder_28", i32* %".193"
  store i32 %"placeholder_29", i32* %".194"
  store i32 %"placeholder_30", i32* %".195"
  store i32 %"placeholder_31", i32* %".196"
  store i32 %"placeholder_32", i32* %".197"
  store i32 %"placeholder_33", i32* %".198"
  store i32 %"placeholder_34", i32* %".199"
  store i32 %"placeholder_35", i32* %".200"
  store i32 %"placeholder_36", i32* %".201"
  store i32 %"placeholder_37", i32* %".202"
  store i32 %"placeholder_38", i32* %".203"
  store i32 %"placeholder_39", i32* %".204"
  store i32 %"placeholder_40", i32* %".205"
  store i32 %"placeholder_41", i32* %".206"
  store i32 %"placeholder_42", i32* %".207"
  store i32 %"placeholder_43", i32* %".208"
  store i32 %"placeholder_44", i32* %".209"
  store i32 %"placeholder_45", i32* %".210"
  store i32 %"placeholder_46", i32* %".211"
  store i32 %"placeholder_47", i32* %".212"
  store i32 %"placeholder_48", i32* %".213"
  store i32 %"placeholder_49", i32* %".214"
  store i32 %"placeholder_50", i32* %".215"
  store i32 %"placeholder_51", i32* %".216"
  store i32 %"placeholder_52", i32* %".217"
  store i32 %"placeholder_53", i32* %".218"
  store i32 %"placeholder_54", i32* %".219"
  store i32 %"placeholder_55", i32* %".220"
  store i32 %"placeholder_56", i32* %".221"
  store i32 %"placeholder_57", i32* %".222"
  store i32 %"placeholder_58", i32* %".223"
  store i32 %"placeholder_59", i32* %".224"
  store i32 %"placeholder_60", i32* %".225"
  store i32 %"placeholder_61", i32* %".226"
  store i32 %"placeholder_62", i32* %".227"
  store i32 %"placeholder_63", i32* %".228"
  store i32 %"placeholder_64", i32* %".229"
  store i32 %"placeholder_65", i32* %".230"
  store i32 %"placeholder_66", i32* %".231"
  store i32 %"placeholder_67", i32* %".232"
  store i32 %"placeholder_68", i32* %".233"
  store i32 %"placeholder_69", i32* %".234"
  store i32 %"placeholder_70", i32* %".235"
  store i32 %"placeholder_71", i32* %".236"
  store i32 %"placeholder_72", i32* %".237"
  store i32 %"placeholder_73", i32* %".238"
  store i32 %"placeholder_74", i32* %".239"
  store i32 %"placeholder_75", i32* %".240"
  store i32 %"placeholder_76", i32* %".241"
  store i32 %"placeholder_77", i32* %".242"
  store i32 %"placeholder_78", i32* %".243"
  store i32 %"placeholder_79", i32* %".244"
  store i32 %"placeholder_80", i32* %".245"
  store i32 %"placeholder_81", i32* %".246"
  store i32 %"placeholder_82", i32* %".247"
  store i32 %"placeholder_83", i32* %".248"
  store i32 %"placeholder_84", i32* %".249"
  store i32 %"placeholder_85", i32* %".250"
  store i32 %"placeholder_86", i32* %".251"
  store i32 %"placeholder_87", i32* %".252"
  store i32 %"placeholder_88", i32* %".253"
  store i32 %"placeholder_89", i32* %".254"
  store i32 %"placeholder_90", i32* %".255"
  store i32 %"placeholder_91", i32* %".256"
  store i32 %"placeholder_92", i32* %".257"
  store i32 %"placeholder_93", i32* %".258"
  store i32 %"placeholder_94", i32* %".259"
  store i32 %"placeholder_95", i32* %".260"
  store i32 %"placeholder_96", i32* %".261"
  store i32 %"placeholder_97", i32* %".262"
  store i32 %"placeholder_98", i32* %".263"
  store i32 %"arg_8h", i32* %".264"
  store i32 %"arg_ch", i32* %".265"
  br label %"0"
"0":
  %".368" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999996
  %".369" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".368", i8** %".369"
  store i32 0, i32* %"var_14h_2"
  store i32 0, i32* %"uStack28"
  %".373" = load i32, i32* %"var_180h"
  store i32 %".373", i32* %"iStack316"
  %".375" = load i32, i32* %"var_bp_8h"
  store i32 %".375", i32* %"iStack320"
  %".377" = load i32, i32* %"var_180h"
  %".378" = icmp ult i32 %".377", 1001
  br i1 %".378", label %"1", label %"17"
"1":
  %".380" = load i32, i32* %"var_bp_8h"
  store i32 %".380", i32* %"iStack324"
  %".382" = load i32, i32* %"var_bp_8h"
  %".383" = call i32 @"sym.cgc_strlen"(i32 %".382")
  store i32 %".383", i32* %"iVar1"
  store i32 0, i32* %"uStack328"
  store i32 1, i32* %"uStack332"
  %".387" = load i32, i32* %"iStack324"
  %".388" = load i32, i32* %"iVar1"
  %".389" = call i32 @"sym.cgc_transmit_with_term"(i32 1, i32 %".387", i32 %".388", i32 0)
  store i32 %".389", i32* %"var_14h_2"
  %".391" = load i32, i32* %"var_14h_2"
  %".392" = icmp eq i32 %".391", 0
  %".393" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".392", i1* %".393"
  %".395" = load i32, i32* %"var_14h_2"
  %".396" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".395", i32* %".396"
  %".398" = load i8, i8* %"register0x00000206"
  %".399" = trunc i8 %".398" to i1
  br i1 %".399", label %"2", label %"18"
"2":
  %".401" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".402" = ptrtoint i8* %".401" to i32
  %".403" = add i32 %".402", 2
  %".404" = getelementptr i32, i32* %"var_1ch", i16 16
  %".405" = bitcast i32* %".404" to i16*
  store i16 0, i16* %".405"
  store i32 0, i32* %"uStack336"
  store i32 2, i32* %"uStack340"
  %".409" = call i32 @"sym.cgc_receive_all"(i32 0, i32 %".403", i32 2, i32 0)
  store i32 %".409", i32* %"var_14h_2"
  %".411" = load i32, i32* %"var_14h_2"
  %".412" = icmp eq i32 %".411", 0
  %".413" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".412", i1* %".413"
  %".415" = load i32, i32* %"var_14h_2"
  %".416" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".415", i32* %".416"
  %".418" = load i8, i8* %"register0x00000206"
  %".419" = trunc i8 %".418" to i1
  br i1 %".419", label %"3", label %"18"
"3":
  %".421" = load i32, i32* %"var_1ch"
  %".422" = trunc i32 %".421" to i16
  %".423" = zext i16 %".422" to i32
  store i32 %".423", i32* %"register0x00000000"
  %".425" = load i32, i32* %"register0x00000000"
  %".426" = add i32 %".425", 1
  store i32 %".426", i32* %"register0x00000000"
  %".428" = load i32, i32* %"var_1ch"
  %".429" = trunc i32 %".428" to i16
  %".430" = zext i16 %".429" to i32
  store i32 %".430", i32* %"register0x00000004"
  %".432" = load i32, i32* %"register0x00000004"
  %".433" = load i32, i32* %"register0x00000000"
  %".434" = icmp ule i32 %".432", %".433"
  br i1 %".434", label %"4", label %"18"
"4":
  store i32 0, i32* %"uStack344"
  store i32 65535, i32* %"uStack348"
  %".438" = ptrtoint i64* @"obj.buf_recv_tmp" to i32
  %".439" = call i32 @"sym.cgc_recv_until_delim"(i32 0, i32 %".438", i32 65535)
  store i32 %".439", i32* %"iVar1"
  %".441" = load i32, i32* %"iVar1"
  %".442" = icmp slt i32 %".441", 0
  br i1 %".442", label %"16", label %"5"
"5":
  %".444" = ptrtoint i64* @"obj.buf_recv_tmp" to i32
  %".445" = load i32, i32* %"var_bp_8h"
  %".446" = call i32 @"sym.cgc_strcmp"(i32 %".445", i32 %".444")
  store i32 %".446", i32* %"iVar1"
  %".448" = load i32, i32* %"iVar1"
  %".449" = icmp eq i32 %".448", 0
  %".450" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".449", i1* %".450"
  %".452" = load i8, i8* %"register0x00000206"
  %".453" = trunc i8 %".452" to i1
  br i1 %".453", label %"6", label %"15"
"6":
  %".455" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  store i32 0, i32* %"var_20h_2"
  %".457" = load i32, i32* %"var_1ch"
  %".458" = trunc i32 %".457" to i16
  %".459" = zext i16 %".458" to i32
  store i32 %".459", i32* %"register0x00000008"
  %".461" = load i32, i32* %"register0x00000008"
  %".462" = add i32 %".461", 1
  store i32 %".462", i32* %"register0x00000008"
  store i32 0, i32* %"uStack352"
  %".465" = load i32, i32* %"register0x00000008"
  call void @"sym.imp.cgc_allocate"()
  %".467" = load i32, i32* %"var_14h_2"
  %".468" = icmp eq i32 %".467", 0
  %".469" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".468", i1* %".469"
  %".471" = load i32, i32* %"var_14h_2"
  %".472" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".471", i32* %".472"
  %".474" = load i8, i8* %"register0x00000206"
  %".475" = trunc i8 %".474" to i1
  br i1 %".475", label %"7", label %"18"
"7":
  %".477" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".478" = load i32, i32* %"var_1ch"
  %".479" = trunc i32 %".478" to i16
  %".480" = zext i16 %".479" to i32
  store i32 %".480", i32* %"register0x00000018"
  store i32 0, i32* %"uStack356"
  %".483" = ptrtoint i8* %".477" to i32
  %".484" = load i32, i32* %"var_20h_2"
  %".485" = load i32, i32* %"register0x00000018"
  %".486" = call i32 @"sym.cgc_receive_with_term"(i32 0, i32 %".484", i32 %".485", i32 %".483")
  store i32 %".486", i32* %"var_14h_2"
  %".488" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %".489" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".488", i8** %".489"
  %".491" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %".492" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".491", i8** %".492"
  %".494" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %".495" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".494", i8** %".495"
  %".497" = load i32, i32* %"var_14h_2"
  %".498" = icmp eq i32 %".497", 0
  %".499" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".498", i1* %".499"
  %".501" = ptrtoint i32** %"register0x00000010" to i32
  store i32 %".501", i32* %"puVar3"
  %".503" = load i8, i8* %"register0x00000206"
  %".504" = trunc i8 %".503" to i1
  br i1 %".504", label %"14", label %"8"
"8":
  %".506" = load i32, i32* %"var_1ch"
  %".507" = trunc i32 %".506" to i16
  %".508" = zext i16 %".507" to i32
  store i32 %".508", i32* %"register0x00000004"
  %".510" = load i32, i32* %"uStack28"
  %".511" = load i32, i32* %"register0x00000004"
  %".512" = icmp eq i32 %".510", %".511"
  %".513" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".512", i1* %".513"
  %".515" = ptrtoint i32** %"register0x00000010" to i32
  store i32 %".515", i32* %"puVar3"
  %".517" = load i8, i8* %"register0x00000206"
  %".518" = trunc i8 %".517" to i1
  br i1 %".518", label %"9", label %"14"
"9":
  %".520" = load i32, i32* %"var_20h_2"
  store i32 %".520", i32* %"var_24h_2"
  %".522" = ptrtoint i32** %"register0x00000010" to i32
  store i32 %".522", i32* %"puVar3"
  br label %"a"
a:
  %".525" = mul i32 -4, 32
  %".526" = getelementptr inbounds i32, i32* %"puVar3", i32 %".525"
  store i32* %".526", i32** %"register0x00000010"
  %".528" = mul i32 -4, 32
  %".529" = getelementptr inbounds i32, i32* %"puVar3", i32 %".528"
  store i32* %".529", i32** %"register0x00000010"
  %".531" = load i32, i32* %"var_24h_2"
  %".532" = bitcast i32** %"register0x00000010" to i32*
  store i32 %".531", i32* %".532"
  %".534" = mul i32 -3, 32
  %".535" = getelementptr inbounds i32, i32* %"puVar3", i32 %".534"
  %".536" = mul i32 -5, 32
  %".537" = getelementptr inbounds i32, i32* %"puVar3", i32 %".536"
  store i32* %".537", i32** %"register0x00000010"
  %".539" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518391, i32* %".539"
  %".541" = load i32*, i32** %"register0x00000010"
  %".542" = mul i32 -3, 32
  %".543" = getelementptr inbounds i32, i32* %"puVar3", i32 %".542"
  %".544" = load i32, i32* %".543"
  %".545" = ptrtoint i32* %".541" to i32
  %".546" = call i32 @"sym.cgc_strpos"(i32 %".545", i32 %".544")
  store i32 %".546", i32* %"var_24h_2"
  %".548" = load i32, i32* %"var_24h_2"
  %".549" = icmp eq i32 %".548", 0
  %".550" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".549", i1* %".550"
  %".552" = load i8, i8* %"register0x00000206"
  %".553" = trunc i8 %".552" to i1
  br i1 %".553", label %"14", label %"b"
b:
  %".555" = mul i32 -4, 32
  %".556" = getelementptr inbounds i32, i32* %"puVar3", i32 %".555"
  store i32* %".556", i32** %"register0x00000010"
  %".558" = mul i32 -4, 32
  %".559" = getelementptr inbounds i32, i32* %"puVar3", i32 %".558"
  store i32* %".559", i32** %"register0x00000010"
  %".561" = bitcast i32** %"register0x00000010" to i32*
  store i32 134519124, i32* %".561"
  %".563" = mul i32 -5, 32
  %".564" = getelementptr inbounds i32, i32* %"puVar3", i32 %".563"
  store i32* %".564", i32** %"register0x00000010"
  %".566" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518424, i32* %".566"
  %".568" = load i32*, i32** %"register0x00000010"
  %".569" = ptrtoint i32* %".568" to i32
  %".570" = call i32 @"sym.cgc_strlen"(i32 %".569")
  store i32 %".570", i32* %"iVar1"
  %".572" = load i32, i32* %"iVar1"
  %".573" = load i32, i32* %"var_24h_2"
  %".574" = add i32 %".572", %".573"
  store i32 %".574", i32* %"var_24h_2"
  %".576" = mul i32 -4, 32
  %".577" = getelementptr inbounds i32, i32* %"puVar3", i32 %".576"
  store i32* %".577", i32** %"register0x00000010"
  %".579" = mul i32 -4, 32
  %".580" = getelementptr inbounds i32, i32* %"puVar3", i32 %".579"
  store i32* %".580", i32** %"register0x00000010"
  %".582" = load i32, i32* %"var_24h_2"
  %".583" = bitcast i32** %"register0x00000010" to i32*
  store i32 %".582", i32* %".583"
  %".585" = mul i32 -3, 32
  %".586" = getelementptr inbounds i32, i32* %"puVar3", i32 %".585"
  %".587" = mul i32 -5, 32
  %".588" = getelementptr inbounds i32, i32* %"puVar3", i32 %".587"
  store i32* %".588", i32** %"register0x00000010"
  %".590" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518457, i32* %".590"
  %".592" = load i32, i32* %"var_24h_2"
  store i32 %".592", i32* %"iVar1"
  %".594" = load i32*, i32** %"register0x00000010"
  %".595" = mul i32 -3, 32
  %".596" = getelementptr inbounds i32, i32* %"puVar3", i32 %".595"
  %".597" = load i32, i32* %".596"
  %".598" = ptrtoint i32* %".594" to i32
  %".599" = call i32 @"sym.cgc_strpos"(i32 %".598", i32 %".597")
  store i32 %".599", i32* %"iVar2"
  %".601" = load i32, i32* %"iVar2"
  %".602" = icmp eq i32 %".601", 0
  %".603" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".602", i1* %".603"
  %".605" = load i8, i8* %"register0x00000206"
  %".606" = trunc i8 %".605" to i1
  br i1 %".606", label %"a", label %"c"
c:
  %".608" = load i32, i32* %"iVar2"
  %".609" = load i32, i32* %"var_24h_2"
  %".610" = sub i32 %".608", %".609"
  store i32 %".610", i32* %"iVar2"
  %".612" = load i32, i32* %"iVar2"
  %".613" = add i32 %".612", 1
  store i32 %".613", i32* %"register0x00000000"
  %".615" = load i32, i32* %"register0x00000000"
  store i32 %".615", i32* %"var_2ch_2"
  %".617" = load i32, i32* %"puVar3"
  store i32 %".617", i32* %"puStack52"
  %".619" = load i32, i32* %"iVar2"
  %".620" = add i32 %".619", 16
  store i32 %".620", i32* %"register0x00000000"
  %".622" = load i32, i32* %"register0x00000000"
  %".623" = and i32 %".622", 4294967280
  store i32 %".623", i32* %"register0x00000000"
  %".625" = load i32, i32* %"puVar3"
  %".626" = load i32, i32* %"register0x00000000"
  %".627" = sub i32 %".625", %".626"
  %".628" = inttoptr i32 %".627" to i32*
  %".629" = bitcast i32* %"puVar3" to i32**
  store i32* %".628", i32** %".629"
  %".631" = mul i32 -4, 32
  %".632" = getelementptr inbounds i32, i32* %"puVar3", i32 %".631"
  store i32* %".632", i32** %"register0x00000010"
  %".634" = mul i32 -4, 32
  %".635" = getelementptr inbounds i32, i32* %"puVar3", i32 %".634"
  store i32* %".635", i32** %"register0x00000010"
  %".637" = load i32, i32* %"puVar3"
  %".638" = bitcast i32** %"register0x00000010" to i32*
  store i32 %".637", i32* %".638"
  %".640" = mul i32 -3, 32
  %".641" = getelementptr inbounds i32, i32* %"puVar3", i32 %".640"
  %".642" = load i32, i32* %"iVar1"
  %".643" = mul i32 -2, 32
  %".644" = getelementptr inbounds i32, i32* %"puVar3", i32 %".643"
  %".645" = load i32, i32* %"iVar2"
  %".646" = load i32, i32* %"puVar3"
  store i32 %".646", i32* %"puStack360"
  %".648" = mul i32 -5, 32
  %".649" = getelementptr inbounds i32, i32* %"puVar3", i32 %".648"
  store i32* %".649", i32** %"register0x00000010"
  %".651" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518540, i32* %".651"
  %".653" = load i32*, i32** %"register0x00000010"
  %".654" = mul i32 -3, 32
  %".655" = getelementptr inbounds i32, i32* %"puVar3", i32 %".654"
  %".656" = load i32, i32* %".655"
  %".657" = mul i32 -2, 32
  %".658" = getelementptr inbounds i32, i32* %"puVar3", i32 %".657"
  %".659" = load i32, i32* %".658"
  %".660" = ptrtoint i32* %".653" to i32
  %".661" = call i32 @"sym.cgc_strncpy"(i32 %".660", i32 %".656", i32 %".659")
  store i32 %".661", i32* %"uStack364"
  %".663" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %".664" = load i32, i32* %"var_2ch_2"
  %".665" = add i32 %".664", -1
  store i32 %".665", i32* %"register0x0000001c"
  %".667" = load i32, i32* %"puStack360"
  %".668" = load i32, i32* %"register0x0000001c"
  %".669" = add i32 %".667", %".668"
  %".670" = mul i32 -4, 32
  %".671" = getelementptr inbounds i32, i32* %"puVar3", i32 %".670"
  store i32* %".671", i32** %"register0x00000010"
  %".673" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".663", i8** %".673"
  %".675" = mul i32 -3, 32
  %".676" = getelementptr inbounds i32, i32* %"puVar3", i32 %".675"
  %".677" = mul i32 -2, 32
  %".678" = getelementptr inbounds i32, i32* %"puVar3", i32 %".677"
  %".679" = bitcast i32* %"puStack368" to i8**
  store i8* %".663", i8** %".679"
  store i32 0, i32* %"uStack372"
  store i32 256, i32* %"uStack376"
  %".683" = mul i32 -5, 32
  %".684" = getelementptr inbounds i32, i32* %"puVar3", i32 %".683"
  store i32* %".684", i32** %"register0x00000010"
  %".686" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518625, i32* %".686"
  call void @"sym.imp.memset"()
  %".689" = load i32, i32* %"var_2ch_2"
  store i32 %".689", i32* %"iVar1"
  %".691" = mul i32 -4, 32
  %".692" = getelementptr inbounds i32, i32* %"puVar3", i32 %".691"
  store i32* %".692", i32** %"register0x00000010"
  %".694" = mul i32 -4, 32
  %".695" = getelementptr inbounds i32, i32* %"puVar3", i32 %".694"
  store i32* %".695", i32** %"register0x00000010"
  %".697" = load i32, i32* %"puStack368"
  %".698" = bitcast i32** %"register0x00000010" to i32*
  store i32 %".697", i32* %".698"
  %".700" = mul i32 -3, 32
  %".701" = getelementptr inbounds i32, i32* %"puVar3", i32 %".700"
  %".702" = load i32, i32* %"puStack360"
  %".703" = mul i32 -2, 32
  %".704" = getelementptr inbounds i32, i32* %"puVar3", i32 %".703"
  %".705" = load i32, i32* %"iVar1"
  %".706" = mul i32 -5, 32
  %".707" = getelementptr inbounds i32, i32* %"puVar3", i32 %".706"
  store i32* %".707", i32** %"register0x00000010"
  %".709" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518669, i32* %".709"
  %".711" = load i32*, i32** %"register0x00000010"
  %".712" = mul i32 -3, 32
  %".713" = getelementptr inbounds i32, i32* %"puVar3", i32 %".712"
  %".714" = load i32, i32* %".713"
  %".715" = mul i32 -2, 32
  %".716" = getelementptr inbounds i32, i32* %"puVar3", i32 %".715"
  %".717" = load i32, i32* %".716"
  %".718" = ptrtoint i32* %".711" to i32
  %".719" = call i32 @"sym.cgc_canonicalize_path"(i32 %".718", i32 %".714", i32 %".717")
  store i32 %".719", i32* %"var_14h_2"
  %".721" = load i32, i32* %"var_14h_2"
  %".722" = icmp eq i32 %".721", 0
  %".723" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".722", i1* %".723"
  %".725" = load i8, i8* %"register0x00000206"
  %".726" = trunc i8 %".725" to i1
  br i1 %".726", label %"d", label %"10"
d:
  %".728" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %".729" = load i32, i32* %"var_180h"
  %".730" = add i32 %".729", 1
  store i32 %".730", i32* %"var_180h"
  %".732" = mul i32 -4, 32
  %".733" = getelementptr inbounds i32, i32* %"puVar3", i32 %".732"
  store i32* %".733", i32** %"register0x00000010"
  %".735" = mul i32 -4, 32
  %".736" = getelementptr inbounds i32, i32* %"puVar3", i32 %".735"
  store i32* %".736", i32** %"register0x00000010"
  %".738" = bitcast i32** %"register0x00000010" to i8**
  store i8* %".728", i8** %".738"
  %".740" = mul i32 -3, 32
  %".741" = getelementptr inbounds i32, i32* %"puVar3", i32 %".740"
  %".742" = load i32, i32* %"var_180h"
  %".743" = mul i32 -5, 32
  %".744" = getelementptr inbounds i32, i32* %"puVar3", i32 %".743"
  store i32* %".744", i32** %"register0x00000010"
  %".746" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518730, i32* %".746"
  %".748" = load i32*, i32** %"register0x00000010"
  %".749" = mul i32 -3, 32
  %".750" = getelementptr inbounds i32, i32* %"puVar3", i32 %".749"
  %".751" = load i32, i32* %".750"
  %".752" = mul i32 -2, 32
  %".753" = getelementptr inbounds i32, i32* %"puVar3", i32 %".752"
  %".754" = load i32, i32* %".753"
  %".755" = mul i32 -1, 32
  %".756" = getelementptr inbounds i32, i32* %"puVar3", i32 %".755"
  %".757" = load i32, i32* %".756"
  %".758" = load i32, i32* %"puVar3"
  %".759" = mul i32 1, 32
  %".760" = getelementptr inbounds i32, i32* %"puVar3", i32 %".759"
  %".761" = load i32, i32* %".760"
  %".762" = mul i32 2, 32
  %".763" = getelementptr inbounds i32, i32* %"puVar3", i32 %".762"
  %".764" = load i32, i32* %".763"
  %".765" = mul i32 3, 32
  %".766" = getelementptr inbounds i32, i32* %"puVar3", i32 %".765"
  %".767" = load i32, i32* %".766"
  %".768" = mul i32 4, 32
  %".769" = getelementptr inbounds i32, i32* %"puVar3", i32 %".768"
  %".770" = load i32, i32* %".769"
  %".771" = mul i32 5, 32
  %".772" = getelementptr inbounds i32, i32* %"puVar3", i32 %".771"
  %".773" = load i32, i32* %".772"
  %".774" = mul i32 6, 32
  %".775" = getelementptr inbounds i32, i32* %"puVar3", i32 %".774"
  %".776" = load i32, i32* %".775"
  %".777" = mul i32 7, 32
  %".778" = getelementptr inbounds i32, i32* %"puVar3", i32 %".777"
  %".779" = load i32, i32* %".778"
  %".780" = mul i32 8, 32
  %".781" = getelementptr inbounds i32, i32* %"puVar3", i32 %".780"
  %".782" = load i32, i32* %".781"
  %".783" = mul i32 9, 32
  %".784" = getelementptr inbounds i32, i32* %"puVar3", i32 %".783"
  %".785" = load i32, i32* %".784"
  %".786" = mul i32 10, 32
  %".787" = getelementptr inbounds i32, i32* %"puVar3", i32 %".786"
  %".788" = load i32, i32* %".787"
  %".789" = mul i32 11, 32
  %".790" = getelementptr inbounds i32, i32* %"puVar3", i32 %".789"
  %".791" = load i32, i32* %".790"
  %".792" = mul i32 12, 32
  %".793" = getelementptr inbounds i32, i32* %"puVar3", i32 %".792"
  %".794" = load i32, i32* %".793"
  %".795" = mul i32 13, 32
  %".796" = getelementptr inbounds i32, i32* %"puVar3", i32 %".795"
  %".797" = load i32, i32* %".796"
  %".798" = mul i32 14, 32
  %".799" = getelementptr inbounds i32, i32* %"puVar3", i32 %".798"
  %".800" = load i32, i32* %".799"
  %".801" = mul i32 15, 32
  %".802" = getelementptr inbounds i32, i32* %"puVar3", i32 %".801"
  %".803" = load i32, i32* %".802"
  %".804" = mul i32 16, 32
  %".805" = getelementptr inbounds i32, i32* %"puVar3", i32 %".804"
  %".806" = load i32, i32* %".805"
  %".807" = mul i32 17, 32
  %".808" = getelementptr inbounds i32, i32* %"puVar3", i32 %".807"
  %".809" = load i32, i32* %".808"
  %".810" = mul i32 18, 32
  %".811" = getelementptr inbounds i32, i32* %"puVar3", i32 %".810"
  %".812" = load i32, i32* %".811"
  %".813" = mul i32 19, 32
  %".814" = getelementptr inbounds i32, i32* %"puVar3", i32 %".813"
  %".815" = load i32, i32* %".814"
  %".816" = mul i32 20, 32
  %".817" = getelementptr inbounds i32, i32* %"puVar3", i32 %".816"
  %".818" = load i32, i32* %".817"
  %".819" = mul i32 21, 32
  %".820" = getelementptr inbounds i32, i32* %"puVar3", i32 %".819"
  %".821" = load i32, i32* %".820"
  %".822" = mul i32 22, 32
  %".823" = getelementptr inbounds i32, i32* %"puVar3", i32 %".822"
  %".824" = load i32, i32* %".823"
  %".825" = mul i32 23, 32
  %".826" = getelementptr inbounds i32, i32* %"puVar3", i32 %".825"
  %".827" = load i32, i32* %".826"
  %".828" = mul i32 24, 32
  %".829" = getelementptr inbounds i32, i32* %"puVar3", i32 %".828"
  %".830" = load i32, i32* %".829"
  %".831" = mul i32 25, 32
  %".832" = getelementptr inbounds i32, i32* %"puVar3", i32 %".831"
  %".833" = load i32, i32* %".832"
  %".834" = mul i32 26, 32
  %".835" = getelementptr inbounds i32, i32* %"puVar3", i32 %".834"
  %".836" = load i32, i32* %".835"
  %".837" = mul i32 27, 32
  %".838" = getelementptr inbounds i32, i32* %"puVar3", i32 %".837"
  %".839" = load i32, i32* %".838"
  %".840" = mul i32 28, 32
  %".841" = getelementptr inbounds i32, i32* %"puVar3", i32 %".840"
  %".842" = load i32, i32* %".841"
  %".843" = mul i32 29, 32
  %".844" = getelementptr inbounds i32, i32* %"puVar3", i32 %".843"
  %".845" = load i32, i32* %".844"
  %".846" = mul i32 30, 32
  %".847" = getelementptr inbounds i32, i32* %"puVar3", i32 %".846"
  %".848" = load i32, i32* %".847"
  %".849" = mul i32 31, 32
  %".850" = getelementptr inbounds i32, i32* %"puVar3", i32 %".849"
  %".851" = load i32, i32* %".850"
  %".852" = mul i32 32, 32
  %".853" = getelementptr inbounds i32, i32* %"puVar3", i32 %".852"
  %".854" = load i32, i32* %".853"
  %".855" = mul i32 33, 32
  %".856" = getelementptr inbounds i32, i32* %"puVar3", i32 %".855"
  %".857" = load i32, i32* %".856"
  %".858" = mul i32 34, 32
  %".859" = getelementptr inbounds i32, i32* %"puVar3", i32 %".858"
  %".860" = load i32, i32* %".859"
  %".861" = mul i32 35, 32
  %".862" = getelementptr inbounds i32, i32* %"puVar3", i32 %".861"
  %".863" = load i32, i32* %".862"
  %".864" = mul i32 36, 32
  %".865" = getelementptr inbounds i32, i32* %"puVar3", i32 %".864"
  %".866" = load i32, i32* %".865"
  %".867" = mul i32 37, 32
  %".868" = getelementptr inbounds i32, i32* %"puVar3", i32 %".867"
  %".869" = load i32, i32* %".868"
  %".870" = mul i32 38, 32
  %".871" = getelementptr inbounds i32, i32* %"puVar3", i32 %".870"
  %".872" = load i32, i32* %".871"
  %".873" = mul i32 39, 32
  %".874" = getelementptr inbounds i32, i32* %"puVar3", i32 %".873"
  %".875" = load i32, i32* %".874"
  %".876" = mul i32 40, 32
  %".877" = getelementptr inbounds i32, i32* %"puVar3", i32 %".876"
  %".878" = load i32, i32* %".877"
  %".879" = mul i32 41, 32
  %".880" = getelementptr inbounds i32, i32* %"puVar3", i32 %".879"
  %".881" = load i32, i32* %".880"
  %".882" = mul i32 42, 32
  %".883" = getelementptr inbounds i32, i32* %"puVar3", i32 %".882"
  %".884" = load i32, i32* %".883"
  %".885" = mul i32 43, 32
  %".886" = getelementptr inbounds i32, i32* %"puVar3", i32 %".885"
  %".887" = load i32, i32* %".886"
  %".888" = mul i32 44, 32
  %".889" = getelementptr inbounds i32, i32* %"puVar3", i32 %".888"
  %".890" = load i32, i32* %".889"
  %".891" = mul i32 45, 32
  %".892" = getelementptr inbounds i32, i32* %"puVar3", i32 %".891"
  %".893" = load i32, i32* %".892"
  %".894" = mul i32 46, 32
  %".895" = getelementptr inbounds i32, i32* %"puVar3", i32 %".894"
  %".896" = load i32, i32* %".895"
  %".897" = mul i32 47, 32
  %".898" = getelementptr inbounds i32, i32* %"puVar3", i32 %".897"
  %".899" = load i32, i32* %".898"
  %".900" = mul i32 48, 32
  %".901" = getelementptr inbounds i32, i32* %"puVar3", i32 %".900"
  %".902" = load i32, i32* %".901"
  %".903" = mul i32 49, 32
  %".904" = getelementptr inbounds i32, i32* %"puVar3", i32 %".903"
  %".905" = load i32, i32* %".904"
  %".906" = mul i32 50, 32
  %".907" = getelementptr inbounds i32, i32* %"puVar3", i32 %".906"
  %".908" = load i32, i32* %".907"
  %".909" = mul i32 51, 32
  %".910" = getelementptr inbounds i32, i32* %"puVar3", i32 %".909"
  %".911" = load i32, i32* %".910"
  %".912" = mul i32 52, 32
  %".913" = getelementptr inbounds i32, i32* %"puVar3", i32 %".912"
  %".914" = load i32, i32* %".913"
  %".915" = mul i32 53, 32
  %".916" = getelementptr inbounds i32, i32* %"puVar3", i32 %".915"
  %".917" = load i32, i32* %".916"
  %".918" = mul i32 54, 32
  %".919" = getelementptr inbounds i32, i32* %"puVar3", i32 %".918"
  %".920" = load i32, i32* %".919"
  %".921" = mul i32 55, 32
  %".922" = getelementptr inbounds i32, i32* %"puVar3", i32 %".921"
  %".923" = load i32, i32* %".922"
  %".924" = mul i32 56, 32
  %".925" = getelementptr inbounds i32, i32* %"puVar3", i32 %".924"
  %".926" = load i32, i32* %".925"
  %".927" = mul i32 57, 32
  %".928" = getelementptr inbounds i32, i32* %"puVar3", i32 %".927"
  %".929" = load i32, i32* %".928"
  %".930" = mul i32 58, 32
  %".931" = getelementptr inbounds i32, i32* %"puVar3", i32 %".930"
  %".932" = load i32, i32* %".931"
  %".933" = mul i32 59, 32
  %".934" = getelementptr inbounds i32, i32* %"puVar3", i32 %".933"
  %".935" = load i32, i32* %".934"
  %".936" = mul i32 60, 32
  %".937" = getelementptr inbounds i32, i32* %"puVar3", i32 %".936"
  %".938" = load i32, i32* %".937"
  %".939" = mul i32 61, 32
  %".940" = getelementptr inbounds i32, i32* %"puVar3", i32 %".939"
  %".941" = load i32, i32* %".940"
  %".942" = mul i32 62, 32
  %".943" = getelementptr inbounds i32, i32* %"puVar3", i32 %".942"
  %".944" = load i32, i32* %".943"
  %".945" = mul i32 63, 32
  %".946" = getelementptr inbounds i32, i32* %"puVar3", i32 %".945"
  %".947" = load i32, i32* %".946"
  %".948" = mul i32 64, 32
  %".949" = getelementptr inbounds i32, i32* %"puVar3", i32 %".948"
  %".950" = load i32, i32* %".949"
  %".951" = mul i32 65, 32
  %".952" = getelementptr inbounds i32, i32* %"puVar3", i32 %".951"
  %".953" = load i32, i32* %".952"
  %".954" = mul i32 66, 32
  %".955" = getelementptr inbounds i32, i32* %"puVar3", i32 %".954"
  %".956" = load i32, i32* %".955"
  %".957" = mul i32 67, 32
  %".958" = getelementptr inbounds i32, i32* %"puVar3", i32 %".957"
  %".959" = load i32, i32* %".958"
  %".960" = mul i32 68, 32
  %".961" = getelementptr inbounds i32, i32* %"puVar3", i32 %".960"
  %".962" = load i32, i32* %".961"
  %".963" = mul i32 69, 32
  %".964" = getelementptr inbounds i32, i32* %"puVar3", i32 %".963"
  %".965" = load i32, i32* %".964"
  %".966" = mul i32 70, 32
  %".967" = getelementptr inbounds i32, i32* %"puVar3", i32 %".966"
  %".968" = load i32, i32* %".967"
  %".969" = mul i32 71, 32
  %".970" = getelementptr inbounds i32, i32* %"puVar3", i32 %".969"
  %".971" = load i32, i32* %".970"
  %".972" = mul i32 72, 32
  %".973" = getelementptr inbounds i32, i32* %"puVar3", i32 %".972"
  %".974" = load i32, i32* %".973"
  %".975" = mul i32 73, 32
  %".976" = getelementptr inbounds i32, i32* %"puVar3", i32 %".975"
  %".977" = load i32, i32* %".976"
  %".978" = mul i32 74, 32
  %".979" = getelementptr inbounds i32, i32* %"puVar3", i32 %".978"
  %".980" = load i32, i32* %".979"
  %".981" = mul i32 75, 32
  %".982" = getelementptr inbounds i32, i32* %"puVar3", i32 %".981"
  %".983" = load i32, i32* %".982"
  %".984" = mul i32 76, 32
  %".985" = getelementptr inbounds i32, i32* %"puVar3", i32 %".984"
  %".986" = load i32, i32* %".985"
  %".987" = mul i32 77, 32
  %".988" = getelementptr inbounds i32, i32* %"puVar3", i32 %".987"
  %".989" = load i32, i32* %".988"
  %".990" = mul i32 78, 32
  %".991" = getelementptr inbounds i32, i32* %"puVar3", i32 %".990"
  %".992" = load i32, i32* %".991"
  %".993" = mul i32 79, 32
  %".994" = getelementptr inbounds i32, i32* %"puVar3", i32 %".993"
  %".995" = load i32, i32* %".994"
  %".996" = mul i32 80, 32
  %".997" = getelementptr inbounds i32, i32* %"puVar3", i32 %".996"
  %".998" = load i32, i32* %".997"
  %".999" = mul i32 81, 32
  %".1000" = getelementptr inbounds i32, i32* %"puVar3", i32 %".999"
  %".1001" = load i32, i32* %".1000"
  %".1002" = mul i32 82, 32
  %".1003" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1002"
  %".1004" = load i32, i32* %".1003"
  %".1005" = mul i32 83, 32
  %".1006" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1005"
  %".1007" = load i32, i32* %".1006"
  %".1008" = mul i32 84, 32
  %".1009" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1008"
  %".1010" = load i32, i32* %".1009"
  %".1011" = mul i32 85, 32
  %".1012" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1011"
  %".1013" = load i32, i32* %".1012"
  %".1014" = mul i32 86, 32
  %".1015" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1014"
  %".1016" = load i32, i32* %".1015"
  %".1017" = mul i32 87, 32
  %".1018" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1017"
  %".1019" = load i32, i32* %".1018"
  %".1020" = mul i32 88, 32
  %".1021" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1020"
  %".1022" = load i32, i32* %".1021"
  %".1023" = mul i32 89, 32
  %".1024" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1023"
  %".1025" = load i32, i32* %".1024"
  %".1026" = mul i32 90, 32
  %".1027" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1026"
  %".1028" = load i32, i32* %".1027"
  %".1029" = mul i32 91, 32
  %".1030" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1029"
  %".1031" = load i32, i32* %".1030"
  %".1032" = mul i32 92, 32
  %".1033" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1032"
  %".1034" = load i32, i32* %".1033"
  %".1035" = mul i32 93, 32
  %".1036" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1035"
  %".1037" = load i32, i32* %".1036"
  %".1038" = mul i32 94, 32
  %".1039" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1038"
  %".1040" = load i32, i32* %".1039"
  %".1041" = mul i32 95, 32
  %".1042" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1041"
  %".1043" = load i32, i32* %".1042"
  %".1044" = mul i32 96, 32
  %".1045" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1044"
  %".1046" = load i32, i32* %".1045"
  %".1047" = ptrtoint i32* %".748" to i32
  %".1048" = call i32 @"sym.cgc_request_document"(i32 %".1047", i32 %".751", i32 %".754", i32 %".757", i32 %".758", i32 %".761", i32 %".764", i32 %".767", i32 %".770", i32 %".773", i32 %".776", i32 %".779", i32 %".782", i32 %".785", i32 %".788", i32 %".791", i32 %".794", i32 %".797", i32 %".800", i32 %".803", i32 %".806", i32 %".809", i32 %".812", i32 %".815", i32 %".818", i32 %".821", i32 %".824", i32 %".827", i32 %".830", i32 %".833", i32 %".836", i32 %".839", i32 %".842", i32 %".845", i32 %".848", i32 %".851", i32 %".854", i32 %".857", i32 %".860", i32 %".863", i32 %".866", i32 %".869", i32 %".872", i32 %".875", i32 %".878", i32 %".881", i32 %".884", i32 %".887", i32 %".890", i32 %".893", i32 %".896", i32 %".899", i32 %".902", i32 %".905", i32 %".908", i32 %".911", i32 %".914", i32 %".917", i32 %".920", i32 %".923", i32 %".926", i32 %".929", i32 %".932", i32 %".935", i32 %".938", i32 %".941", i32 %".944", i32 %".947", i32 %".950", i32 %".953", i32 %".956", i32 %".959", i32 %".962", i32 %".965", i32 %".968", i32 %".971", i32 %".974", i32 %".977", i32 %".980", i32 %".983", i32 %".986", i32 %".989", i32 %".992", i32 %".995", i32 %".998", i32 %".1001", i32 %".1004", i32 %".1007", i32 %".1010", i32 %".1013", i32 %".1016", i32 %".1019", i32 %".1022", i32 %".1025", i32 %".1028", i32 %".1031", i32 %".1034", i32 %".1037", i32 %".1040", i32 %".1043", i32 %".1046")
  store i32 %".1048", i32* %"var_14h_2"
  %".1050" = load i32, i32* %"var_14h_2"
  %".1051" = icmp eq i32 %".1050", 0
  %".1052" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".1051", i1* %".1052"
  %".1054" = load i8, i8* %"register0x00000206"
  %".1055" = trunc i8 %".1054" to i1
  br i1 %".1055", label %"e", label %"f"
e:
  store i32 0, i32* %"var_134h_2"
  br label %"11"
f:
  store i32 2, i32* %"var_134h_2"
  br label %"11"
"10":
  store i32 2, i32* %"var_134h_2"
  br label %"11"
"11":
  %".1063" = load i32, i32* %"puStack52"
  store i32 %".1063", i32* %"puVar3"
  %".1065" = load i32, i32* %"var_134h_2"
  %".1066" = icmp eq i32 %".1065", 0
  %".1067" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".1066", i1* %".1067"
  %".1069" = load i32, i32* %"var_134h_2"
  store i32 %".1069", i32* %"iStack380"
  %".1071" = load i8, i8* %"register0x00000206"
  %".1072" = trunc i8 %".1071" to i1
  br i1 %".1072", label %"a", label %"12"
"12":
  %".1074" = load i32, i32* %"var_134h_2"
  %".1075" = add i32 %".1074", -2
  store i32 %".1075", i32* %"register0x00000000"
  %".1077" = load i32, i32* %"register0x00000000"
  %".1078" = icmp ne i32 %".1077", 0
  %".1079" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".1078", i1* %".1079"
  %".1081" = load i32, i32* %"register0x00000000"
  store i32 %".1081", i32* %"iStack384"
  %".1083" = load i8, i8* %"register0x00000206"
  %".1084" = trunc i8 %".1083" to i1
  br i1 %".1084", label %"13", label %"14"
"13":
  %".1086" = mul i32 -1, 32
  %".1087" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1086"
  store i32* %".1087", i32** %"register0x00000010"
  %".1089" = bitcast i32** %"register0x00000010" to i32***
  store i32** %"register0x00000010", i32*** %".1089"
  %".1091" = mul i32 -2, 32
  %".1092" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1091"
  store i32* %".1092", i32** %"register0x00000010"
  %".1094" = bitcast i32** %"register0x00000010" to i32*
  store i32 256, i32* %".1094"
  %".1096" = mul i32 -15, 32
  %".1097" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1096"
  store i32* %".1097", i32** %"register0x00000010"
  %".1099" = mul i32 -15, 32
  %".1100" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1099"
  store i32* %".1100", i32** %"register0x00000010"
  %".1102" = mul i32 -15, 32
  %".1103" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1102"
  %".1104" = bitcast i32* %"piVar5" to i32**
  store i32* %".1103", i32** %".1104"
  %".1106" = mul i32 -15, 32
  %".1107" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1106"
  %".1108" = bitcast i32* %"piVar5" to i32**
  store i32* %".1107", i32** %".1108"
  %".1110" = mul i32 2, 32
  %".1111" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1110"
  %".1112" = load i32, i32* %".1111"
  %".1113" = mul i32 1, 32
  %".1114" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1113"
  %".1115" = load i32, i32* %".1114"
  %".1116" = mul i32 -8, 32
  %".1117" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1116"
  %".1118" = mul i32 -3, 32
  %".1119" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1118"
  %".1120" = mul i32 -4, 32
  %".1121" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1120"
  %".1122" = bitcast i32** %"register0x00000010" to i32*
  store i32 0, i32* %".1122"
  %".1124" = mul i32 -14, 32
  %".1125" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1124"
  %".1126" = mul i32 -9, 32
  %".1127" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1126"
  %".1128" = mul i32 -10, 32
  %".1129" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1128"
  %".1130" = mul i32 -11, 32
  %".1131" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1130"
  %".1132" = mul i32 -16, 32
  %".1133" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1132"
  store i32* %".1133", i32** %"register0x00000010"
  %".1135" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518956, i32* %".1135"
  %".1137" = load i32*, i32** %"register0x00000010"
  %".1138" = mul i32 -14, 32
  %".1139" = getelementptr inbounds i32, i32* %"puStack52", i32 %".1138"
  %".1140" = load i32, i32* %".1139"
  %".1141" = ptrtoint i32* %".1137" to i32
  %".1142" = call i32 @"sym.cgc_random_alpha_lower"(i32 %".1141", i32 %".1140")
  %".1143" = mul i32 -8, 32
  %".1144" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1143"
  %".1145" = load i32, i32* %"puVar3"
  %".1146" = add i32 %".1145", -17
  %".1147" = inttoptr i32 %".1146" to i32*
  %".1148" = zext i8 6 to i32
  store i32 %".1148", i32* %"piVar5"
  %".1150" = mul i32 -14, 32
  %".1151" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1150"
  %".1152" = mul i32 -12, 32
  %".1153" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1152"
  %".1154" = mul i32 -16, 32
  %".1155" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1154"
  store i32* %".1155", i32** %"register0x00000010"
  %".1157" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518984, i32* %".1157"
  %".1159" = load i32, i32* %"piVar5"
  %".1160" = mul i32 -14, 32
  %".1161" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1160"
  %".1162" = load i32, i32* %".1161"
  %".1163" = mul i32 -13, 32
  %".1164" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1163"
  %".1165" = load i32, i32* %".1164"
  %".1166" = mul i32 -12, 32
  %".1167" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1166"
  %".1168" = load i32, i32* %".1167"
  %".1169" = mul i32 -11, 32
  %".1170" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1169"
  %".1171" = load i32, i32* %".1170"
  %".1172" = mul i32 -10, 32
  %".1173" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1172"
  %".1174" = load i32, i32* %".1173"
  %".1175" = mul i32 -9, 32
  %".1176" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1175"
  %".1177" = load i32, i32* %".1176"
  %".1178" = mul i32 -8, 32
  %".1179" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1178"
  %".1180" = load i32, i32* %".1179"
  %".1181" = mul i32 -7, 32
  %".1182" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1181"
  %".1183" = load i32, i32* %".1182"
  %".1184" = mul i32 -6, 32
  %".1185" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1184"
  %".1186" = load i32, i32* %".1185"
  %".1187" = mul i32 -5, 32
  %".1188" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1187"
  %".1189" = load i32, i32* %".1188"
  %".1190" = mul i32 -4, 32
  %".1191" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1190"
  %".1192" = load i32, i32* %".1191"
  %".1193" = mul i32 -3, 32
  %".1194" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1193"
  %".1195" = load i32, i32* %".1194"
  %".1196" = mul i32 -2, 32
  %".1197" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1196"
  %".1198" = load i32, i32* %".1197"
  %".1199" = mul i32 -1, 32
  %".1200" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1199"
  %".1201" = load i32, i32* %".1200"
  %".1202" = load i32, i32* %"puVar3"
  %".1203" = mul i32 1, 32
  %".1204" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1203"
  %".1205" = load i32, i32* %".1204"
  %".1206" = mul i32 2, 32
  %".1207" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1206"
  %".1208" = load i32, i32* %".1207"
  %".1209" = mul i32 3, 32
  %".1210" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1209"
  %".1211" = load i32, i32* %".1210"
  %".1212" = mul i32 4, 32
  %".1213" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1212"
  %".1214" = load i32, i32* %".1213"
  %".1215" = mul i32 5, 32
  %".1216" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1215"
  %".1217" = load i32, i32* %".1216"
  %".1218" = mul i32 6, 32
  %".1219" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1218"
  %".1220" = load i32, i32* %".1219"
  %".1221" = mul i32 7, 32
  %".1222" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1221"
  %".1223" = load i32, i32* %".1222"
  %".1224" = mul i32 8, 32
  %".1225" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1224"
  %".1226" = load i32, i32* %".1225"
  %".1227" = mul i32 9, 32
  %".1228" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1227"
  %".1229" = load i32, i32* %".1228"
  %".1230" = mul i32 10, 32
  %".1231" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1230"
  %".1232" = load i32, i32* %".1231"
  %".1233" = mul i32 11, 32
  %".1234" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1233"
  %".1235" = load i32, i32* %".1234"
  %".1236" = mul i32 12, 32
  %".1237" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1236"
  %".1238" = load i32, i32* %".1237"
  %".1239" = mul i32 13, 32
  %".1240" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1239"
  %".1241" = load i32, i32* %".1240"
  %".1242" = mul i32 14, 32
  %".1243" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1242"
  %".1244" = load i32, i32* %".1243"
  %".1245" = mul i32 15, 32
  %".1246" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1245"
  %".1247" = load i32, i32* %".1246"
  %".1248" = mul i32 16, 32
  %".1249" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1248"
  %".1250" = load i32, i32* %".1249"
  %".1251" = mul i32 17, 32
  %".1252" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1251"
  %".1253" = load i32, i32* %".1252"
  %".1254" = mul i32 18, 32
  %".1255" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1254"
  %".1256" = load i32, i32* %".1255"
  %".1257" = mul i32 19, 32
  %".1258" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1257"
  %".1259" = load i32, i32* %".1258"
  %".1260" = mul i32 20, 32
  %".1261" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1260"
  %".1262" = load i32, i32* %".1261"
  %".1263" = mul i32 21, 32
  %".1264" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1263"
  %".1265" = load i32, i32* %".1264"
  %".1266" = mul i32 22, 32
  %".1267" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1266"
  %".1268" = load i32, i32* %".1267"
  %".1269" = mul i32 23, 32
  %".1270" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1269"
  %".1271" = load i32, i32* %".1270"
  %".1272" = mul i32 24, 32
  %".1273" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1272"
  %".1274" = load i32, i32* %".1273"
  %".1275" = mul i32 25, 32
  %".1276" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1275"
  %".1277" = load i32, i32* %".1276"
  %".1278" = mul i32 26, 32
  %".1279" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1278"
  %".1280" = load i32, i32* %".1279"
  %".1281" = mul i32 27, 32
  %".1282" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1281"
  %".1283" = load i32, i32* %".1282"
  %".1284" = mul i32 28, 32
  %".1285" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1284"
  %".1286" = load i32, i32* %".1285"
  %".1287" = mul i32 29, 32
  %".1288" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1287"
  %".1289" = load i32, i32* %".1288"
  %".1290" = mul i32 30, 32
  %".1291" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1290"
  %".1292" = load i32, i32* %".1291"
  %".1293" = mul i32 31, 32
  %".1294" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1293"
  %".1295" = load i32, i32* %".1294"
  %".1296" = mul i32 32, 32
  %".1297" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1296"
  %".1298" = load i32, i32* %".1297"
  %".1299" = mul i32 33, 32
  %".1300" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1299"
  %".1301" = load i32, i32* %".1300"
  %".1302" = mul i32 34, 32
  %".1303" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1302"
  %".1304" = load i32, i32* %".1303"
  %".1305" = mul i32 35, 32
  %".1306" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1305"
  %".1307" = load i32, i32* %".1306"
  %".1308" = mul i32 36, 32
  %".1309" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1308"
  %".1310" = load i32, i32* %".1309"
  %".1311" = mul i32 37, 32
  %".1312" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1311"
  %".1313" = load i32, i32* %".1312"
  %".1314" = mul i32 38, 32
  %".1315" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1314"
  %".1316" = load i32, i32* %".1315"
  %".1317" = mul i32 39, 32
  %".1318" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1317"
  %".1319" = load i32, i32* %".1318"
  %".1320" = mul i32 40, 32
  %".1321" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1320"
  %".1322" = load i32, i32* %".1321"
  %".1323" = mul i32 41, 32
  %".1324" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1323"
  %".1325" = load i32, i32* %".1324"
  %".1326" = mul i32 42, 32
  %".1327" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1326"
  %".1328" = load i32, i32* %".1327"
  %".1329" = mul i32 43, 32
  %".1330" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1329"
  %".1331" = load i32, i32* %".1330"
  %".1332" = mul i32 44, 32
  %".1333" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1332"
  %".1334" = load i32, i32* %".1333"
  %".1335" = mul i32 45, 32
  %".1336" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1335"
  %".1337" = load i32, i32* %".1336"
  %".1338" = mul i32 46, 32
  %".1339" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1338"
  %".1340" = load i32, i32* %".1339"
  %".1341" = mul i32 47, 32
  %".1342" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1341"
  %".1343" = load i32, i32* %".1342"
  %".1344" = mul i32 48, 32
  %".1345" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1344"
  %".1346" = load i32, i32* %".1345"
  %".1347" = mul i32 49, 32
  %".1348" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1347"
  %".1349" = load i32, i32* %".1348"
  %".1350" = mul i32 50, 32
  %".1351" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1350"
  %".1352" = load i32, i32* %".1351"
  %".1353" = mul i32 51, 32
  %".1354" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1353"
  %".1355" = load i32, i32* %".1354"
  %".1356" = mul i32 52, 32
  %".1357" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1356"
  %".1358" = load i32, i32* %".1357"
  %".1359" = mul i32 53, 32
  %".1360" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1359"
  %".1361" = load i32, i32* %".1360"
  %".1362" = mul i32 54, 32
  %".1363" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1362"
  %".1364" = load i32, i32* %".1363"
  %".1365" = mul i32 55, 32
  %".1366" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1365"
  %".1367" = load i32, i32* %".1366"
  %".1368" = mul i32 56, 32
  %".1369" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1368"
  %".1370" = load i32, i32* %".1369"
  %".1371" = mul i32 57, 32
  %".1372" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1371"
  %".1373" = load i32, i32* %".1372"
  %".1374" = mul i32 58, 32
  %".1375" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1374"
  %".1376" = load i32, i32* %".1375"
  %".1377" = mul i32 59, 32
  %".1378" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1377"
  %".1379" = load i32, i32* %".1378"
  %".1380" = mul i32 60, 32
  %".1381" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1380"
  %".1382" = load i32, i32* %".1381"
  %".1383" = mul i32 61, 32
  %".1384" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1383"
  %".1385" = load i32, i32* %".1384"
  %".1386" = mul i32 62, 32
  %".1387" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1386"
  %".1388" = load i32, i32* %".1387"
  %".1389" = mul i32 63, 32
  %".1390" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1389"
  %".1391" = load i32, i32* %".1390"
  %".1392" = mul i32 64, 32
  %".1393" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1392"
  %".1394" = load i32, i32* %".1393"
  %".1395" = mul i32 65, 32
  %".1396" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1395"
  %".1397" = load i32, i32* %".1396"
  %".1398" = mul i32 66, 32
  %".1399" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1398"
  %".1400" = load i32, i32* %".1399"
  %".1401" = mul i32 67, 32
  %".1402" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1401"
  %".1403" = load i32, i32* %".1402"
  %".1404" = mul i32 68, 32
  %".1405" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1404"
  %".1406" = load i32, i32* %".1405"
  %".1407" = mul i32 69, 32
  %".1408" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1407"
  %".1409" = load i32, i32* %".1408"
  %".1410" = mul i32 70, 32
  %".1411" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1410"
  %".1412" = load i32, i32* %".1411"
  %".1413" = mul i32 71, 32
  %".1414" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1413"
  %".1415" = load i32, i32* %".1414"
  %".1416" = mul i32 72, 32
  %".1417" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1416"
  %".1418" = load i32, i32* %".1417"
  %".1419" = mul i32 73, 32
  %".1420" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1419"
  %".1421" = load i32, i32* %".1420"
  %".1422" = mul i32 74, 32
  %".1423" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1422"
  %".1424" = load i32, i32* %".1423"
  %".1425" = mul i32 75, 32
  %".1426" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1425"
  %".1427" = load i32, i32* %".1426"
  %".1428" = mul i32 76, 32
  %".1429" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1428"
  %".1430" = load i32, i32* %".1429"
  %".1431" = mul i32 77, 32
  %".1432" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1431"
  %".1433" = load i32, i32* %".1432"
  %".1434" = mul i32 78, 32
  %".1435" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1434"
  %".1436" = load i32, i32* %".1435"
  %".1437" = mul i32 79, 32
  %".1438" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1437"
  %".1439" = load i32, i32* %".1438"
  %".1440" = mul i32 80, 32
  %".1441" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1440"
  %".1442" = load i32, i32* %".1441"
  %".1443" = mul i32 81, 32
  %".1444" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1443"
  %".1445" = load i32, i32* %".1444"
  %".1446" = mul i32 82, 32
  %".1447" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1446"
  %".1448" = load i32, i32* %".1447"
  %".1449" = mul i32 83, 32
  %".1450" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1449"
  %".1451" = load i32, i32* %".1450"
  %".1452" = mul i32 84, 32
  %".1453" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1452"
  %".1454" = load i32, i32* %".1453"
  %".1455" = mul i32 85, 32
  %".1456" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1455"
  %".1457" = load i32, i32* %".1456"
  %".1458" = call i32 @"sym.cgc_request_document"(i32 %".1159", i32 %".1162", i32 %".1165", i32 %".1168", i32 %".1171", i32 %".1174", i32 %".1177", i32 %".1180", i32 %".1183", i32 %".1186", i32 %".1189", i32 %".1192", i32 %".1195", i32 %".1198", i32 %".1201", i32 %".1202", i32 %".1205", i32 %".1208", i32 %".1211", i32 %".1214", i32 %".1217", i32 %".1220", i32 %".1223", i32 %".1226", i32 %".1229", i32 %".1232", i32 %".1235", i32 %".1238", i32 %".1241", i32 %".1244", i32 %".1247", i32 %".1250", i32 %".1253", i32 %".1256", i32 %".1259", i32 %".1262", i32 %".1265", i32 %".1268", i32 %".1271", i32 %".1274", i32 %".1277", i32 %".1280", i32 %".1283", i32 %".1286", i32 %".1289", i32 %".1292", i32 %".1295", i32 %".1298", i32 %".1301", i32 %".1304", i32 %".1307", i32 %".1310", i32 %".1313", i32 %".1316", i32 %".1319", i32 %".1322", i32 %".1325", i32 %".1328", i32 %".1331", i32 %".1334", i32 %".1337", i32 %".1340", i32 %".1343", i32 %".1346", i32 %".1349", i32 %".1352", i32 %".1355", i32 %".1358", i32 %".1361", i32 %".1364", i32 %".1367", i32 %".1370", i32 %".1373", i32 %".1376", i32 %".1379", i32 %".1382", i32 %".1385", i32 %".1388", i32 %".1391", i32 %".1394", i32 %".1397", i32 %".1400", i32 %".1403", i32 %".1406", i32 %".1409", i32 %".1412", i32 %".1415", i32 %".1418", i32 %".1421", i32 %".1424", i32 %".1427", i32 %".1430", i32 %".1433", i32 %".1436", i32 %".1439", i32 %".1442", i32 %".1445", i32 %".1448", i32 %".1451", i32 %".1454", i32 %".1457")
  store i32 %".1458", i32* %"iVar1"
  %".1460" = load i32, i32* %"iVar1"
  ret i32 %".1460"
"14":
  %".1462" = load i32, i32* %"var_1ch"
  %".1463" = trunc i32 %".1462" to i16
  %".1464" = zext i16 %".1463" to i32
  store i32 %".1464", i32* %"uVar4"
  %".1466" = load i32, i32* %"uVar4"
  %".1467" = add i32 %".1466", 1
  store i32 %".1467", i32* %"register0x00000004"
  %".1469" = mul i32 -4, 32
  %".1470" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1469"
  store i32* %".1470", i32** %"register0x00000010"
  %".1472" = load i32, i32* %"var_20h_2"
  %".1473" = bitcast i32** %"register0x00000010" to i32*
  store i32 %".1472", i32* %".1473"
  %".1475" = mul i32 -3, 32
  %".1476" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1475"
  %".1477" = load i32, i32* %"register0x00000004"
  %".1478" = mul i32 -5, 32
  %".1479" = getelementptr inbounds i32, i32* %"puVar3", i32 %".1478"
  store i32* %".1479", i32** %"register0x00000010"
  %".1481" = bitcast i32** %"register0x00000010" to i32*
  store i32 134518867, i32* %".1481"
  call void @"sym.imp.cgc_deallocate"()
  %".1484" = load i32, i32* %"var_14h_2"
  %".1485" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".1484", i32* %".1485"
  br label %"18"
"15":
  %".1488" = load i32, i32* %"var_14h_2"
  %".1489" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".1488", i32* %".1489"
  br label %"18"
"16":
  %".1492" = load i32, i32* %"var_14h_2"
  %".1493" = bitcast i24* %"var_10h_2" to i32*
  store i32 %".1492", i32* %".1493"
  br label %"18"
"17":
  %".1496" = bitcast i24* %"var_10h_2" to i32*
  store i32 16, i32* %".1496"
  br label %"18"
"18":
  %".1499" = load i24, i24* %"var_10h_2"
  %".1500" = bitcast i32* %"register0x00000000" to i24*
  store i24 %".1499", i24* %".1500"
  %".1502" = load i32, i32* %"register0x00000000"
  ret i32 %".1502"
}

declare void @"sym.imp.cgc_deallocate"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_canonicalize_path"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_random_alpha_lower"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_receive_with_term"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv_until_delim"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_request_document"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i32 %"placeholder_13", i32 %"placeholder_14", i32 %"placeholder_15", i32 %"placeholder_16", i32 %"placeholder_17", i32 %"placeholder_18", i32 %"placeholder_19", i32 %"placeholder_20", i32 %"placeholder_21", i32 %"placeholder_22", i32 %"placeholder_23", i32 %"placeholder_24", i32 %"placeholder_25", i32 %"placeholder_26", i32 %"placeholder_27", i32 %"placeholder_28", i32 %"placeholder_29", i32 %"placeholder_30", i32 %"placeholder_31", i32 %"placeholder_32", i32 %"placeholder_33", i32 %"placeholder_34", i32 %"placeholder_35", i32 %"placeholder_36", i32 %"placeholder_37", i32 %"placeholder_38", i32 %"placeholder_39", i32 %"placeholder_40", i32 %"placeholder_41", i32 %"placeholder_42", i32 %"placeholder_43", i32 %"placeholder_44", i32 %"placeholder_45", i32 %"placeholder_46", i32 %"placeholder_47", i32 %"placeholder_48", i32 %"placeholder_49", i32 %"placeholder_50", i32 %"placeholder_51", i32 %"placeholder_52", i32 %"placeholder_53", i32 %"placeholder_54", i32 %"placeholder_55", i32 %"placeholder_56", i32 %"placeholder_57", i32 %"placeholder_58", i32 %"placeholder_59", i32 %"placeholder_60", i32 %"placeholder_61", i32 %"placeholder_62", i32 %"placeholder_63", i32 %"placeholder_64", i32 %"placeholder_65", i32 %"placeholder_66", i32 %"placeholder_67", i32 %"placeholder_68", i32 %"placeholder_69", i32 %"placeholder_70", i32 %"placeholder_71", i32 %"placeholder_72", i32 %"placeholder_73", i32 %"placeholder_74", i32 %"placeholder_75", i32 %"placeholder_76", i32 %"placeholder_77", i32 %"placeholder_78", i32 %"placeholder_79", i32 %"placeholder_80", i32 %"placeholder_81", i32 %"placeholder_82", i32 %"placeholder_83", i32 %"placeholder_84", i32 %"placeholder_85", i32 %"placeholder_86", i32 %"placeholder_87", i32 %"placeholder_88", i32 %"placeholder_89", i32 %"placeholder_90", i32 %"placeholder_91", i32 %"placeholder_92", i32 %"placeholder_93", i32 %"placeholder_94", i32 %"placeholder_95", i32 %"placeholder_96", i32 %"placeholder_97", i32 %"placeholder_98", i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_with_term"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strpos"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memset"() 
