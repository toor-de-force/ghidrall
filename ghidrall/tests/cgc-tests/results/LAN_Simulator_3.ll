; ModuleID = "LAN_Simulator_3"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.MaxInterfaces" = global i8 0
@"obj.cgc_Pwdgen_Offset" = global i8 0
@"obj.cgc_L3Interfaces" = global i32 0
@"obj.Config" = global i32 0
@"obj.state_n" = global i32 0
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999456
  %"var_21ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999464
  %"var_214h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999468
  %"var_210h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999472
  %"var_20ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %"var_208h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".9" to i32*
  %"register0x00000206" = alloca i8
  %".10" = alloca i8**
  %".11" = alloca i32**
  store i8** %"argv", i8*** %".10"
  store i32** %"envp", i32*** %".11"
  br label %"0"
"0":
  call void @"sym.cgc_seed_prng_array"(i32 1128775680, i32 32)
  call void @"sym.cgc_L2_InitCAM"()
  call void @"sym.cgc_L3_InitInterfaces"()
  %".18" = call i16 @"sym.cgc_RegisterHandlers"()
  br label %"1"
"1":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %".21" = ptrtoint i8* %".20" to i32
  %".22" = call i8 @"sym.cgc_L3_RxPacket"(i32 6, i32 %".21")
  store i8 %".22", i8* %"cVar1"
  %".24" = load i8, i8* %"cVar1"
  %".25" = icmp ne i8 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"2", label %"3"
"2":
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999476
  %".32" = ptrtoint i8* %".31" to i32
  %".33" = call i8 @"sym.cgc_CB3_ProcessPacket"(i32 %".32")
  br label %"3"
"3":
  %".35" = call i32 @"sym.cgc_L3_ServiceSendQueue"()
  br label %"1"
}

declare i8 @"sym.cgc_L3_RxPacket"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_HandleL2AdjacencyResponsePacket"(i32 %"arg_8h") 

declare i32 @"sym.cgc_LearnL2Adjacency"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_HandleL2AdjacencyDiscoveryPacket"(i32 %"arg_8h") 

declare i32 @"sym.cgc_L2_CalculateChecksum"(i32 %"arg_8h") 

declare i16 @"sym.cgc_LookupL2Adjacency"(i32 %"arg_8h") 

declare i8 @"sym.cgc_SendBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_L2_RxFrame"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_L2_PopulateCAM"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_L2_VerifyChecksum"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_ReceiveBytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_KillAll"() 

declare i8 @"sym.cgc_CB3_ProcessPacket"(i32 %"arg_8h") 

declare i8 @"sym.cgc_L3_ForwardPacket"(i32 %"arg_8h") 

declare i8 @"sym.cgc_Enqueue"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i16 @"sym.cgc_ResolveL2Adjacency"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_L3_InitInterfaces"() 

declare void @"sym.cgc_seed_prng"(i32 %"arg_8h") 

declare i16 @"sym.cgc_RegisterHandlers"() 

declare i8 @"sym.cgc_L4_RegisterHandler"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_L2_InitCAM"() 

declare i32 @"sym.cgc_L3_ServiceSendQueue"() 

declare void @"sym.cgc_seed_prng_array"(i32 %"arg_8h", i32 %"arg_ch") 
