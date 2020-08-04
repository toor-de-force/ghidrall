; ModuleID = "SAuth"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_stdout" = global i32 0
@"obj.cgc_stdin" = global i32 0
@"obj.cgc_stderr" = global i32 0
@"sym.cgc_get_byte" = external global i64
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 964843
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 964844
  %"auStack35156" = bitcast i8* %".3" to i281088*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"iStack20" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"pcStack16" = bitcast i8* %".5" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".7" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 964844
  %".8" = bitcast i8* %".7" to i32**
  %".9" = trunc i32 0 to i8
  call void @"sym.cgc_memset"(i32** %".8", i8 %".9", i32 35148)
  %".11" = call i32 @"sym.cgc_init_creds"()
  %".12" = call i32 @"sym.cgc_recv_packet"()
  store i32 %".12", i32* %"iVar1"
  br label %"1"
"1":
  %".15" = load i32, i32* %"iVar1"
  %".16" = icmp ne i32 %".15", 0
  br i1 %".16", label %"2", label %"c"
"2":
  %".18" = load i32, i32* %"iStack20"
  %".19" = add i32 %".18", 1
  store i32 %".19", i32* %"iStack20"
  %".21" = call i32 @"func_0x0804b190"()
  store i32 %".21", i32* %"iVar1"
  store i32 %".21", i32* %"iVar1"
  %".24" = load i32, i32* %"iVar1"
  %".25" = icmp eq i32 %".24", 0
  %".26" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".25", i1* %".26"
  %".28" = load i8, i8* %"register0x00000206"
  %".29" = trunc i8 %".28" to i1
  br i1 %".29", label %"c", label %"3"
"3":
  %".31" = load i8, i8* %".2"
  %".32" = icmp ne i8 %".31", 101
  %".33" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".32", i1* %".33"
  %".35" = load i8, i8* %"register0x00000206"
  %".36" = trunc i8 %".35" to i1
  br i1 %".36", label %"4", label %"b"
"4":
  %".38" = load i8, i8* %".2"
  %".39" = icmp eq i8 %".38", 103
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"5", label %"6"
"5":
  %".45" = call i32 @"sym.cgc_handle_service_request"()
  store i32 %".45", i32* %"iVar1"
  br label %"a"
"6":
  %".48" = load i8, i8* %".2"
  %".49" = icmp eq i8 %".48", 100
  %".50" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".49", i1* %".50"
  %".52" = load i8, i8* %"register0x00000206"
  %".53" = trunc i8 %".52" to i1
  br i1 %".53", label %"c", label %"7"
"7":
  %".55" = load i32, i32* %"pcStack16"
  %".56" = icmp eq i32 %".55", 0
  %".57" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".56", i1* %".57"
  %".59" = load i8, i8* %"register0x00000206"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"8", label %"9"
"8":
  %".62" = call i8 @"sym.cgc_send_unrecognized"()
  br label %"b"
"9":
  %".64" = call i32 @"pcStack16"()
  br label %"a"
a:
  %".66" = load i32, i32* %"iVar1"
  %".67" = icmp eq i32 %".66", 0
  %".68" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".67", i1* %".68"
  %".70" = load i8, i8* %"register0x00000206"
  %".71" = trunc i8 %".70" to i1
  br i1 %".71", label %"c", label %"b"
b:
  %".73" = call i32 @"sym.cgc_recv_packet"()
  store i32 %".73", i32* %"iVar1"
  br label %"1"
c:
  %".76" = call i8 @"sym.cgc_send_disconnect"()
  store i32 0, i32* %"register0x00000000"
  %".78" = load i32, i32* %"register0x00000000"
  ret i32 %".78"
}

declare i8 @"sym.cgc_send_unrecognized"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_write_uint32"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_write_byte"(i32 %"param_1", i8 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_init_packet"() 

declare void @"sym.cgc_clear_packet"() 

declare i32 @"sym.cgc_fwrite"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_transmit_xlat"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_xlat_2"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4") 

declare void @"sym.cgc_xlat"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_transmit_all_1"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_transmit_all"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare void @"sym.cgc_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_fflush"(i32 %"param_1") 

declare i8 @"sym.cgc_send_disconnect"() 

declare i32 @"sym.cgc_recv_packet"() 

declare i32 @"sym.cgc_recv_bytes"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_fread"(i32 %"param_1", i32 %"param_2", i32** %"param_3") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_xlat_1"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc__refill"() 

declare i8 @"sym.cgc_get_uint32"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_init_creds"() 

declare i32 @"sym.cgc_mystrndup"(i32 %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.cgc_malloc"(i32 %"param_1") 

declare i32 @"sym.cgc_malloc_alloc"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.imp.cgc_allocate"() 

declare i8 @"sym.cgc_small_alloc_run"() 

declare i32 @"sym.cgc_small_insert_free"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32** %"param_4") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_vfprintf"(i32 %"param_1") 

declare i32 @"sym.cgc__vsfprintf"(i32 %"param_1", i32** %"param_2", i32** %"param_3", i32 %"param_4", i32 %"param_5") 

declare void @"sym.cgc__convert_unsigned"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare void @"sym.cgc_memmove"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc__convert_signed"(i32 %"param_1", i32 %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_strtoul"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare i8 @"sym.cgc_islower"(i8 %"param_1") 

declare i8 @"sym.cgc_isspace"(i8 %"param_1") 

declare i8 @"sym.cgc_tolower"(i8 %"param_1") 

declare i8 @"sym.cgc_isdigit"(i8 %"param_1") 

declare i8 @"sym.cgc_isupper"(i8 %"param_1") 

declare i32 @"sym.cgc_heap_error"(i32 %"param_1") 

declare i32 @"sym.cgc_run_alloc"(i32 %"param_1", i8 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_small_unlink_free"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_size_to_bin"() 

declare i32 @"sym.cgc_strlen"(i32** %"param_1") 

declare i32 @"sym.cgc_handle_service_request"() 

declare i8 @"sym.cgc_send_service_accept"() 

declare void @"sym.cgc_write_string"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_get_string"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_safe_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i16 %"param_4") 

declare i32 @"sym.cgc_strcmp"(i32** %"param_1", i32** %"param_2") 

declare void @"sym.cgc_memset"(i32** %"param_1", i8 %"param_2", i32 %"param_3") 

declare i32 @"func_0x0804b190"() 

declare i32 @"pcStack16"() 
