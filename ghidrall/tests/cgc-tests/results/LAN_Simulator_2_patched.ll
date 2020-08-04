; ModuleID = "LAN_Simulator_2_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_L3Interfaces" = global i32 0
@"obj.MaxInterfaces" = global i8 0
@"obj.Config" = global i32 0
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %"var_20ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %"var_208h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999480
  %"var_204h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".9" to i32*
  %"register0x00000206" = alloca i8
  %".10" = alloca i8**
  %".11" = alloca i32**
  store i8** %"argv", i8*** %".10"
  store i32** %"envp", i32*** %".11"
  br label %"0"
"0":
  call void @"sym.cgc_L2_InitCAM"()
  call void @"sym.cgc_L3_InitInterfaces"()
  call void @"sym.cgc_SendEchoRequest"()
  br label %"1"
"1":
  %".19" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999480
  %".20" = ptrtoint i8* %".19" to i32
  call void @"sym.cgc_bzero"(i32 %".20", i32 256)
  %".22" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999480
  %".23" = ptrtoint i8* %".22" to i32
  %".24" = call i8 @"sym.cgc_L3_RxPacket"(i32 4, i32 %".23")
  store i8 %".24", i8* %"cVar1"
  %".26" = load i8, i8* %"cVar1"
  %".27" = icmp ne i8 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  %".33" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999480
  %".34" = ptrtoint i8* %".33" to i32
  %".35" = call i8 @"sym.cgc_L3_ForwardPacket"(i32 %".34")
  br label %"3"
"3":
  %".37" = call i32 @"sym.cgc_L3_ServiceSendQueue"()
  br label %"1"
}

declare void @"sym.cgc_L3_InitInterfaces"() 

declare i32 @"sym.cgc_L3_ServiceSendQueue"() 

declare i16 @"sym.cgc_LookupL2Adjacency"(i32 %"arg_8h") 

declare i8 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_L2_CalculateChecksum"(i32 %"arg_8h") 

declare void @"sym.cgc_L2_InitCAM"() 

declare i8 @"sym.cgc_L3_ForwardPacket"(i32 %"arg_8h") 

declare i16 @"sym.cgc_ResolveL2Adjacency"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_Enqueue"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_SendEchoRequest"() 

declare i8 @"sym.cgc_L3_RxPacket"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_HandleL2AdjacencyResponsePacket"(i32 %"arg_8h") 

declare i32 @"sym.cgc_LearnL2Adjacency"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_L2_RxFrame"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_L2_VerifyChecksum"(i32 %"arg_8h") 

declare i8 @"sym.cgc_ReceiveBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i8 @"sym.cgc_L2_PopulateCAM"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_KillAll"() 

declare void @"sym.imp.cgc__terminate"() 

declare i8 @"sym.cgc_HandleL2AdjacencyDiscoveryPacket"(i32 %"arg_8h") 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 
