; ModuleID = "pizza_ordering_system_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.1._Input_Order" = external global i64
@"str.2._Update_Order" = external global i64
@"str.3._View_One_Orders" = external global i64
@"str.4._View_All_Orders" = external global i64
@"str.5._Delete_Order" = external global i64
@"str.6._Clear_All_Orders" = external global i64
@"str.7._Logout" = external global i64
@"str.Bad_Selection" = external global i64
@"str.Choice:" = external global i64
@"str.Enter_system_password:" = external global i64
@"str.Incorrect_Password" = external global i64
@"str.Received_termination_string" = external global i64
@"str.Too_many_bad_attempts" = external global i64
@"str.pizzapass" = external global i64
@"str.quit" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"iVar2" = alloca i32
  %"uVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231412
  %"in_stack_ffbf6f0c" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231400
  %"var_4090e4h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231396
  %"var_4090e0h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231344
  %"var_4090ach" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231340
  %"var_4090a8h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231336
  %"var_4090a4h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231332
  %"var_4090a0h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231328
  %"var_40909ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231324
  %"var_409098h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231320
  %"var_409094h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231316
  %"var_409090h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231312
  %"var_40908ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231308
  %"var_409088h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231304
  %"var_409084h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231300
  %"var_409080h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231296
  %"var_40907ch" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231292
  %"var_409078h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231288
  %"var_409074h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231284
  %"var_409070h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231280
  %"var_40906ch" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231276
  %"var_409068h" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231272
  %"var_409064h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231268
  %"var_409060h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231264
  %"var_40905ch" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231260
  %"var_409058h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231256
  %"var_409054h" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231252
  %"var_409050h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231248
  %"var_40904ch" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231244
  %"var_409048h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231240
  %"var_409044h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231236
  %"var_409040h" = bitcast i8* %".34" to i32*
  %".35" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231230
  %".36" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231229
  %".37" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %"var_409038h" = bitcast i8* %".37" to i32*
  %".38" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231204
  %"var_409020h" = bitcast i8* %".38" to i32*
  %".39" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".39" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %".40" = alloca i8**
  %".41" = alloca i32**
  store i8** %"argv", i8*** %".40"
  store i32** %"envp", i32*** %".41"
  br label %"0"
"0":
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231204
  %".46" = ptrtoint i8* %".45" to i32
  call void @"method.OrderIoManager.OrderIoManager"(i32 %".46")
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %".49" = ptrtoint i8* %".48" to i32
  call void @"method.IoManager.IoManager_unsigned_long"(i32 %".49", i32 512)
  store i8 0, i8* %".36"
  store i8 0, i8* %".35"
  br label %"1"
"1":
  %".54" = load i8, i8* %".35"
  %".55" = zext i8 %".54" to i32
  %".56" = zext i8 255 to i32
  %".57" = xor i32 %".55", %".56"
  store i32 %".57", i32* %"register0x00000000"
  %".59" = load i32, i32* %"register0x00000000"
  %".60" = trunc i32 %".59" to i8
  %".61" = and i8 %".60", 1
  %".62" = icmp eq i8 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"2", label %"3"
"2":
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %".69" = ptrtoint i8* %".68" to i32
  call void @"method.IoManager._IoManager"(i32 %".69")
  %".71" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231204
  %".72" = ptrtoint i8* %".71" to i32
  call void @"sym.OrderIoManager::_OrderIoManager"(i32 %".72")
  store i32 0, i32* %"register0x00000000"
  %".75" = load i32, i32* %"register0x00000000"
  ret i32 %".75"
"3":
  store i32 10, i32* %"var_409044h"
  br label %"4"
"4":
  %".79" = load i8, i8* %".36"
  %".80" = zext i8 %".79" to i32
  %".81" = zext i8 255 to i32
  %".82" = xor i32 %".80", %".81"
  store i32 %".82", i32* %"register0x00000000"
  %".84" = load i32, i32* %"register0x00000000"
  %".85" = trunc i32 %".84" to i8
  %".86" = and i8 %".85", 1
  %".87" = icmp eq i8 %".86", 0
  %".88" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".87", i1* %".88"
  %".90" = load i8, i8* %"register0x00000206"
  %".91" = trunc i8 %".90" to i1
  br i1 %".91", label %"d", label %"5"
"5":
  %".93" = load i32, i32* %"in_stack_ffbf6f0c"
  %".94" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134559978, i32 %".93")
  %".95" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %".96" = ptrtoint i8* %".95" to i32
  %".97" = call i8 @"method.IoManager.readline_unsigned_long"(i32 %".96", i32 0)
  %".98" = bitcast i32* %"uVar1" to i8*
  store i8 %".97", i8* %".98"
  %".100" = load i32, i32* %"uVar1"
  %".101" = and i32 %".100", 1
  %".102" = icmp ne i32 %".101", 0
  %".103" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".102", i1* %".103"
  %".105" = load i8, i8* %"register0x00000206"
  %".106" = trunc i8 %".105" to i1
  br i1 %".106", label %"6", label %"c"
"6":
  %".108" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %".109" = ptrtoint i8* %".108" to i32
  %".110" = call i32 @"method.IoManager.get_last_input"(i32 %".109")
  store i32 %".110", i32* %"iVar2"
  %".112" = load i32, i32* %"iVar2"
  %".113" = call i32 @"sym.cgc_strcmp"(i32 134560023, i32 %".112")
  store i32 %".113", i32* %"iVar2"
  %".115" = load i32, i32* %"iVar2"
  %".116" = icmp ne i32 %".115", 0
  %".117" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".116", i1* %".117"
  %".119" = load i8, i8* %"register0x00000206"
  %".120" = trunc i8 %".119" to i1
  br i1 %".120", label %"7", label %"b"
"7":
  %".122" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231228
  %".123" = ptrtoint i8* %".122" to i32
  %".124" = call i32 @"method.IoManager.get_last_input"(i32 %".123")
  store i32 %".124", i32* %"iVar2"
  %".126" = load i32, i32* %"iVar2"
  %".127" = call i32 @"sym.cgc_strcmp"(i32 134560033, i32 %".126")
  store i32 %".127", i32* %"iVar2"
  %".129" = load i32, i32* %"iVar2"
  %".130" = icmp eq i32 %".129", 0
  %".131" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".130", i1* %".131"
  %".133" = load i8, i8* %"register0x00000206"
  %".134" = trunc i8 %".133" to i1
  br i1 %".134", label %"8", label %"9"
"8":
  %".136" = load i32, i32* %"in_stack_ffbf6f0c"
  %".137" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560038, i32 %".136")
  store i8 1, i8* %".35"
  br label %"d"
"9":
  %".140" = load i32, i32* %"in_stack_ffbf6f0c"
  %".141" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560002, i32 %".140")
  %".142" = load i32, i32* %"var_409044h"
  %".143" = add i32 %".142", -1
  store i32 %".143", i32* %"var_409044h"
  %".145" = load i32, i32* %"var_409044h"
  %".146" = icmp ne i32 %".145", 0
  %".147" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".146", i1* %".147"
  %".149" = load i8, i8* %"register0x00000206"
  %".150" = trunc i8 %".149" to i1
  br i1 %".150", label %"4", label %"a"
a:
  %".152" = load i32, i32* %"in_stack_ffbf6f0c"
  %".153" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560067, i32 %".152")
  store i8 1, i8* %".35"
  br label %"d"
b:
  store i8 1, i8* %".36"
  %".157" = load i32, i32* %"in_stack_ffbf6f0c"
  %".158" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560585, i32 %".157")
  call void @"sym.print_banner"()
  br label %"4"
c:
  %".161" = load i32, i32* %"in_stack_ffbf6f0c"
  %".162" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560002, i32 %".161")
  br label %"4"
d:
  %".164" = load i8, i8* %".36"
  %".165" = and i8 %".164", 1
  %".166" = icmp ne i8 %".165", 0
  %".167" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".166", i1* %".167"
  %".169" = load i8, i8* %"register0x00000206"
  %".170" = trunc i8 %".169" to i1
  br i1 %".170", label %"1", label %"e"
e:
  %".172" = load i32, i32* %"in_stack_ffbf6f0c"
  %".173" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560090, i32 %".172")
  %".174" = load i32, i32* %"in_stack_ffbf6f0c"
  %".175" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560106, i32 %".174")
  %".176" = load i32, i32* %"in_stack_ffbf6f0c"
  %".177" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560123, i32 %".176")
  %".178" = load i32, i32* %"in_stack_ffbf6f0c"
  %".179" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560143, i32 %".178")
  %".180" = load i32, i32* %"in_stack_ffbf6f0c"
  %".181" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560163, i32 %".180")
  %".182" = load i32, i32* %"in_stack_ffbf6f0c"
  %".183" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560180, i32 %".182")
  %".184" = load i32, i32* %"in_stack_ffbf6f0c"
  %".185" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560201, i32 %".184")
  %".186" = load i32, i32* %"in_stack_ffbf6f0c"
  %".187" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560212, i32 %".186")
  %".188" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 -3231204
  %".189" = ptrtoint i8* %".188" to i32
  %".190" = call i32 @"method.IoManager.readnum_unsigned_long"(i32 %".189", i32 0)
  store i32 %".190", i32* %"iVar2"
  %".192" = load i32, i32* %"iVar2"
  %".193" = sub i32 %".192", 1
  store i32 %".193", i32* %"register0x00000000"
  %".195" = load i32, i32* %"register0x00000000"
  %".196" = icmp ult i32 %".195", 6
  %".197" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".196", i1* %".197"
  %".199" = load i32, i32* %"iVar2"
  %".200" = icmp eq i32 %".199", 7
  %".201" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".200", i1* %".201"
  %".203" = load i8, i8* %"register0x00000200"
  %".204" = load i8, i8* %"register0x00000200"
  %".205" = xor i8 %".203", %".204"
  %".206" = trunc i8 %".205" to i1
  br i1 %".206", label %"f", label %"10"
f:
  %".208" = load i32, i32* %"register0x00000000"
  %".209" = mul i32 %".208", 4
  %".210" = add i32 %".209", 134559896
  %".211" = call i32 @"unique0x00000f30"()
  %".212" = load i32, i32* %"uVar3"
  ret i32 %".212"
"10":
  %".214" = load i32, i32* %"in_stack_ffbf6f0c"
  %".215" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134560318, i32 %".214")
  br label %"d"
}

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

define i8 @"method.IoManager.readline_unsigned_long"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"bVar2" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999983
  %"var_dh" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000000" = alloca i8
  %".12" = alloca i32
  %".13" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  br label %"0"
"0":
  store i32 0, i32* %"var_18h"
  %".18" = load i32, i32* %".13"
  %".19" = icmp eq i32 %".18", 0
  %".20" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".19", i1* %".20"
  %".22" = load i8, i8* %"register0x00000206"
  %".23" = trunc i8 %".22" to i1
  br i1 %".23", label %"1", label %"2"
"1":
  %".25" = load i32, i32* %".12"
  %".26" = add i32 %".25", 12
  store i32 %".26", i32* %"var_28h"
  br label %"3"
"2":
  %".29" = load i32, i32* %".13"
  store i32 %".29", i32* %"var_28h"
  br label %"3"
"3":
  %".32" = load i32, i32* %".12"
  %".33" = add i32 %".32", 16
  br label %"4"
"4":
  %".35" = load i32, i32* %"var_18h"
  %".36" = load i32, i32* %"var_28h"
  %".37" = icmp ult i32 %".35", %".36"
  %".38" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".37", i1* %".38"
  store i8 0, i8* %"bVar2"
  %".41" = load i8, i8* %"register0x00000200"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"5", label %"7"
"5":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".45" = load i32, i32* %".12"
  %".46" = add i32 %".45", 4
  %".47" = inttoptr i32 %".46" to i8*
  %".48" = load i8, i8* %".47"
  %".49" = load i32, i32* %".12"
  %".50" = add i32 %".49", 8
  %".51" = inttoptr i32 %".50" to i8*
  %".52" = load i8, i8* %".51"
  %".53" = load i32, i32* %"var_18h"
  %".54" = zext i8 %".52" to i32
  %".55" = add i32 %".54", %".53"
  store i32 %".55", i32* %"register0x0000001c"
  %".57" = load i32, i32* %"register0x0000001c"
  call void @"sym.imp.cgc_receive"()
  %".59" = load i32, i32* %"iVar1"
  %".60" = icmp eq i32 %".59", 0
  %".61" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".60", i1* %".61"
  store i8 0, i8* %"bVar2"
  %".64" = load i8, i8* %"register0x00000206"
  %".65" = trunc i8 %".64" to i1
  br i1 %".65", label %"6", label %"7"
"6":
  %".67" = load i32, i32* %"var_14h"
  %".68" = icmp eq i32 %".67", 1
  %".69" = bitcast i8* %"bVar2" to i1*
  store i1 %".68", i1* %".69"
  br label %"7"
"7":
  %".72" = load i8, i8* %"bVar2"
  %".73" = xor i8 %".72", -1
  %".74" = trunc i8 %".73" to i1
  br i1 %".74", label %"a", label %"8"
"8":
  %".76" = load i32, i32* %".12"
  %".77" = add i32 %".76", 8
  %".78" = inttoptr i32 %".77" to i8*
  %".79" = load i8, i8* %".78"
  %".80" = load i32, i32* %"var_18h"
  %".81" = zext i8 %".79" to i32
  %".82" = add i32 %".81", %".80"
  %".83" = zext i8 10 to i32
  %".84" = icmp eq i32 %".82", %".83"
  %".85" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".84", i1* %".85"
  %".87" = load i8, i8* %"register0x00000206"
  %".88" = trunc i8 %".87" to i1
  br i1 %".88", label %"9", label %"f"
"9":
  %".90" = load i32, i32* %".12"
  %".91" = add i32 %".90", 8
  %".92" = inttoptr i32 %".91" to i8*
  %".93" = load i8, i8* %".92"
  %".94" = load i32, i32* %"var_18h"
  %".95" = zext i8 %".93" to i32
  %".96" = add i32 %".95", %".94"
  br label %"a"
a:
  %".98" = load i32, i32* %"var_18h"
  %".99" = icmp eq i32 %".98", 0
  %".100" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".99", i1* %".100"
  %".102" = load i8, i8* %"register0x00000206"
  %".103" = trunc i8 %".102" to i1
  br i1 %".103", label %"c", label %"b"
b:
  %".105" = load i32, i32* %"var_18h"
  %".106" = load i32, i32* %"var_28h"
  %".107" = icmp eq i32 %".105", %".106"
  %".108" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".107", i1* %".108"
  %".110" = load i8, i8* %"register0x00000206"
  %".111" = trunc i8 %".110" to i1
  br i1 %".111", label %"c", label %"d"
c:
  %".113" = getelementptr i32, i32* %"var_dh", i8 0
  %".114" = bitcast i32* %".113" to i8*
  store i8 0, i8* %".114"
  br label %"e"
d:
  %".117" = load i32, i32* %".12"
  %".118" = add i32 %".117", 16
  %".119" = inttoptr i32 %".118" to i8*
  %".120" = load i32, i32* %"var_18h"
  %".121" = getelementptr i32, i32* %"var_dh", i8 0
  %".122" = bitcast i32* %".121" to i8*
  store i8 1, i8* %".122"
  br label %"e"
e:
  %".125" = load i32, i32* %"var_dh"
  %".126" = bitcast i8* %"register0x00000000" to i32*
  store i32 %".125", i32* %".126"
  %".128" = load i8, i8* %"register0x00000000"
  ret i8 %".128"
f:
  %".130" = load i32, i32* %"var_18h"
  %".131" = add i32 %".130", 1
  store i32 %".131", i32* %"var_18h"
  br label %"4"
}

declare void @"sym.imp.cgc_receive"() 

define void @"sym.print_banner"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"in_stack_ffffffec" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_bp_4h" = bitcast i8* %".4" to i32*
  br label %"0"
"0":
  %".6" = load i32, i32* %"in_stack_ffffffec"
  %".7" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134559924, i32 %".6")
  ret void
}

define void @"method.IoManager.IoManager_unsigned_long"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".6" to i32*
  %".7" = alloca i32
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  store i32 %"arg_ch", i32* %".8"
  br label %"0"
"0":
  %".12" = load i32, i32* %".7"
  %".13" = load i32, i32* %".7"
  %".14" = add i32 %".13", 12
  %".15" = load i32, i32* %".8"
  %".16" = load i32, i32* %".7"
  %".17" = add i32 %".16", 16
  %".18" = load i32, i32* %".7"
  %".19" = add i32 %".18", 12
  call void @"sym.imp.operator_new___unsigned_int"()
  %".21" = load i32, i32* %".7"
  %".22" = add i32 %".21", 8
  %".23" = load i32, i32* %"uVar1"
  %".24" = load i32, i32* %".7"
  %".25" = add i32 %".24", 4
  ret void
}

define void @"sym.imp.operator_new___unsigned_int"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.operator_new___unsigned_int"()
  ret void
}

define void @"method.OrderIoManager.OrderIoManager"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %"register0x00000004" = alloca i32
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  call void @"method.IoManager.IoManager_unsigned_long"(i32 %".9", i32 512)
  %".11" = load i32, i32* %".6"
  %".12" = load i32, i32* %".6"
  %".13" = add i32 %".12", 20
  store i32 %".13", i32* %"register0x00000004"
  %".15" = load i32, i32* %"register0x00000004"
  call void @"method.List_Order_.List"(i32 %".15")
  ret void
}

define void @"method.List_Order_.List"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  br label %"0"
"0":
  %".11" = load i32, i32* %".8"
  %".12" = add i32 %".11", 4231168
  store i32 %".12", i32* %"register0x00000008"
  %".14" = load i32, i32* %".8"
  store i32 %".14", i32* %"var_14h"
  br label %"1"
"1":
  %".17" = load i32, i32* %"var_14h"
  call void @"method.Order.Order"(i32 %".17")
  %".19" = load i32, i32* %"var_14h"
  %".20" = add i32 %".19", 4132
  store i32 %".20", i32* %"var_14h"
  %".22" = load i32, i32* %"var_14h"
  %".23" = load i32, i32* %"register0x00000008"
  %".24" = icmp ne i32 %".22", %".23"
  %".25" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".24", i1* %".25"
  %".27" = load i8, i8* %"register0x00000206"
  %".28" = trunc i8 %".27" to i1
  br i1 %".28", label %"1", label %"2"
"2":
  %".30" = load i32, i32* %".8"
  %".31" = add i32 %".30", 4231168
  ret void
}

define void @"method.Order.Order"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %"register0x00000004" = alloca i32
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 32
  store i32 %".8", i32* %"register0x00000004"
  %".10" = load i32, i32* %"register0x00000004"
  call void @"method.List_Pizza__.List"(i32 %".10")
  ret void
}

define void @"method.List_Pizza__.List"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 4096
  ret void
}

define i32 @"method.IoManager.get_last_input"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  %".10" = add i32 %".9", 16
  %".11" = icmp eq i32 %".10", 0
  %".12" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".11", i1* %".12"
  %".14" = load i8, i8* %"register0x00000206"
  %".15" = trunc i8 %".14" to i1
  br i1 %".15", label %"1", label %"2"
"1":
  store i32 0, i32* %"var_ch"
  br label %"3"
"2":
  %".19" = load i32, i32* %".6"
  %".20" = add i32 %".19", 8
  store i32 %".20", i32* %"var_ch"
  br label %"3"
"3":
  %".23" = load i32, i32* %"var_ch"
  store i32 %".23", i32* %"register0x00000000"
  %".25" = load i32, i32* %"register0x00000000"
  ret i32 %".25"
}

define void @"sym.OrderIoManager::_OrderIoManager"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %"register0x00000004" = alloca i32
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  %".8" = load i32, i32* %".5"
  %".9" = load i32, i32* %".5"
  %".10" = add i32 %".9", 20
  store i32 %".10", i32* %"register0x00000004"
  %".12" = load i32, i32* %"register0x00000004"
  call void @"method.List_Order_._List"(i32 %".12")
  %".14" = load i32, i32* %".5"
  call void @"method.IoManager._IoManager"(i32 %".14")
  ret void
}

define void @"method.List_Order_._List"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000206" = alloca i8
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  %".10" = load i32, i32* %".7"
  %".11" = add i32 %".10", 4231168
  %".12" = load i32, i32* %".7"
  %".13" = add i32 %".12", 4231168
  store i32 %".13", i32* %"var_ch"
  br label %"1"
"1":
  %".16" = load i32, i32* %"var_ch"
  %".17" = add i32 %".16", -4132
  store i32 %".17", i32* %"var_ch"
  %".19" = load i32, i32* %"var_ch"
  call void @"method.Order._Order"(i32 %".19")
  %".21" = load i32, i32* %"var_ch"
  %".22" = load i32, i32* %".7"
  %".23" = icmp ne i32 %".21", %".22"
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"1", label %"2"
"2":
  ret void
}

define void @"method.Order._Order"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %"register0x00000004" = alloca i32
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 32
  store i32 %".8", i32* %"register0x00000004"
  %".10" = load i32, i32* %"register0x00000004"
  call void @"method.List_Pizza__._List"(i32 %".10")
  ret void
}

define void @"method.List_Pizza__._List"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 4096
  ret void
}

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define void @"method.IoManager._IoManager"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %".6" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  br label %"0"
"0":
  %".9" = load i32, i32* %".6"
  %".10" = load i32, i32* %".6"
  %".11" = add i32 %".10", 8
  %".12" = icmp ne i32 %".11", 0
  %".13" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000206"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"1", label %"2"
"1":
  call void @"sym.imp.operator_delete_void"()
  br label %"2"
"2":
  %".20" = load i32, i32* %".6"
  %".21" = add i32 %".20", 12
  %".22" = load i32, i32* %".6"
  %".23" = add i32 %".22", 16
  ret void
}

define void @"sym.imp.operator_delete_void"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.operator_delete_void"()
  ret void
}

define i32 @"method.IoManager.readnum_unsigned_long"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"bVar2" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".13" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x0000001c" = alloca i32
  %"register0x00000000" = alloca i32
  %".14" = alloca i32
  %".15" = alloca i32
  store i32 %"arg_8h", i32* %".14"
  store i32 %"arg_ch", i32* %".15"
  br label %"0"
"0":
  store i32 0, i32* %"var_18h"
  %".20" = load i32, i32* %".15"
  %".21" = icmp eq i32 %".20", 0
  %".22" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".21", i1* %".22"
  %".24" = load i8, i8* %"register0x00000206"
  %".25" = trunc i8 %".24" to i1
  br i1 %".25", label %"1", label %"2"
"1":
  %".27" = load i32, i32* %".14"
  %".28" = add i32 %".27", 12
  store i32 %".28", i32* %"var_28h"
  br label %"3"
"2":
  %".31" = load i32, i32* %".15"
  store i32 %".31", i32* %"var_28h"
  br label %"3"
"3":
  %".34" = load i32, i32* %".14"
  %".35" = add i32 %".34", 16
  br label %"4"
"4":
  %".37" = load i32, i32* %"var_18h"
  %".38" = load i32, i32* %"var_28h"
  %".39" = icmp ult i32 %".37", %".38"
  %".40" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".39", i1* %".40"
  store i8 0, i8* %"bVar2"
  %".43" = load i8, i8* %"register0x00000200"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"5", label %"7"
"5":
  %".46" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %".47" = load i32, i32* %".14"
  %".48" = add i32 %".47", 4
  %".49" = inttoptr i32 %".48" to i8*
  %".50" = load i8, i8* %".49"
  %".51" = load i32, i32* %".14"
  %".52" = add i32 %".51", 8
  %".53" = inttoptr i32 %".52" to i8*
  %".54" = load i8, i8* %".53"
  %".55" = load i32, i32* %"var_18h"
  %".56" = zext i8 %".54" to i32
  %".57" = add i32 %".56", %".55"
  store i32 %".57", i32* %"register0x0000001c"
  %".59" = load i32, i32* %"register0x0000001c"
  call void @"sym.imp.cgc_receive"()
  %".61" = load i32, i32* %"iVar1"
  %".62" = icmp eq i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  store i8 0, i8* %"bVar2"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"6", label %"7"
"6":
  %".69" = load i32, i32* %"var_14h"
  %".70" = icmp eq i32 %".69", 1
  %".71" = bitcast i8* %"bVar2" to i1*
  store i1 %".70", i1* %".71"
  br label %"7"
"7":
  %".74" = load i8, i8* %"bVar2"
  %".75" = xor i8 %".74", -1
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"b", label %"8"
"8":
  %".78" = load i32, i32* %".14"
  %".79" = add i32 %".78", 8
  %".80" = inttoptr i32 %".79" to i8*
  %".81" = load i8, i8* %".80"
  %".82" = load i32, i32* %"var_18h"
  %".83" = zext i8 %".81" to i32
  %".84" = add i32 %".83", %".82"
  %".85" = zext i8 48 to i32
  %".86" = icmp slt i32 %".84", %".85"
  br i1 %".86", label %"a", label %"9"
"9":
  %".88" = load i32, i32* %".14"
  %".89" = add i32 %".88", 8
  %".90" = inttoptr i32 %".89" to i8*
  %".91" = load i8, i8* %".90"
  %".92" = load i32, i32* %"var_18h"
  %".93" = zext i8 %".91" to i32
  %".94" = add i32 %".93", %".92"
  %".95" = zext i8 57 to i32
  %".96" = icmp slt i32 %".95", %".94"
  br i1 %".96", label %"a", label %"10"
a:
  %".98" = load i32, i32* %".14"
  %".99" = add i32 %".98", 8
  %".100" = inttoptr i32 %".99" to i8*
  %".101" = load i8, i8* %".100"
  %".102" = load i32, i32* %"var_18h"
  %".103" = zext i8 %".101" to i32
  %".104" = add i32 %".103", %".102"
  br label %"b"
b:
  %".106" = load i32, i32* %"var_18h"
  %".107" = icmp eq i32 %".106", 0
  %".108" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".107", i1* %".108"
  %".110" = load i8, i8* %"register0x00000206"
  %".111" = trunc i8 %".110" to i1
  br i1 %".111", label %"d", label %"c"
c:
  %".113" = load i32, i32* %"var_18h"
  %".114" = load i32, i32* %"var_28h"
  %".115" = icmp eq i32 %".113", %".114"
  %".116" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".115", i1* %".116"
  %".118" = load i8, i8* %"register0x00000206"
  %".119" = trunc i8 %".118" to i1
  br i1 %".119", label %"d", label %"e"
d:
  store i32 0, i32* %"var_10h"
  br label %"f"
e:
  %".123" = load i32, i32* %".14"
  %".124" = add i32 %".123", 16
  %".125" = inttoptr i32 %".124" to i8*
  %".126" = load i32, i32* %"var_18h"
  %".127" = load i32, i32* %".14"
  %".128" = add i32 %".127", 8
  %".129" = call i32 @"sym.cgc_strtol"(i32 %".128", i32 0, i32 10)
  store i32 %".129", i32* %"var_10h"
  br label %"f"
f:
  %".132" = load i32, i32* %"var_10h"
  store i32 %".132", i32* %"register0x00000000"
  %".134" = load i32, i32* %"register0x00000000"
  ret i32 %".134"
"10":
  %".136" = load i32, i32* %"var_18h"
  %".137" = add i32 %".136", 1
  store i32 %".137", i32* %"var_18h"
  br label %"4"
}

declare i32 @"unique0x00000f30"() 

declare void @"_reloc.operator_new___unsigned_int"() 

declare void @"_reloc.operator_delete_void"() 
