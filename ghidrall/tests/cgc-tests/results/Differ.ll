; ModuleID = "Differ"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str." = external global i64
@"str.1._Load_File_1" = external global i64
@"str.2._Load_File_2" = external global i64
@"str.3._Enable_Ignore_Whitespace" = external global i64
@"str.4._Treat_Files_as_Ascii" = external global i64
@"str.5._Compare_files" = external global i64
@"str.6._Quit" = external global i64
@"str.::" = external global i64
@"str.Bad_selection" = external global i64
@"str.Disabled" = external global i64
@"str.File_1:__s____File_2:__s" = external global i64
@"str.File_Comparer_ver_1.0" = external global i64
@"str.Ignore_File_Type__Treat_as_Ascii__s" = external global i64
@"str.Ignore_Whitespace__s" = external global i64
@"str.Options:" = external global i64
@"str.Select_an_option:" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"in_stack_fffffefc" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999824
  %"var_ach" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999828
  %"var_a8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".39" to i32*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".41" to i32*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".44" to i32*
  %".45" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".45" to i32*
  %".46" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".46" to i32*
  %".47" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".47" to i32*
  %".48" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".48" to i32*
  %".49" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".49" to i32*
  %".50" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".50" to i32*
  %".51" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".51" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".52" = alloca i8**
  %".53" = alloca i32**
  store i8** %"argv", i8*** %".52"
  store i32** %"envp", i32*** %".53"
  br label %"0"
"0":
  store i32 134535360, i32* %"var_18h"
  br label %"1"
"1":
  %".59" = load i32, i32* %"in_stack_fffffefc"
  %".60" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535375, i32 %".59")
  %".61" = load i32, i32* %"in_stack_fffffefc"
  %".62" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535398, i32 %".61")
  %".63" = load i32, i32* %"in_stack_fffffefc"
  %".64" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535421, i32 %".63")
  %".65" = load i32, i32* %"in_stack_fffffefc"
  %".66" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535440, i32 %".65")
  %".67" = load i32, i32* %"in_stack_fffffefc"
  %".68" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535456, i32 %".67")
  %".69" = load i32, i32* %"in_stack_fffffefc"
  %".70" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535472, i32 %".69")
  %".71" = load i32, i32* %"in_stack_fffffefc"
  %".72" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535531, i32 %".71")
  %".73" = load i32, i32* %"in_stack_fffffefc"
  %".74" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535581, i32 %".73")
  %".75" = load i32, i32* %"in_stack_fffffefc"
  %".76" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535599, i32 %".75")
  %".77" = load i32, i32* %"var_18h"
  store i32 %".77", i32* %"iVar1"
  %".79" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535609, i32 134535360)
  %".80" = load i32, i32* %"iVar1"
  %".81" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535635, i32 %".80")
  %".82" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535670, i32 134535661)
  store i32 134535661, i32* %"in_stack_fffffefc"
  %".84" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535692, i32 134535661)
  %".85" = load i32, i32* %"in_stack_fffffefc"
  %".86" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535729, i32 %".85")
  %".87" = call i32 @"sym.cgc_readopt"(i32 0)
  store i32 %".87", i32* %"iVar1"
  %".89" = load i32, i32* %"iVar1"
  %".90" = sub i32 %".89", 1
  store i32 %".90", i32* %"register0x00000000"
  %".92" = load i32, i32* %"register0x00000000"
  %".93" = icmp ult i32 %".92", 5
  %".94" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".93", i1* %".94"
  %".96" = load i32, i32* %"iVar1"
  %".97" = icmp eq i32 %".96", 6
  %".98" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".97", i1* %".98"
  %".100" = load i8, i8* %"register0x00000200"
  %".101" = load i8, i8* %"register0x00000200"
  %".102" = xor i8 %".100", %".101"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"2", label %"3"
"2":
  %".105" = load i32, i32* %"register0x00000000"
  %".106" = mul i32 %".105", 4
  %".107" = add i32 %".106", 134535336
  %".108" = call i32 @"unique0x00000f30"()
  %".109" = load i32, i32* %"uVar2"
  ret i32 %".109"
"3":
  %".111" = load i32, i32* %"in_stack_fffffefc"
  %".112" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134535781, i32 %".111")
  %".113" = load i32, i32* %"in_stack_fffffefc"
  %".114" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134534951, i32 %".113")
  br label %"1"
}

declare i32 @"sym.cgc_readopt"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"unique0x00000f30"() 
