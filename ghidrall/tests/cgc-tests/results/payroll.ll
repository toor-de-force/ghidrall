; ModuleID = "payroll"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.ERROR:_invalid_input" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847256
  %"var_254a4h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847268
  %"var_25498h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847272
  %"var_25494h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847276
  %"var_25490h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847280
  %"var_2548ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847284
  %"var_25488h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 996888
  %"var_c24h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 996892
  %"var_c20h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 996896
  %"var_c1ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 996900
  %"var_c18h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".19" to i32*
  %"register0x00000000" = alloca i32
  %"register0x00000200" = alloca i8
  %"register0x00000206" = alloca i8
  %"register0x00000000.1" = alloca i32*
  %".20" = alloca i8**
  %".21" = alloca i32**
  store i8** %"argv", i8*** %".20"
  store i32** %"envp", i32*** %".21"
  br label %"0"
"0":
  store i32 0, i32* %"var_ch"
  br label %"1"
"1":
  %".27" = load i32, i32* %"var_ch"
  %".28" = icmp slt i32 %".27", 50
  br i1 %".28", label %"6", label %"2"
"2":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 996900
  %".31" = ptrtoint i8* %".30" to i32
  call void @"sym.cgc_initialize_employee"(i32 %".31")
  br label %"3"
"3":
  %".34" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %".35" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %".37" = ptrtoint i8* %".36" to i32
  %".38" = ptrtoint i8* %".36" to i32
  %".39" = ptrtoint i8* %".36" to i32
  %".40" = call i32 @"sym.cgc_get_key_value"(i32 %".37", i32 80, i32 %".38", i32 %".39")
  store i32 %".40", i32* %"iVar1"
  %".42" = load i32, i32* %"iVar1"
  %".43" = add i32 %".42", 1
  store i32 %".43", i32* %"register0x00000000"
  %".45" = load i32, i32* %"register0x00000000"
  %".46" = icmp ult i32 %".45", 4
  %".47" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i32, i32* %"iVar1"
  %".50" = icmp eq i32 %".49", 3
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000200"
  %".54" = load i8, i8* %"register0x00000200"
  %".55" = xor i8 %".53", %".54"
  %".56" = trunc i8 %".55" to i1
  br i1 %".56", label %"5", label %"4"
"4":
  call void @"sym.cgc_print"(i32 134525000)
  call void @"sym.imp.cgc__terminate"()
  br label %"3"
"5":
  %".61" = load i32, i32* %"register0x00000000"
  %".62" = mul i32 %".61", 4
  %".63" = add i32 %".62", 134524928
  call void @"unique0x00000f30"()
  ret void
"6":
  %".66" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 847284
  %".67" = load i32, i32* %"var_ch"
  %".68" = mul i32 %".67", 748
  %".69" = mul i32 %".68", 32
  %".70" = getelementptr inbounds i8, i8* %".66", i32 %".69"
  %".71" = bitcast i8* %".70" to i32*
  store i32* %".71", i32** %"register0x00000000.1"
  %".73" = ptrtoint i32** %"register0x00000000.1" to i32
  call void @"sym.cgc_initialize_employee"(i32 %".73")
  %".75" = load i32, i32* %"var_ch"
  %".76" = add i32 %".75", 1
  store i32 %".76", i32* %"var_ch"
  br label %"1"
}

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.cgc_initialize_employee"(i32 %"arg_8h") 

declare void @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_get_key_value"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_receive_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_print"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"unique0x00000f30"() 
