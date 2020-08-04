; ModuleID = "RAM_based_filesystem_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_ARGC" = global i32 0
@"obj.cgc_ARGV" = global i32 0
@"obj.cgc_prev_str" = global i32 0
@"obj.cgc_prev_str_len" = global i32 0
@"obj.cgc_prev_str_ptr" = global i32 0
@"obj.cgc_token" = global i32 0
@"obj.fs" = global i32 0
@"obj.free_list" = global i8 0
@"obj.cgc_CWD" = external global i64
@"obj.cgc_cmds" = external global i64
@"str.Failed_to_destroy_the_RAM_file_system" = external global i64
@"str.Failed_to_initialize_the_RAM_file_system" = external global i64
@"str.Invalid_command" = external global i64
@"str.Type_help_for_a_list_of_available_commands." = external global i64
@"str.Welcome_to_the_cgcfs_shell" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999640
  %"arg_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999660
  %"var_150h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999664
  %"var_14ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999668
  %"var_148h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999672
  %"var_144h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999676
  %"var_140h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999680
  %"var_13ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999684
  %"var_138h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999688
  %"var_134h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999692
  %"var_130h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".24" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".25" = alloca i8**
  %".26" = alloca i32**
  store i8** %"argv", i8*** %".25"
  store i32** %"envp", i32*** %".26"
  br label %"0"
"0":
  %".30" = ptrtoint i64* @"obj.cgc_CWD" to i32
  call void @"sym.cgc_bzero"(i32 %".30", i32 256)
  store i32 134544470, i32* %"arg_ch"
  %".33" = ptrtoint i64* @"obj.cgc_CWD" to i32
  %".34" = call i32 @"sym.cgc_strcpy"(i32 %".33", i32 134544470)
  %".35" = call i32 @"sym.cgc_InitFS"(i32 524288)
  store i32 %".35", i32* %"iVar1"
  %".37" = load i32, i32* %"iVar1"
  %".38" = icmp eq i32 %".37", 0
  %".39" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".38", i1* %".39"
  %".41" = load i8, i8* %"register0x00000206"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"1", label %"13"
"1":
  call void @"sym.cgc_puts"(i32 134544977)
  call void @"sym.cgc_puts"(i32 134545005)
  %".46" = load i32, i32* %"arg_ch"
  %".47" = call i32 @"sym.cgc_printf"(i32 134545049, i32 %".46")
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %".49" = ptrtoint i8* %".48" to i32
  call void @"sym.cgc_bzero"(i32 %".49", i32 256)
  br label %"2"
"2":
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %".53" = ptrtoint i8* %".52" to i32
  %".54" = call i32 @"sym.cgc_readUntil"(i32 %".53", i32 255, i32 10)
  store i32 %".54", i32* %"iVar1"
  %".56" = load i32, i32* %"iVar1"
  %".57" = icmp ne i32 %".56", -1
  %".58" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".57", i1* %".58"
  %".60" = load i8, i8* %"register0x00000206"
  %".61" = trunc i8 %".60" to i1
  br i1 %".61", label %"6", label %"3"
"3":
  %".63" = call i32 @"sym.cgc_DestroyFS"()
  store i32 %".63", i32* %"iVar1"
  %".65" = load i32, i32* %"iVar1"
  %".66" = icmp eq i32 %".65", 0
  %".67" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000206"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"4", label %"5"
"4":
  store i32 0, i32* %"var_8h"
  br label %"14"
"5":
  call void @"sym.cgc_puts"(i32 134545068)
  store i32 -1, i32* %"var_8h"
  br label %"14"
"6":
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %".78" = ptrtoint i8* %".77" to i32
  %".79" = call i32 @"sym.cgc_ParseArgs"(i32 %".78")
  %".80" = load i32, i32* @"obj.cgc_ARGC"
  %".81" = icmp eq i32 %".80", 0
  %".82" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".81", i1* %".82"
  %".84" = load i8, i8* %"register0x00000206"
  %".85" = trunc i8 %".84" to i1
  br i1 %".85", label %"12", label %"7"
"7":
  %".87" = load i32, i32* @"obj.cgc_ARGV"
  %".88" = icmp ne i32 %".87", 0
  %".89" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".88", i1* %".89"
  %".91" = load i8, i8* %"register0x00000206"
  %".92" = trunc i8 %".91" to i1
  br i1 %".92", label %"8", label %"d"
"8":
  %".94" = bitcast i64* @"obj.cgc_cmds" to i32*
  %".95" = bitcast i32* %"var_10ch" to i32**
  store i32* %".94", i32** %".95"
  br label %"9"
"9":
  %".98" = load i32, i32* %"var_10ch"
  %".99" = icmp ne i32 %".98", 0
  %".100" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".99", i1* %".100"
  %".102" = load i8, i8* %"register0x00000206"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"d", label %"a"
a:
  %".105" = load i32, i32* %"var_10ch"
  %".106" = load i32, i32* @"obj.cgc_ARGV"
  %".107" = call i32 @"sym.cgc_strcmp"(i32 %".105", i32 %".106")
  store i32 %".107", i32* %"iVar1"
  %".109" = load i32, i32* %"iVar1"
  %".110" = icmp eq i32 %".109", 0
  %".111" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".110", i1* %".111"
  %".113" = load i8, i8* %"register0x00000206"
  %".114" = trunc i8 %".113" to i1
  br i1 %".114", label %"b", label %"c"
b:
  %".116" = load i32, i32* %"var_10ch"
  %".117" = add i32 %".116", 4
  call void @"unique0x00000f30"()
  br label %"d"
c:
  %".120" = load i32, i32* %"var_10ch"
  %".121" = add i32 %".120", 12
  store i32 %".121", i32* %"var_10ch"
  br label %"9"
d:
  %".124" = load i32, i32* %"var_10ch"
  %".125" = icmp eq i32 %".124", 0
  %".126" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".125", i1* %".126"
  %".128" = load i8, i8* %"register0x00000206"
  %".129" = trunc i8 %".128" to i1
  br i1 %".129", label %"e", label %"f"
e:
  call void @"sym.cgc_puts"(i32 134545052)
  br label %"f"
f:
  %".133" = load i32, i32* %"var_10ch"
  %".134" = icmp eq i32 %".133", 0
  %".135" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".134", i1* %".135"
  %".137" = load i8, i8* %"register0x00000206"
  %".138" = trunc i8 %".137" to i1
  br i1 %".138", label %"10", label %"11"
"10":
  call void @"sym.cgc_puts"(i32 134545052)
  br label %"11"
"11":
  %".142" = call i32 @"sym.cgc_FreeArgs"()
  %".143" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  store i32 256, i32* %"iVar1"
  %".145" = ptrtoint i8* %".143" to i32
  call void @"sym.cgc_bzero"(i32 %".145", i32 256)
  %".147" = load i32, i32* %"iVar1"
  %".148" = call i32 @"sym.cgc_printf"(i32 134545049, i32 %".147")
  br label %"2"
"12":
  %".150" = call i32 @"sym.cgc_FreeArgs"()
  %".151" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  store i32 256, i32* %"iVar1"
  %".153" = ptrtoint i8* %".151" to i32
  call void @"sym.cgc_bzero"(i32 %".153", i32 256)
  %".155" = load i32, i32* %"iVar1"
  %".156" = call i32 @"sym.cgc_printf"(i32 134545049, i32 %".155")
  br label %"2"
"13":
  call void @"sym.cgc_puts"(i32 134544935)
  store i32 -1, i32* %"var_8h"
  br label %"14"
"14":
  %".161" = load i32, i32* %"var_8h"
  store i32 %".161", i32* %"register0x00000000"
  %".163" = load i32, i32* %"register0x00000000"
  ret i32 %".163"
}

declare i32 @"sym.cgc_DestroyFS"() 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_ParseArgs"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strdup"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_FreeArgs"() 

declare i32 @"sym.cgc_readUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_pow"() 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_InitFS"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 
