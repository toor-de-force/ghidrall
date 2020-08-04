; ModuleID = "Character_Statistics_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_state" = global i32 0
@"obj.cgc__consts" = global i32 0
@"str.lowers" = external global i64
@"str.numbers" = external global i64
@"str.other" = external global i64
@"str.spaces" = external global i64
@"str.special" = external global i64
@"str.uppers" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"iVar2" = alloca i32
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
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".22" to i32*
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %".23" = alloca i8**
  %".24" = alloca i32**
  store i8** %"argv", i8*** %".23"
  store i32** %"envp", i32*** %".24"
  br label %"0"
"0":
  call void @"sym.cgc_INIT_MACHINE"()
  call void @"sym.cgc_MOVIM8"(i32 1, i32 0)
  call void @"sym.cgc_MOVIM8"(i32 6, i32 0)
  call void @"sym.cgc_MOVIM8"(i32 2, i32 0)
  call void @"sym.cgc_MOVIM8"(i32 3, i32 0)
  call void @"sym.cgc_MOVIM8"(i32 4, i32 0)
  call void @"sym.cgc_MOVIM8"(i32 5, i32 0)
  call void @"sym.cgc_MOVIM16"(i32 7, i32 128)
  call void @"sym.cgc_MOVIM16"(i32 13, i32 144)
  call void @"sym.cgc_MOVIM16"(i32 9, i32 160)
  call void @"sym.cgc_MOVIM16"(i32 11, i32 176)
  call void @"sym.cgc_MOVIM16"(i32 15, i32 192)
  call void @"sym.cgc_MOVIM16"(i32 17, i32 208)
  call void @"sym.cgc_MOVIM16"(i32 19, i32 224)
  call void @"sym.cgc_insertString"(i32 7, i32 134532304, i32 21)
  call void @"sym.cgc_insertString"(i32 13, i32 134532316, i32 21)
  call void @"sym.cgc_insertString"(i32 9, i32 134532328, i32 21)
  call void @"sym.cgc_insertString"(i32 11, i32 134532340, i32 21)
  call void @"sym.cgc_insertString"(i32 15, i32 134532352, i32 21)
  call void @"sym.cgc_insertString"(i32 17, i32 134532364, i32 21)
  %".48" = call i16 @"sym.cgc_REG16"(i32 19)
  %".49" = bitcast i32* %"uVar1" to i16*
  store i16 %".48", i16* %".49"
  %".51" = load i32, i32* %"uVar1"
  %".52" = and i32 %".51", 65535
  store i32 %".52", i32* %"register0x00000018"
  %".54" = load i32, i32* %"register0x00000018"
  call void @"sym.cgc_MOVIM8"(i32 %".54", i32 10)
  %".56" = call i16 @"sym.cgc_REG16"(i32 19)
  %".57" = bitcast i32* %"uVar1" to i16*
  store i16 %".56", i16* %".57"
  %".59" = load i32, i32* %"uVar1"
  %".60" = and i32 %".59", 65535
  store i32 %".60", i32* %"register0x00000018"
  %".62" = load i32, i32* %"register0x00000018"
  %".63" = add i32 %".62", 1
  store i32 %".63", i32* %"register0x00000018"
  %".65" = load i32, i32* %"register0x00000018"
  %".66" = and i32 %".65", 65535
  store i32 %".66", i32* %"register0x00000000"
  %".68" = load i32, i32* %"register0x00000000"
  call void @"sym.cgc_MOVIM32"(i32 %".68", i32 0)
  %".70" = call i32 @"sym.cgc_getChar"(i32 21)
  store i32 %".70", i32* %"var_ch"
  br label %"1"
"1":
  %".73" = load i32, i32* %"var_ch"
  %".74" = icmp ne i32 %".73", -1
  %".75" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".74", i1* %".75"
  %".77" = load i8, i8* %"register0x00000206"
  %".78" = trunc i8 %".77" to i1
  br i1 %".78", label %"2", label %"e"
"2":
  %".80" = call i8 @"sym.cgc_isUpLetter"(i32 21, i32 22)
  %".81" = bitcast i32* %"iVar2" to i8*
  store i8 %".80", i8* %".81"
  %".83" = load i32, i32* %"iVar2"
  %".84" = icmp eq i32 %".83", 0
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"3", label %"c"
"3":
  %".90" = call i8 @"sym.cgc_isLowLetter"(i32 21, i32 22)
  %".91" = bitcast i32* %"iVar2" to i8*
  store i8 %".90", i8* %".91"
  %".93" = load i32, i32* %"iVar2"
  %".94" = icmp eq i32 %".93", 0
  %".95" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".94", i1* %".95"
  %".97" = load i8, i8* %"register0x00000206"
  %".98" = trunc i8 %".97" to i1
  br i1 %".98", label %"4", label %"b"
"4":
  %".100" = call i8 @"sym.cgc_isNumber"(i32 21, i32 22)
  %".101" = bitcast i32* %"iVar2" to i8*
  store i8 %".100", i8* %".101"
  %".103" = load i32, i32* %"iVar2"
  %".104" = icmp eq i32 %".103", 0
  %".105" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".104", i1* %".105"
  %".107" = load i8, i8* %"register0x00000206"
  %".108" = trunc i8 %".107" to i1
  br i1 %".108", label %"5", label %"a"
"5":
  %".110" = call i8 @"sym.cgc_isSpace"(i32 21, i32 22)
  %".111" = bitcast i32* %"iVar2" to i8*
  store i8 %".110", i8* %".111"
  %".113" = load i32, i32* %"iVar2"
  %".114" = icmp eq i32 %".113", 0
  %".115" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".114", i1* %".115"
  %".117" = load i8, i8* %"register0x00000206"
  %".118" = trunc i8 %".117" to i1
  br i1 %".118", label %"6", label %"9"
"6":
  %".120" = call i8 @"sym.cgc_isSpecial"(i32 21, i32 22)
  %".121" = bitcast i32* %"iVar2" to i8*
  store i8 %".120", i8* %".121"
  %".123" = load i32, i32* %"iVar2"
  %".124" = icmp eq i32 %".123", 0
  %".125" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".124", i1* %".125"
  %".127" = load i8, i8* %"register0x00000206"
  %".128" = trunc i8 %".127" to i1
  br i1 %".128", label %"7", label %"8"
"7":
  call void @"sym.cgc_INC8"(i32 5)
  br label %"d"
"8":
  call void @"sym.cgc_INC8"(i32 4)
  br label %"d"
"9":
  call void @"sym.cgc_INC8"(i32 6)
  br label %"d"
a:
  call void @"sym.cgc_INC8"(i32 1)
  br label %"d"
b:
  call void @"sym.cgc_INC8"(i32 3)
  br label %"d"
c:
  call void @"sym.cgc_INC8"(i32 2)
  br label %"d"
d:
  call void @"sym.cgc_printChar"(i32 21)
  %".143" = call i32 @"sym.cgc_getChar"(i32 21)
  store i32 %".143", i32* %"var_ch"
  br label %"1"
e:
  call void @"sym.cgc_printString"(i32 7, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 1, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  call void @"sym.cgc_printString"(i32 9, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 2, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  call void @"sym.cgc_printString"(i32 11, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 3, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  call void @"sym.cgc_printString"(i32 13, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 6, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  call void @"sym.cgc_printString"(i32 15, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 4, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  call void @"sym.cgc_printString"(i32 17, i32 21, i32 25)
  call void @"sym.cgc_printReg8"(i32 5, i32 21)
  call void @"sym.cgc_printString"(i32 19, i32 21, i32 25)
  store i32 0, i32* %"register0x00000000"
  %".165" = load i32, i32* %"register0x00000000"
  ret i32 %".165"
}

declare i8 @"sym.cgc_isSpecial"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_LAND8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_AND8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_LTE8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_GTE8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_EQ8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_GT8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_LOR8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_OR8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_REG8"(i32 %"arg_8h") 

declare void @"sym.cgc_MOV8"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getChar"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.cgc_printReg8"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_printReg32"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_MOV32"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_ADD16"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_DIV32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_REG32"(i32 %"arg_8h") 

declare void @"sym.cgc_LAND32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_AND32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_SUB32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_INC32"(i32 %"arg_8h") 

declare void @"sym.cgc_ADD32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_GT32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_EQ32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_GTE32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_LOR32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_OR32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_GT16"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_MOV16"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_REM32"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_ADD8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isUpLetter"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_isNumber"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_LT8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_SUB8"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i8 @"sym.cgc_isLowLetter"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_printChar"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_printString"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_INC16"(i32 %"arg_8h") 

declare void @"sym.cgc_MOVIM8"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_isSpace"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_INIT_MACHINE"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_insertString"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_MOVIM16"(i32 %"arg_8h", i32 %"arg_ch") 

declare i16 @"sym.cgc_REG16"(i32 %"arg_8h") 

declare void @"sym.cgc_MOVIM32"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_INC8"(i32 %"arg_8h") 
