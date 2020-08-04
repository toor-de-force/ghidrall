; ModuleID = "ASCII_Content_Server"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_memManager" = global i32 0
@"obj.root" = global i32 0
@"str.Initialize_server_failed" = external global i64
@"str.Receive_command_failed" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"in_stack_ffffff88" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"arg_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"in_stack_ffffff8c" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"placeholder_2" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"in_stack_ffffff90" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"in_stack_ffffff94" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".16" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  %".22" = call i32 @"sym.cgc_InitializeTree"()
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp ne i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"1", label %"2"
"1":
  %".31" = load i8**, i8*** %".17"
  %".32" = ptrtoint i8** %".31" to i32
  %".33" = load i32, i32* %"in_stack_ffffff88"
  %".34" = load i32, i32* %"in_stack_ffffff8c"
  %".35" = load i32, i32* %"in_stack_ffffff90"
  %".36" = load i32, i32* %"in_stack_ffffff94"
  %".37" = load i32, i32* %"var_64h"
  %".38" = load i32, i32* %"var_60h"
  call void @"sym.cgc_PrintErrorAndTerminate"(i32 134541377, i32 %".33", i32 %".34", i32 %".35", i32 %".36", i32 %".37", i32 %".38", i32 %".32")
  br label %"2"
"2":
  %".41" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  store i32 76, i32* %"placeholder_2"
  call void @"sym.imp.memset"()
  store i32 0, i32* %"var_54h"
  br label %"3"
"3":
  %".46" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %".48" = bitcast i32* %"arg_ch" to i8**
  store i8* %".47", i8** %".48"
  %".50" = ptrtoint i8* %".46" to i32
  %".51" = load i32, i32* %"arg_ch"
  %".52" = call i32 @"sym.cgc_ReceiveCommand"(i32 %".50", i32 %".51")
  store i32 %".52", i32* %"iVar1"
  %".54" = load i32, i32* %"iVar1"
  %".55" = icmp ne i32 %".54", 0
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"4", label %"5"
"4":
  %".61" = load i8**, i8*** %".17"
  %".62" = ptrtoint i8** %".61" to i32
  %".63" = load i32, i32* %"arg_ch"
  %".64" = load i32, i32* %"placeholder_2"
  %".65" = load i32, i32* %"in_stack_ffffff90"
  %".66" = load i32, i32* %"in_stack_ffffff94"
  call void @"sym.cgc_PrintErrorAndTerminate"(i32 134541402, i32 %".63", i32 %".64", i32 %".65", i32 %".66", i32 76, i32 0, i32 %".62")
  br label %"5"
"5":
  %".69" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".70" = ptrtoint i8* %".69" to i32
  call void @"sym.cgc_HandleCommand"(i32 %".70")
  %".72" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".73" = ptrtoint i8* %".72" to i32
  call void @"sym.cgc_DestroyCommand"(i32 %".73")
  %".75" = load i32, i32* %"var_54h"
  %".76" = icmp eq i32 %".75", 1
  %".77" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".76", i1* %".77"
  %".79" = load i8, i8* %"register0x00000206"
  %".80" = trunc i8 %".79" to i1
  br i1 %".80", label %"3", label %"6"
"6":
  store i32 0, i32* %"register0x00000000"
  %".83" = load i32, i32* %"register0x00000000"
  ret i32 %".83"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_ReceiveCommand"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_DecodeData"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

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

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_receive_fixed"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_VerifyPointerOrTerminate"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_HandleCommand"(i32 %"arg_8h") 

declare void @"sym.cgc_PrintErrorAndTerminate"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h") 

declare i32 @"sym.cgc_InitializeTree"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_InsertNodeInTree"(i32 %"arg_8h") 

declare i32 @"sym.cgc_LookupNode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strrchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_DestroyCommand"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
