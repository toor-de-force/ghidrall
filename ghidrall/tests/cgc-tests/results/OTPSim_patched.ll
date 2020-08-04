; ModuleID = "OTPSim_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_stdout" = global i32 0
@"obj.cgc_stdin" = global i32 0
@"obj.secret" = global i32 0
@"obj.cgc_stderr" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".18" = alloca i8**
  %".19" = alloca i32**
  store i8** %"argv", i8*** %".18"
  store i32** %"envp", i32*** %".19"
  br label %"0"
"0":
  store i32 0, i32* %"var_ch"
  store i32 0, i32* %"var_10h"
  %".25" = load i32, i32* @"obj.cgc_stdout"
  call void @"sym.cgc_fbuffered"(i32 %".25", i32 1)
  br label %"1"
"1":
  %".28" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".29" = ptrtoint i8* %".28" to i32
  call void @"sym.cgc_read_n"(i32 0, i32 %".29", i32 4)
  %".31" = load i32, i32* %"iVar1"
  %".32" = icmp eq i32 %".31", 4
  %".33" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".32", i1* %".33"
  %".35" = load i8, i8* %"register0x00000206"
  %".36" = trunc i8 %".35" to i1
  br i1 %".36", label %"3", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".39" = load i32, i32* %"register0x00000000"
  ret i32 %".39"
"3":
  %".41" = load i32, i32* %"var_10h"
  %".42" = icmp eq i32 %".41", 1262569555
  %".43" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000206"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"f", label %"4"
"4":
  %".48" = load i32, i32* %"var_10h"
  %".49" = icmp eq i32 %".48", 1330529607
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"e", label %"5"
"5":
  %".55" = load i32, i32* %"var_10h"
  %".56" = icmp eq i32 %".55", 1145984088
  %".57" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000206"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"d", label %"6"
"6":
  %".62" = load i32, i32* %"var_10h"
  %".63" = icmp eq i32 %".62", 1145390419
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"c", label %"7"
"7":
  %".69" = load i32, i32* %"var_10h"
  %".70" = icmp eq i32 %".69", 1230128470
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"b", label %"8"
"8":
  %".76" = load i32, i32* %"var_10h"
  %".77" = icmp eq i32 %".76", 1414092113
  %".78" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".77", i1* %".78"
  %".80" = load i8, i8* %"register0x00000206"
  %".81" = trunc i8 %".80" to i1
  br i1 %".81", label %"9", label %"a"
"9":
  %".83" = load i32, i32* @"obj.cgc_stdout"
  %".84" = call i32 @"sym.cgc_fwrite"(i32 134537900, i32 1, i32 %".83")
  %".85" = load i32, i32* @"obj.cgc_stdout"
  %".86" = call i32 @"sym.cgc_fflush"(i32 %".85")
  call void @"sym.imp.cgc__terminate"()
  br label %"a"
a:
  %".89" = load i32, i32* @"obj.cgc_stdout"
  %".90" = call i32 @"sym.cgc_fwrite"(i32 134537902, i32 1, i32 %".89")
  br label %"1"
b:
  %".92" = load i32, i32* %"var_ch"
  call void @"sym.cgc_otp_verify_otp"(i32 %".92")
  br label %"1"
c:
  %".95" = load i32, i32* %"var_ch"
  call void @"sym.cgc_otp_set_seeds"(i32 %".95")
  br label %"1"
d:
  %".98" = load i32, i32* %"var_ch"
  call void @"sym.cgc_otp_extend_session"(i32 %".98")
  br label %"1"
e:
  %".101" = load i32, i32* %"var_ch"
  call void @"sym.cgc_otp_generate_otp"(i32 %".101")
  br label %"1"
f:
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".105" = ptrtoint i8* %".104" to i32
  call void @"sym.cgc_otp_handshake"(i32 %".105")
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_fbuffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_read_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fread"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_xlat_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__refill"(i32 %"arg_8h") 

declare void @"sym.cgc_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_otp_generate_otp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__vsfprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"sym.cgc__convert_unsigned"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_memmove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc__convert_signed"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_strtoul"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_tolower"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc__otp_consume"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc__otp_populate"(i32 %"arg_8h") 

declare void @"sym.cgc_otp_extend_session"(i32 %"arg_8h") 

declare void @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_freaduntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc__getc"(i32 %"arg_8h") 

declare void @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_tiny_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_size_to_bin"(i32 %"arg_8h") 

declare i32 @"sym.cgc_run_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_small_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_small_unlink_free"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_heap_error"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_small_split"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_small_insert_free"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_small_alloc_run"(i32 %"arg_8h") 

declare i32 @"sym.cgc_large_alloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

define void @"sym.malloc_free"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %"register0x00000018" = alloca i32
  %"register0x00000206" = alloca i8
  %".7" = alloca i32
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  store i32 %"arg_ch", i32* %".8"
  br label %"0"
"0":
  %".12" = load i32, i32* %".8"
  %".13" = lshr i32 %".12", 20
  store i32 %".13", i32* %"register0x00000018"
  %".15" = load i32, i32* %".7"
  %".16" = add i32 %".15", 524
  %".17" = load i32, i32* %"register0x00000018"
  %".18" = add i32 %".16", %".17"
  %".19" = bitcast i8* %"cVar1" to i32*
  store i32 %".18", i32* %".19"
  %".21" = load i32, i32* %".8"
  %".22" = icmp ne i32 %".21", 0
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"1", label %"7"
"1":
  %".28" = load i8, i8* %"cVar1"
  %".29" = icmp eq i8 %".28", 0
  %".30" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".29", i1* %".30"
  %".32" = load i8, i8* %"register0x00000206"
  %".33" = trunc i8 %".32" to i1
  br i1 %".33", label %"6", label %"2"
"2":
  %".35" = load i8, i8* %"cVar1"
  %".36" = icmp eq i8 %".35", 2
  %".37" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".36", i1* %".37"
  %".39" = load i8, i8* %"register0x00000206"
  %".40" = trunc i8 %".39" to i1
  br i1 %".40", label %"5", label %"3"
"3":
  %".42" = load i8, i8* %"cVar1"
  %".43" = icmp eq i8 %".42", 1
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"7", label %"4"
"4":
  %".49" = load i32, i32* %".7"
  %".50" = load i32, i32* %".8"
  call void @"sym.cgc_tiny_free"(i32 %".49", i32 %".50")
  br label %"7"
"5":
  %".53" = load i32, i32* %".7"
  %".54" = load i32, i32* %".8"
  call void @"sym.cgc_small_free"(i32 %".53", i32 %".54")
  br label %"7"
"6":
  %".57" = load i32, i32* %".7"
  %".58" = load i32, i32* %".8"
  call void @"sym.cgc_large_free"(i32 %".57", i32 %".58")
  br label %"7"
"7":
  ret void
}

declare void @"sym.cgc_tiny_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_small_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_large_free"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_otp_handshake"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_otp_set_seeds"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fflush"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_otp_verify_otp"(i32 %"arg_8h") 

declare i32 @"sym.cgc_fwrite"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_xlat"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_xlat_2"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
