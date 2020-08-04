; ModuleID = "Sad_Face_Template_Engine_SFTE_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.banner" = global i32 0
@"str.Invalid_menu._Try_again." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"uVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991708
  %"var_2060h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991712
  %"var_205ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991716
  %"var_2058h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991720
  %"var_2054h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991740
  %"var_2040h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991744
  %"var_203ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991748
  %"var_2038h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991752
  %"var_2034h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991756
  %"var_2030h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991760
  %"var_202ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991764
  %"var_2028h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991768
  %"var_2024h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991772
  %"var_2020h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991776
  %"var_201ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991780
  %"var_2018h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991784
  %"var_2014h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995884
  %"var_1010h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".21" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".22" = alloca i8**
  %".23" = alloca i32**
  store i8** %"argv", i8*** %".22"
  store i32** %"envp", i32*** %".23"
  br label %"0"
"0":
  call void @"sym.cgc_dict_new"()
  %".28" = load i32, i32* @"obj.banner"
  store i32 %".28", i32* %"iVar1"
  %".30" = load i32, i32* @"obj.banner"
  %".31" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134537337, i32 %".30")
  br label %"1"
"1":
  call void @"sym.cgc_print_menu"()
  %".34" = load i32, i32* %"iVar1"
  %".35" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134537340, i32 %".34")
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995884
  %".37" = ptrtoint i8* %".36" to i32
  %".38" = call i32 @"sym.cgc_read_until"(i32 0, i32 %".37", i32 4096, i32 10)
  store i32 %".38", i32* %"iVar1"
  %".40" = load i32, i32* %"iVar1"
  %".41" = icmp slt i32 %".40", 0
  %".42" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000207"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"5", label %"2"
"2":
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995884
  store i32 10, i32* %"iVar1"
  %".49" = ptrtoint i8* %".47" to i32
  %".50" = call i32 @"sym.cgc_strtol"(i32 %".49", i32 0, i32 10)
  store i32 %".50", i32* %"iVar2"
  %".52" = load i32, i32* %"iVar2"
  %".53" = sub i32 %".52", 1
  store i32 %".53", i32* %"register0x00000000"
  %".55" = load i32, i32* %"register0x00000000"
  %".56" = icmp ult i32 %".55", 4
  %".57" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i32, i32* %"iVar2"
  %".60" = icmp eq i32 %".59", 5
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000200"
  %".64" = load i8, i8* %"register0x00000200"
  %".65" = xor i8 %".63", %".64"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"4", label %"3"
"3":
  %".68" = load i32, i32* %"iVar1"
  %".69" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134537352, i32 %".68")
  %".70" = load i32, i32* %"iVar1"
  %".71" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134537350, i32 %".70")
  br label %"1"
"4":
  %".73" = load i32, i32* %"register0x00000000"
  %".74" = mul i32 %".73", 4
  %".75" = add i32 %".74", 134536784
  %".76" = call i32 @"unique0x00000f30"()
  %".77" = load i32, i32* %"uVar3"
  ret i32 %".77"
"5":
  store i32 4294967295, i32* %"register0x00000000"
  %".80" = load i32, i32* %"register0x00000000"
  ret i32 %".80"
}

declare void @"sym.cgc_dict_new"() 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_print_menu"() 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"unique0x00000f30"() 
