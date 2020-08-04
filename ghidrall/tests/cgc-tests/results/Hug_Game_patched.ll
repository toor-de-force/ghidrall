; ModuleID = "Hug_Game_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.state" = global i32 0
@"str.Could_not_allocate_space_for_gamestate._Terminating." = external global i64
@"str.Thanks_for_playing__Don_t_spend_all_your_hugs_in_one_place." = external global i64
@"str.Welcome_to_the_hug_gambling_server." = external global i64
@"str.What_is_your_name" = external global i64
@"str.You_have" = external global i64
@"str.You_re_all_out_of_hugs_:_._Thanks_for_playing." = external global i64
@"str.hugs._Shall_we_play_a_game___1._Coin_Flip__2._Hangman__3._Dice_game__4._War__q._Quit" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999832
  %"var_a4h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999836
  %"var_a0h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999840
  %"var_9ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999864
  %"var_84h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999868
  %"var_80h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999872
  %"var_7ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999876
  %"var_78h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999880
  %"var_74h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999884
  %"var_70h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".35" to i32*
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".36" to i32*
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".39" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000018" = alloca i32
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %".40" = alloca i8**
  %".41" = alloca i32**
  store i8** %"argv", i8*** %".40"
  store i32** %"envp", i32*** %".41"
  br label %"0"
"0":
  call void @"sym.imp.cgc_allocate"()
  %".46" = load i32, i32* @"obj.state"
  %".47" = icmp eq i32 %".46", 0
  %".48" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".47", i1* %".48"
  %".50" = load i8, i8* %"register0x00000206"
  %".51" = trunc i8 %".50" to i1
  br i1 %".51", label %"1", label %"2"
"1":
  %".53" = call i32 @"sym.cgc_put"(i32 136709313)
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".56" = load i32, i32* @"obj.state"
  %".57" = add i32 %".56", 260
  %".58" = call i32 @"sym.cgc_put"(i32 136709366)
  %".59" = call i32 @"sym.cgc_put"(i32 136709403)
  %".60" = load i32, i32* @"obj.state"
  %".61" = add i32 %".60", 4
  store i32 %".61", i32* %"register0x00000008"
  %".63" = load i32, i32* %"register0x00000008"
  call void @"sym.cgc_bzero"(i32 %".63", i32 256)
  %".65" = load i32, i32* @"obj.state"
  %".66" = add i32 %".65", 4
  store i32 %".66", i32* %"register0x00000018"
  %".68" = load i32, i32* %"register0x00000018"
  %".69" = call i32 @"sym.cgc_recvUntil"(i32 0, i32 %".68", i32 256, i32 10)
  %".70" = call i32 @"sym.cgc_put"(i32 136709423)
  %".71" = load i32, i32* @"obj.state"
  %".72" = add i32 %".71", 4
  store i32 %".72", i32* %"register0x00000004"
  %".74" = load i32, i32* %"register0x00000004"
  %".75" = call i32 @"sym.cgc_put"(i32 %".74")
  %".76" = call i32 @"sym.cgc_put"(i32 136709427)
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".78" = load i32, i32* @"obj.state"
  %".79" = add i32 %".78", 4
  store i32 %".79", i32* %"register0x00000018"
  %".81" = ptrtoint i8* %".77" to i32
  %".82" = load i32, i32* %"register0x00000018"
  %".83" = call i32 @"sym.cgc_memcpy"(i32 %".81", i32 %".82", i32 4)
  %".84" = load i32, i32* @"obj.state"
  %".85" = load i32, i32* %"var_20h"
  call void @"sym.cgc_hugsrand"(i32 %".84", i32 %".85")
  br label %"3"
"3":
  %".88" = load i32, i32* @"obj.state"
  %".89" = add i32 %".88", 260
  %".90" = icmp slt i32 0, %".89"
  br i1 %".90", label %"4", label %"10"
"4":
  %".92" = load i32, i32* @"obj.state"
  %".93" = add i32 %".92", 260
  %".94" = icmp slt i32 1000000, %".93"
  br i1 %".94", label %"5", label %"6"
"5":
  %".96" = load i32, i32* @"obj.state"
  %".97" = add i32 %".96", 260
  br label %"6"
"6":
  %".99" = call i32 @"sym.cgc_put"(i32 136709430)
  %".100" = load i32, i32* @"obj.state"
  %".101" = add i32 %".100", 260
  %".102" = call i32 @"sym.cgc_itoa"(i32 %".101")
  store i32 %".102", i32* %"arg_8h"
  %".104" = load i32, i32* %"arg_8h"
  %".105" = call i32 @"sym.cgc_put"(i32 %".104")
  %".106" = call i32 @"sym.cgc_put"(i32 136709440)
  %".107" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".108" = ptrtoint i8* %".107" to i32
  call void @"sym.cgc_bzero"(i32 %".108", i32 16)
  %".110" = ptrtoint i8* %".107" to i32
  %".111" = call i32 @"sym.cgc_recvUntil"(i32 0, i32 %".110", i32 15, i32 10)
  %".112" = load i32, i32* %"var_1ch"
  %".113" = zext i8 49 to i32
  %".114" = icmp eq i32 %".112", %".113"
  %".115" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".114", i1* %".115"
  %".117" = load i8, i8* %"register0x00000206"
  %".118" = trunc i8 %".117" to i1
  br i1 %".118", label %"7", label %"8"
"7":
  call void @"sym.cgc_coinflip"()
  br label %"3"
"8":
  %".122" = load i32, i32* %"var_1ch"
  %".123" = zext i8 50 to i32
  %".124" = icmp eq i32 %".122", %".123"
  %".125" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".124", i1* %".125"
  %".127" = load i8, i8* %"register0x00000206"
  %".128" = trunc i8 %".127" to i1
  br i1 %".128", label %"9", label %"a"
"9":
  call void @"sym.cgc_hangman"()
  br label %"3"
a:
  %".132" = load i32, i32* %"var_1ch"
  %".133" = zext i8 51 to i32
  %".134" = icmp eq i32 %".132", %".133"
  %".135" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".134", i1* %".135"
  %".137" = load i8, i8* %"register0x00000206"
  %".138" = trunc i8 %".137" to i1
  br i1 %".138", label %"b", label %"c"
b:
  call void @"sym.cgc_dicegame"()
  br label %"3"
c:
  %".142" = load i32, i32* %"var_1ch"
  %".143" = zext i8 52 to i32
  %".144" = icmp eq i32 %".142", %".143"
  %".145" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".144", i1* %".145"
  %".147" = load i8, i8* %"register0x00000206"
  %".148" = trunc i8 %".147" to i1
  br i1 %".148", label %"d", label %"e"
d:
  call void @"sym.cgc_war"()
  br label %"3"
e:
  %".152" = load i32, i32* %"var_1ch"
  %".153" = zext i8 113 to i32
  %".154" = icmp eq i32 %".152", %".153"
  %".155" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".154", i1* %".155"
  %".157" = load i8, i8* %"register0x00000206"
  %".158" = trunc i8 %".157" to i1
  br i1 %".158", label %"f", label %"3"
f:
  %".160" = call i32 @"sym.cgc_put"(i32 136709522)
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"10":
  %".163" = call i32 @"sym.cgc_put"(i32 136709583)
  store i32 0, i32* %"register0x00000000"
  %".165" = load i32, i32* %"register0x00000000"
  ret i32 %".165"
}

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_war"() 

declare i32 @"sym.cgc_cardSuite"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getBet"(i32 %"arg_8h") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_handleOutcome"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_cardName"(i32 %"arg_8h") 

declare i32 @"sym.cgc_hugsnextrand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_recvUntil"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_dicegame"() 

declare i32 @"sym.cgc_itoa"(i32 %"arg_8h") 

declare void @"sym.cgc_hugsrand"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_put"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_coinflip"() 

declare void @"sym.cgc_bzero"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_hangman"() 

declare i32 @"sym.cgc_pickaword"(i32 %"arg_8h") 

declare i32 @"sym.cgc_renderBoard"(i32 %"arg_8h") 
