; ModuleID = "netstorage_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.usb" = global i32 0
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".3" = ptrtoint i32* @"obj.usb" to i32
  %".4" = call i32 @"sym.cgc_usb_init"(i32 %".3")
  %".5" = bitcast i32* @"obj.usb" to i32**
  store i32* @"0x8049d8d", i32** %".5"
  br label %"1"
"1":
  %".8" = bitcast i32* @"obj.usb" to i32**
  %".9" = call i32 @"sym.cgc_usb_handle_packet"(i32** %".8")
  store i32 %".9", i32* %"iVar1"
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp ne i32 %".11", 0
  %".13" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".12", i1* %".13"
  %".15" = load i8, i8* %"register0x00000206"
  %".16" = trunc i8 %".15" to i1
  br i1 %".16", label %"1", label %"2"
"2":
  store i32 0, i32* %"register0x00000000"
  %".19" = load i32, i32* %"register0x00000000"
  ret i32 %".19"
}

declare i32 @"sym.cgc_usb_handle_packet"(i32** %"param_1") 

declare i32 @"sym.cgc_usb_init"(i32 %"param_1") 

declare i32 @"sym.cgc_memset"(i32 %"param_1", i8 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_random"() 

@"0x8049d65" = external global i32
@"0x8049d8d" = external global i32