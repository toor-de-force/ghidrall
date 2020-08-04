; ModuleID = "Packet_Analyzer"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.Goodbye." = external global i64
@"sym.cgc_TransmitFormattedBytes" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".12" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".13" = alloca i8**
  %".14" = alloca i32**
  store i8** %"argv", i8*** %".13"
  store i32** %"envp", i32*** %".14"
  br label %"0"
"0":
  %".18" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".19" = ptrtoint i8* %".18" to i32
  %".20" = call i32 @"sym.cgc_ReceiveAndVerifyInitializationPacket"(i32 %".19")
  store i32 %".20", i32* %"iVar1"
  %".22" = load i32, i32* %"iVar1"
  %".23" = icmp eq i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"1", label %"a"
"1":
  %".29" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".30" = ptrtoint i8* %".29" to i32
  %".31" = call i32 @"sym.cgc_ReceiveAndVerifyFilters"(i32 %".30")
  store i32 %".31", i32* %"iVar1"
  %".33" = load i32, i32* %"iVar1"
  %".34" = icmp eq i32 %".33", 0
  %".35" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".34", i1* %".35"
  %".37" = load i8, i8* %"register0x00000206"
  %".38" = trunc i8 %".37" to i1
  br i1 %".38", label %"2", label %"9"
"2":
  %".40" = load i32, i32* %"var_50h"
  %".41" = zext i8 1 to i32
  %".42" = icmp eq i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000206"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"3", label %"4"
"3":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".49" = ptrtoint i8* %".48" to i32
  %".50" = call i32 @"sym.cgc_ReceiveAndProcessFile"(i32 %".49")
  br label %"6"
"4":
  %".52" = load i32, i32* %"var_50h"
  %".53" = zext i8 2 to i32
  %".54" = icmp eq i32 %".52", %".53"
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"5", label %"6"
"5":
  %".60" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".61" = ptrtoint i8* %".60" to i32
  %".62" = call i32 @"sym.cgc_ReceiveAndProcessStream"(i32 %".61")
  br label %"6"
"6":
  %".64" = load i32, i32* %"var_50h"
  %".65" = trunc i32 %".64" to i16
  %".66" = and i16 %".65", 16
  %".67" = icmp ne i16 %".66", 0
  %".68" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".67", i1* %".68"
  %".70" = load i8, i8* %"register0x00000206"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"7", label %"8"
"7":
  %".73" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".74" = ptrtoint i8* %".73" to i32
  call void @"sym.cgc_DisplayStatistics"(i32 %".74")
  br label %"8"
"8":
  call void @"func_0x08048fb0"(i32 134532480)
  store i32 0, i32* %"var_4h"
  br label %"b"
"9":
  store i32 -1, i32* %"var_4h"
  br label %"b"
a:
  store i32 -1, i32* %"var_4h"
  br label %"b"
b:
  %".84" = load i32, i32* %"var_4h"
  store i32 %".84", i32* %"register0x00000000"
  %".86" = load i32, i32* %"register0x00000000"
  ret i32 %".86"
}

declare i32 @"sym.cgc_ReceiveAndProcessFile"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_AnalyzePacket"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_AnalyzeApplicationLayer"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_DisplayFormatted"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_vTransmitFormattedBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_ProcessAllFilters"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_FilterMatch"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_AnalyzePhysicalLayer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_CalculateChecksum"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_AnalyzeNetworkLayer"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_AnalyzeTransportLayer"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_TransmitBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_HexDump"(i32 %"arg_8h", i32 %"arg_ch", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"arg_20h") 

declare i8 @"sym.cgc_itoh"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_ReceiveBytes"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_FailAndTerminate"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"arg_8h") 

declare i32 @"sym.cgc_ReceiveAndProcessStream"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReceiveAndVerifyInitializationPacket"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ReceiveAndVerifyFilters"(i32 %"arg_8h") 

declare void @"sym.cgc_DisplayStatistics"(i32 %"arg_8h") 

declare void @"sym.cgc_TransmitOptionHeader"(i32 %"arg_8h") 

declare void @"func_0x08048fb0"(i32 %".1") 
