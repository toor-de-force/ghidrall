; ModuleID = "LAN_Simulator_1"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999556
  %"var_1b8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999560
  %"var_1b4h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999568
  %"var_1ach" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999572
  %"var_1a8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999580
  %"var_1a0h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999584
  %"var_19ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999588
  %"var_198h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999592
  %"var_194h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999596
  %"var_190h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999600
  %"var_18ch" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %"var_188h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".16" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".17" = alloca i8**
  %".18" = alloca i32**
  store i8** %"argv", i8*** %".17"
  store i32** %"envp", i32*** %".18"
  br label %"0"
"0":
  call void @"sym.cgc_L2_InitCAM"()
  %".23" = call i8 @"sym.cgc_L2_PopulateCAM"(i32 1, i32 3, i32 1)
  %".24" = call i8 @"sym.cgc_L2_PopulateCAM"(i32 2, i32 3, i32 2)
  br label %"1"
"1":
  store i32 0, i32* %"var_190h"
  br label %"2"
"2":
  %".28" = load i32, i32* %"var_190h"
  %".29" = icmp ult i32 %".28", 32
  %".30" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".29", i1* %".30"
  %".32" = load i8, i8* %"register0x00000200"
  %".33" = trunc i8 %".32" to i1
  br i1 %".33", label %"3", label %"4"
"3":
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %".36" = load i32, i32* %"var_190h"
  %".37" = mul i32 %".36", 32
  %".38" = getelementptr inbounds i8, i8* %".35", i32 %".37"
  %".39" = bitcast i8* %".38" to i32*
  %".40" = load i32, i32* %"var_190h"
  %".41" = add i32 %".40", 1
  store i32 %".41", i32* %"var_190h"
  br label %"2"
"4":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999604
  %".45" = load i32, i32* %"var_188h"
  %".46" = or i32 %".45", 41
  store i32 %".46", i32* %"var_188h"
  call void @"sym.imp.cgc_fdwait"()
  %".49" = load i32, i32* %"iVar2"
  %".50" = icmp ne i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"1", label %"5"
"5":
  %".56" = load i32, i32* %"var_188h"
  %".57" = and i32 %".56", 1
  store i32 %".57", i32* %"register0x00000000"
  %".59" = load i32, i32* %"register0x00000000"
  %".60" = icmp ne i32 %".59", 0
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  %".63" = load i8, i8* %"register0x00000206"
  %".64" = trunc i8 %".63" to i1
  br i1 %".64", label %"a", label %"6"
"6":
  %".66" = load i32, i32* %"var_188h"
  %".67" = and i32 %".66", 8
  store i32 %".67", i32* %"register0x00000000"
  %".69" = load i32, i32* %"register0x00000000"
  %".70" = icmp ne i32 %".69", 0
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"7", label %"8"
"7":
  store i32 3, i32* %"var_18ch"
  br label %"b"
"8":
  %".78" = load i32, i32* %"var_188h"
  %".79" = and i32 %".78", 32
  store i32 %".79", i32* %"register0x00000000"
  %".81" = load i32, i32* %"register0x00000000"
  %".82" = icmp ne i32 %".81", 0
  %".83" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".82", i1* %".83"
  %".85" = load i8, i8* %"register0x00000206"
  %".86" = trunc i8 %".85" to i1
  br i1 %".86", label %"1", label %"9"
"9":
  store i32 5, i32* %"var_18ch"
  br label %"b"
a:
  store i32 0, i32* %"var_18ch"
  br label %"b"
b:
  %".92" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %".93" = ptrtoint i8* %".92" to i32
  %".94" = load i32, i32* %"var_18ch"
  %".95" = call i8 @"sym.cgc_L2_RxFrame"(i32 %".94", i32 %".93")
  store i8 %".95", i8* %"cVar1"
  %".97" = load i8, i8* %"cVar1"
  %".98" = icmp ne i8 %".97", 0
  %".99" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".98", i1* %".99"
  %".101" = load i8, i8* %"register0x00000206"
  %".102" = trunc i8 %".101" to i1
  br i1 %".102", label %"1", label %"c"
c:
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %".105" = ptrtoint i8* %".104" to i32
  %".106" = call i8 @"sym.cgc_L2_ForwardFrame"(i32 %".105")
  br label %"1"
}

declare void @"sym.imp.cgc_fdwait"() 

declare i8 @"sym.cgc_L2_ForwardFrame"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_L2_LookupCAM"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_L2_CalculateChecksum"(i32 %"arg_8h") 

declare i8 @"sym.cgc_L2_PopulateCAM"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_L2_InitCAM"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_L2_RxFrame"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_L2_VerifyChecksum"(i32 %"arg_8h") 

declare i8 @"sym.cgc_ReceiveBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_KillAll"() 

declare void @"sym.imp.cgc__terminate"() 
