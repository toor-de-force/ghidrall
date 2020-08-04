; ModuleID = "A_Game_of_Chance_1_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.deck" = global i32 0
@"obj.remaining" = global i32 0
@"obj.last" = global i32 0
@"obj.init_heap_done" = global i8 0
@"obj.OK" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".10" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".11" = alloca i8**
  %".12" = alloca i32**
  store i8** %"argv", i8*** %".11"
  store i32** %"envp", i32*** %".12"
  br label %"0"
"0":
  call void @"sym.gen_ok"()
  br label %"1"
"1":
  %".18" = call i32 @"sym.process"()
  store i32 %".18", i32* %"iVar1"
  %".20" = ptrtoint i64* @"obj.OK" to i32
  %".21" = call i32 @"sym.send_bytes"(i32 1, i32 %".20", i32 8)
  store i32 %".21", i32* %"iVar2"
  %".23" = load i32, i32* %"iVar2"
  %".24" = icmp ne i32 %".23", 8
  %".25" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".24", i1* %".25"
  %".27" = load i8, i8* %"register0x00000206"
  %".28" = trunc i8 %".27" to i1
  br i1 %".28", label %"2", label %"3"
"2":
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"3":
  %".32" = load i32, i32* %"iVar1"
  %".33" = icmp eq i32 %".32", 0
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"1", label %"4"
"4":
  store i32 0, i32* %"register0x00000000"
  %".40" = load i32, i32* %"register0x00000000"
  ret i32 %".40"
}

define void @"sym.gen_ok"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000004" = alloca i32
  %"register0x00000008" = alloca i8
  br label %"0"
"0":
  store i32 0, i32* %"var_ch"
  br label %"1"
"1":
  %".7" = load i32, i32* %"var_ch"
  %".8" = icmp ult i32 %".7", 4096
  %".9" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".8", i1* %".9"
  %".11" = load i8, i8* %"register0x00000200"
  %".12" = trunc i8 %".11" to i1
  br i1 %".12", label %"3", label %"2"
"2":
  ret void
"3":
  %".15" = load i32, i32* %"var_ch"
  %".16" = add i32 %".15", 1128775680
  %".17" = load i32, i32* %"var_ch"
  %".18" = and i32 %".17", 7
  store i32 %".18", i32* %"register0x00000004"
  %".20" = load i32, i32* %"register0x00000004"
  %".21" = mul i32 %".20", 8
  %".22" = getelementptr inbounds i64, i64* @"obj.OK", i32 %".21"
  %".23" = bitcast i64* %".22" to i32*
  %".24" = load i32, i32* %".23"
  %".25" = trunc i32 %".24" to i8
  %".26" = trunc i32 %".24" to i8
  %".27" = xor i8 %".25", %".26"
  store i8 %".27", i8* %"register0x00000008"
  %".29" = load i32, i32* %"register0x00000004"
  %".30" = mul i32 %".29", 8
  %".31" = getelementptr inbounds i64, i64* @"obj.OK", i32 %".30"
  %".32" = bitcast i64* %".31" to i32*
  %".33" = load i8, i8* %"register0x00000008"
  %".34" = load i32, i32* %"var_ch"
  %".35" = add i32 %".34", 1
  store i32 %".35", i32* %"var_ch"
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

define i32 @"sym.send_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %".12" = alloca i32
  %".13" = alloca i32
  %".14" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".13"
  %".20" = icmp eq i32 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i8, i8* %"register0x00000206"
  %".24" = trunc i8 %".23" to i1
  br i1 %".24", label %"2", label %"1"
"1":
  %".26" = load i32, i32* %".14"
  %".27" = icmp eq i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  store i32 -9, i32* %"var_8h"
  br label %"a"
"3":
  store i32 0, i32* %"var_ch"
  store i32 0, i32* %"var_10h"
  %".37" = load i32, i32* %".13"
  store i32 %".37", i32* %"var_14h"
  br label %"4"
"4":
  %".40" = load i32, i32* %"var_10h"
  %".41" = load i32, i32* %".14"
  %".42" = icmp ult i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000200"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"5", label %"9"
"5":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".49" = load i32, i32* %".14"
  %".50" = load i32, i32* %"var_10h"
  %".51" = sub i32 %".49", %".50"
  store i32 %".51", i32* %"register0x00000018"
  %".53" = load i32, i32* %".12"
  %".54" = load i32, i32* %"var_14h"
  %".55" = load i32, i32* %"register0x00000018"
  call void @"sym.imp.cgc_transmit"()
  %".57" = load i32, i32* %"iVar1"
  %".58" = icmp ne i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"6", label %"7"
"6":
  store i32 -9, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  ret i32 %".65"
"7":
  %".67" = load i32, i32* %"var_ch"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"9", label %"8"
"8":
  %".74" = load i32, i32* %"var_ch"
  %".75" = load i32, i32* %"var_10h"
  %".76" = add i32 %".74", %".75"
  store i32 %".76", i32* %"var_10h"
  %".78" = load i32, i32* %"var_ch"
  %".79" = load i32, i32* %"var_14h"
  %".80" = add i32 %".78", %".79"
  store i32 %".80", i32* %"var_14h"
  br label %"4"
"9":
  %".83" = load i32, i32* %"var_10h"
  store i32 %".83", i32* %"var_8h"
  br label %"a"
a:
  %".86" = load i32, i32* %"var_8h"
  store i32 %".86", i32* %"register0x00000000"
  %".88" = load i32, i32* %"register0x00000000"
  ret i32 %".88"
}

declare void @"sym.imp.cgc_transmit"() 

define i32 @"sym.process"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  %"var_13h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999981
  %"var_fh" = bitcast i8* %".9" to i24*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".12" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999977
  store i32 -2, i32* %"var_ch"
  call void @"sym.imp.memset"()
  %".15" = ptrtoint i8* %".12" to i32
  %".16" = call i32 @"sym.recv_bytes"(i32 0, i32 %".15", i32 6)
  store i32 %".16", i32* %"iVar1"
  %".18" = load i32, i32* %"iVar1"
  %".19" = icmp slt i32 %".18", 0
  br i1 %".19", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".23" = load i32, i32* %"var_13h"
  %".24" = zext i8 33 to i32
  %".25" = icmp eq i32 %".23", %".24"
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"d", label %"3"
"3":
  %".31" = load i32, i32* %"var_13h"
  %".32" = zext i8 95 to i32
  %".33" = icmp eq i32 %".31", %".32"
  %".34" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".33", i1* %".34"
  %".36" = load i8, i8* %"register0x00000206"
  %".37" = trunc i8 %".36" to i1
  br i1 %".37", label %"c", label %"4"
"4":
  %".39" = load i32, i32* %"var_13h"
  %".40" = zext i8 60 to i32
  %".41" = icmp eq i32 %".39", %".40"
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"b", label %"5"
"5":
  %".47" = load i32, i32* %"var_13h"
  %".48" = zext i8 66 to i32
  %".49" = icmp eq i32 %".47", %".48"
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"a", label %"6"
"6":
  %".55" = load i24, i24* %"var_fh"
  %".56" = zext i8 99 to i24
  %".57" = icmp eq i24 %".55", %".56"
  %".58" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".57", i1* %".58"
  %".60" = load i8, i8* %"register0x00000206"
  %".61" = trunc i8 %".60" to i1
  br i1 %".61", label %"9", label %"7"
"7":
  %".63" = load i24, i24* %"var_fh"
  %".64" = zext i8 81 to i24
  %".65" = icmp eq i24 %".63", %".64"
  %".66" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".65", i1* %".66"
  %".68" = load i8, i8* %"register0x00000206"
  %".69" = trunc i8 %".68" to i1
  br i1 %".69", label %"e", label %"8"
"8":
  store i32 -1, i32* %"var_ch"
  br label %"e"
"9":
  %".73" = call i32 @"sym.get_player_count"()
  store i32 %".73", i32* %"var_ch"
  br label %"e"
a:
  %".76" = call i32 @"sym.cgc_get_balances"()
  store i32 %".76", i32* %"var_ch"
  br label %"e"
b:
  %".79" = call i32 @"sym.get_round_data"()
  store i32 %".79", i32* %"var_ch"
  br label %"e"
c:
  %".82" = call i32 @"sym.deal_one_round"()
  store i32 %".82", i32* %"var_ch"
  br label %"e"
d:
  %".85" = call i32 @"sym.new_deck"()
  store i32 %".85", i32* %"var_ch"
  br label %"e"
e:
  %".88" = load i32, i32* %"var_ch"
  %".89" = icmp slt i32 %".88", 0
  br i1 %".89", label %"f", label %"10"
f:
  %".91" = load i32, i32* %"var_ch"
  %".92" = call i32 @"sym.quit"(i32 %".91")
  br label %"10"
"10":
  %".94" = load i32, i32* %"var_ch"
  store i32 %".94", i32* %"register0x00000000"
  %".96" = load i32, i32* %"register0x00000000"
  ret i32 %".96"
}

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

define i32 @"sym.new_deck"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"uVar3" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".10" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".12" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %".13" = ptrtoint i8* %".12" to i32
  %".14" = call i32 @"sym.recv_bytes"(i32 0, i32 %".13", i32 4)
  store i32 %".14", i32* %"iVar1"
  %".16" = load i32, i32* %"iVar1"
  %".17" = icmp slt i32 %".16", 0
  br i1 %".17", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".21" = load i32, i32* %"var_4h"
  %".22" = call i32 @"sym.malloc"(i32 %".21")
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp eq i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".33" = load i32, i32* %"iVar1"
  %".34" = load i32, i32* %"var_4h"
  %".35" = call i32 @"sym.recv_bytes"(i32 0, i32 %".33", i32 %".34")
  store i32 %".35", i32* %"iVar2"
  %".37" = load i32, i32* %"iVar2"
  %".38" = icmp slt i32 %".37", 0
  br i1 %".38", label %"5", label %"6"
"5":
  call void @"sym.imp.cgc__terminate"()
  br label %"6"
"6":
  %".42" = load i32, i32* %"var_4h"
  %".43" = load i32, i32* %"iVar1"
  %".44" = call i32 @"sym.replace_deck"(i32 %".42", i32 %".43")
  store i32 %".44", i32* %"uVar3"
  %".46" = load i32, i32* %"uVar3"
  store i32 %".46", i32* %"register0x00000000"
  %".48" = load i32, i32* %"register0x00000000"
  ret i32 %".48"
}

define i32 @"sym.replace_deck"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".8" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %".9" = alloca i32
  %".10" = alloca i32
  store i32 %"arg_8h", i32* %".9"
  store i32 %"arg_ch", i32* %".10"
  br label %"0"
"0":
  %".14" = load i32, i32* @"obj.deck"
  %".15" = icmp ne i32 %".14", 0
  %".16" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".15", i1* %".16"
  %".18" = load i8, i8* %"register0x00000206"
  %".19" = trunc i8 %".18" to i1
  br i1 %".19", label %"1", label %"2"
"1":
  %".21" = load i32, i32* @"obj.deck"
  call void @"sym.free"(i32 %".21")
  br label %"2"
"2":
  %".24" = load i32, i32* %".9"
  %".25" = icmp eq i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"b", label %"3"
"3":
  %".31" = load i32, i32* %".9"
  %".32" = add i32 %".31", 4
  store i32 %".32", i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  %".35" = call i32 @"sym.malloc"(i32 %".34")
  %".36" = inttoptr i32 %".35" to i32*
  %".37" = bitcast i32* @"obj.deck" to i32**
  store i32* %".36", i32** %".37"
  %".39" = load i32, i32* @"obj.deck"
  %".40" = icmp eq i32 %".39", 0
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"4", label %"5"
"4":
  %".46" = load i32, i32* %".9"
  %".47" = load i32, i32* %".10"
  call void @"sym.imp.cgc__terminate"()
  br label %"5"
"5":
  %".50" = load i32, i32* %".9"
  store i32 %".50", i32* @"obj.deck"
  store i32 0, i32* %"var_8h"
  br label %"6"
"6":
  %".54" = load i32, i32* %"var_8h"
  %".55" = load i32, i32* %".9"
  %".56" = icmp ult i32 %".54", %".55"
  %".57" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000200"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"7", label %"a"
"7":
  %".62" = load i32, i32* %".10"
  %".63" = load i32, i32* %"var_8h"
  %".64" = add i32 %".62", %".63"
  %".65" = trunc i32 %".64" to i8
  %".66" = zext i8 %".65" to i32
  store i32 %".66", i32* %"register0x00000000"
  %".68" = load i32, i32* %"register0x00000000"
  %".69" = call i8 @"sym.is_valid_value"(i32 %".68")
  store i8 %".69", i8* %"cVar1"
  %".71" = load i8, i8* %"cVar1"
  %".72" = icmp eq i8 %".71", 0
  %".73" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".72", i1* %".73"
  %".75" = load i8, i8* %"register0x00000206"
  %".76" = trunc i8 %".75" to i1
  br i1 %".76", label %"8", label %"9"
"8":
  store i32 -1, i32* %"register0x00000000"
  %".79" = load i32, i32* %"register0x00000000"
  ret i32 %".79"
"9":
  %".81" = load i32, i32* %".10"
  %".82" = load i32, i32* %"var_8h"
  %".83" = add i32 %".81", %".82"
  %".84" = load i32, i32* %"var_8h"
  %".85" = add i32 %".84", 4
  %".86" = load i32, i32* @"obj.deck"
  %".87" = add i32 %".86", %".85"
  %".88" = load i32, i32* %"var_8h"
  %".89" = add i32 %".88", 1
  store i32 %".89", i32* %"var_8h"
  br label %"6"
a:
  store i32 0, i32* %"var_4h"
  br label %"c"
b:
  store i32 -1, i32* %"var_4h"
  br label %"c"
c:
  %".96" = load i32, i32* %"var_4h"
  store i32 %".96", i32* %"register0x00000000"
  %".98" = load i32, i32* %"register0x00000000"
  ret i32 %".98"
}

define i8 @"sym.is_valid_value"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999994
  %"var_2h" = bitcast i8* %".3" to i32*
  %"register0x00000000" = alloca i8
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = zext i8 2 to i32
  %".9" = icmp ult i32 %".7", %".8"
  br i1 %".9", label %"3", label %"1"
"1":
  %".11" = load i32, i32* %".4"
  %".12" = zext i8 10 to i32
  %".13" = icmp ult i32 %".12", %".11"
  br i1 %".13", label %"3", label %"2"
"2":
  %".15" = getelementptr i32, i32* %"var_2h", i8 8
  %".16" = bitcast i32* %".15" to i8*
  store i8 1, i8* %".16"
  br label %"4"
"3":
  %".19" = getelementptr i32, i32* %"var_2h", i8 8
  %".20" = bitcast i32* %".19" to i8*
  store i8 0, i8* %".20"
  br label %"4"
"4":
  %".23" = load i32, i32* %"var_2h"
  %".24" = bitcast i8* %"register0x00000000" to i32*
  store i32 %".23", i32* %".24"
  %".26" = load i8, i8* %"register0x00000000"
  ret i8 %".26"
}

define void @"sym.free"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_bp_4h" = bitcast i8* %".3" to i32*
  %"register0x00000008" = alloca i32
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", -12
  store i32 %".8", i32* %"register0x00000008"
  %".10" = ptrtoint i32* @"0x804d19c" to i32
  %".11" = load i32, i32* %"register0x00000008"
  call void @"sym.list_remove_node"(i32 %".10", i32 %".11")
  %".13" = ptrtoint i32* @"0x804d1b0" to i32
  %".14" = load i32, i32* %"register0x00000008"
  call void @"sym.list_insert_node_at_end"(i32 %".13", i32 %".14")
  ret void
}

define void @"sym.list_insert_node_at_end"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h_00" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".6" to i32*
  %"register0x00000004" = alloca i32
  %".7" = alloca i32
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  store i32 %"arg_ch", i32* %".8"
  br label %"0"
"0":
  %".12" = load i32, i32* %".7"
  %".13" = call i32 @"sym.list_end_marker"(i32 %".12")
  store i32 %".13", i32* %"arg_8h_00"
  %".15" = load i32, i32* %"arg_8h_00"
  %".16" = load i32, i32* %".8"
  call void @"sym.list_insert_before_node"(i32 %".15", i32 %".16")
  %".18" = load i32, i32* %".7"
  %".19" = add i32 %".18", 1
  store i32 %".19", i32* %"register0x00000004"
  %".21" = load i32, i32* %".7"
  %".22" = load i32, i32* %"register0x00000004"
  ret void
}

define void @"sym.list_insert_before_node"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = alloca i32
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  store i32 %"arg_ch", i32* %".7"
  br label %"0"
"0":
  %".11" = load i32, i32* %".7"
  %".12" = add i32 %".11", 4
  %".13" = load i32, i32* %".6"
  %".14" = load i32, i32* %".6"
  %".15" = add i32 %".14", 8
  %".16" = load i32, i32* %".7"
  %".17" = add i32 %".16", 8
  %".18" = load i32, i32* %".7"
  %".19" = add i32 %".18", 8
  %".20" = add i32 %".19", 4
  %".21" = load i32, i32* %".7"
  %".22" = load i32, i32* %".7"
  %".23" = add i32 %".22", 4
  %".24" = add i32 %".23", 8
  %".25" = load i32, i32* %".7"
  ret void
}

define i32 @"sym.list_end_marker"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".3" to i32*
  %"register0x00000004" = alloca i32
  %"register0x00000000" = alloca i32
  %".4" = alloca i32
  store i32 %"arg_8h", i32* %".4"
  br label %"0"
"0":
  %".7" = load i32, i32* %".4"
  %".8" = add i32 %".7", 4
  store i32 %".8", i32* %"register0x00000004"
  %".10" = load i32, i32* %"register0x00000004"
  store i32 %".10", i32* %"register0x00000000"
  %".12" = load i32, i32* %"register0x00000000"
  ret i32 %".12"
}

define void @"sym.list_remove_node"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %"register0x00000018" = alloca i32
  %".8" = alloca i32
  %".9" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  store i32 %"arg_ch", i32* %".9"
  br label %"0"
"0":
  %".13" = load i32, i32* %".9"
  %".14" = add i32 %".13", 8
  store i32 %".14", i32* %"iVar1"
  %".16" = load i32, i32* %".9"
  %".17" = add i32 %".16", 4
  store i32 %".17", i32* %"iVar2"
  %".19" = load i32, i32* %"iVar1"
  %".20" = add i32 %".19", 4
  %".21" = load i32, i32* %"iVar2"
  %".22" = load i32, i32* %"iVar2"
  %".23" = add i32 %".22", 8
  %".24" = load i32, i32* %"iVar1"
  %".25" = load i32, i32* %".9"
  %".26" = add i32 %".25", 8
  %".27" = load i32, i32* %".9"
  %".28" = add i32 %".27", 4
  %".29" = load i32, i32* %".8"
  %".30" = add i32 %".29", -1
  store i32 %".30", i32* %"register0x00000018"
  %".32" = load i32, i32* %".8"
  %".33" = load i32, i32* %"register0x00000018"
  ret void
}

define i32 @"sym.malloc"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_10h" = alloca i32
  %"iVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_bp_4h" = bitcast i8* %".6" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i32
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".7"
  br label %"0"
"0":
  %".10" = load i32, i32* %".7"
  %".11" = icmp eq i32 %".10", 0
  %".12" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".11", i1* %".12"
  %".14" = load i8, i8* %"register0x00000206"
  %".15" = trunc i8 %".14" to i1
  br i1 %".15", label %"e", label %"1"
"1":
  %".17" = load i32, i32* %".7"
  %".18" = add i32 %".17", 12
  store i32 %".18", i32* %"arg_10h"
  store i32 0, i32* %"var_8h"
  call void @"sym.init_heap"()
  %".22" = ptrtoint i32* @"0x804d1b0" to i32
  %".23" = ptrtoint i32* @"0x804a990" to i32
  %".24" = load i32, i32* %"arg_10h"
  %".25" = call i32 @"sym.cgc_list_find_node_with_data"(i32 %".22", i32 %".23", i32 %".24")
  store i32 %".25", i32* %"var_8h"
  %".27" = load i32, i32* %"var_8h"
  %".28" = icmp eq i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"2", label %"c"
"2":
  %".34" = load i32, i32* @"obj.remaining"
  %".35" = load i32, i32* %"arg_10h"
  %".36" = icmp ult i32 %".34", %".35"
  br i1 %".36", label %"3", label %"a"
"3":
  %".38" = load i32, i32* @"obj.remaining"
  %".39" = icmp ult i32 12, %".38"
  br i1 %".39", label %"4", label %"5"
"4":
  %".41" = load i32, i32* @"obj.last"
  %".42" = load i32, i32* @"obj.remaining"
  call void @"sym.set_block_size"(i32 %".41", i32 %".42")
  %".44" = ptrtoint i32* @"0x804d1b0" to i32
  %".45" = load i32, i32* @"obj.last"
  call void @"sym.list_insert_node_at_end"(i32 %".44", i32 %".45")
  store i32 0, i32* @"obj.last"
  store i32 0, i32* @"obj.remaining"
  br label %"5"
"5":
  %".50" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".51" = load i32, i32* %"arg_10h"
  call void @"sym.imp.cgc_allocate"()
  %".53" = load i32, i32* %"iVar1"
  %".54" = icmp ne i32 %".53", 0
  %".55" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".54", i1* %".55"
  %".57" = load i8, i8* %"register0x00000206"
  %".58" = trunc i8 %".57" to i1
  br i1 %".58", label %"6", label %"7"
"6":
  store i32 0, i32* %"register0x00000000"
  %".61" = load i32, i32* %"register0x00000000"
  ret i32 %".61"
"7":
  %".63" = load i32, i32* %"arg_10h"
  %".64" = and i32 %".63", 4095
  store i32 %".64", i32* %"register0x00000004"
  %".66" = load i32, i32* %"register0x00000004"
  %".67" = icmp eq i32 %".66", 0
  %".68" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".67", i1* %".68"
  %".70" = load i8, i8* %"register0x00000206"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"9", label %"8"
"8":
  %".73" = load i32, i32* %"arg_10h"
  %".74" = and i32 %".73", 4095
  store i32 %".74", i32* %"register0x00000004"
  %".76" = load i32, i32* %"register0x00000004"
  %".77" = sub i32 4096, %".76"
  store i32 %".77", i32* @"obj.remaining"
  br label %"b"
"9":
  store i32 0, i32* @"obj.remaining"
  br label %"b"
a:
  %".82" = load i32, i32* @"obj.last"
  store i32 %".82", i32* %"var_8h"
  %".84" = load i32, i32* @"obj.remaining"
  %".85" = load i32, i32* %"arg_10h"
  %".86" = sub i32 %".84", %".85"
  store i32 %".86", i32* @"obj.remaining"
  br label %"b"
b:
  %".89" = load i32, i32* %"var_8h"
  %".90" = load i32, i32* %"arg_10h"
  call void @"sym.set_block_size"(i32 %".89", i32 %".90")
  %".92" = load i32, i32* %"var_8h"
  %".93" = load i32, i32* %"arg_10h"
  %".94" = add i32 %".92", %".93"
  store i32 %".94", i32* @"obj.last"
  br label %"d"
c:
  %".97" = ptrtoint i32* @"0x804d1b0" to i32
  %".98" = load i32, i32* %"var_8h"
  call void @"sym.list_remove_node"(i32 %".97", i32 %".98")
  br label %"d"
d:
  %".101" = ptrtoint i32* @"0x804d19c" to i32
  %".102" = load i32, i32* %"var_8h"
  call void @"sym.list_insert_node_at_end"(i32 %".101", i32 %".102")
  %".104" = load i32, i32* %"var_8h"
  %".105" = add i32 %".104", 12
  store i32 %".105", i32* %"var_bp_4h"
  br label %"f"
e:
  store i32 0, i32* %"var_bp_4h"
  br label %"f"
f:
  %".110" = load i32, i32* %"var_bp_4h"
  store i32 %".110", i32* %"register0x00000000"
  %".112" = load i32, i32* %"register0x00000000"
  ret i32 %".112"
}

declare void @"sym.imp.cgc_allocate"() 

define void @"sym.set_block_size"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %".6" = alloca i32
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  store i32 %"arg_ch", i32* %".7"
  br label %"0"
"0":
  %".11" = load i32, i32* %".6"
  %".12" = load i32, i32* %".7"
  ret void
}

define void @"sym.init_heap"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_bp_4h" = bitcast i8* %".3" to i32*
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  %".5" = load i8, i8* @"obj.init_heap_done"
  %".6" = icmp eq i8 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  %".12" = ptrtoint i32* @"0x804d19c" to i32
  call void @"sym.list_init"(i32 %".12", i32 0)
  %".14" = ptrtoint i32* @"0x804d1b0" to i32
  call void @"sym.list_init"(i32 %".14", i32 0)
  store i8 1, i8* @"obj.init_heap_done"
  br label %"2"
"2":
  ret void
}

define void @"sym.list_init"(i32 %"arg_8h", i32 %"arg_ch") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".5" to i32*
  %"register0x00000008" = alloca i32
  %".6" = alloca i32
  %".7" = alloca i32
  store i32 %"arg_8h", i32* %".6"
  store i32 %"arg_ch", i32* %".7"
  br label %"0"
"0":
  %".11" = load i32, i32* %".6"
  %".12" = load i32, i32* %".6"
  %".13" = add i32 %".12", 4
  %".14" = load i32, i32* %".6"
  %".15" = add i32 %".14", 4
  store i32 %".15", i32* %"register0x00000008"
  %".17" = load i32, i32* %".6"
  %".18" = add i32 %".17", 8
  %".19" = load i32, i32* %"register0x00000008"
  %".20" = load i32, i32* %".6"
  %".21" = add i32 %".20", 4
  store i32 %".21", i32* %"register0x00000008"
  %".23" = load i32, i32* %".6"
  %".24" = add i32 %".23", 12
  %".25" = load i32, i32* %"register0x00000008"
  %".26" = load i32, i32* %".6"
  %".27" = add i32 %".26", 16
  %".28" = load i32, i32* %".7"
  ret void
}

declare i32 @"sym.cgc_list_find_node_with_data"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

define i32 @"sym.list_head_node"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  %".8" = load i32, i32* %".5"
  %".9" = add i32 %".8", 4
  store i32 %".9", i32* %"register0x00000004"
  %".11" = load i32, i32* %".5"
  %".12" = add i32 %".11", 8
  %".13" = load i32, i32* %"register0x00000004"
  %".14" = icmp eq i32 %".13", %".12"
  %".15" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".14", i1* %".15"
  %".17" = load i8, i8* %"register0x00000206"
  %".18" = trunc i8 %".17" to i1
  br i1 %".18", label %"2", label %"1"
"1":
  %".20" = load i32, i32* %".5"
  %".21" = add i32 %".20", 8
  store i32 %".21", i32* %"var_4h"
  br label %"3"
"2":
  store i32 0, i32* %"var_4h"
  br label %"3"
"3":
  %".26" = load i32, i32* %"var_4h"
  store i32 %".26", i32* %"register0x00000000"
  %".28" = load i32, i32* %"register0x00000000"
  ret i32 %".28"
}

define i32 @"sym.recv_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %".12" = alloca i32
  %".13" = alloca i32
  %".14" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".13"
  %".20" = icmp eq i32 %".19", 0
  %".21" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".20", i1* %".21"
  %".23" = load i8, i8* %"register0x00000206"
  %".24" = trunc i8 %".23" to i1
  br i1 %".24", label %"2", label %"1"
"1":
  %".26" = load i32, i32* %".14"
  %".27" = icmp eq i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  store i32 -11, i32* %"var_8h"
  br label %"a"
"3":
  store i32 0, i32* %"var_ch"
  store i32 0, i32* %"var_10h"
  %".37" = load i32, i32* %".13"
  store i32 %".37", i32* %"var_14h"
  br label %"4"
"4":
  %".40" = load i32, i32* %"var_ch"
  %".41" = load i32, i32* %".14"
  %".42" = icmp ult i32 %".40", %".41"
  %".43" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000200"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"5", label %"9"
"5":
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".49" = load i32, i32* %".14"
  %".50" = load i32, i32* %"var_10h"
  %".51" = sub i32 %".49", %".50"
  store i32 %".51", i32* %"register0x00000018"
  %".53" = load i32, i32* %".12"
  %".54" = load i32, i32* %"var_14h"
  %".55" = load i32, i32* %"register0x00000018"
  call void @"sym.imp.cgc_receive"()
  %".57" = load i32, i32* %"iVar1"
  %".58" = icmp ne i32 %".57", 0
  %".59" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".58", i1* %".59"
  %".61" = load i8, i8* %"register0x00000206"
  %".62" = trunc i8 %".61" to i1
  br i1 %".62", label %"6", label %"7"
"6":
  store i32 -11, i32* %"register0x00000000"
  %".65" = load i32, i32* %"register0x00000000"
  ret i32 %".65"
"7":
  %".67" = load i32, i32* %"var_ch"
  %".68" = icmp eq i32 %".67", 0
  %".69" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".68", i1* %".69"
  %".71" = load i8, i8* %"register0x00000206"
  %".72" = trunc i8 %".71" to i1
  br i1 %".72", label %"9", label %"8"
"8":
  %".74" = load i32, i32* %"var_ch"
  %".75" = load i32, i32* %"var_10h"
  %".76" = add i32 %".74", %".75"
  store i32 %".76", i32* %"var_10h"
  %".78" = load i32, i32* %"var_ch"
  %".79" = load i32, i32* %"var_14h"
  %".80" = add i32 %".78", %".79"
  store i32 %".80", i32* %"var_14h"
  br label %"4"
"9":
  %".83" = load i32, i32* %"var_10h"
  store i32 %".83", i32* %"var_8h"
  br label %"a"
a:
  %".86" = load i32, i32* %"var_8h"
  store i32 %".86", i32* %"register0x00000000"
  %".88" = load i32, i32* %"register0x00000000"
  ret i32 %".88"
}

declare void @"sym.imp.cgc_receive"() 

define i32 @"sym.deal_one_round"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"puVar2" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999888
  %"var_6ch" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".3" to i32*
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
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".23" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000018" = alloca i32
  %"register0x00000000" = alloca i32
  %"register0x00000008" = alloca i32
  br label %"0"
"0":
  store i32 0, i32* %"var_10h"
  %".26" = call i32 @"sym.get_deck_size"()
  store i32 %".26", i32* %"uVar1"
  %".28" = load i32, i32* %"uVar1"
  %".29" = icmp ult i32 %".28", 10
  br i1 %".29", label %"23", label %"1"
"1":
  store i32 1, i32* %"var_14h"
  br label %"2"
"2":
  %".33" = load i32, i32* %"var_14h"
  %".34" = icmp ult i32 %".33", 6
  br i1 %".34", label %"22", label %"3"
"3":
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".37" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  call void @"sym.imp.memset"()
  call void @"sym.imp.memset"()
  store i32 1, i32* %"var_2ch"
  br label %"4"
"4":
  %".42" = load i32, i32* %"var_2ch"
  %".43" = icmp ult i32 %".42", 6
  br i1 %".43", label %"21", label %"5"
"5":
  store i32 1, i32* %"var_30h"
  br label %"6"
"6":
  %".47" = load i32, i32* %"var_30h"
  %".48" = icmp ult i32 %".47", 6
  br i1 %".48", label %"20", label %"7"
"7":
  store i32 1, i32* %"var_34h"
  br label %"8"
"8":
  %".52" = load i32, i32* %"var_34h"
  %".53" = icmp ult i32 %".52", 6
  br i1 %".53", label %"1f", label %"9"
"9":
  store i32 1, i32* %"var_38h"
  br label %"a"
a:
  %".57" = load i32, i32* %"var_38h"
  %".58" = icmp ult i32 %".57", 6
  br i1 %".58", label %"1e", label %"b"
b:
  store i32 1, i32* %"var_3ch"
  br label %"c"
c:
  %".62" = load i32, i32* %"var_3ch"
  %".63" = icmp ult i32 %".62", 6
  br i1 %".63", label %"1d", label %"d"
d:
  store i32 1, i32* %"var_40h"
  br label %"e"
e:
  %".67" = load i32, i32* %"var_40h"
  %".68" = icmp ult i32 %".67", 6
  br i1 %".68", label %"1c", label %"f"
f:
  %".70" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".71" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".72" = ptrtoint i8* %".71" to i32
  %".73" = ptrtoint i8* %".71" to i32
  call void @"sym.calculate_results"(i32 %".72", i32 %".73", i32 5)
  store i32 1, i32* %"var_44h"
  br label %"10"
"10":
  %".77" = load i32, i32* %"var_44h"
  %".78" = icmp ult i32 %".77", 6
  br i1 %".78", label %"1b", label %"11"
"11":
  store i32 1, i32* %"var_48h"
  br label %"12"
"12":
  %".82" = load i32, i32* %"var_48h"
  %".83" = icmp ult i32 %".82", 6
  br i1 %".83", label %"17", label %"13"
"13":
  store i32 1, i32* %"var_4ch"
  br label %"14"
"14":
  %".87" = load i32, i32* %"var_4ch"
  %".88" = icmp ult i32 %".87", 6
  br i1 %".88", label %"16", label %"15"
"15":
  %".90" = load i32, i32* %"var_10h"
  store i32 %".90", i32* %"var_ch"
  br label %"24"
"16":
  %".93" = load i32, i32* %"var_4ch"
  call void @"sym.cgc_end_round"(i32 %".93")
  %".95" = load i32, i32* %"var_4ch"
  %".96" = add i32 %".95", 1
  store i32 %".96", i32* %"var_4ch"
  br label %"14"
"17":
  %".99" = load i32, i32* %"var_48h"
  %".100" = mul i32 %".99", 4
  %".101" = mul i32 %".100", 8
  %".102" = getelementptr inbounds i32, i32* @"0x804d148", i32 %".101"
  %".103" = ptrtoint i32* %".102" to i32
  %".104" = icmp eq i32 %".103", 1
  %".105" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".104", i1* %".105"
  %".107" = load i8, i8* %"register0x00000206"
  %".108" = trunc i8 %".107" to i1
  br i1 %".108", label %"19", label %"18"
"18":
  %".110" = load i32, i32* %"var_48h"
  %".111" = mul i32 %".110", 4
  %".112" = mul i32 %".111", 8
  %".113" = getelementptr inbounds i32, i32* @"0x804d160", i32 %".112"
  %".114" = ptrtoint i32* %".113" to i32
  %".115" = load i32, i32* %"var_48h"
  %".116" = mul i32 %".115", 4
  %".117" = mul i32 %".116", 8
  %".118" = getelementptr inbounds i32, i32* @"0x804d178", i32 %".117"
  %".119" = ptrtoint i32* %".118" to i32
  %".120" = sub i32 %".119", %".119"
  store i32 %".120", i32* %"register0x00000018"
  %".122" = load i32, i32* %"var_48h"
  %".123" = mul i32 %".122", 4
  %".124" = mul i32 %".123", 8
  %".125" = getelementptr inbounds i32, i32* @"0x804d178", i32 %".124"
  %".126" = ptrtoint i32* %".125" to i32
  %".127" = load i32, i32* %"register0x00000018"
  %".128" = load i32, i32* %"var_48h"
  %".129" = mul i32 %".128", 4
  %".130" = mul i32 %".129", 8
  %".131" = getelementptr inbounds i32, i32* @"0x804d160", i32 %".130"
  %".132" = ptrtoint i32* %".131" to i32
  %".133" = sub i32 0, %".132"
  %".134" = load i32, i32* %"var_48h"
  call void @"sym.cgc_pay_player"(i32 %".134", i32 %".133")
  br label %"1a"
"19":
  %".137" = load i32, i32* %"var_48h"
  %".138" = mul i32 %".137", 4
  %".139" = mul i32 %".138", 8
  %".140" = getelementptr inbounds i32, i32* @"0x804d160", i32 %".139"
  %".141" = ptrtoint i32* %".140" to i32
  %".142" = load i32, i32* %"var_48h"
  %".143" = mul i32 %".142", 4
  %".144" = mul i32 %".143", 8
  %".145" = getelementptr inbounds i32, i32* @"0x804d178", i32 %".144"
  %".146" = ptrtoint i32* %".145" to i32
  %".147" = add i32 %".146", %".146"
  store i32 %".147", i32* %"register0x00000000"
  %".149" = load i32, i32* %"var_48h"
  %".150" = mul i32 %".149", 4
  %".151" = mul i32 %".150", 8
  %".152" = getelementptr inbounds i32, i32* @"0x804d178", i32 %".151"
  %".153" = ptrtoint i32* %".152" to i32
  %".154" = load i32, i32* %"register0x00000000"
  %".155" = load i32, i32* %"var_48h"
  %".156" = mul i32 %".155", 4
  %".157" = mul i32 %".156", 8
  %".158" = getelementptr inbounds i32, i32* @"0x804d160", i32 %".157"
  %".159" = ptrtoint i32* %".158" to i32
  %".160" = load i32, i32* %"var_48h"
  call void @"sym.cgc_pay_player"(i32 %".160", i32 %".159")
  br label %"1a"
"1a":
  %".163" = load i32, i32* %"var_48h"
  %".164" = add i32 %".163", 1
  store i32 %".164", i32* %"var_48h"
  br label %"12"
"1b":
  %".167" = load i32, i32* %"var_44h"
  call void @"sym.show_results_to_player"(i32 %".167")
  %".169" = load i32, i32* %"var_44h"
  %".170" = add i32 %".169", 1
  store i32 %".170", i32* %"var_44h"
  br label %"10"
"1c":
  %".173" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".174" = ptrtoint i8* %".173" to i32
  %".175" = load i32, i32* %"var_40h"
  call void @"sym.show_dealt_cards_to_player"(i32 %".175", i32 %".174", i32 6)
  %".177" = load i32, i32* %"var_40h"
  %".178" = add i32 %".177", 1
  store i32 %".178", i32* %"var_40h"
  br label %"e"
"1d":
  %".181" = call i32 @"sym.get_next_card"()
  %".182" = inttoptr i32 %".181" to i32*
  %".183" = bitcast i32* %"puVar2" to i32**
  store i32* %".182", i32** %".183"
  %".185" = load i32, i32* %"puVar2"
  %".186" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".187" = ptrtoint i8* %".186" to i32
  %".188" = load i32, i32* %"var_3ch"
  %".189" = add i32 %".187", %".188"
  %".190" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".191" = ptrtoint i8* %".190" to i32
  %".192" = load i32, i32* %"var_3ch"
  %".193" = add i32 %".191", %".192"
  store i32 %".193", i32* %"register0x00000008"
  %".195" = load i32, i32* %"var_3ch"
  %".196" = load i32, i32* %"register0x00000008"
  call void @"sym.cgc_deal_card_to_player"(i32 %".195", i32 %".196", i32 2)
  %".198" = load i32, i32* %"var_3ch"
  %".199" = add i32 %".198", 1
  store i32 %".199", i32* %"var_3ch"
  br label %"c"
"1e":
  %".202" = load i32, i32* %"var_38h"
  call void @"sym.show_wagers_to_player"(i32 %".202")
  %".204" = load i32, i32* %"var_38h"
  %".205" = add i32 %".204", 1
  store i32 %".205", i32* %"var_38h"
  br label %"a"
"1f":
  %".208" = load i32, i32* %"var_34h"
  call void @"sym.cgc_get_wager_from_player"(i32 %".208")
  %".210" = load i32, i32* %"var_34h"
  %".211" = add i32 %".210", 1
  store i32 %".211", i32* %"var_34h"
  br label %"8"
"20":
  %".214" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".215" = ptrtoint i8* %".214" to i32
  %".216" = load i32, i32* %"var_30h"
  call void @"sym.show_dealt_cards_to_player"(i32 %".216", i32 %".215", i32 6)
  %".218" = load i32, i32* %"var_30h"
  %".219" = add i32 %".218", 1
  store i32 %".219", i32* %"var_30h"
  br label %"6"
"21":
  %".222" = call i32 @"sym.get_next_card"()
  %".223" = inttoptr i32 %".222" to i32*
  %".224" = bitcast i32* %"puVar2" to i32**
  store i32* %".223", i32** %".224"
  %".226" = load i32, i32* %"puVar2"
  %".227" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".228" = ptrtoint i8* %".227" to i32
  %".229" = load i32, i32* %"var_2ch"
  %".230" = add i32 %".228", %".229"
  %".231" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".232" = ptrtoint i8* %".231" to i32
  %".233" = load i32, i32* %"var_2ch"
  %".234" = add i32 %".232", %".233"
  store i32 %".234", i32* %"register0x00000008"
  %".236" = load i32, i32* %"var_2ch"
  %".237" = load i32, i32* %"register0x00000008"
  call void @"sym.cgc_deal_card_to_player"(i32 %".236", i32 %".237", i32 1)
  %".239" = load i32, i32* %"var_2ch"
  %".240" = add i32 %".239", 1
  store i32 %".240", i32* %"var_2ch"
  br label %"4"
"22":
  %".243" = load i32, i32* %"var_14h"
  call void @"sym.cgc_start_round"(i32 %".243")
  %".245" = load i32, i32* %"var_14h"
  %".246" = add i32 %".245", 1
  store i32 %".246", i32* %"var_14h"
  br label %"2"
"23":
  store i32 -1, i32* %"var_ch"
  br label %"24"
"24":
  %".251" = load i32, i32* %"var_ch"
  store i32 %".251", i32* %"register0x00000000"
  %".253" = load i32, i32* %"register0x00000000"
  ret i32 %".253"
}

define void @"sym.show_dealt_cards_to_player"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %".12" = alloca i32
  %".13" = alloca i32
  %".14" = alloca i32
  store i32 %"arg_8h", i32* %".12"
  store i32 %"arg_ch", i32* %".13"
  store i32 %"arg_10h", i32* %".14"
  br label %"0"
"0":
  %".19" = load i32, i32* %".12"
  %".20" = mul i32 %".19", 2
  store i32 %".20", i32* %"register0x00000008"
  %".22" = load i32, i32* %"register0x00000008"
  %".23" = add i32 %".22", 3
  store i32 %".23", i32* %"register0x00000008"
  %".25" = ptrtoint i32* @"0x804cd42" to i32
  %".26" = load i32, i32* %"register0x00000008"
  %".27" = call i32 @"sym.send_bytes"(i32 %".26", i32 %".25", i32 6)
  store i32 %".27", i32* %"iVar1"
  %".29" = load i32, i32* %"iVar1"
  %".30" = icmp ne i32 %".29", 6
  %".31" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".30", i1* %".31"
  %".33" = load i8, i8* %"register0x00000206"
  %".34" = trunc i8 %".33" to i1
  br i1 %".34", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".38" = load i32, i32* %".12"
  %".39" = mul i32 %".38", 2
  store i32 %".39", i32* %"register0x00000004"
  %".41" = load i32, i32* %"register0x00000004"
  %".42" = add i32 %".41", 3
  store i32 %".42", i32* %"register0x00000004"
  %".44" = load i32, i32* %"register0x00000004"
  %".45" = load i32, i32* %".13"
  %".46" = load i32, i32* %".14"
  %".47" = call i32 @"sym.send_bytes"(i32 %".44", i32 %".45", i32 %".46")
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %".14"
  %".50" = load i32, i32* %"iVar1"
  %".51" = icmp ne i32 %".49", %".50"
  %".52" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".51", i1* %".52"
  %".54" = load i8, i8* %"register0x00000206"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  ret void
}

define void @"sym.show_wagers_to_player"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  br label %"0"
"0":
  %".11" = load i32, i32* %".8"
  %".12" = mul i32 %".11", 2
  store i32 %".12", i32* %"register0x00000008"
  %".14" = load i32, i32* %"register0x00000008"
  %".15" = add i32 %".14", 3
  store i32 %".15", i32* %"register0x00000008"
  %".17" = ptrtoint i32* @"0x804cd4e" to i32
  %".18" = load i32, i32* %"register0x00000008"
  %".19" = call i32 @"sym.send_bytes"(i32 %".18", i32 %".17", i32 6)
  store i32 %".19", i32* %"iVar1"
  %".21" = load i32, i32* %"iVar1"
  %".22" = icmp ne i32 %".21", 6
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".30" = load i32, i32* %".8"
  %".31" = mul i32 %".30", 2
  store i32 %".31", i32* %"register0x00000008"
  %".33" = load i32, i32* %"register0x00000008"
  %".34" = add i32 %".33", 3
  store i32 %".34", i32* %"register0x00000008"
  %".36" = ptrtoint i32* @"0x804d160" to i32
  %".37" = load i32, i32* %"register0x00000008"
  %".38" = call i32 @"sym.send_bytes"(i32 %".37", i32 %".36", i32 24)
  store i32 %".38", i32* %"iVar1"
  %".40" = load i32, i32* %"iVar1"
  %".41" = icmp ne i32 %".40", 24
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  ret void
}

define void @"sym.show_results_to_player"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".7" to i32*
  %"register0x00000008" = alloca i32
  %"register0x00000206" = alloca i8
  %".8" = alloca i32
  store i32 %"arg_8h", i32* %".8"
  br label %"0"
"0":
  %".11" = load i32, i32* %".8"
  %".12" = mul i32 %".11", 2
  store i32 %".12", i32* %"register0x00000008"
  %".14" = load i32, i32* %"register0x00000008"
  %".15" = add i32 %".14", 3
  store i32 %".15", i32* %"register0x00000008"
  %".17" = ptrtoint i32* @"0x804cd54" to i32
  %".18" = load i32, i32* %"register0x00000008"
  %".19" = call i32 @"sym.send_bytes"(i32 %".18", i32 %".17", i32 6)
  store i32 %".19", i32* %"iVar1"
  %".21" = load i32, i32* %"iVar1"
  %".22" = icmp ne i32 %".21", 6
  %".23" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".22", i1* %".23"
  %".25" = load i8, i8* %"register0x00000206"
  %".26" = trunc i8 %".25" to i1
  br i1 %".26", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".30" = load i32, i32* %".8"
  %".31" = mul i32 %".30", 2
  store i32 %".31", i32* %"register0x00000008"
  %".33" = load i32, i32* %"register0x00000008"
  %".34" = add i32 %".33", 3
  store i32 %".34", i32* %"register0x00000008"
  %".36" = ptrtoint i32* @"0x804d148" to i32
  %".37" = load i32, i32* %"register0x00000008"
  %".38" = call i32 @"sym.send_bytes"(i32 %".37", i32 %".36", i32 24)
  store i32 %".38", i32* %"iVar1"
  %".40" = load i32, i32* %"iVar1"
  %".41" = icmp ne i32 %".40", 24
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  ret void
}

declare void @"sym.cgc_pay_player"(i32 %"arg_8h", i32 %"arg_ch") 

define void @"sym.calculate_results"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999951
  %"var_2dh" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %"var_22h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999982
  %"var_eh" = bitcast i8* %".12" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000004" = alloca i16
  %".13" = alloca i32
  %".14" = alloca i32
  %".15" = alloca i32
  store i32 %"arg_8h", i32* %".13"
  store i32 %"arg_ch", i32* %".14"
  store i32 %"arg_10h", i32* %".15"
  br label %"0"
"0":
  %".20" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %".21" = getelementptr i32, i32* %"var_eh", i16 0
  %".22" = bitcast i32* %".21" to i16*
  store i16 0, i16* %".22"
  call void @"sym.imp.memset"()
  store i32 1, i32* %"var_28h"
  br label %"1"
"1":
  %".27" = load i32, i32* %"var_28h"
  %".28" = icmp ult i32 %".27", 6
  br i1 %".28", label %"9", label %"2"
"2":
  br label %"3"
"3":
  %".31" = icmp ult i32 1, 6
  br i1 %".31", label %"5", label %"4"
"4":
  ret void
"5":
  %".34" = mul i32 1, 2
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %".36" = ptrtoint i8* %".35" to i32
  %".37" = add i32 %".36", %".34"
  %".38" = load i32, i32* %"var_eh"
  %".39" = icmp eq i32 %".38", %".37"
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"6", label %"7"
"6":
  %".45" = mul i32 1, 4
  %".46" = mul i32 %".45", 8
  %".47" = getelementptr inbounds i32, i32* @"0x804d148", i32 %".46"
  %".48" = ptrtoint i32* %".47" to i32
  br label %"8"
"7":
  %".50" = mul i32 1, 4
  %".51" = mul i32 %".50", 8
  %".52" = getelementptr inbounds i32, i32* @"0x804d148", i32 %".51"
  %".53" = ptrtoint i32* %".52" to i32
  br label %"8"
"8":
  %".55" = add i32 1, 1
  store i32 %".55", i32* %"register0x00000000"
  br label %"3"
"9":
  %".58" = load i32, i32* %".13"
  %".59" = load i32, i32* %"var_28h"
  %".60" = add i32 %".58", %".59"
  %".61" = trunc i32 %".60" to i8
  %".62" = zext i8 %".61" to i32
  store i32 %".62", i32* %"register0x00000000"
  %".64" = load i32, i32* %".14"
  %".65" = load i32, i32* %"var_28h"
  %".66" = add i32 %".64", %".65"
  %".67" = trunc i32 %".66" to i8
  %".68" = zext i8 %".67" to i16
  store i16 %".68", i16* %"register0x00000004"
  %".70" = load i32, i32* %"register0x00000000"
  %".71" = load i16, i16* %"register0x00000004"
  %".72" = zext i16 %".71" to i32
  %".73" = add i32 %".70", %".72"
  store i32 %".73", i32* %"register0x00000000"
  %".75" = load i32, i32* %"var_28h"
  %".76" = mul i32 %".75", 2
  %".77" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %".78" = ptrtoint i8* %".77" to i32
  %".79" = add i32 %".78", %".76"
  %".80" = load i32, i32* %"register0x00000000"
  %".81" = load i32, i32* %"var_28h"
  %".82" = mul i32 %".81", 2
  %".83" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %".84" = ptrtoint i8* %".83" to i32
  %".85" = add i32 %".84", %".82"
  %".86" = load i32, i32* %"var_eh"
  %".87" = icmp ult i32 %".86", %".85"
  br i1 %".87", label %"a", label %"b"
a:
  %".89" = load i32, i32* %"var_28h"
  %".90" = mul i32 %".89", 2
  %".91" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999962
  %".92" = ptrtoint i8* %".91" to i32
  %".93" = add i32 %".92", %".90"
  %".94" = getelementptr i32, i32* %"var_eh", i16 0
  %".95" = bitcast i32* %".94" to i16*
  %".96" = bitcast i16* %".95" to i32*
  store i32 %".93", i32* %".96"
  br label %"b"
b:
  %".99" = load i32, i32* %"var_28h"
  %".100" = add i32 %".99", 1
  store i32 %".100", i32* %"var_28h"
  br label %"1"
}

declare void @"sym.cgc_end_round"(i32 %"arg_8h") 

declare void @"sym.cgc_deal_card_to_player"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_start_round"(i32 %"arg_8h") 

define i32 @"sym.get_next_card"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"piVar2" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".2" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000008" = alloca i32
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".4" = load i32, i32* @"obj.deck"
  store i32 %".4", i32* %"piVar2"
  store i32 0, i32* %"var_4h"
  %".7" = load i32, i32* @"obj.deck"
  %".8" = icmp ne i32 %".7", 0
  %".9" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".8", i1* %".9"
  %".11" = load i8, i8* %"register0x00000206"
  %".12" = trunc i8 %".11" to i1
  br i1 %".12", label %"1", label %"3"
"1":
  %".14" = load i32, i32* @"obj.deck"
  %".15" = icmp ne i32 %".14", 0
  %".16" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".15", i1* %".16"
  %".18" = load i8, i8* %"register0x00000200"
  %".19" = trunc i8 %".18" to i1
  br i1 %".19", label %"2", label %"3"
"2":
  %".21" = load i32, i32* @"obj.deck"
  store i32 %".21", i32* %"iVar1"
  %".23" = load i32, i32* %"iVar1"
  %".24" = add i32 %".23", -1
  store i32 %".24", i32* %"register0x00000008"
  %".26" = load i32, i32* %"register0x00000008"
  store i32 %".26", i32* @"obj.deck"
  %".28" = load i32, i32* %"iVar1"
  %".29" = add i32 %".28", 3
  %".30" = load i32, i32* %"piVar2"
  %".31" = add i32 %".30", %".29"
  store i32 %".31", i32* %"var_4h"
  br label %"3"
"3":
  %".34" = load i32, i32* %"var_4h"
  store i32 %".34", i32* %"register0x00000000"
  %".36" = load i32, i32* %"register0x00000000"
  ret i32 %".36"
}

define i32 @"sym.get_deck_size"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".2" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".4" = load i32, i32* @"obj.deck"
  %".5" = icmp eq i32 %".4", 0
  %".6" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".5", i1* %".6"
  %".8" = load i8, i8* %"register0x00000206"
  %".9" = trunc i8 %".8" to i1
  br i1 %".9", label %"2", label %"1"
"1":
  %".11" = load i32, i32* @"obj.deck"
  store i32 %".11", i32* %"var_4h"
  br label %"3"
"2":
  store i32 0, i32* %"var_4h"
  br label %"3"
"3":
  %".16" = load i32, i32* %"var_4h"
  store i32 %".16", i32* %"register0x00000000"
  %".18" = load i32, i32* %"register0x00000000"
  ret i32 %".18"
}

declare void @"sym.cgc_get_wager_from_player"(i32 %"arg_8h") 

define i32 @"sym.quit"(i32 %"arg_8h") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".4" to i32*
  %"register0x00000000" = alloca i32
  %".5" = alloca i32
  store i32 %"arg_8h", i32* %".5"
  br label %"0"
"0":
  store i32 1, i32* %"var_4h"
  br label %"1"
"1":
  %".10" = load i32, i32* %"var_4h"
  %".11" = icmp ult i32 %".10", 6
  br i1 %".11", label %"3", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".14" = load i32, i32* %"register0x00000000"
  ret i32 %".14"
"3":
  %".16" = load i32, i32* %"var_4h"
  call void @"sym.cgc_player_quit"(i32 %".16")
  %".18" = load i32, i32* %"var_4h"
  %".19" = add i32 %".18", 1
  store i32 %".19", i32* %"var_4h"
  br label %"1"
}

declare void @"sym.cgc_player_quit"(i32 %"arg_8h") 

define i32 @"sym.get_round_data"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_bp_4h" = bitcast i8* %".7" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".9" = ptrtoint i32* @"0x804d160" to i32
  %".10" = call i32 @"sym.send_bytes"(i32 1, i32 %".9", i32 24)
  store i32 %".10", i32* %"iVar1"
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp ne i32 %".12", 24
  %".14" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".13", i1* %".14"
  %".16" = load i8, i8* %"register0x00000206"
  %".17" = trunc i8 %".16" to i1
  br i1 %".17", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".21" = ptrtoint i32* @"0x804d148" to i32
  %".22" = call i32 @"sym.send_bytes"(i32 1, i32 %".21", i32 24)
  store i32 %".22", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp ne i32 %".24", 24
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  store i32 0, i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  ret i32 %".34"
}

define i32 @"sym.get_player_count"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".2" to i32*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_bp_8h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".7" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  store i32 5, i32* %"var_4h"
  %".9" = ptrtoint i8* %".7" to i32
  %".10" = call i32 @"sym.send_bytes"(i32 1, i32 %".9", i32 4)
  store i32 %".10", i32* %"iVar1"
  %".12" = load i32, i32* %"iVar1"
  %".13" = icmp ne i32 %".12", 4
  %".14" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".13", i1* %".14"
  %".16" = load i8, i8* %"register0x00000206"
  %".17" = trunc i8 %".16" to i1
  br i1 %".17", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".22" = load i32, i32* %"register0x00000000"
  ret i32 %".22"
}

declare i32 @"sym.cgc_get_balances"() 

declare void @"_reloc.memset"() 

@"0x804d19c" = external global i32
@"0x804d1b0" = external global i32
@"0x804a990" = external global i32
@"0x804d148" = external global i32
@"0x804d160" = external global i32
@"0x804d178" = external global i32
@"0x804cd42" = external global i32
@"0x804cd4e" = external global i32
@"0x804cd54" = external global i32