; ModuleID = "GreatView"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.strtok_last" = global i32 0
@"obj.freep" = global i32 0
@"obj.cgc___htype" = global i32 0
@"obj.mallocp" = global i32 0
@"obj.cgc_heapinit_done" = global i8 0
@"obj.cgc___hcookie" = global i32 0
@"obj.cgc_freed" = global i32 0
@"obj.cgc_allocated" = global i32 0
@"obj.cgc_freedc" = global i32 0
@"obj.cgc_allocatedc" = global i32 0
define void @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995888
  %"auStack4112" = bitcast i8* %".2" to i32768*
  %"register0x00000207" = alloca i8
  br label %"0"
"0":
  call void @"sym.cgc___cookie_fail"()
  %".5" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 995888
  call void @"sym.imp.memset"()
  %".7" = bitcast i8* %".5" to i32**
  %".8" = trunc i32 0 to i8
  %".9" = call i32 @"sym.cgc_recvuntil"(i32 0, i32** %".7", i32 4096, i8 %".8")
  store i32 %".9", i32* %"iVar1"
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp slt i32 -1, %".11"
  %".13" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000207"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"1", label %"2"
"1":
  %".18" = bitcast i8* %".5" to i32**
  %".19" = call i32 @"sym.cgc_run_viewscript"(i32** %".18")
  br label %"2"
"2":
  ret void
}

declare i32 @"sym.cgc_recv"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc___heap_cookie_fail"() 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare void @"sym.cgc___cookie_fail"() 

declare void @"sym.imp.cgc_transmit"() 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_run_viewscript"(i32** %"param_1") 

declare i32 @"sym.cgc_strtok"(i32** %"param_1", i8 %"param_2") 

declare i32 @"sym.cgc_sendline"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_free"() 

declare i32 @"sym.cgc_streq"(i32** %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1") 

declare i32 @"sym.cgc_ssmalloc"(i32** %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.imp.cgc_random"() 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

declare i32 @"sym.cgc_recvuntil"(i32 %"param_1", i32** %"param_2", i32 %"param_3", i8 %"param_4") 

declare void @"_reloc.memset"() 
