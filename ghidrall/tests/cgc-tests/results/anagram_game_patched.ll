; ModuleID = "anagram_game_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.size_class_limits" = global i32 0
@"sym.cgc_read_initial_words" = external global i64
define void @"main"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"uVar2" = alloca i32
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"auStack12" = bitcast i8* %".2" to i32*
  br label %"0"
"0":
  %".4" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %".5" = bitcast i8* %".4" to i32**
  %".6" = call i32 @"sym.cgc_memset"(i32** %".5", i32 0, i32 4)
  %".7" = call i32 @"func_0x0804b840"(i8* %".4")
  store i32 %".7", i32* %"iVar1"
  store i32 %".7", i32* %"iVar1"
  br label %"1"
"1":
  %".11" = load i32, i32* %"iVar1"
  %".12" = icmp eq i32 %".11", 0
  br i1 %".12", label %"2", label %"3"
"2":
  %".14" = call i32 @"sym.cgc_write_int"(i32 1)
  %".15" = call i32 @"func_0x0804b840"(i8* %".4")
  store i32 %".15", i32* %"iVar1"
  br label %"1"
"3":
  %".18" = call i32 @"sym.cgc_write_int"(i32 0)
  %".19" = call i32 @"sym.cgc_read_int"()
  store i32 %".19", i32* %"uVar2"
  br label %"4"
"4":
  %".22" = load i32, i32* %"uVar2"
  %".23" = icmp ult i32 5, %".22"
  br i1 %".23", label %"6", label %"5"
"5":
  %".25" = call i32 @"sym.cgc_write_int"(i32 1)
  %".26" = call i32 @"sym.cgc_read_int"()
  store i32 %".26", i32* %"uVar2"
  br label %"4"
"6":
  %".29" = load i32, i32* %"uVar2"
  %".30" = mul i32 %".29", 4
  %".31" = add i32 %".30", 134529616
  call void @"unique0x00000f30"()
  ret void
}

declare i32 @"sym.cgc_write_int"(i32 %"param_1") 

declare void @"sym.cgc_ftab_init"(i32 %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_toupper"(i32 %"param_1") 

declare i8 @"sym.cgc_isalpha"(i32 %"param_1") 

declare i32 @"sym.cgc_atree_add"(i32** %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc__atree_walk"(i32 %"param_1", i32 %"param_2", i32 %"param_3", i32 %"param_4") 

declare i32 @"sym.cgc_calloc"(i32 %"param_1", i32 %"param_2") 

declare i32 @"sym.cgc_strcmp"(i32** %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_realloc"(i32 %"param_1", i32 %"param_2") 

declare void @"sym.cgc_memcpy"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare void @"sym.cgc_free"(i32 %"param_1") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_insert_into_flist"(i32** %"param_1") 

declare i8 @"sym.cgc_get_size_class"(i32 %"param_1") 

declare void @"sym.cgc_coalesce"(i32** %"param_1") 

declare void @"sym.cgc_memmove"(i32 %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"sym.cgc_atree_init"(i32 %"param_1") 

declare void @"sym.cgc_ftab_init1"(i32 %"param_1") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_exit"() 

declare void @"sym.imp.cgc__terminate"() 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_read_string"() 

declare void @"sym.cgc_ftab_add"(i32 %"param_1", i32** %"param_2") 

declare i32 @"sym.cgc_malloc"(i32 %"param_1") 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_remove_from_flist"(i32** %"param_1") 

declare i32 @"sym.cgc_strlen"(i32 %"param_1") 

declare i32 @"sym.cgc_read_int"() 

declare i32 @"sym.cgc_memset"(i32** %"param_1", i32 %"param_2", i32 %"param_3") 

declare i32 @"func_0x0804b840"(i8* %".1") 

declare void @"unique0x00000f30"() 
