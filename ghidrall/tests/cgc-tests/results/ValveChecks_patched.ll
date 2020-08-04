; ModuleID = "ValveChecks_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.valvepos" = global i32 0
@"obj.cgc_calcd" = global i8 0
@"str.You_didn_t_say_the_magic_word." = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"arg_10h" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999784
  %"var_d4h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999788
  %"var_d0h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999792
  %"var_cch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %"var_c8h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".26" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".27" = alloca i8**
  %".28" = alloca i32**
  store i8** %"argv", i8*** %".27"
  store i32** %"envp", i32*** %".28"
  br label %"0"
"0":
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  call void @"sym.imp.memset"()
  call void @"sym.imp.cgc_random"()
  %".35" = load i32, i32* %"iVar1"
  %".36" = icmp ne i32 %".35", 0
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"1", label %"4"
"1":
  %".42" = call i32 @"sym.cgc_sendline"(i32 1, i32 134524352, i32 21)
  store i32 %".42", i32* %"iVar1"
  %".44" = load i32, i32* %"iVar1"
  %".45" = icmp slt i32 %".44", 0
  %".46" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".45", i1* %".46"
  %".48" = load i8, i8* %"register0x00000207"
  %".49" = trunc i8 %".48" to i1
  br i1 %".49", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".55" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %".56" = ptrtoint i8* %".55" to i32
  %".57" = call i32 @"sym.cgc_recv"(i32 0, i32 %".56", i32 176)
  store i32 %".57", i32* %"iVar1"
  %".59" = load i32, i32* %"iVar1"
  %".60" = icmp slt i32 %".59", 0
  %".61" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000207"
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"5", label %"8"
"5":
  %".66" = call i32 @"sym.cgc_sendline"(i32 1, i32 134524192, i32 30)
  store i32 %".66", i32* %"iVar1"
  %".68" = load i32, i32* %"iVar1"
  %".69" = icmp slt i32 %".68", 0
  %".70" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000207"
  %".73" = trunc i8 %".72" to i1
  br i1 %".73", label %"6", label %"7"
"6":
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  call void @"sym.imp.cgc__terminate"()
  br label %"8"
"8":
  %".79" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999796
  %".80" = ptrtoint i8* %".79" to i32
  %".81" = call i32 @"sym.cgc_process_pkt"(i32 %".80")
  store i32 %".81", i32* %"iVar1"
  %".83" = load i32, i32* %"iVar1"
  %".84" = call i32 @"sym.cgc_strlen"(i32 %".83")
  store i32 %".84", i32* %"arg_10h"
  %".86" = load i32, i32* %"iVar1"
  %".87" = load i32, i32* %"arg_10h"
  %".88" = call i32 @"sym.cgc_sendline"(i32 1, i32 %".86", i32 %".87")
  store i32 %".88", i32* %"iVar1"
  %".90" = load i32, i32* %"iVar1"
  %".91" = icmp slt i32 %".90", 0
  %".92" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".91", i1* %".92"
  %".94" = load i8, i8* %"register0x00000207"
  %".95" = trunc i8 %".94" to i1
  br i1 %".95", label %"9", label %"a"
"9":
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  store i32 0, i32* %"register0x00000000"
  %".100" = load i32, i32* %"register0x00000000"
  ret i32 %".100"
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

declare i32 @"sym.cgc_process_pkt"(i32 %"arg_8h") 

declare i32 @"sym.cgc_setv"(i32 %"arg_8h") 

declare i32 @"sym.cgc_str2uint"(i32 %"arg_8h") 

declare i32 @"sym.cgc_redacted"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getv"(i32 %"arg_8h") 

declare i32 @"sym.cgc_uint2str"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_gett"(i32 %"arg_8h") 

declare i32 @"sym.cgc_admin_md5_login"(i32 %"arg_8h") 

declare i32 @"sym.cgc_admin_fp_login"(i32 %"arg_8h") 

declare i32 @"sym.cgc_admin_crc_login"(i32 %"arg_8h") 

declare i32 @"sym.cgc_admin_addxoradd_login"(i32 %"arg_8h") 

declare i32 @"sym.cgc_admin_add_login"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_md5"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_allocate"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare void @"sym.cgc_calc_me_md5"() 

declare void @"sym.imp.cgc_sin"() 

declare void @"sym.imp.cgc_pow"() 

declare void @"sym.imp.cgc_fabs"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i64 @"sym.cgc_additive"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_crc32"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_updatecrc"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_compute_me_crc"() 

declare i80 @"sym.cgc_fpadditive"(i32 %"arg_8h", i32 %"arg_ch") 

declare i64 @"sym.cgc_addxoradd"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_sendline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"_reloc.memset"() 

declare void @"_reloc.memcpy"() 
