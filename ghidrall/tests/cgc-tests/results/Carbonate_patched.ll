; ModuleID = "Carbonate_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_scramble_steps" = global i8 0
@"obj.state" = global i32 0
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
  call void @"sym.cgc_scramble"()
  br label %"1"
"1":
  call void @"sym.cgc_safe_set_stuff"()
  br label %"1"
}

declare void @"sym.cgc_expect_empty_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_expect_frame"(i32 %"arg_8h") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_receive_frame"() 

declare void @"sym.cgc_receive_eventually"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_allocate_frame"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_free_frame"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_scramble"() 

declare i8 @"sym.cgc_scramble_done"() 

declare void @"sym.cgc_handle_scramble"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_scramble_add"(i32 %"arg_8h") 

declare i32 @"sym.cgc_phase_7"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_sin"() 

declare void @"sym.imp.cgc_cos"() 

declare void @"sym.imp.cgc_tan"() 

declare void @"sym.imp.cgc_log2"() 

declare i32 @"sym.cgc_phase_6"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_5"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_4"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_3"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_2"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_1"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_phase_0"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_extract_scramble_req"(i32 %"arg_8h") 

declare void @"sym.cgc_safe_set_stuff"() 

declare void @"sym.cgc_with_set"(i32 %"arg_8h") 

declare void @"sym.cgc_send_empty_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_send_frame"(i32 %"arg_8h") 

declare void @"sym.cgc_send_eventually"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 
