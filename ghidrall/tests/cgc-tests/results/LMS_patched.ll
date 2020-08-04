; ModuleID = "LMS_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"str.1s1s" = global i64 0
@"obj.cgc_outstanding" = global i32 0
@"obj.cgc_heapinit_done" = global i8 0
@"obj.cgc_lastpage" = global i32 0
@"obj.cgc_freed" = global i32 0
@"obj.cgc_curleft" = global i32 0
@"obj.cgc_allocated" = global i32 0
@"obj.cgc_head" = global i32 0
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %"bVar2" = alloca i8
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".8" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  %".9" = alloca i8**
  %".10" = alloca i32**
  store i8** %"argv", i8*** %".9"
  store i32** %"envp", i32*** %".10"
  br label %"0"
"0":
  %".14" = load i64, i64* @"str.1s1s"
  %".15" = bitcast i32* %"var_10h" to i64*
  store i64 %".14", i64* %".15"
  %".17" = call i32 @"sym.cgc_recv_msg"()
  store i32 %".17", i32* %"var_8h"
  %".19" = load i32, i32* %"var_8h"
  %".20" = add i32 %".19", 4
  %".21" = lshr i32 %".20", 28
  store i32 %".21", i32* @"obj.cgc_outstanding"
  br label %"1"
"1":
  %".24" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".25" = ptrtoint i8* %".24" to i32
  %".26" = load i32, i32* %"var_8h"
  %".27" = call i8 @"sym.cgc_check_number"(i32 %".26", i32 %".25")
  store i8 %".27", i8* %"cVar1"
  %".29" = load i8, i8* %"cVar1"
  %".30" = icmp ne i8 %".29", 0
  %".31" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".30", i1* %".31"
  %".33" = load i8, i8* %"register0x00000206"
  %".34" = trunc i8 %".33" to i1
  br i1 %".34", label %"2", label %"3"
"2":
  %".36" = load i32, i32* %"var_8h"
  call void @"sym.cgc_process_msg"(i32 %".36")
  br label %"3"
"3":
  %".39" = load i32, i32* @"obj.cgc_outstanding"
  %".40" = icmp ne i32 %".39", 0
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  store i8 0, i8* %"bVar2"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"4", label %"5"
"4":
  %".47" = call i32 @"sym.cgc_recv_msg"()
  store i32 %".47", i32* %"var_8h"
  %".49" = load i32, i32* %"var_8h"
  %".50" = icmp ne i32 %".49", 0
  %".51" = bitcast i8* %"bVar2" to i1*
  store i1 %".50", i1* %".51"
  br label %"5"
"5":
  %".54" = load i8, i8* %"bVar2"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"1", label %"6"
"6":
  store i32 0, i32* %"register0x00000000"
  %".58" = load i32, i32* %"register0x00000000"
  ret i32 %".58"
}

declare i32 @"sym.cgc_recv_msg"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_sendline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_sendall"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_remove"(i32 %"arg_8h") 

declare void @"sym.cgc_insert"(i32 %"arg_8h", i32 %"arg_ch") 

declare i8 @"sym.cgc_check_number"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_recv"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_process_msg"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_session"(i32 %"arg_8h") 

declare i32 @"sym.cgc_new_session"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_msg"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_delete_session"(i32 %"arg_8h") 

declare i32 @"sym.cgc_find_session"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 
