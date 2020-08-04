; ModuleID = "KTY_Pretty_Printer_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.parser" = global i32 0
@"obj.g_parser" = global i32 0
@"obj.my_kty" = global i32 0
@"str.Error" = external global i64
@"str.Invalid_menu._Try_again." = external global i64
@"str.KTY_Pretty_Printer_v0.1" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991676
  %"in_stack_ffffdf7c" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991676
  %"iVar2" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991692
  %"var_2070h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991696
  %"var_206ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991700
  %"var_2068h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991704
  %"var_2064h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991708
  %"var_2060h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991712
  %"var_205ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991716
  %"var_2058h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991720
  %"var_2054h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991724
  %"var_2050h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991728
  %"var_204ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991732
  %"var_2048h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991736
  %"var_2044h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991740
  %"var_2040h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991744
  %"var_203ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991748
  %"var_2038h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991752
  %"var_2034h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991756
  %"var_2030h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991760
  %"var_202ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991764
  %"var_2028h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991768
  %"var_2024h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991772
  %"var_2020h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991776
  %"var_201ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991780
  %"var_2018h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  %"var_2008h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".30" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".31" = alloca i8**
  %".32" = alloca i32**
  store i8** %"argv", i8*** %".31"
  store i32** %"envp", i32*** %".32"
  br label %"0"
"0":
  %".36" = load i32, i32* %"in_stack_ffffdf7c"
  %".37" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134539900, i32 %".36")
  %".38" = call i32 @"sym.cgc_malloc"(i32 16)
  store i32 %".38", i32* @"obj.parser"
  %".40" = load i32, i32* @"obj.parser"
  %".41" = call i32 @"sym.cgc_kty_init"(i32 %".40")
  store i32 %".41", i32* %"iVar1"
  %".43" = load i32, i32* %"iVar1"
  %".44" = icmp ne i32 %".43", 0
  %".45" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i8, i8* %"register0x00000206"
  %".48" = trunc i8 %".47" to i1
  br i1 %".48", label %"1", label %"2"
"1":
  %".50" = load i32, i32* %"in_stack_ffffdf7c"
  %".51" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134539405, i32 %".50")
  call void @"sym.cgc_quit"()
  br label %"2"
"2":
  call void @"sym.cgc_menu"()
  br label %"3"
"3":
  %".56" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991780
  %".57" = ptrtoint i8* %".56" to i32
  %".58" = call i32 @"sym.cgc_read_until"(i32 0, i32 %".57", i32 16, i32 10)
  store i32 %".58", i32* %"iVar1"
  %".60" = load i32, i32* %"iVar1"
  %".61" = icmp slt i32 0, %".60"
  br i1 %".61", label %"5", label %"4"
"4":
  store i32 0, i32* %"register0x00000000"
  %".64" = load i32, i32* %"register0x00000000"
  ret i32 %".64"
"5":
  %".66" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991780
  store i32 10, i32* %"iVar2"
  %".68" = ptrtoint i8* %".66" to i32
  %".69" = call i32 @"sym.cgc_strtol"(i32 %".68", i32 0, i32 10)
  store i32 %".69", i32* %"iVar1"
  %".71" = load i32, i32* %"iVar1"
  %".72" = icmp eq i32 %".71", 1
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"6", label %"9"
"6":
  %".78" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  store i32 8192, i32* %"iVar2"
  %".80" = ptrtoint i8* %".78" to i32
  %".81" = call i32 @"sym.cgc_read_until"(i32 0, i32 %".80", i32 8192, i32 0)
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = icmp slt i32 %".83", 1
  br i1 %".84", label %"7", label %"8"
"7":
  %".86" = load i32, i32* %"iVar2"
  %".87" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134539405, i32 %".86")
  br label %"3"
"8":
  %".89" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  %".90" = ptrtoint i8* %".89" to i32
  call void @"sym.cgc_import_kty"(i32 %".90")
  br label %"3"
"9":
  %".93" = load i32, i32* %"iVar1"
  %".94" = icmp eq i32 %".93", 2
  %".95" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".94", i1* %".95"
  %".97" = load i8, i8* %"register0x00000206"
  %".98" = trunc i8 %".97" to i1
  br i1 %".98", label %"a", label %"b"
a:
  call void @"sym.cgc_print_kty"()
  br label %"3"
b:
  %".102" = load i32, i32* %"iVar1"
  %".103" = icmp eq i32 %".102", 3
  %".104" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".103", i1* %".104"
  %".106" = load i8, i8* %"register0x00000206"
  %".107" = trunc i8 %".106" to i1
  br i1 %".107", label %"c", label %"d"
c:
  call void @"sym.cgc_quit"()
  br label %"3"
d:
  %".111" = load i32, i32* %"iVar1"
  %".112" = icmp eq i32 %".111", 777
  %".113" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".112", i1* %".113"
  %".115" = load i8, i8* %"register0x00000206"
  %".116" = trunc i8 %".115" to i1
  br i1 %".116", label %"e", label %"f"
e:
  call void @"sym.cgc_nyan"()
  br label %"3"
f:
  %".120" = load i32, i32* %"iVar2"
  %".121" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134539925, i32 %".120")
  br label %"3"
}

declare void @"sym.cgc_quit"() 

declare void @"sym.cgc_exit"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_kty_init"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_nyan"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_array_length"(i32 %"arg_8h") 

declare i32 @"sym.cgc_array_get"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_import_kty"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_free_kty_item"(i32 %"arg_8h") 

declare void @"sym.cgc_array_destroy"(i32 %"arg_8h") 

declare void @"sym.cgc_htbl_destroy"(i32 %"arg_8h") 

declare void @"sym.cgc_print_kty"() 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_menu"() 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"_reloc.memset"() 

declare void @"_reloc.memcpy"() 
