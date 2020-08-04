; ModuleID = "REDPILL_3"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_PIPE_RECV" = global i32 0
@"obj.cgc_MY_TID" = global i32 0
define void @"main"(i32 %"placeholder_0", i32 %"placeholder_1", i32 %"placeholder_2", i32 %"placeholder_3", i32 %"placeholder_4", i32 %"placeholder_5", i32 %"placeholder_6", i32 %"placeholder_7", i32 %"placeholder_8", i32 %"placeholder_9", i32 %"placeholder_10", i32 %"placeholder_11", i32 %"placeholder_12", i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"unaff_EBX" = alloca i32
  %"iVar2" = alloca i32
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967260
  %"var_ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967256
  %"var_8h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -4293967252
  %"var_4h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"uStack24" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"uStack20" = bitcast i8* %".21" to i32*
  %"register0x00000206" = alloca i8
  %".22" = alloca i32
  %".23" = alloca i32
  %".24" = alloca i32
  %".25" = alloca i32
  %".26" = alloca i32
  %".27" = alloca i32
  %".28" = alloca i32
  %".29" = alloca i32
  %".30" = alloca i32
  %".31" = alloca i32
  %".32" = alloca i32
  %".33" = alloca i32
  %".34" = alloca i32
  %".35" = alloca i8**
  %".36" = alloca i32**
  store i32 %"placeholder_0", i32* %".22"
  store i32 %"placeholder_1", i32* %".23"
  store i32 %"placeholder_2", i32* %".24"
  store i32 %"placeholder_3", i32* %".25"
  store i32 %"placeholder_4", i32* %".26"
  store i32 %"placeholder_5", i32* %".27"
  store i32 %"placeholder_6", i32* %".28"
  store i32 %"placeholder_7", i32* %".29"
  store i32 %"placeholder_8", i32* %".30"
  store i32 %"placeholder_9", i32* %".31"
  store i32 %"placeholder_10", i32* %".32"
  store i32 %"placeholder_11", i32* %".33"
  store i32 %"placeholder_12", i32* %".34"
  store i8** %"argv", i8*** %".35"
  store i32** %"envp", i32*** %".36"
  br label %"0"
"0":
  call void @"sym.cgc_loop"()
  %".54" = load i32, i32* %"uVar1"
  call void @"sym.imp.cgc__terminate"()
  call void @"sym.__x86.get_pc_thunk.bx"()
  call void @"sym._init"()
  store i32 0, i32* %"iVar2"
  br label %"1"
"1":
  %".60" = load i32, i32* %"unaff_EBX"
  %".61" = add i32 %".60", 4471
  %".62" = load i32, i32* %"iVar2"
  %".63" = mul i32 %".62", 4
  %".64" = add i32 %".61", %".63"
  call void @"unique0x00000f30"()
  %".66" = load i32, i32* %"iVar2"
  %".67" = add i32 %".66", 1
  store i32 %".67", i32* %"iVar2"
  %".69" = load i32, i32* %"iVar2"
  %".70" = icmp ne i32 %".69", 1
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"1", label %"2"
"2":
  ret void
}

declare void @"sym.imp.cgc__terminate"() 

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
  %".5" = add i32 %".4", 7503
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x080488c0"()
  br label %"2"
"2":
  ret void
}

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare void @"sym.cgc_loop"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_ack_state"(i32 %"arg_8h") 

declare i32 @"sym.cgc_pkt_send"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_pkt_serialize"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare i8 @"sym.cgc_pkt_get_msg"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 

declare void @"func_0x080488c0"() 
