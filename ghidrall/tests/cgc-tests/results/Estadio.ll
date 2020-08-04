; ModuleID = "Estadio"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_gyre_pos" = global i32 0
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"uVar1" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".9" to i32*
  %".10" = alloca i8**
  %".11" = alloca i32**
  store i8** %"argv", i8*** %".10"
  store i32** %"envp", i32*** %".11"
  br label %"0"
"0":
  call void @"sym.cgc_send_empty_frame"(i32 0)
  store i32 0, i32* %"uVar1"
  call void @"sym.cgc_expect_empty_frame"(i32 0)
  %".18" = load i32, i32* %"uVar1"
  %".19" = load i8**, i8*** %".10"
  %".20" = load i32**, i32*** %".11"
  call void @"sym.cgc_seed"()
  call void @"sym.cgc_gauntlet"()
  br label %"1"
"1":
  call void @"sym.cgc_operate"()
  br label %"1"
}

declare void @"sym.cgc_expect_empty_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_free_frame"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_expect_frame"(i32 %"arg_8h") 

declare i32 @"sym.cgc_receive_frame"() 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_allocate_frame"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_gauntlet"() 

declare void @"sym.cgc_handle_guess"(i32 %"arg_8h") 

declare i32 @"sym.cgc_extract_guess_req"(i32 %"arg_8h") 

declare i64 @"sym.cgc_churn_rand_uint64"() 

declare i32 @"sym.cgc_churn_rand_item"(i32 %"arg_8h") 

declare i80 @"sym.cgc_init_fou"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_log2"() 

declare void @"sym.imp.cgc_fabs"() 

declare void @"sym.imp.cgc_sin"() 

declare void @"sym.imp.cgc_cos"() 

declare i64 @"sym.cgc_init_one"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare void @"sym.cgc_send_empty_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_send_frame"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_seed"() 

declare void @"sym.cgc_handle_seed"(i32 %"arg_8h") 

declare void @"sym.cgc_churn_initialize"(i32 %"arg_8h") 

declare i80 @"sym.cgc_init_two"(i32 %"arg_8h", i32 %"placeholder_1", i32 %"arg_10h") 

declare void @"sym.imp.cgc_tan"() 

declare i64 @"sym.cgc_init_thr"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_extract_seed_req"(i32 %"arg_8h") 

declare void @"sym.cgc_operate"() 
