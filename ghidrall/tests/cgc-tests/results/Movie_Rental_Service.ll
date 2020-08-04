; ModuleID = "Movie_Rental_Service"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str." = external global i64
@"str.1._Add_movie__2._Remove_movie__3._Update_movie__4._Quit_admin_mode____Choice:" = external global i64
@"str.1._List_movies__2._Rent_movie__3._Return_movie__4._Admin_mode__5._Exit____Choice:" = external global i64
@"str.ERROR__Invalid_menu._Please_select_again." = external global i64
@"str.Movie_Rental_Service_v0.1" = external global i64
define void @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967292
  %"var_4h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967288
  %"var_ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995548
  %"arg_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995572
  %"var_1148h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995576
  %"var_1144h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995580
  %"var_1140h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995584
  %"var_113ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995588
  %"var_1138h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995592
  %"var_1134h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995596
  %"var_1130h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995600
  %"var_112ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995604
  %"var_1128h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995608
  %"var_1124h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995612
  %"var_1120h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995616
  %"var_111ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995620
  %"var_1118h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995624
  %"var_1114h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995628
  %"var_1110h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995632
  %"var_110ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995636
  %"var_1108h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995640
  %"var_1104h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995644
  %"var_1100h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995648
  %"var_10fch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995652
  %"var_10f8h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995656
  %"var_10f4h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995660
  %"var_10f0h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995664
  %"var_10ech" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995668
  %"var_10e8h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995672
  %"var_10e4h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995676
  %"var_10e0h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995681
  %"var_10dbh" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995744
  %"auStack4256" = bitcast i8* %".37" to i96*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995756
  %"var_1090h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995822
  %"auStack4178" = bitcast i8* %".39" to i96*
  %".40" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995834
  %"var_1042h" = bitcast i8* %".40" to i32*
  %".41" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995868
  %"acStack4132" = bitcast i8* %".41" to i96*
  %".42" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995880
  %"var_1014h" = bitcast i8* %".42" to i32*
  %".43" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".43" to i32*
  %".44" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".44" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".45" = alloca i32
  %".46" = alloca i32
  %".47" = alloca i32
  %".48" = alloca i32
  store i32 %"placeholder_0", i32* %".45"
  store i32 %"placeholder_1", i32* %".46"
  store i32 %"placeholder_2", i32* %".47"
  store i32 %"arg_8h", i32* %".48"
  br label %"0"
"0":
  call void @"sym.imp.cgc__terminate"()
  %".55" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995822
  %".56" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995668
  %".57" = ptrtoint i8* %".56" to i32
  %".58" = trunc i32 %".57" to i8
  %".59" = trunc i32 1 to i8
  %".60" = add i8 %".58", %".59"
  %".61" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995744
  call void @"sym.imp.memcpy"()
  call void @"sym.imp.memcpy"()
  store i32 134537025, i32* %"arg_ch"
  call void @"sym.imp.memcpy"()
  %".66" = ptrtoint i8* %".61" to i32
  %".67" = load i32, i32* %"arg_ch"
  %".68" = call i32 @"sym.cgc_printf"(i32 %".66", i32 %".67")
  call void @"sym.cgc_initialize"()
  %".70" = load i32, i32* %"arg_ch"
  %".71" = call i32 @"sym.cgc_printf"(i32 134537100, i32 %".70")
  br label %"1"
"1":
  %".73" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995744
  %".74" = ptrtoint i8* %".73" to i32
  %".75" = load i32, i32* %"arg_ch"
  %".76" = call i32 @"sym.cgc_printf"(i32 %".74", i32 %".75")
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995868
  %".78" = bitcast i32* %"arg_ch" to i8**
  store i8* %".77", i8** %".78"
  %".80" = load i32, i32* %"arg_ch"
  %".81" = call i32 @"sym.cgc_readuntil"(i32 0, i32 %".80", i32 4096, i32 10)
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp slt i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000207"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"2", label %"3"
"2":
  call void @"sym.cgc_quit"()
  br label %"3"
"3":
  %".92" = load i96, i96* %"acStack4132"
  %".93" = trunc i96 %".92" to i8
  %".94" = sext i8 %".93" to i32
  store i32 %".94", i32* %"register0x00000000"
  %".96" = load i32, i32* %"register0x00000000"
  %".97" = sub i32 %".96", 49
  store i32 %".97", i32* %"uVar2"
  %".99" = load i32, i32* %"uVar2"
  %".100" = icmp ult i32 %".99", 4
  %".101" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".100", i1* %".101"
  %".103" = load i32, i32* %"register0x00000000"
  %".104" = icmp eq i32 %".103", 53
  %".105" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".104", i1* %".105"
  %".107" = load i8, i8* %"register0x00000200"
  %".108" = load i8, i8* %"register0x00000200"
  %".109" = xor i8 %".107", %".108"
  %".110" = trunc i8 %".109" to i1
  br i1 %".110", label %"4", label %"5"
"4":
  %".112" = load i32, i32* %"uVar2"
  %".113" = mul i32 %".112", 4
  %".114" = add i32 %".113", 134533392
  call void @"unique0x00000f30"()
  ret void
"5":
  %".117" = load i32, i32* %"arg_ch"
  %".118" = call i32 @"sym.cgc_printf"(i32 134537146, i32 %".117")
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_output_number"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_quit"() 

declare i32 @"sym.cgc_readuntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_initialize"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_movie_add"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_movie_find"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"unique0x00000f30"() 

declare void @"_reloc.memcpy"() 
