; ModuleID = "HighFrequencyTradingAlgo"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".12" to i16*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"uStack32" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".17" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".18" = alloca i8**
  %".19" = alloca i32**
  store i8** %"argv", i8*** %".18"
  store i32** %"envp", i32*** %".19"
  br label %"0"
"0":
  store i32 0, i32* %"var_20h"
  br label %"1"
"1":
  %".25" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %".26" = ptrtoint i8* %".25" to i32
  %".27" = call i32 @"sym.cgc_nextRecord"(i32 %".26")
  store i32 %".27", i32* %"iVar1"
  %".29" = load i32, i32* %"iVar1"
  %".30" = icmp eq i32 %".29", -1
  %".31" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".30", i1* %".31"
  %".33" = load i8, i8* %"register0x00000206"
  %".34" = trunc i8 %".33" to i1
  br i1 %".34", label %"d", label %"2"
"2":
  %".36" = load i32, i32* %"iVar1"
  %".37" = icmp ne i32 %".36", 0
  %".38" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".37", i1* %".38"
  %".40" = load i8, i8* %"register0x00000206"
  %".41" = trunc i8 %".40" to i1
  br i1 %".41", label %"4", label %"3"
"3":
  %".43" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".44" = load i32, i32* %"var_38h"
  %".45" = lshr i32 %".44", 16
  %".46" = ptrtoint i8* %".43" to i32
  call void @"sym.cgc_initPortfolio"(i32 %".46", i32 %".45")
  br label %"1"
"4":
  %".49" = load i32, i32* %"var_20h"
  %".50" = icmp slt i32 100, %".49"
  br i1 %".50", label %"5", label %"c"
"5":
  %".52" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".53" = ptrtoint i8* %".52" to i32
  %".54" = load i32, i32* %"var_38h"
  call void @"sym.cgc_updateStockValues"(i32 %".54", i32 %".53")
  %".56" = load i16, i16* %"var_2ch"
  %".57" = load i32, i32* %"var_30h"
  %".58" = zext i16 %".56" to i32
  %".59" = icmp ule i32 %".58", %".57"
  br i1 %".59", label %"6", label %"7"
"6":
  %".61" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".62" = ptrtoint i8* %".61" to i32
  %".63" = load i32, i32* %"var_38h"
  call void @"sym.cgc_sellAllStock"(i32 %".63", i32 %".62")
  call void @"sym.cgc_sendGoalNotification"()
  br label %"7"
"7":
  %".67" = load i32, i32* %"var_30h"
  %".68" = zext i16 0 to i32
  %".69" = icmp eq i32 %".67", %".68"
  %".70" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".69", i1* %".70"
  %".72" = load i8, i8* %"register0x00000206"
  %".73" = trunc i8 %".72" to i1
  br i1 %".73", label %"8", label %"b"
"8":
  %".75" = load i32, i32* %"var_30h"
  %".76" = zext i16 0 to i32
  %".77" = icmp eq i32 %".75", %".76"
  %".78" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".77", i1* %".78"
  %".80" = load i8, i8* %"register0x00000206"
  %".81" = trunc i8 %".80" to i1
  br i1 %".81", label %"9", label %"a"
"9":
  store i32 0, i32* %"register0x00000000"
  %".84" = load i32, i32* %"register0x00000000"
  ret i32 %".84"
a:
  %".86" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".87" = ptrtoint i8* %".86" to i32
  %".88" = load i32, i32* %"var_38h"
  call void @"sym.cgc_sellAllStock"(i32 %".88", i32 %".87")
  br label %"b"
b:
  %".91" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %".92" = load i32, i32* %"var_18h"
  %".93" = load i32, i32* %"var_18h"
  %".94" = zext i32 %".93" to i64
  %".95" = zext i32 32 to i64
  %".96" = lshr i64 %".94", %".95"
  %".97" = trunc i64 %".96" to i32
  %".98" = ptrtoint i8* %".91" to i32
  %".99" = load i32, i32* %"var_38h"
  %".100" = load i32, i32* %"var_20h"
  %".101" = load i32, i32* %"uStack32"
  %".102" = load i32, i32* %"var_10h"
  call void @"sym.cgc_tradeStocks"(i32 %".99", i32 %".100", i32 %".101", i32 %".92", i32 %".97", i32 %".102", i32 %".98")
  br label %"c"
c:
  %".105" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".106" = ptrtoint i8* %".105" to i32
  %".107" = load i32, i32* %"var_38h"
  call void @"sym.cgc_addRecordToDataset"(i32 %".106", i32 %".107")
  br label %"1"
d:
  store i32 0, i32* %"register0x00000000"
  %".111" = load i32, i32* %"register0x00000000"
  ret i32 %".111"
}

declare void @"sym.cgc_sendGoalNotification"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_initPortfolio"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_updateStockValues"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_sellAllStock"(i32 %"placeholder_0", i32 %"arg_ch") 

declare void @"sym.cgc_sellStock"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_findMostExpensiveStock"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_nextRecord"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_addRecordToDataset"(i32 %"arg_8h", i32 %"arg_ch") 

declare i80 @"sym.cgc_squareRoot"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_fabs"() 

declare void @"sym.cgc_tradeStocks"(i32 %"arg_8h", i32 %"arg_ch", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"arg_20h") 

declare void @"sym.cgc_buyStock"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_addStockToPortfolio"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare i32 @"sym.cgc_getNextFreeEntry"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 
