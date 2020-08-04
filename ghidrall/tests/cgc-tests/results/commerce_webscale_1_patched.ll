; ModuleID = "commerce_webscale_1_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.__rpc" = global i32 0
@"obj.size_class_limits" = global i32 0
@"obj.g_items" = global i32 0
@"str.Invalid_selection" = external global i64
@"str.Please_make_a_selection:____a__List_products____b__Buy_a_product____c__Sell_a_product" = external global i64
@"str.Welcome_to_eCommerce_v0.1" = external global i64
define i32 @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"cVar1" = alloca i8
  %"uVar2" = alloca i32
  %"bVar3" = alloca i8
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"uStack12" = bitcast i8* %".3" to i32*
  %"register0x00000004" = alloca i32
  %"register0x00000206" = alloca i8
  %"register0x00000000" = alloca i32
  br label %"0"
"0":
  %".5" = call i32 @"sym.cgc_database_init"(i32 4, i32 5)
  call void @"sym.cgc_init_db"()
  %".7" = inttoptr i32 134533099 to i32**
  %".8" = call i32 @"sym.cgc_fdprintf"(i32 1, i32** %".7")
  %".9" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".10" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999987
  br label %"1"
"1":
  %".12" = inttoptr i32 134533017 to i32**
  %".13" = call i32 @"sym.cgc_fdprintf"(i32 1, i32** %".12")
  call void @"sym.imp.cgc_receive"()
  %".15" = load i32, i32* %"uStack12"
  %".16" = xor i32 %".15", 1
  store i32 %".16", i32* %"register0x00000004"
  %".18" = load i32, i32* %"register0x00000004"
  %".19" = load i32, i32* %"uVar2"
  %".20" = or i32 %".18", %".19"
  store i32 %".20", i32* %"register0x00000004"
  %".22" = load i32, i32* %"register0x00000004"
  %".23" = icmp eq i32 %".22", 0
  %".24" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".23", i1* %".24"
  %".26" = load i8, i8* %"register0x00000206"
  %".27" = trunc i8 %".26" to i1
  br i1 %".27", label %"2", label %"7"
"2":
  %".29" = load i8, i8* %".2"
  %".30" = icmp eq i8 %".29", 97
  %".31" = bitcast i8* %"bVar3" to i1*
  store i1 %".30", i1* %".31"
  %".33" = load i8, i8* %".2"
  %".34" = icmp slt i8 %".33", 98
  %".35" = load i8, i8* %".2"
  store i8 %".35", i8* %"cVar1"
  br i1 %".34", label %"8", label %"3"
"3":
  %".38" = load i8, i8* %".2"
  %".39" = icmp eq i8 %".38", 98
  %".40" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".39", i1* %".40"
  %".42" = load i8, i8* %"register0x00000206"
  %".43" = trunc i8 %".42" to i1
  br i1 %".43", label %"6", label %"4"
"4":
  %".45" = load i8, i8* %".2"
  %".46" = icmp ne i8 %".45", 99
  %".47" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".46", i1* %".47"
  %".49" = load i8, i8* %"register0x00000206"
  %".50" = trunc i8 %".49" to i1
  br i1 %".50", label %"b", label %"5"
"5":
  call void @"sym.cgc_sell"()
  br label %"1"
"6":
  call void @"sym.cgc_buy"()
  br label %"1"
"7":
  store i8 0, i8* %"cVar1"
  store i8 0, i8* %"bVar3"
  br label %"8"
"8":
  %".59" = load i8, i8* %"bVar3"
  %".60" = trunc i8 %".59" to i1
  br i1 %".60", label %"c", label %"9"
"9":
  %".62" = load i8, i8* %"cVar1"
  %".63" = icmp eq i8 %".62", 0
  %".64" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".63", i1* %".64"
  %".66" = load i8, i8* %"register0x00000206"
  %".67" = trunc i8 %".66" to i1
  br i1 %".67", label %"a", label %"b"
a:
  call void @"sym.cgc_database_close"()
  store i32 0, i32* %"register0x00000000"
  %".71" = load i32, i32* %"register0x00000000"
  ret i32 %".71"
b:
  %".73" = inttoptr i32 134533126 to i32**
  %".74" = call i32 @"sym.cgc_fdprintf"(i32 1, i32** %".73")
  br label %"1"
c:
  call void @"sym.cgc_list"()
  br label %"1"
}

declare i32 @"sym.cgc_database_init"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_database_close"() 

declare i32 @"sym.cgc__rpc_send"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_marshal_rpc_msg"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_rejected_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_marshal_accepted_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare void @"sym.cgc_buy"() 

declare i32 @"sym.cgc_db_insert"(i32** %"param_1") 

declare i32 @"sym.cgc_marshal_record"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_result"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_record"(i32 %"param_1", i32 %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_key"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare i8 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_memset"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc__rpc_recv"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_marshal_key"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_rpc_msg"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_call_body"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_opaque_auth"(i32 %"param_1", i32** %"param_2", i32** %"param_3") 

declare void @"sym.cgc_exit_2"() 

define void @"sym._init"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"unaff_EBX" = alloca i32
  %"register0x00000206" = alloca i8
  br label %"0"
"0":
  call void @"sym.__x86.get_pc_thunk.bx"()
  %".4" = load i32, i32* %"unaff_EBX"
  %".5" = add i32 %".4", 19959
  %".6" = icmp ne i32 %".5", 0
  %".7" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".6", i1* %".7"
  %".9" = load i8, i8* %"register0x00000206"
  %".10" = trunc i8 %".9" to i1
  br i1 %".10", label %"1", label %"2"
"1":
  call void @"func_0x080494d0"()
  br label %"2"
"2":
  ret void
}

define void @"sym.__x86.get_pc_thunk.bx"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  ret void
}

declare i32 @"sym.cgc_unmarshal_rejected_reply"(i32** %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_unmarshal_accepted_reply"(i32 %"param_1", i32** %"param_2", i32** %"param_3") 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

declare void @"sym.cgc_db_lookup"(i32** %"param_1") 

declare void @"sym.cgc_init_db"() 

declare void @"sym.cgc_sell"() 

declare i32 @"sym.cgc_strtoul"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_strtol"(i32** %"param_1", i32** %"param_2", i32 %"param_3") 

declare void @"sym.cgc_list"() 

declare i32 @"sym.cgc_sprintf"(i32** %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_output_number_sprintf"(i32** %"param_1", i32** %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5", i32 %"param_6") 

declare i32 @"sym.cgc_fdprintf"(i32 %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_output_number_printf"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4", i32 %"param_5") 

declare void @"sym.imp.cgc_receive"() 

declare void @"func_0x080494d0"() 
