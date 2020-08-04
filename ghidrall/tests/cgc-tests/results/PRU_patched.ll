; ModuleID = "PRU_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %"unaff_EBX" = alloca i32
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967290
  %"var_1ah" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967280
  %"var_10h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967276
  %"var_ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983416
  %"uVar3" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983420
  %"uVar4" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983424
  %"uStack16576" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983452
  %"auStack16548" = bitcast i8* %".19" to i96*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983464
  %"var_40b8h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983468
  %"var_40b4h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983472
  %"var_40b0h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983476
  %"var_40ach" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983480
  %"var_40a8h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983484
  %"var_40a4h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983488
  %"var_40a0h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983584
  %"auStack16416" = bitcast i8* %".27" to i131072*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999970
  %"uStack30" = bitcast i8* %".28" to i16*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h_2" = bitcast i8* %".29" to i32*
  %"register0x00000206" = alloca i8
  %"register0x0000001c" = alloca i32*
  %".30" = alloca i32
  %".31" = alloca i32
  %".32" = alloca i32
  %".33" = alloca i32
  %".34" = alloca i32
  %".35" = alloca i32
  %".36" = alloca i32
  %".37" = alloca i32
  %".38" = alloca i32
  %".39" = alloca i8**
  %".40" = alloca i32**
  store i32 %"placeholder_0", i32* %".30"
  store i32 %"placeholder_1", i32* %".31"
  store i32 %"placeholder_2", i32* %".32"
  store i32 %"placeholder_3", i32* %".33"
  store i32 %"placeholder_4", i32* %".34"
  store i32 %"placeholder_5", i32* %".35"
  store i32 %"placeholder_6", i32* %".36"
  store i32 %"placeholder_7", i32* %".37"
  store i32 %"placeholder_8", i32* %".38"
  store i8** %"argv", i8*** %".39"
  store i32** %"envp", i32*** %".40"
  br label %"0"
"0":
  store i16 0, i16* %"uStack30"
  %".54" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983584
  %".55" = bitcast i32** %"register0x0000001c" to i8**
  store i8* %".54", i8** %".55"
  store i32 255, i32* %"uVar3"
  store i32 16384, i32* %"uVar4"
  %".59" = ptrtoint i32** %"register0x0000001c" to i32
  %".60" = call i32 @"sym.cgc_memset"(i32 %".59", i32 255, i32 16384)
  %".61" = call i32 @"sym.cgc_recvInt"()
  store i32 %".61", i32* %"iVar1"
  store i32 0, i32* %"var_18h_2"
  br label %"1"
"1":
  %".65" = load i32, i32* %"var_18h_2"
  %".66" = load i32, i32* %"iVar1"
  %".67" = icmp slt i32 %".65", %".66"
  br i1 %".67", label %"2", label %"3"
"2":
  %".69" = call i32 @"sym.cgc_recvInt"()
  store i32 %".69", i32* %"uVar2"
  %".71" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983584
  %".72" = load i32, i32* %"var_18h_2"
  %".73" = mul i32 %".72", 32
  %".74" = getelementptr inbounds i8, i8* %".71", i32 %".73"
  %".75" = bitcast i8* %".74" to i32*
  %".76" = load i32, i32* %"uVar2"
  %".77" = load i32, i32* %"var_18h_2"
  %".78" = add i32 %".77", 1
  store i32 %".78", i32* %"var_18h_2"
  br label %"1"
"3":
  %".81" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983452
  %".82" = ptrtoint i8* %".81" to i32
  call void @"sym.cgc_execute"(i32 %".82")
  %".84" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 983452
  %".85" = ptrtoint i8* %".84" to i32
  call void @"sym.cgc_dumpState"(i32 %".85")
  call void @"sym.imp.cgc__terminate"()
  call void @"sym.__x86.get_pc_thunk.bx"()
  call void @"sym._init"()
  store i32 0, i32* %"iVar1"
  br label %"4"
"4":
  %".92" = load i32, i32* %"unaff_EBX"
  %".93" = add i32 %".92", 1559
  %".94" = load i32, i32* %"iVar1"
  %".95" = mul i32 %".94", 4
  %".96" = add i32 %".93", %".95"
  call void @"unique0x00000f30"()
  %".98" = load i32, i32* %"iVar1"
  %".99" = add i32 %".98", 1
  store i32 %".99", i32* %"iVar1"
  %".101" = load i32, i32* %"iVar1"
  %".102" = icmp ne i32 %".101", 1
  %".103" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".102", i1* %".103"
  %".105" = load i8, i8* %"register0x00000206"
  %".106" = trunc i8 %".105" to i1
  br i1 %".106", label %"4", label %"5"
"5":
  ret void
}

declare i32 @"sym.cgc_recvInt"() 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_dumpState"(i32 %"arg_8h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf_buffered"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_wrapper_output"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare void @"sym.cgc_execute"(i32 %"arg_8h") 

declare void @"sym.cgc_doSet"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getALUOp2"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doLsl"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doLmbd"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doAdd"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doAdc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doNot"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doSuc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doAnd"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doSub"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doScan"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doMax"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doLdi"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doRsc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doRsb"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doMin"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doClr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doBranch"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doOr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doXor"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doQATB"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_doLsr"(i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym._init"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBX" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  call void @"sym.__x86.get_pc_thunk.bx"()
  %".4" = load i32, i32* %"unaff_EBX"
  %".5" = add i32 %".4", 20343
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x08049240"()
  br label %"2"
"2":
  ret void
}

declare void @"sym.imp.cgc__terminate"() 

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"unique0x00000f30"() 

declare void @"func_0x08049240"() 
