; ModuleID = "Bloomy_Sunday"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.bloomy" = global i32 0
@"str.Bloomy_Sunday" = external global i64
@"str.Don_t_let_the_sadness_grow." = external global i64
@"str.Nope" = external global i64
@"str.fail" = external global i64
@"str.not_good." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997800
  %"placeholder_1" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997804
  %"in_stack_fffff76c" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997804
  %"arg_10h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997808
  %"arg_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997816
  %"var_884h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997820
  %"var_880h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997824
  %"var_87ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997828
  %"var_878h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997832
  %"var_874h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997836
  %"var_870h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997840
  %"var_86ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997844
  %"var_868h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997848
  %"var_864h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997852
  %"var_860h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997856
  %"var_85ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997860
  %"var_858h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997864
  %"var_854h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997868
  %"var_850h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997872
  %"var_84ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997876
  %"var_848h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997880
  %"var_844h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997884
  %"var_840h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997888
  %"var_83ch" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997892
  %"var_838h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997896
  %"var_834h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997900
  %"var_830h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997904
  %"var_82ch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997908
  %"var_828h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997912
  %"var_824h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997916
  %"var_820h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997920
  %"var_81ch" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997927
  %"var_815h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999975
  %"var_15h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".38" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %".39" = alloca i8**
  %".40" = alloca i32**
  store i8** %"argv", i8*** %".39"
  store i32** %"envp", i32*** %".40"
  br label %"0"
"0":
  store i8 0, i8* %".37"
  %".45" = load i32, i32* %"in_stack_fffff76c"
  %".46" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531150, i32 %".45")
  call void @"sym.cgc_init"()
  br label %"1"
"1":
  call void @"sym.cgc_print_menu"()
  %".50" = load i32, i32* %"in_stack_fffff76c"
  %".51" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531183, i32 %".50")
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999975
  store i32 8, i32* %"arg_10h"
  store i32 10, i32* %"arg_8h"
  %".55" = ptrtoint i8* %".52" to i32
  %".56" = call i32 @"sym.cgc_read_until"(i32 0, i32 %".55", i32 8, i32 10)
  store i32 %".56", i32* %"iVar1"
  %".58" = load i32, i32* %"iVar1"
  %".59" = icmp slt i32 %".58", 0
  %".60" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000207"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"2", label %"3"
"2":
  %".65" = load i32, i32* %"arg_10h"
  %".66" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531237, i32 %".65")
  store i32 4294967295, i32* %"register0x00000000"
  %".68" = load i32, i32* %"register0x00000000"
  ret i32 %".68"
"3":
  %".70" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999975
  store i32 10, i32* %"in_stack_fffff76c"
  %".72" = ptrtoint i8* %".70" to i32
  %".73" = call i32 @"sym.cgc_strtol"(i32 %".72", i32 0, i32 10)
  store i32 %".73", i32* %"iVar1"
  %".75" = load i32, i32* %"iVar1"
  %".76" = icmp eq i32 %".75", -3
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"4", label %"5"
"4":
  store i32 134531200, i32* %"placeholder_1"
  %".83" = load i32, i32* %"in_stack_fffff76c"
  %".84" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531200, i32 %".83")
  %".85" = load i32, i32* %"placeholder_1"
  %".86" = load i32, i32* %"in_stack_fffff76c"
  %".87" = load i32, i32* %"arg_8h"
  %".88" = call i32 @"sym.cgc_exit"(i32 0, i32 %".85", i32 %".86", i32 %".87")
  br label %"c"
"5":
  %".90" = load i32, i32* %"iVar1"
  %".91" = icmp eq i32 %".90", 1
  %".92" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".91", i1* %".92"
  %".94" = load i8, i8* %"register0x00000206"
  %".95" = trunc i8 %".94" to i1
  br i1 %".95", label %"6", label %"7"
"6":
  %".97" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997927
  %".98" = ptrtoint i8* %".97" to i32
  %".99" = call i8 @"sym.cgc_submit_lyrics"(i32 %".98", i32 2048)
  store i8 %".99", i8* %".37"
  br label %"c"
"7":
  %".102" = load i32, i32* %"iVar1"
  %".103" = icmp eq i32 %".102", 2
  %".104" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".103", i1* %".104"
  %".106" = load i8, i8* %"register0x00000206"
  %".107" = trunc i8 %".106" to i1
  br i1 %".107", label %"8", label %"b"
"8":
  %".109" = load i8, i8* %".37"
  %".110" = icmp eq i8 %".109", 0
  %".111" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".110", i1* %".111"
  %".113" = load i8, i8* %"register0x00000206"
  %".114" = trunc i8 %".113" to i1
  br i1 %".114", label %"a", label %"9"
"9":
  %".116" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 997927
  %".117" = bitcast i32* %"in_stack_fffff76c" to i8**
  store i8* %".116", i8** %".117"
  %".119" = load i32, i32* %"in_stack_fffff76c"
  %".120" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531197, i32 %".119")
  br label %"c"
a:
  %".122" = load i32, i32* %"in_stack_fffff76c"
  %".123" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531186, i32 %".122")
  br label %"c"
b:
  %".125" = load i32, i32* %"in_stack_fffff76c"
  %".126" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531230, i32 %".125")
  br label %"c"
c:
  %".128" = load i32, i32* %"in_stack_fffff76c"
  %".129" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134531228, i32 %".128")
  br label %"1"
}

declare i32 @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_init"() 

declare i32 @"sym.cgc_bloomy_new"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_bloomy_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_bloomy_add"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_print_menu"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_submit_lyrics"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strsep"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_bloomy_check"(i32 %"arg_8h", i32 %"arg_ch") 
