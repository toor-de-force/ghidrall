; ModuleID = "String_Info_Calculator_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.recv_files" = global i32 0
@"str.Here_are_your_results..." = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998832
  %"var_48ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998836
  %"var_488h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998840
  %"var_484h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998844
  %"var_480h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998848
  %"var_47ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998852
  %"var_478h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998856
  %"var_474h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998860
  %"var_470h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998864
  %"var_46ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998868
  %"var_468h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998872
  %"var_464h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998876
  %"var_460h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998880
  %"var_45ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998884
  %"var_458h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998888
  %"var_454h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998892
  %"var_450h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998896
  %"var_44ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998900
  %"var_448h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998904
  %"var_444h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %"var_440h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998912
  %"var_43ch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998916
  %"var_438h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998920
  %"var_434h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998924
  %"var_430h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998928
  %"var_42ch" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %"var_428h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998956
  %"var_410h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %"var_40ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".32" to i32*
  %"register0x00000206" = alloca i8
  %".33" = alloca i8**
  %".34" = alloca i32**
  store i8** %"argv", i8*** %".33"
  store i32** %"envp", i32*** %".34"
  br label %"0"
"0":
  %".38" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  call void @"sym.imp.memset"()
  br label %"1"
"1":
  %".41" = call i32 @"sym.cgc_send_bytes"(i32 1, i32 134535292, i32 24)
  store i32 %".41", i32* %"iVar1"
  %".43" = load i32, i32* %"iVar1"
  %".44" = icmp ne i32 %".43", 24
  %".45" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i8, i8* %"register0x00000206"
  %".48" = trunc i8 %".47" to i1
  br i1 %".48", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".53" = ptrtoint i8* %".52" to i32
  %".54" = call i32 @"sym.cgc_memset"(i32 %".53", i32 0, i32 1024)
  %".55" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %".56" = ptrtoint i8* %".55" to i32
  %".57" = call i32 @"sym.cgc_memset"(i32 %".56", i32 0, i32 24)
  %".58" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".59" = ptrtoint i8* %".58" to i32
  %".60" = call i32 @"sym.cgc_recv_until_delim_n"(i32 0, i32 3, i32 %".59", i32 1048)
  store i32 %".60", i32* %"iVar1"
  %".62" = load i32, i32* %"iVar1"
  %".63" = icmp slt i32 %".62", 0
  br i1 %".63", label %"4", label %"5"
"4":
  call void @"sym.imp.cgc__terminate"()
  br label %"5"
"5":
  %".67" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998960
  %".69" = ptrtoint i8* %".68" to i32
  %".70" = ptrtoint i8* %".68" to i32
  %".71" = call i32 @"sym.cgc_process"(i32 %".69", i32 3, i32 %".70")
  store i32 %".71", i32* %"iVar1"
  %".73" = load i32, i32* %"iVar1"
  %".74" = icmp ne i32 %".73", 0
  %".75" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000206"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"6", label %"7"
"6":
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  %".82" = call i32 @"sym.cgc_send_bytes"(i32 1, i32 134535317, i32 25)
  store i32 %".82", i32* %"iVar1"
  %".84" = load i32, i32* %"iVar1"
  %".85" = icmp ne i32 %".84", 25
  %".86" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".85", i1* %".86"
  %".88" = load i8, i8* %"register0x00000206"
  %".89" = trunc i8 %".88" to i1
  br i1 %".89", label %"8", label %"9"
"8":
  call void @"sym.imp.cgc__terminate"()
  br label %"9"
"9":
  %".93" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998932
  %".94" = ptrtoint i8* %".93" to i32
  %".95" = call i32 @"sym.cgc_send_bytes"(i32 1, i32 %".94", i32 24)
  store i32 %".95", i32* %"iVar1"
  %".97" = load i32, i32* %"iVar1"
  %".98" = icmp ne i32 %".97", 24
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"1", label %"a"
a:
  call void @"sym.imp.cgc__terminate"()
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_recv_until_delim_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_recv_char"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_process"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_compute_session_id"(i32 %"arg_8h") 

declare void @"sym.cgc_compute_hash"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_compute_grammar_components"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_is_letter"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_upper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_lower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_paragraph_end_char"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_word_end_char"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_sentence_end_char"(i32 %"arg_8h") 

declare i32 @"sym.cgc_compute_char_type"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_is_non_printable"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_printable"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_symbol"(i32 %"arg_8h") 

declare i8 @"sym.cgc_is_digit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"_reloc.memset"() 
