; ModuleID = "CNMP"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.COUNT" = external global i64
@"str.HELP" = external global i64
@"str.LIST" = external global i64
@"str.QUIT" = external global i64
@"str.SHOW" = external global i64
@"str.This_is_the_Chuck_Norris__joke__Management_Protocol__CNMP_.__We_know_you_need_a_break__so_take_some_time_and_amuse_yourself._If_you_have_a_good_Chuck_Norris_joke__you_can_add_it_to_our_listing." = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867780
  %"auStack132220" = bitcast i8* %".4" to i288*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867816
  %"var_20454h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867820
  %"var_20450h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867824
  %"var_2044ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867828
  %"var_20448h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867832
  %"var_20444h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867836
  %"var_20440h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867840
  %"var_2043ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867844
  %"var_20438h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867848
  %"var_20434h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867852
  %"var_20430h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867856
  %"var_2042ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867860
  %"var_20428h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867864
  %"var_20424h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867868
  %"var_20420h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867872
  %"var_2041ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %"var_20418h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".23" to i32*
  %"register0x00000206" = alloca i8
  %"register0x0000001c" = alloca i32*
  %".24" = alloca i8**
  %".25" = alloca i32**
  store i8** %"argv", i8*** %".24"
  store i32** %"envp", i32*** %".25"
  br label %"0"
"0":
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867780
  %".31" = bitcast i32** %"register0x0000001c" to i8**
  store i8* %".30", i8** %".31"
  %".33" = ptrtoint i8* %".29" to i32
  call void @"sym.cgc_load_default_jokes"(i32 %".33")
  %".35" = call i32 @"sym.cgc_strlen"(i32 134528877)
  store i32 %".35", i32* %"iVar1"
  %".37" = load i32, i32* %"iVar1"
  %".38" = call i32 @"sym.cgc_send"(i32 134528877, i32 %".37")
  %".39" = call i32 @"sym.cgc_do_menu"()
  br label %"1"
"1":
  %".41" = ptrtoint i32** %"register0x0000001c" to i32
  %".42" = call i32 @"sym.cgc_memset"(i32 %".41", i32 0, i32 20)
  %".43" = ptrtoint i32** %"register0x0000001c" to i32
  %".44" = call i32 @"sym.cgc_prompt_user"(i32 134527986, i32 %".43", i32 20)
  %".45" = ptrtoint i32** %"register0x0000001c" to i32
  %".46" = call i32 @"sym.cgc_streq"(i32 %".45", i32 134529071)
  store i32 %".46", i32* %"iVar1"
  %".48" = load i32, i32* %"iVar1"
  %".49" = icmp ne i32 %".48", 0
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"2", label %"d"
"2":
  %".55" = ptrtoint i32** %"register0x0000001c" to i32
  %".56" = call i32 @"sym.cgc_streq"(i32 %".55", i32 134529076)
  store i32 %".56", i32* %"iVar1"
  %".58" = load i32, i32* %"iVar1"
  %".59" = icmp ne i32 %".58", 0
  %".60" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000206"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"3", label %"c"
"3":
  %".65" = ptrtoint i32** %"register0x0000001c" to i32
  %".66" = call i32 @"sym.cgc_streq"(i32 %".65", i32 134529080)
  store i32 %".66", i32* %"iVar1"
  %".68" = load i32, i32* %"iVar1"
  %".69" = icmp ne i32 %".68", 0
  %".70" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000206"
  %".73" = trunc i8 %".72" to i1
  br i1 %".73", label %"4", label %"b"
"4":
  %".75" = ptrtoint i32** %"register0x0000001c" to i32
  %".76" = call i32 @"sym.cgc_streq"(i32 %".75", i32 134529086)
  store i32 %".76", i32* %"iVar1"
  %".78" = load i32, i32* %"iVar1"
  %".79" = icmp eq i32 %".78", 0
  %".80" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".79", i1* %".80"
  %".82" = load i8, i8* %"register0x00000206"
  %".83" = trunc i8 %".82" to i1
  br i1 %".83", label %"a", label %"5"
"5":
  %".85" = ptrtoint i32** %"register0x0000001c" to i32
  %".86" = call i32 @"sym.cgc_streq"(i32 %".85", i32 134529091)
  store i32 %".86", i32* %"iVar1"
  %".88" = load i32, i32* %"iVar1"
  %".89" = icmp eq i32 %".88", 0
  %".90" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".89", i1* %".90"
  %".92" = load i8, i8* %"register0x00000206"
  %".93" = trunc i8 %".92" to i1
  br i1 %".93", label %"9", label %"6"
"6":
  %".95" = ptrtoint i32** %"register0x0000001c" to i32
  %".96" = call i32 @"sym.cgc_streq"(i32 %".95", i32 134529096)
  store i32 %".96", i32* %"iVar1"
  %".98" = load i32, i32* %"iVar1"
  %".99" = icmp eq i32 %".98", 0
  %".100" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".99", i1* %".100"
  %".102" = load i8, i8* %"register0x00000206"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"8", label %"7"
"7":
  %".105" = call i32 @"sym.cgc_do_menu"()
  store i32 %".105", i32* %"var_20454h"
  br label %"1"
"8":
  %".108" = call i32 @"sym.cgc_do_quit"()
  br label %"1"
"9":
  %".110" = call i32 @"sym.cgc_do_help"()
  br label %"1"
a:
  %".112" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %".113" = ptrtoint i8* %".112" to i32
  %".114" = call i32 @"sym.cgc_do_show"(i32 %".113")
  br label %"1"
b:
  %".116" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %".117" = ptrtoint i8* %".116" to i32
  %".118" = call i64 @"sym.cgc_do_count"(i32 %".117")
  br label %"1"
c:
  %".120" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %".121" = ptrtoint i8* %".120" to i32
  %".122" = call i32 @"sym.cgc_do_add"(i32 %".121")
  br label %"1"
d:
  %".124" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 867876
  %".125" = ptrtoint i8* %".124" to i32
  %".126" = call i32 @"sym.cgc_do_list"(i32 %".125")
  br label %"1"
}

declare i64 @"sym.cgc_do_count"(i32 %"arg_8h") 

declare i32 @"sym.cgc_joke_count"(i32 %"arg_8h") 

declare i32 @"sym.cgc_snprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_vsnprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_int2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_prompt_user"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_do_list"(i32 %"arg_8h") 

declare i32 @"sym.cgc_send_all_jokes"(i32 %"arg_8h") 

declare i64 @"sym.cgc_send_joke"(i32 %"arg_8h") 

declare i32 @"sym.cgc_streq"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_do_show"(i32 %"arg_8h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_send_random_joke"(i32 %"arg_8h") 

declare void @"sym.cgc_rand"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_str2uint32"(i32 %"arg_8h") 

declare i32 @"sym.cgc_is_numeric"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_menu"() 

declare i32 @"sym.cgc_do_help"() 

declare void @"sym.cgc_load_default_jokes"(i32 %"arg_8h") 

declare i32 @"sym.cgc_insert_joke"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_syslog"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_do_add"(i32 %"arg_8h") 

declare i32 @"sym.cgc_do_quit"() 

declare i32 @"sym.cgc_send"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"_reloc.memset"() 
