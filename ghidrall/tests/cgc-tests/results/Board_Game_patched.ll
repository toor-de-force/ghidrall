; ModuleID = "Board_Game_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_CURR_PLAYER" = external global i64
@"str.BLACK" = external global i64
@"str.WHITE" = external global i64
@"str.good_game" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999981
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999982
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  store i32 0, i32* %"var_ch"
  %".22" = ptrtoint i8* %".20" to i32
  call void @"sym.cgc_InitBoard"(i32 %".22")
  %".24" = ptrtoint i64* @"obj.cgc_CURR_PLAYER" to i32
  %".25" = call i32 @"sym.cgc_strcpy"(i32 %".24", i32 134531324)
  %".26" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".27" = ptrtoint i8* %".26" to i32
  call void @"sym.cgc_PrintBoard"(i32 %".27")
  br label %"1"
"1":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %".31" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999982
  %".32" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999981
  %".33" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".35" = ptrtoint i8* %".34" to i32
  %".36" = ptrtoint i8* %".34" to i32
  %".37" = ptrtoint i8* %".34" to i32
  %".38" = ptrtoint i8* %".34" to i32
  %".39" = ptrtoint i8* %".34" to i32
  %".40" = call i32 @"sym.cgc_AcceptMove"(i32 %".35", i32 %".36", i32 %".37", i32 %".38", i32 %".39")
  store i32 %".40", i32* %"iVar1"
  %".42" = load i32, i32* %"iVar1"
  %".43" = icmp eq i32 %".42", 0
  %".44" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".43", i1* %".44"
  %".46" = load i8, i8* %"register0x00000206"
  %".47" = trunc i8 %".46" to i1
  br i1 %".47", label %"8", label %"2"
"2":
  %".49" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".50" = load i8, i8* %".13"
  %".51" = sext i8 %".50" to i32
  store i32 %".51", i32* %"register0x00000000"
  %".53" = load i8, i8* %".12"
  %".54" = sext i8 %".53" to i32
  store i32 %".54", i32* %"register0x00000000"
  %".56" = load i8, i8* %".11"
  %".57" = sext i8 %".56" to i32
  store i32 %".57", i32* %"register0x00000000"
  %".59" = load i8, i8* %".10"
  %".60" = sext i8 %".59" to i32
  store i32 %".60", i32* %"register0x00000000"
  %".62" = ptrtoint i8* %".49" to i32
  %".63" = load i32, i32* %"register0x00000000"
  %".64" = load i32, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  %".66" = load i32, i32* %"register0x00000000"
  %".67" = call i32 @"sym.cgc_IsValidMove"(i32 %".62", i32 %".63", i32 %".64", i32 %".65", i32 %".66")
  store i32 %".67", i32* %"iVar1"
  %".69" = load i32, i32* %"iVar1"
  %".70" = icmp eq i32 %".69", 0
  %".71" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".70", i1* %".71"
  %".73" = load i8, i8* %"register0x00000206"
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"7", label %"3"
"3":
  %".76" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %".77" = load i8, i8* %".13"
  %".78" = sext i8 %".77" to i32
  store i32 %".78", i32* %"register0x00000000"
  %".80" = load i8, i8* %".12"
  %".81" = sext i8 %".80" to i32
  store i32 %".81", i32* %"register0x00000000"
  %".83" = load i8, i8* %".11"
  %".84" = sext i8 %".83" to i32
  store i32 %".84", i32* %"register0x00000000"
  %".86" = load i8, i8* %".10"
  %".87" = sext i8 %".86" to i32
  store i32 %".87", i32* %"register0x00000000"
  %".89" = ptrtoint i8* %".76" to i32
  %".90" = load i32, i32* %"register0x00000000"
  %".91" = load i32, i32* %"register0x00000000"
  %".92" = load i32, i32* %"register0x00000000"
  %".93" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_MakeMove"(i32 %".89", i32 %".90", i32 %".91", i32 %".92", i32 %".93")
  %".95" = ptrtoint i64* @"obj.cgc_CURR_PLAYER" to i32
  %".96" = call i32 @"sym.cgc_strcmp"(i32 %".95", i32 134531324)
  store i32 %".96", i32* %"iVar1"
  %".98" = load i32, i32* %"iVar1"
  %".99" = icmp eq i32 %".98", 0
  %".100" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".99", i1* %".100"
  %".102" = load i8, i8* %"register0x00000206"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"5", label %"4"
"4":
  %".105" = ptrtoint i64* @"obj.cgc_CURR_PLAYER" to i32
  %".106" = call i32 @"sym.cgc_strcpy"(i32 %".105", i32 134531324)
  br label %"6"
"5":
  %".108" = ptrtoint i64* @"obj.cgc_CURR_PLAYER" to i32
  %".109" = call i32 @"sym.cgc_strcpy"(i32 %".108", i32 134531337)
  br label %"6"
"6":
  call void @"sym.cgc_puts"(i32 134531414)
  br label %"1"
"7":
  call void @"sym.cgc_puts"(i32 134531411)
  br label %"1"
"8":
  call void @"sym.cgc_puts"(i32 134531401)
  store i32 0, i32* %"register0x00000000"
  %".117" = load i32, i32* %"register0x00000000"
  ret i32 %".117"
}

declare i32 @"sym.cgc_IsValidMove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_IsDiagClear"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_abs"(i32 %"arg_8h") 

declare i32 @"sym.cgc_IsMemberPiece"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_IsLateralClear"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_AcceptMove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i80 @"sym.cgc_floor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare void @"sym.imp.cgc_pow"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.cgc_InitBoard"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_PrintBoard"(i32 %"arg_8h") 

declare void @"sym.cgc_MakeMove"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"_reloc.memcpy"() 
