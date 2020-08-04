; ModuleID = "LulzChat_2_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cur_user" = global i16 0
@"str.ERROR__Unknown_command." = external global i64
@"str.INFO__LulzChat_Client_v0.1" = external global i64
@"str.INFO__Type__h__for_help_menu" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995804
  %"in_stack_ffffef9c" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995812
  %"var_1058h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995816
  %"var_1054h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995824
  %"var_104ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995828
  %"var_1048h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995832
  %"var_1044h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995836
  %"var_1040h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995840
  %"var_103ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995844
  %"var_1038h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995848
  %"var_1034h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995852
  %"var_1030h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995856
  %"var_102ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995860
  %"var_1028h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995864
  %"var_1024h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995868
  %"var_1020h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995872
  %"var_101ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995876
  %"var_1018h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995880
  %"var_1014h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995884
  %"var_1010h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995888
  %"var_100ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".24" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %".25" = alloca i8**
  %".26" = alloca i32**
  store i8** %"argv", i8*** %".25"
  store i32** %"envp", i32*** %".26"
  br label %"0"
"0":
  store i16 0, i16* @"obj.cur_user"
  %".31" = load i32, i32* %"in_stack_ffffef9c"
  %".32" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134540945, i32 %".31")
  %".33" = load i32, i32* %"in_stack_ffffef9c"
  %".34" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134540974, i32 %".33")
  br label %"1"
"1":
  %".36" = load i32, i32* %"in_stack_ffffef9c"
  %".37" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134540827, i32 %".36")
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995888
  store i32 4096, i32* %"in_stack_ffffef9c"
  %".40" = ptrtoint i8* %".38" to i32
  %".41" = call i32 @"sym.cgc_read_until"(i32 0, i32 %".40", i32 4096, i32 10)
  store i32 %".41", i32* %"iVar1"
  %".43" = load i32, i32* %"iVar1"
  %".44" = icmp slt i32 %".43", 1
  br i1 %".44", label %"2", label %"3"
"2":
  call void @"sym.cgc_quit"()
  br label %"3"
"3":
  %".48" = load i32, i32* %"var_100ch"
  %".49" = trunc i32 %".48" to i8
  %".50" = sext i8 %".49" to i32
  store i32 %".50", i32* %"register0x00000000"
  %".52" = load i32, i32* %"register0x00000000"
  %".53" = sub i32 %".52", 68
  store i32 %".53", i32* %"uVar2"
  %".55" = load i32, i32* %"uVar2"
  %".56" = icmp ult i32 %".55", 50
  %".57" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i32, i32* %"register0x00000000"
  %".60" = icmp eq i32 %".59", 118
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000200"
  %".64" = load i8, i8* %"register0x00000200"
  %".65" = xor i8 %".63", %".64"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"5", label %"4"
"4":
  %".68" = load i32, i32* %"in_stack_ffffef9c"
  %".69" = call i32 @"sym.cgc_fdprintf"(i32 0, i32 134541005, i32 %".68")
  br label %"1"
"5":
  %".71" = load i32, i32* %"uVar2"
  %".72" = mul i32 %".71", 4
  %".73" = add i32 %".72", 134539856
  call void @"unique0x00000f30"()
  ret void
}

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_quit"() 

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_send_request"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_new_packet"(i32 %"arg_8h", i32 %"arg_ch") 

declare i16 @"sym.cgc_calc_checksum"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_free_packet"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 
