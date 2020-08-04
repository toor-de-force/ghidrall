; ModuleID = "Parking_Permit_Management_System_PPMS_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.g_auth" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991776
  %"var_201ch" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991780
  %"var_2018h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991784
  %"var_2014h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991788
  %"var_2010h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991792
  %"var_200ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  %"var_2008h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".11" to i32*
  %"register0x00000200" = alloca i8
  %"register0x00000000" = alloca i32
  %".12" = alloca i8**
  %".13" = alloca i32**
  store i8** %"argv", i8*** %".12"
  store i32** %"envp", i32*** %".13"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  br label %"1"
"1":
  %".19" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".20" = ptrtoint i8* %".19" to i32
  %".21" = call i32 @"sym.cgc_read_n"(i32 0, i32 %".20", i32 4)
  store i32 %".21", i32* %"iVar1"
  %".23" = load i32, i32* %"iVar1"
  %".24" = icmp slt i32 0, %".23"
  br i1 %".24", label %"3", label %"2"
"2":
  %".26" = load i32, i32* %"var_8h"
  %".27" = icmp ult i32 %".26", 8192
  %".28" = bitcast i8* %"register0x00000200" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000200"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"4", label %"3"
"3":
  store i32 0, i32* %"register0x00000000"
  %".34" = load i32, i32* %"register0x00000000"
  ret i32 %".34"
"4":
  %".36" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  %".37" = ptrtoint i8* %".36" to i32
  %".38" = load i32, i32* %"var_8h"
  %".39" = call i32 @"sym.cgc_read_n"(i32 0, i32 %".37", i32 %".38")
  store i32 %".39", i32* %"iVar1"
  %".41" = load i32, i32* %"iVar1"
  %".42" = icmp slt i32 0, %".41"
  br i1 %".42", label %"1", label %"5"
"5":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 991796
  %".45" = ptrtoint i8* %".44" to i32
  %".46" = load i32, i32* %"var_8h"
  call void @"sym.cgc_handle_command"(i32 %".45", i32 %".46")
  br label %"1"
}

declare i32 @"sym.cgc_read_n"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_handle_command"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc__send_response"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.cgc_handle_new_permit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_permit_new"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc__validate_license_number"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isalnum"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isdigit"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isalpha"(i32 %"arg_8h") 

declare i8 @"sym.cgc_isupper"(i32 %"arg_8h") 

declare i8 @"sym.cgc_islower"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_handle_new_permit_ring"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_permit_test"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc__validate_permit_token"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_handle_refactor_ring"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_destroy_permit_ring"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_destroy_permit"(i32 %"arg_8h") 

declare i32 @"sym.cgc_pring_refactor"(i32 %"arg_8h") 

declare void @"sym.cgc_handle_test_permit"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_handle_auth"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_handle_test_permit_ring"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_pring_test"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 
