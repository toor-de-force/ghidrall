; ModuleID = "OUTLAW_2_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_enckey" = global i32 0
@"obj.cgc_auth_token" = global i32 0
@"obj.cgc_msgNull" = external global i64
@"obj.operations" = external global i64
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967292
  %"var_4h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967288
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"iStack28" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch_2" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  br label %"0"
"0":
  call void @"sym.imp.cgc__terminate"()
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  call void @"sym.imp.memcpy"()
  %".22" = call i32 @"sym.cgc_negotiate"()
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp eq i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"c", label %"1"
"1":
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  call void @"sym.imp.memcpy"()
  %".33" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %".34" = ptrtoint i8* %".33" to i32
  %".35" = call i32 @"sym.cgc_recv_bytes"(i32 6, i32 %".34", i32 24)
  store i32 %".35", i32* %"iStack28"
  %".37" = load i32, i32* %"iStack28"
  %".38" = icmp ne i32 %".37", 0
  %".39" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".38", i1* %".39"
  %".41" = load i8, i8* %"register0x00000206"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"d", label %"2"
"2":
  %".44" = load i32, i32* %"var_34h"
  %".45" = icmp eq i32 %".44", -559038737
  %".46" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".45", i1* %".46"
  %".48" = load i8, i8* %"register0x00000206"
  %".49" = trunc i8 %".48" to i1
  br i1 %".49", label %"3", label %"4"
"3":
  %".51" = call i32 @"sym.cgc_do_exit"()
  br label %"4"
"4":
  %".53" = load i32, i32* %"var_34h"
  %".54" = icmp ult i32 %".53", 3
  br i1 %".54", label %"6", label %"5"
"5":
  store i32 0, i32* %"register0x00000000"
  %".57" = load i32, i32* %"register0x00000000"
  ret i32 %".57"
"6":
  %".59" = load i32, i32* %"var_34h"
  %".60" = icmp ult i32 6, %".59"
  %".61" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000200"
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"8", label %"7"
"7":
  store i32 0, i32* %"register0x00000000"
  %".67" = load i32, i32* %"register0x00000000"
  ret i32 %".67"
"8":
  %".69" = load i32, i32* %"var_34h"
  %".70" = icmp eq i32 %".69", 2
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"9", label %"a"
"9":
  store i32 0, i32* %"register0x00000000"
  %".77" = load i32, i32* %"register0x00000000"
  ret i32 %".77"
a:
  %".79" = load i32, i32* %"var_28h"
  %".80" = trunc i32 %".79" to i8
  %".81" = zext i8 %".80" to i32
  store i32 %".81", i32* %"register0x00000000"
  %".83" = load i32, i32* %"register0x00000000"
  %".84" = mul i32 %".83", 4
  %".85" = mul i32 %".84", 8
  %".86" = getelementptr inbounds i64, i64* @"obj.operations", i32 %".85"
  %".87" = bitcast i64* %".86" to i32*
  %".88" = ptrtoint i32* %".87" to i32
  %".89" = call i32 @"unique0x00000f30"()
  %".90" = load i32, i32* %"iVar1"
  %".91" = icmp ne i32 %".90", 0
  %".92" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".91", i1* %".92"
  %".94" = load i8, i8* %"register0x00000206"
  %".95" = trunc i8 %".94" to i1
  br i1 %".95", label %"1", label %"b"
b:
  %".97" = load i32, i32* %"iVar1"
  store i32 %".97", i32* %"register0x00000000"
  %".99" = load i32, i32* %"register0x00000000"
  ret i32 %".99"
c:
  store i32 9, i32* %"iStack28"
  br label %"d"
d:
  %".103" = load i32, i32* %"iStack28"
  store i32 %".103", i32* %"register0x00000000"
  %".105" = load i32, i32* %"register0x00000000"
  ret i32 %".105"
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

declare i32 @"sym.cgc_negotiate"() 

declare i32 @"sym.cgc_send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_do_exit"() 

declare i32 @"unique0x00000f30"() 

declare void @"_reloc.memcpy"() 
