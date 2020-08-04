; ModuleID = "Single-Sign-On_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_freed" = global i32 0
@"obj.cgc_heapinit_done" = global i8 0
@"obj.cgc_lastpage" = global i32 0
@"obj.cgc_curleft" = global i32 0
@"obj.cgc_allocated" = global i32 0
@"obj.cgc_allocatedc" = global i32 0
@"obj.cgc_freedc" = global i32 0
@"str.AUTH" = external global i64
@"str.Command_failed." = external global i64
@"str.LOUT" = external global i64
@"str.Logged_out_successfully." = external global i64
@"str.Please_log_in." = external global i64
@"str.Please_re_authenticate." = external global i64
@"str.REQR" = external global i64
@"str.REVR" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_8h" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995304
  %"var_1254h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995308
  %"var_1250h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995312
  %"var_124ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995316
  %"var_1248h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995320
  %"var_1244h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995324
  %"var_1240h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995328
  %"var_123ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995332
  %"var_1238h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995336
  %"var_1234h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995340
  %"var_1230h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995344
  %"var_122ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995348
  %"var_1228h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995356
  %"var_1220h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995360
  %"var_121ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995368
  %"var_1214h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995372
  %"var_1210h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995376
  %"var_120ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %"var_1208h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995384
  %"var_1204h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995388
  %"var_1200h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %"auStack4608" = bitcast i8* %".24" to i36800*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".25" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32*
  %"register0x00000004" = alloca i32*
  %"register0x00000000.1" = alloca i32*
  %".26" = alloca i8**
  %".27" = alloca i32**
  store i8** %"argv", i8*** %".26"
  store i32** %"envp", i32*** %".27"
  br label %"0"
"0":
  store i32 0, i32* %"var_4h"
  store i32 0, i32* %"var_1210h"
  br label %"1"
"1":
  store i32 0, i32* %"var_121ch"
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".36" = bitcast i32** %"register0x00000008" to i8**
  store i8* %".35", i8** %".36"
  %".38" = ptrtoint i32** %"register0x00000008" to i32
  %".39" = call i32 @"sym.cgc_memset"(i32 %".38", i32 0, i32 4600)
  %".40" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %".41" = ptrtoint i8* %".40" to i32
  call void @"sym.cgc_receiveCommand"(i32 %".41")
  %".43" = load i32, i32* %"var_1210h"
  %".44" = load i32, i32* %"var_1204h"
  %".45" = call i32 @"sym.cgc_getUser"(i32 %".43", i32 %".44")
  store i32 %".45", i32* %"var_121ch"
  %".47" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %".48" = ptrtoint i8* %".47" to i32
  %".49" = call i32 @"sym.cgc_strcmp"(i32 134525777, i32 %".48")
  store i32 %".49", i32* %"iVar1"
  %".51" = load i32, i32* %"iVar1"
  %".52" = icmp ne i32 %".51", 0
  %".53" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".52", i1* %".53"
  %".55" = load i8, i8* %"register0x00000206"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"2", label %"13"
"2":
  %".58" = load i32, i32* %"var_121ch"
  %".59" = icmp ne i32 %".58", 0
  %".60" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".59", i1* %".60"
  %".62" = load i8, i8* %"register0x00000206"
  %".63" = trunc i8 %".62" to i1
  br i1 %".63", label %"3", label %"12"
"3":
  %".65" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %".66" = ptrtoint i8* %".65" to i32
  %".67" = call i32 @"sym.cgc_strcmp"(i32 134525799, i32 %".66")
  store i32 %".67", i32* %"iVar1"
  %".69" = load i32, i32* %"iVar1"
  %".70" = icmp eq i32 %".69", 0
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"4", label %"6"
"4":
  %".76" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995372
  %".77" = ptrtoint i8* %".76" to i32
  %".78" = load i32, i32* %"var_1204h"
  %".79" = call i32 @"sym.cgc_logoutUser"(i32 %".77", i32 %".78")
  call void @"sym.cgc_reportMessage"(i32 134525804, i32 25)
  %".81" = load i32, i32* %"var_1210h"
  %".82" = icmp ne i32 %".81", 0
  %".83" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".82", i1* %".83"
  %".85" = load i8, i8* %"register0x00000206"
  %".86" = trunc i8 %".85" to i1
  br i1 %".86", label %"1", label %"5"
"5":
  store i32 0, i32* %"register0x00000000"
  %".89" = load i32, i32* %"register0x00000000"
  ret i32 %".89"
"6":
  %".91" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %".92" = ptrtoint i8* %".91" to i32
  %".93" = call i32 @"sym.cgc_strcmp"(i32 134525830, i32 %".92")
  store i32 %".93", i32* %"iVar1"
  %".95" = load i32, i32* %"iVar1"
  %".96" = icmp eq i32 %".95", 0
  %".97" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".96", i1* %".97"
  %".99" = load i8, i8* %"register0x00000206"
  %".100" = trunc i8 %".99" to i1
  br i1 %".100", label %"9", label %"7"
"7":
  %".102" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995380
  %".103" = ptrtoint i8* %".102" to i32
  %".104" = call i32 @"sym.cgc_strcmp"(i32 134525876, i32 %".103")
  store i32 %".104", i32* %"iVar1"
  %".106" = load i32, i32* %"iVar1"
  %".107" = icmp eq i32 %".106", 0
  %".108" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".107", i1* %".108"
  %".110" = load i8, i8* %"register0x00000206"
  %".111" = trunc i8 %".110" to i1
  br i1 %".111", label %"1", label %"8"
"8":
  %".113" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995360
  %".114" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".115" = bitcast i32** %"register0x00000004" to i8**
  store i8* %".114", i8** %".115"
  %".117" = ptrtoint i8* %".113" to i32
  %".118" = ptrtoint i32** %"register0x00000004" to i32
  %".119" = load i32, i32* %"var_1200h"
  call void @"sym.cgc_revokeResource"(i32 %".117", i32 %".119", i32 %".118")
  br label %"1"
"9":
  store i32 0, i32* %"var_1228h"
  %".123" = load i32, i32* %"var_121ch"
  %".124" = add i32 %".123", 12
  %".125" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".126" = bitcast i32** %"register0x00000000.1" to i8**
  store i8* %".125", i8** %".126"
  %".128" = ptrtoint i32** %"register0x00000000.1" to i32
  %".129" = call i32 @"sym.cgc_getResourceToken"(i32 %".124", i32 %".128")
  store i32 %".129", i32* %"arg_8h"
  %".131" = load i32, i32* %"arg_8h"
  %".132" = icmp eq i32 %".131", 1
  %".133" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".132", i1* %".133"
  %".135" = load i8, i8* %"register0x00000206"
  %".136" = trunc i8 %".135" to i1
  br i1 %".136", label %"d", label %"a"
a:
  %".138" = load i32, i32* %"arg_8h"
  %".139" = icmp ult i32 1, %".138"
  br i1 %".139", label %"e", label %"b"
b:
  %".141" = load i32, i32* %"var_1200h"
  %".142" = icmp ult i32 1, %".141"
  br i1 %".142", label %"e", label %"c"
c:
  %".144" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".145" = bitcast i32** %"register0x00000000.1" to i8**
  store i8* %".144", i8** %".145"
  %".147" = ptrtoint i32** %"register0x00000000.1" to i32
  %".148" = load i32, i32* %"arg_8h"
  %".149" = load i32, i32* %"var_1200h"
  %".150" = call i32 @"sym.cgc_do_auth"(i32 %".148", i32 %".149", i32 %".147")
  store i32 %".150", i32* %"var_1228h"
  br label %"e"
d:
  store i32 0, i32* %"var_1228h"
  br label %"e"
e:
  %".155" = load i32, i32* %"var_1228h"
  %".156" = icmp ult i32 %".155", 2
  br i1 %".156", label %"f", label %"1"
f:
  %".158" = load i32, i32* %"var_1228h"
  %".159" = icmp eq i32 %".158", 0
  %".160" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".159", i1* %".160"
  %".162" = load i8, i8* %"register0x00000206"
  %".163" = trunc i8 %".162" to i1
  br i1 %".163", label %"11", label %"10"
"10":
  call void @"sym.cgc_reportMessage"(i32 134525860, i32 15)
  br label %"1"
"11":
  call void @"sym.cgc_reportMessage"(i32 134525835, i32 24)
  br label %"1"
"12":
  call void @"sym.cgc_reportMessage"(i32 134525782, i32 16)
  br label %"1"
"13":
  %".171" = load i32, i32* %"var_121ch"
  %".172" = icmp eq i32 %".171", 0
  %".173" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".172", i1* %".173"
  %".175" = load i8, i8* %"register0x00000206"
  %".176" = trunc i8 %".175" to i1
  br i1 %".176", label %"14", label %"15"
"14":
  %".178" = call i32 @"sym.cgc_getAuthVal"()
  store i32 %".178", i32* %"iVar1"
  %".180" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995372
  %".181" = ptrtoint i8* %".180" to i32
  %".182" = load i32, i32* %"iVar1"
  %".183" = load i32, i32* %"var_1204h"
  %".184" = call i32 @"sym.cgc_createNewUser"(i32 %".181", i32 %".182", i32 %".183")
  store i32 %".184", i32* %"var_121ch"
  br label %"15"
"15":
  %".187" = load i32, i32* %"var_121ch"
  %".188" = add i32 %".187", 8
  %".189" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".190" = bitcast i32** %"register0x00000000.1" to i8**
  store i8* %".189", i8** %".190"
  %".192" = ptrtoint i32** %"register0x00000000.1" to i32
  %".193" = load i32, i32* %"var_1200h"
  %".194" = call i32 @"sym.cgc_do_auth"(i32 %".188", i32 %".193", i32 %".192")
  store i32 %".194", i32* %"iVar1"
  %".196" = load i32, i32* %"iVar1"
  %".197" = icmp ne i32 %".196", 0
  %".198" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".197", i1* %".198"
  %".200" = load i8, i8* %"register0x00000206"
  %".201" = trunc i8 %".200" to i1
  br i1 %".201", label %"1", label %"16"
"16":
  %".203" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995360
  %".204" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995392
  %".205" = bitcast i32** %"register0x00000004" to i8**
  store i8* %".204", i8** %".205"
  %".207" = ptrtoint i8* %".203" to i32
  %".208" = ptrtoint i32** %"register0x00000004" to i32
  %".209" = load i32, i32* %"iVar1"
  call void @"sym.cgc_addResource"(i32 %".207", i32 %".209", i32 %".208")
  br label %"1"
}

declare i32 @"sym.cgc_getResourceToken"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getAuthVal"() 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_logoutUser"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_remove"(i32 %"arg_8h") 

declare void @"sym.cgc_insert"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_receiveCommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_recvline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_do_auth"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_auth_success"(i32 %"arg_8h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_heapinit"() 

declare i32 @"sym.cgc_strnlen"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_auth_failure"(i32 %"arg_8h") 

declare void @"sym.cgc_reportMessage"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_createNewUser"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_addResource"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getUser"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_revokeResource"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memset"() 
