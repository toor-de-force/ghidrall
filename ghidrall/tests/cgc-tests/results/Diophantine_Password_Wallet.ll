; ModuleID = "Diophantine_Password_Wallet"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.handlerTable" = external global i64
@"obj.userToPassword" = external global i64
@"str.First_Secret" = external global i64
@"str.Login" = external global i64
@"str.Login_failed" = external global i64
@"str.Second_Secret" = external global i64
@"str.Third_Secret" = external global i64
@"str.User_Not_Found" = external global i64
@"str.Welcome_to_the_Diophantine_Password_Wallet" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"uVar1" = alloca i32
  %"arg_ch" = alloca i32
  %"arg_ch_00" = alloca i32
  %"arg_ch_01" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999696
  %"var_12ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999700
  %"var_128h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999704
  %"var_124h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999708
  %"var_120h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999712
  %"var_11ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999716
  %"var_118h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999720
  %"var_114h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999724
  %"var_110h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999728
  %"var_10ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999732
  %"var_108h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999736
  %"var_104h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999740
  %"var_100h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999744
  %"var_fch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999748
  %"var_f8h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999752
  %"var_f4h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999756
  %"var_f0h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999760
  %"var_ech" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999764
  %"var_e8h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999768
  %"var_e4h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999772
  %"var_e0h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999776
  %"var_dch" = bitcast i8* %".24" to i32*
  %".25" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %"var_d8h" = bitcast i8* %".25" to i32*
  %".26" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999844
  %"var_98h" = bitcast i8* %".26" to i32*
  %".27" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999848
  %"var_94h" = bitcast i8* %".27" to i32*
  %".28" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999852
  %"var_90h" = bitcast i8* %".28" to i32*
  %".29" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999856
  %"var_8ch" = bitcast i8* %".29" to i32*
  %".30" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %"var_88h" = bitcast i8* %".30" to i32*
  %".31" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %"var_68h" = bitcast i8* %".31" to i32*
  %".32" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".32" to i32*
  %".33" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".33" to i32*
  %".34" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".34" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000004" = alloca i32
  %".35" = alloca i8**
  %".36" = alloca i32**
  store i8** %"argv", i8*** %".35"
  store i32** %"envp", i32*** %".36"
  br label %"0"
"0":
  call void @"sym.cgc_initTable"()
  call void @"sym.cgc_initPasswords"()
  br label %"1"
"1":
  %".43" = call i32 @"sym.cgc_my_printf"(i32 134522866)
  %".44" = call i32 @"sym.cgc_my_printf"(i32 134522910)
  %".45" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".46" = ptrtoint i8* %".45" to i32
  %".47" = call i32 @"sym.cgc_readLine"(i32 0, i32 %".46", i32 64)
  %".48" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".49" = ptrtoint i8* %".48" to i32
  %".50" = call i32 @"sym.cgc_strToUint32"(i32 %".49")
  store i32 %".50", i32* %"uVar1"
  %".52" = call i32 @"sym.cgc_my_printf"(i32 134522794)
  %".53" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".54" = ptrtoint i8* %".53" to i32
  %".55" = call i32 @"sym.cgc_readLine"(i32 0, i32 %".54", i32 64)
  %".56" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".57" = ptrtoint i8* %".56" to i32
  %".58" = call i32 @"sym.cgc_strToUint32"(i32 %".57")
  store i32 %".58", i32* %"arg_ch"
  %".60" = call i32 @"sym.cgc_my_printf"(i32 134522808)
  %".61" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".62" = ptrtoint i8* %".61" to i32
  %".63" = call i32 @"sym.cgc_readLine"(i32 0, i32 %".62", i32 64)
  %".64" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".65" = ptrtoint i8* %".64" to i32
  %".66" = call i32 @"sym.cgc_strToUint32"(i32 %".65")
  store i32 %".66", i32* %"arg_ch_00"
  %".68" = call i32 @"sym.cgc_my_printf"(i32 134522823)
  %".69" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".70" = ptrtoint i8* %".69" to i32
  %".71" = call i32 @"sym.cgc_readLine"(i32 0, i32 %".70", i32 64)
  %".72" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999780
  %".73" = ptrtoint i8* %".72" to i32
  %".74" = call i32 @"sym.cgc_strToUint32"(i32 %".73")
  store i32 %".74", i32* %"arg_ch_01"
  %".76" = load i32, i32* %"uVar1"
  %".77" = icmp ult i32 20, %".76"
  %".78" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".77", i1* %".78"
  %".80" = load i8, i8* %"register0x00000200"
  %".81" = trunc i8 %".80" to i1
  br i1 %".81", label %"2", label %"3"
"2":
  %".83" = call i32 @"sym.cgc_my_printf"(i32 134522917)
  store i32 0, i32* %"register0x00000000"
  %".85" = load i32, i32* %"register0x00000000"
  ret i32 %".85"
"3":
  %".87" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".88" = load i32, i32* %"uVar1"
  %".89" = mul i32 %".88", 4
  %".90" = mul i32 %".89", 8
  %".91" = getelementptr inbounds i64, i64* @"obj.userToPassword", i32 %".90"
  %".92" = bitcast i64* %".91" to i32*
  %".93" = ptrtoint i32* %".92" to i32
  %".94" = ptrtoint i8* %".87" to i32
  call void @"sym.cgc_intToLargeInt"(i32 %".94", i32 %".93")
  %".96" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".97" = ptrtoint i8* %".96" to i32
  %".98" = load i32, i32* %"arg_ch"
  call void @"sym.cgc_intToLargeInt"(i32 %".97", i32 %".98")
  %".100" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".101" = ptrtoint i8* %".100" to i32
  %".102" = load i32, i32* %"arg_ch_00"
  call void @"sym.cgc_intToLargeInt"(i32 %".101", i32 %".102")
  %".104" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %".105" = ptrtoint i8* %".104" to i32
  %".106" = load i32, i32* %"arg_ch_01"
  call void @"sym.cgc_intToLargeInt"(i32 %".105", i32 %".106")
  %".108" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %".109" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %".110" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999892
  %".111" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999860
  %".112" = ptrtoint i8* %".110" to i32
  %".113" = ptrtoint i8* %".110" to i32
  %".114" = ptrtoint i8* %".110" to i32
  %".115" = ptrtoint i8* %".111" to i32
  %".116" = call i8 @"sym.cgc_checkLogin"(i32 %".112", i32 %".113", i32 %".114", i32 %".115")
  %".117" = bitcast i32* %"iVar2" to i8*
  store i8 %".116", i8* %".117"
  %".119" = load i32, i32* %"iVar2"
  %".120" = icmp eq i32 %".119", 0
  %".121" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".120", i1* %".121"
  %".123" = load i8, i8* %"register0x00000206"
  %".124" = trunc i8 %".123" to i1
  br i1 %".124", label %"4", label %"5"
"4":
  %".126" = call i32 @"sym.cgc_my_printf"(i32 134522933)
  store i32 0, i32* %"register0x00000000"
  %".128" = load i32, i32* %"register0x00000000"
  ret i32 %".128"
"5":
  %".130" = load i32, i32* %"arg_ch"
  %".131" = mul i32 %".130", 10000
  store i32 %".131", i32* %"register0x00000004"
  %".133" = load i32, i32* %"arg_ch_00"
  %".134" = mul i32 %".133", 200
  store i32 %".134", i32* %"register0x00000004"
  %".136" = load i32, i32* %"register0x00000004"
  %".137" = load i32, i32* %"register0x00000004"
  %".138" = add i32 %".136", %".137"
  %".139" = load i32, i32* %"arg_ch_01"
  %".140" = mul i32 %".139", 4
  %".141" = add i32 %".140", %".138"
  %".142" = mul i32 %".141", 8
  %".143" = getelementptr inbounds i64, i64* @"obj.handlerTable", i32 %".142"
  %".144" = bitcast i64* %".143" to i32*
  %".145" = ptrtoint i32* %".144" to i32
  call void @"unique0x00000f30"()
  br label %"1"
}

declare void @"sym.cgc_intToLargeInt"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_checkLogin"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_largeIntMul"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_largeIntShl"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_largeIntShl1"(i32 %"arg_8h") 

declare i32 @"sym.cgc_largeIntCmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_largeIntAdd"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strToUint32"(i32 %"arg_8h") 

declare void @"sym.cgc_initTable"() 

declare i32 @"sym.cgc_my_printf"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_myStrLen"(i32 %"arg_8h") 

declare void @"sym.cgc_initPasswords"() 

declare i32 @"sym.cgc_readLine"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"unique0x00000f30"() 
