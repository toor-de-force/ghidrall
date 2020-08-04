; ModuleID = "reallystream_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.vhead" = global i32 0
@"str.8_D" = external global i64
@"str.Hello_and_welcome_to_the_RLEStream_TM__beta_____Use_any_of_the_following_commands_to_interact:__list___List_currently_uploaded_videos__play__name___key____Play_a_video__add__name____Upload_a_video__will_prompt_for_more_data___remove__name____Delete_a_video____Thank_you_for_choosing_us_for_your_archaic_streaming_needs" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"pcVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998840
  %"var_484h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998844
  %"var_480h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998848
  %"var_47ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998852
  %"var_478h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998856
  %"var_474h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998860
  %"var_470h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998864
  %"var_46ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998868
  %"var_468h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998872
  %"var_464h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998876
  %"var_460h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998880
  %"var_45ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998884
  %"var_458h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998888
  %"var_454h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998892
  %"var_450h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998896
  %"var_44ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998900
  %"var_448h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998904
  %"var_444h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %"var_440h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998912
  %"var_43ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %"var_414h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".25" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %".26" = alloca i8**
  %".27" = alloca i32**
  store i8** %"argv", i8*** %".26"
  store i32** %"envp", i32*** %".27"
  br label %"0"
"0":
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  call void @"sym.imp.memset"()
  store i32 0, i32* @"obj.vhead"
  call void @"sym.imp.memcpy"()
  %".36" = call i32 @"sym.cgc_sendline"(i32 1, i32 134524653, i32 313)
  store i32 %".36", i32* %"iVar2"
  %".38" = load i32, i32* %"iVar2"
  %".39" = icmp slt i32 %".38", 0
  %".40" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000207"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"2", label %"1"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %".48" = ptrtoint i8* %".47" to i32
  call void @"sym.cgc_promptc"(i32 %".48", i32 1024, i32 134524967)
  store i32 0, i32* %"var_14h"
  br label %"3"
"3":
  %".52" = load i32, i32* %"var_14h"
  %".53" = icmp ult i32 %".52", 5
  %".54" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".53", i1* %".54"
  %".56" = load i8, i8* %"register0x00000200"
  %".57" = trunc i8 %".56" to i1
  br i1 %".57", label %"4", label %"7"
"4":
  %".59" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %".60" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %".61" = load i32, i32* %"var_14h"
  %".62" = mul i32 %".61", 2
  %".63" = mul i32 %".62", 32
  %".64" = getelementptr inbounds i8, i8* %".60", i32 %".63"
  %".65" = bitcast i8* %".64" to i32*
  %".66" = load i32, i32* %".65"
  %".67" = ptrtoint i8* %".59" to i32
  %".68" = call i8 @"sym.cgc_startswith"(i32 %".67", i32 %".66")
  %".69" = bitcast i32* %"iVar2" to i8*
  store i8 %".68", i8* %".69"
  %".71" = load i32, i32* %"iVar2"
  %".72" = icmp ne i32 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"5", label %"6"
"5":
  %".78" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998912
  %".79" = load i32, i32* %"var_14h"
  %".80" = mul i32 %".79", 2
  %".81" = mul i32 %".80", 32
  %".82" = getelementptr inbounds i8, i8* %".78", i32 %".81"
  %".83" = bitcast i8* %".82" to i32*
  %".84" = load i32, i32* %".83"
  %".85" = inttoptr i32 %".84" to i32*
  %".86" = bitcast i32* %"pcVar1" to i32**
  store i32* %".85", i32** %".86"
  %".88" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998908
  %".89" = load i32, i32* %"var_14h"
  %".90" = mul i32 %".89", 2
  %".91" = mul i32 %".90", 32
  %".92" = getelementptr inbounds i8, i8* %".88", i32 %".91"
  %".93" = bitcast i8* %".92" to i32*
  %".94" = load i32, i32* %".93"
  %".95" = call i32 @"sym.cgc_strlen"(i32 %".94")
  store i32 %".95", i32* %"iVar2"
  %".97" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 998952
  %".98" = ptrtoint i8* %".97" to i32
  %".99" = load i32, i32* %"iVar2"
  %".100" = add i32 %".98", %".99"
  store i32 %".100", i32* %"register0x00000004"
  call void @"pcVar1"()
  br label %"7"
"6":
  %".104" = load i32, i32* %"var_14h"
  %".105" = add i32 %".104", 1
  store i32 %".105", i32* %"var_14h"
  br label %"3"
"7":
  %".108" = load i32, i32* %"var_14h"
  %".109" = icmp eq i32 %".108", 5
  %".110" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".109", i1* %".110"
  %".112" = load i8, i8* %"register0x00000206"
  %".113" = trunc i8 %".112" to i1
  br i1 %".113", label %"2", label %"8"
"8":
  %".115" = call i32 @"sym.cgc_sendline"(i32 1, i32 134524972, i32 3)
  store i32 %".115", i32* %"iVar2"
  %".117" = load i32, i32* %"iVar2"
  %".118" = icmp slt i32 %".117", 0
  %".119" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".118", i1* %".119"
  %".121" = load i8, i8* %"register0x00000207"
  %".122" = trunc i8 %".121" to i1
  br i1 %".122", label %"2", label %"9"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
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

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i8 @"sym.cgc_startswith"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_promptc"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_sendline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"pcVar1"() 

declare void @"_reloc.memset"() 

declare void @"_reloc.memcpy"() 
