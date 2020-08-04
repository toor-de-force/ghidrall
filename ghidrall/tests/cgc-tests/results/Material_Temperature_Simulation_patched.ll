; ModuleID = "Material_Temperature_Simulation_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_TGrid" = global i32 0
@"obj.cgc_HGrid" = global i32 0
@"obj.cgc_X" = global i32 0
@"obj.cgc_Y" = global i32 0
@"obj.cgc_Z" = global i32 0
@"obj.SIM_TIME" = global i64 0
@"obj.g_memManager" = global i32 0
@"obj.TimeStep" = global i64 0
@"str.At_0.00000_seconds" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"in_stack_ffffffc8" = bitcast i8* %".4" to i32*
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
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".14" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".15" = alloca i8**
  %".16" = alloca i32**
  store i8** %"argv", i8*** %".15"
  store i32** %"envp", i32*** %".16"
  br label %"0"
"0":
  store i32 0, i32* @"obj.cgc_TGrid"
  store i32 0, i32* @"obj.cgc_HGrid"
  store i32 0, i32* @"obj.cgc_X"
  store i32 0, i32* @"obj.cgc_Y"
  store i32 0, i32* @"obj.cgc_Z"
  %".25" = call i32 @"sym.cgc_InitMaterial"()
  store i32 %".25", i32* %"iVar1"
  %".27" = load i32, i32* %"iVar1"
  %".28" = icmp ne i32 %".27", 0
  %".29" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".28", i1* %".29"
  %".31" = load i8, i8* %"register0x00000206"
  %".32" = trunc i8 %".31" to i1
  br i1 %".32", label %"1", label %"2"
"1":
  call void @"sym.imp.cgc__terminate"()
  br label %"2"
"2":
  %".36" = call i32 @"sym.cgc_GetSimLength"()
  store i32 %".36", i32* %"iVar1"
  %".38" = load i32, i32* %"iVar1"
  %".39" = icmp ne i32 %".38", 0
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"3", label %"4"
"3":
  call void @"sym.imp.cgc__terminate"()
  br label %"4"
"4":
  %".47" = load i32, i32* @"obj.cgc_TGrid"
  %".48" = call i32 @"sym.cgc_GraphTemps"(i32 %".47")
  %".49" = load i32, i32* %"in_stack_ffffffc8"
  %".50" = call i32 @"sym.cgc_printf"(i32 134542265, i32 %".49")
  %".51" = call i32 @"sym.cgc_kbhit"()
  %".52" = call i32 @"sym.cgc_RunSim"()
  %".53" = load i32, i32* @"obj.cgc_TGrid"
  %".54" = call i32 @"sym.cgc_GraphTemps"(i32 %".53")
  store i32 0, i32* %"register0x00000000"
  %".56" = load i32, i32* %"register0x00000000"
  ret i32 %".56"
}

declare i32 @"sym.cgc_InitMaterial"() 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isspace"(i32 %"arg_8h") 

declare i32 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_read_until"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_puts"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_GraphTemps"(i32 %"arg_8h") 

declare i80 @"sym.cgc_TGridAverage"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch", i32 %"arg_20h") 

declare i32 @"sym.cgc_printf"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_vprintf"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_str"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_int_to_hex"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_float_to_str"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log10"() 

declare i32 @"sym.cgc_isnan"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_pow"() 

declare i8 @"sym.cgc_isinf"(i32 %"arg_8h") 

declare i80 @"sym.cgc_cgcfloor"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_rint"() 

declare i32 @"sym.cgc_putc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_kbhit"() 

declare void @"sym.imp.cgc_fdwait"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_GetSimLength"() 

declare i80 @"sym.cgc_cgcatof"(i32 %"arg_8h") 

declare i32 @"sym.cgc_RunSim"() 

declare i32 @"sym.cgc_SimStep"() 

declare i32 @"sym.cgc_pGRID"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_free_list"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i80 @"sym.cgc_Tnew"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i80 @"sym.cgc_H"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i80 @"sym.cgc_K"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i80 @"sym.cgc_L"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_IncrementTimestep"(i32 %"arg_8h") 

declare void @"sym.cgc_CalcTimeStep"() 

declare i80 @"sym.cgc_C"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
