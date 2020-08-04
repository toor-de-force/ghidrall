; ModuleID = "Mixology_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.malloc_array" = global i32 0
@"obj.STRTOK" = global i32 0
@"str.Welcome_to_the_new_chemical_discovery_service" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_ch" = alloca i32
  %"uVar1" = alloca i32
  %"pcVar2" = alloca i32
  %"iVar3" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".20" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000200" = alloca i8
  %"register0x00000004" = alloca i32
  %".21" = alloca i8**
  %".22" = alloca i32**
  store i8** %"argv", i8*** %".21"
  store i32** %"envp", i32*** %".22"
  br label %"0"
"0":
  %".26" = call i32 @"sym.cgc_malloc_init"()
  %".27" = load i32, i32* %"var_8h"
  %".28" = icmp ne i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"1", label %"2"
"1":
  %".34" = load i32, i32* %"var_8h"
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  call void @"sym.cgc_transmit_line_nl"(i32 134631028)
  br label %"3"
"3":
  %".39" = call i32 @"sym.cgc_calloc"(i32 1, i32 4096)
  store i32 %".39", i32* %"arg_ch"
  %".41" = load i32, i32* %"arg_ch"
  %".42" = icmp eq i32 %".41", 0
  %".43" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".42", i1* %".43"
  %".45" = load i8, i8* %"register0x00000206"
  %".46" = trunc i8 %".45" to i1
  br i1 %".46", label %"3", label %"4"
"4":
  %".48" = load i32, i32* %"arg_ch"
  %".49" = call i32 @"sym.cgc_read_ascii_line"(i32 0, i32 %".48", i32 4096)
  store i32 %".49", i32* %"uVar1"
  %".51" = load i32, i32* %"uVar1"
  %".52" = icmp ult i32 2, %".51"
  %".53" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".52", i1* %".53"
  %".55" = load i8, i8* %"register0x00000200"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"5", label %"c"
"5":
  %".58" = load i32, i32* %"arg_ch"
  %".59" = call i32 @"sym.cgc_get_command_from_input"(i32 %".58")
  %".60" = inttoptr i32 %".59" to i32*
  %".61" = bitcast i32* %"pcVar2" to i32**
  store i32* %".60", i32** %".61"
  %".63" = load i32, i32* %"pcVar2"
  %".64" = icmp eq i32 %".63", 0
  %".65" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".64", i1* %".65"
  %".67" = load i8, i8* %"register0x00000206"
  %".68" = trunc i8 %".67" to i1
  br i1 %".68", label %"6", label %"7"
"6":
  call void @"sym.imp.cgc__terminate"()
  br label %"7"
"7":
  %".72" = load i32, i32* %"arg_ch"
  %".73" = call i32 @"sym.cgc_strlen"(i32 %".72")
  store i32 %".73", i32* %"iVar3"
  %".75" = load i32, i32* %"iVar3"
  %".76" = icmp slt i32 4096, %".75"
  br i1 %".76", label %"8", label %"9"
"8":
  call void @"sym.imp.cgc__terminate"()
  br label %"9"
"9":
  %".80" = load i32, i32* %"arg_ch"
  %".81" = load i32, i32* %"iVar3"
  %".82" = add i32 %".80", %".81"
  store i32 %".82", i32* %"register0x00000004"
  %".84" = load i32, i32* %"register0x00000004"
  %".85" = add i32 %".84", 1
  store i32 %".85", i32* %"register0x00000004"
  %".87" = call i32 @"pcVar2"()
  %".88" = load i32, i32* %"iVar3"
  %".89" = icmp ne i32 %".88", 0
  %".90" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".89", i1* %".90"
  %".92" = load i8, i8* %"register0x00000206"
  %".93" = trunc i8 %".92" to i1
  br i1 %".93", label %"a", label %"b"
a:
  %".95" = load i32, i32* %"iVar3"
  call void @"sym.imp.cgc__terminate"()
  br label %"b"
b:
  %".98" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_free"(i32 %".98")
  br label %"3"
c:
  %".101" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_free"(i32 %".101")
  br label %"3"
}

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_malloc_init"() 

declare i32 @"sym.cgc_get_command_from_input"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare i32 @"sym.cgc_read_ascii_line"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_transmit_line_nl"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"pcVar2"() 
