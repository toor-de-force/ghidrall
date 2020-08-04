; ModuleID = "stream_vm2_patched"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999896
  %"var_64h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999900
  %"var_60h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999904
  %"var_5ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999908
  %"var_58h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999912
  %"var_54h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"var_50h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999920
  %"var_4ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".22" to i32*
  %".23" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".23" to i32*
  %".24" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".24" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".25" = alloca i8**
  %".26" = alloca i32**
  store i8** %"argv", i8*** %".25"
  store i32** %"envp", i32*** %".26"
  br label %"0"
"0":
  %".30" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  store i32 0, i32* %"var_10h"
  %".32" = bitcast i32* %"var_14h" to i32**
  store i32* @"0x804bc50", i32** %".32"
  call void @"sym.imp.cgc_transmit"()
  %".35" = call i32 @"sym.cgc_read_header"(i32 0)
  store i32 %".35", i32* %"iVar1"
  %".37" = load i32, i32* %"iVar1"
  %".38" = icmp eq i32 %".37", 0
  %".39" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".38", i1* %".39"
  %".41" = load i8, i8* %"register0x00000206"
  %".42" = trunc i8 %".41" to i1
  br i1 %".42", label %"7", label %"1"
"1":
  %".44" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  store i32 0, i32* %"var_18h"
  %".46" = ptrtoint i8* %".44" to i32
  %".47" = call i32 @"sym.cgc_read_flags"(i32 0, i32 %".46")
  store i32 %".47", i32* %"iVar1"
  %".49" = load i32, i32* %"var_18h"
  %".50" = icmp eq i32 %".49", 0
  %".51" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".50", i1* %".51"
  %".53" = load i8, i8* %"register0x00000206"
  %".54" = trunc i8 %".53" to i1
  br i1 %".54", label %"2", label %"6"
"2":
  %".56" = load i32, i32* %"iVar1"
  %".57" = call i32 @"sym.cgc_init_state"(i32 0, i32 %".56")
  store i32 %".57", i32* %"iVar1"
  br label %"3"
"3":
  %".60" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %".61" = ptrtoint i8* %".60" to i32
  %".62" = load i32, i32* %"iVar1"
  %".63" = call i32 @"sym.cgc_read_inst"(i32 0, i32 %".62", i32 %".61")
  store i32 %".63", i32* %"iVar2"
  %".65" = load i32, i32* %"iVar2"
  %".66" = icmp slt i32 %".65", 0
  %".67" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".66", i1* %".67"
  %".69" = load i8, i8* %"register0x00000207"
  %".70" = trunc i8 %".69" to i1
  br i1 %".70", label %"5", label %"4"
"4":
  %".72" = load i32, i32* %"iVar1"
  %".73" = call i8 @"sym.cgc_dump_regs"(i32 1, i32 %".72")
  %".74" = bitcast i32* %"iVar2" to i8*
  store i8 %".73", i8* %".74"
  %".76" = load i32, i32* %"iVar2"
  %".77" = icmp ne i32 %".76", 0
  %".78" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".77", i1* %".78"
  %".80" = load i8, i8* %"register0x00000206"
  %".81" = trunc i8 %".80" to i1
  br i1 %".81", label %"3", label %"5"
"5":
  call void @"sym.imp.cgc_transmit"()
  br label %"8"
"6":
  store i32 -1, i32* %"var_10h"
  br label %"8"
"7":
  store i32 -1, i32* %"var_10h"
  br label %"8"
"8":
  %".89" = load i32, i32* %"var_10h"
  store i32 %".89", i32* %"register0x00000000"
  %".91" = load i32, i32* %"register0x00000000"
  ret i32 %".91"
}

declare i32 @"sym.cgc_read_header"(i32 %"arg_8h") 

define void @"sym.imp.memset"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memset"()
  ret void
}

declare i32 @"sym.cgc_read_n_bytes"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_flags"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc_transmit"() 

declare i8 @"sym.cgc_dump_regs"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_init_state"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_calloc"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_read_inst"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_handle_inst"(i32 %"arg_8h", i32 %"arg_ch") 

@"0x804bc50" = external global i32
declare void @"_reloc.memset"() 
