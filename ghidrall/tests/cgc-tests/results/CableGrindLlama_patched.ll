; ModuleID = "CableGrindLlama_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.mallocp" = global i32 0
@"obj.cgc___htype" = global i32 0
@"obj.freep" = global i32 0
@"str.You_didn_t_say_the_magic_word." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".27" to i32*
  %"register0x00000207" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %".28" = alloca i8**
  %".29" = alloca i32**
  store i8** %"argv", i8*** %".28"
  store i32** %"envp", i32*** %".29"
  br label %"0"
"0":
  store i32 1024, i32* %"var_8h"
  br label %"1"
"1":
  %".35" = load i32, i32* %"var_8h"
  %".36" = icmp slt i32 0, %".35"
  br i1 %".36", label %"15", label %"2"
"2":
  call void @"sym.cgc___stack_cookie_init"()
  %".39" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".40" = ptrtoint i8* %".39" to i32
  %".41" = call i32 @"sym.cgc_recv"(i32 0, i32 %".40", i32 4)
  store i32 %".41", i32* %"iVar1"
  %".43" = load i32, i32* %"iVar1"
  %".44" = icmp slt i32 %".43", 0
  %".45" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".44", i1* %".45"
  %".47" = load i8, i8* %"register0x00000207"
  %".48" = trunc i8 %".47" to i1
  br i1 %".48", label %"3", label %"6"
"3":
  %".50" = call i32 @"sym.cgc_sendline"(i32 1, i32 135601152, i32 30)
  store i32 %".50", i32* %"iVar1"
  %".52" = load i32, i32* %"iVar1"
  %".53" = icmp slt i32 %".52", 0
  %".54" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".53", i1* %".54"
  %".56" = load i8, i8* %"register0x00000207"
  %".57" = trunc i8 %".56" to i1
  br i1 %".57", label %"4", label %"5"
"4":
  call void @"sym.imp.cgc__terminate"()
  br label %"5"
"5":
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  %".63" = load i32, i32* %"var_ch"
  %".64" = icmp ult i32 %".63", 3145729
  br i1 %".64", label %"7", label %"13"
"7":
  call void @"sym.cgc_setheap"(i32 0)
  %".67" = load i32, i32* %"var_ch"
  call void @"sym.cgc_malloc"(i32 %".67")
  %".69" = load i32, i32* %"iVar1"
  %".70" = icmp eq i32 %".69", 0
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"12", label %"8"
"8":
  %".76" = load i32, i32* %"iVar1"
  %".77" = load i32, i32* %"var_ch"
  %".78" = call i32 @"sym.cgc_recv"(i32 0, i32 %".76", i32 %".77")
  store i32 %".78", i32* %"iVar2"
  %".80" = load i32, i32* %"iVar2"
  %".81" = icmp slt i32 %".80", 0
  %".82" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".81", i1* %".82"
  %".84" = load i8, i8* %"register0x00000207"
  %".85" = trunc i8 %".84" to i1
  br i1 %".85", label %"9", label %"c"
"9":
  %".87" = call i32 @"sym.cgc_sendline"(i32 1, i32 135601152, i32 30)
  store i32 %".87", i32* %"iVar2"
  %".89" = load i32, i32* %"iVar2"
  %".90" = icmp slt i32 %".89", 0
  %".91" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".90", i1* %".91"
  %".93" = load i8, i8* %"register0x00000207"
  %".94" = trunc i8 %".93" to i1
  br i1 %".94", label %"a", label %"b"
a:
  call void @"sym.imp.cgc__terminate"()
  br label %"b"
b:
  call void @"sym.imp.cgc__terminate"()
  br label %"c"
c:
  %".100" = load i32, i32* %"iVar1"
  %".101" = call i32 @"sym.cgc_dupe_open"(i32 %".100")
  store i32 %".101", i32* %"iVar1"
  %".103" = load i32, i32* %"iVar1"
  %".104" = icmp eq i32 %".103", 0
  %".105" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".104", i1* %".105"
  %".107" = load i8, i8* %"register0x00000206"
  %".108" = trunc i8 %".107" to i1
  br i1 %".108", label %"f", label %"d"
d:
  %".110" = load i32, i32* %"iVar1"
  %".111" = add i32 %".110", 8
  %".112" = inttoptr i32 %".111" to i8*
  %".113" = load i8, i8* %".112"
  %".114" = load i32, i32* %"var_ch"
  %".115" = add i32 %".114", -24
  store i32 %".115", i32* %"register0x00000004"
  %".117" = load i32, i32* %"register0x00000004"
  %".118" = zext i8 %".113" to i32
  %".119" = icmp ne i32 %".118", %".117"
  %".120" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".119", i1* %".120"
  %".122" = load i8, i8* %"register0x00000206"
  %".123" = trunc i8 %".122" to i1
  br i1 %".123", label %"f", label %"e"
e:
  %".125" = load i32, i32* %"iVar1"
  call void @"sym.cgc_process_dupe"(i32 %".125")
  call void @"sym.cgc_setheap"(i32 0)
  %".128" = load i32, i32* %"iVar1"
  call void @"sym.cgc_dupe_close"(i32 %".128")
  store i32 0, i32* %"var_4h"
  br label %"14"
f:
  %".132" = call i32 @"sym.cgc_sendline"(i32 1, i32 135603700, i32 9)
  store i32 %".132", i32* %"iVar1"
  %".134" = load i32, i32* %"iVar1"
  %".135" = icmp slt i32 %".134", 0
  %".136" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".135", i1* %".136"
  %".138" = load i8, i8* %"register0x00000207"
  %".139" = trunc i8 %".138" to i1
  br i1 %".139", label %"10", label %"11"
"10":
  call void @"sym.imp.cgc__terminate"()
  br label %"11"
"11":
  store i32 3, i32* %"var_4h"
  br label %"14"
"12":
  store i32 2, i32* %"var_4h"
  br label %"14"
"13":
  store i32 1, i32* %"var_4h"
  br label %"14"
"14":
  %".149" = load i32, i32* %"var_4h"
  store i32 %".149", i32* %"register0x00000000"
  %".151" = load i32, i32* %"register0x00000000"
  ret i32 %".151"
"15":
  %".153" = load i32, i32* %"var_8h"
  %".154" = add i32 %".153", 1
  store i32 %".154", i32* %"register0x00000000"
  %".156" = load i32, i32* %"register0x00000000"
  %".157" = mul i32 %".156", 2
  store i32 %".157", i32* %"register0x00000000"
  %".159" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_malloc"(i32 %".159")
  %".161" = load i32, i32* %"iVar1"
  call void @"sym.cgc_free"(i32 %".161")
  %".163" = load i32, i32* %"var_8h"
  %".164" = add i32 %".163", -1
  store i32 %".164", i32* %"var_8h"
  br label %"1"
}

declare void @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_dupe_open"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc___stack_cookie_init"() 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.cgc_dupe_close"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_setheap"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_process_dupe"(i32 %"arg_8h") 

declare i32 @"sym.cgc_dupe_next"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
