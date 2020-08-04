; ModuleID = "Movie_Rental_Service_Redux"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.admin_password" = global i32 0
@"obj.admin_username" = global i32 0
@"obj.a" = global i32 0
@"obj.d" = global i32 0
@"obj.b" = global i32 0
@"obj.c" = global i32 0
@"obj.g_num_mpaa_ratings" = global i32 0
@"obj.g_num_genres" = global i32 0
@"obj.g_cmdb" = global i32 0
@"obj.g_list_size" = global i32 0
@"obj.g_list_length" = global i32 0
@"str." = external global i64
@"str.._._._Initializing_the_inventory_._._." = external global i64
@"str.Bye" = external global i64
@"str.Movie_Rental_Service_v0.1" = external global i64
@"str.movie_info_from_IMDb.com" = external global i64
define i32 @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999916
  %"in_stack_ffffffac" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999924
  %"var_48h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_44h" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999932
  %"var_40h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"var_3ch" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"var_38h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"var_34h" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"var_30h" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"var_2ch" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"var_28h" = bitcast i8* %".13" to i32*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".14" to i32*
  %".15" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".15" to i32*
  %".16" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".16" to i32*
  %".17" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".17" to i32*
  %".18" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".18" to i32*
  %".19" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".19" to i32*
  %".20" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".20" to i32*
  %".21" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".21" to i32*
  %".22" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999992
  %"var_4h" = bitcast i8* %".22" to i32*
  %"register0x00000206" = alloca i8
  %"register0x00000207" = alloca i8
  %"register0x00000000" = alloca i32
  %".23" = alloca i8**
  %".24" = alloca i32**
  store i8** %"argv", i8*** %".23"
  store i32** %"envp", i32*** %".24"
  br label %"0"
"0":
  store i32 0, i32* %"var_8h"
  store i32 2, i32* %"var_ch"
  call void @"sym.cgc_init_movies"()
  %".31" = load i32, i32* %"in_stack_ffffffac"
  %".32" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134542334, i32 %".31")
  %".33" = load i32, i32* %"in_stack_ffffffac"
  %".34" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134542381, i32 %".33")
  %".35" = load i32, i32* %"in_stack_ffffffac"
  %".36" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134542424, i32 %".35")
  %".37" = load i32, i32* %"in_stack_ffffffac"
  %".38" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134542461, i32 %".37")
  br label %"1"
"1":
  %".40" = load i32, i32* %"var_8h"
  %".41" = icmp eq i32 %".40", 0
  %".42" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".41", i1* %".42"
  %".44" = load i8, i8* %"register0x00000206"
  %".45" = trunc i8 %".44" to i1
  br i1 %".45", label %"2", label %"b"
"2":
  %".47" = load i32, i32* %"var_ch"
  %".48" = icmp eq i32 %".47", 2
  %".49" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".48", i1* %".49"
  %".51" = load i8, i8* %"register0x00000206"
  %".52" = trunc i8 %".51" to i1
  br i1 %".52", label %"8", label %"3"
"3":
  %".54" = load i32, i32* %"var_ch"
  %".55" = icmp eq i32 %".54", 1
  %".56" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".55", i1* %".56"
  %".58" = load i8, i8* %"register0x00000206"
  %".59" = trunc i8 %".58" to i1
  br i1 %".59", label %"6", label %"4"
"4":
  %".61" = load i32, i32* %"var_ch"
  %".62" = icmp eq i32 %".61", 0
  %".63" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".62", i1* %".63"
  %".65" = load i8, i8* %"register0x00000206"
  %".66" = trunc i8 %".65" to i1
  br i1 %".66", label %"9", label %"5"
"5":
  %".68" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".69" = ptrtoint i8* %".68" to i32
  %".70" = call i32 @"sym.cgc_run_debug_mode"(i32 %".69")
  br label %"9"
"6":
  %".72" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".73" = ptrtoint i8* %".72" to i32
  %".74" = call i32 @"sym.cgc_run_admin_mode"(i32 %".73")
  store i32 %".74", i32* %"iVar1"
  %".76" = load i32, i32* %"iVar1"
  %".77" = icmp slt i32 %".76", 0
  %".78" = bitcast i8* %"register0x00000207" to i1*
  store i1 %".77", i1* %".78"
  %".80" = load i8, i8* %"register0x00000207"
  %".81" = trunc i8 %".80" to i1
  br i1 %".81", label %"9", label %"7"
"7":
  store i32 1, i32* %"var_8h"
  br label %"9"
"8":
  %".85" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %".86" = ptrtoint i8* %".85" to i32
  %".87" = call i32 @"sym.cgc_run_user_mode"(i32 %".86")
  store i32 %".87", i32* %"var_8h"
  br label %"9"
"9":
  %".90" = load i32, i32* %"var_8h"
  %".91" = icmp eq i32 %".90", 0
  %".92" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".91", i1* %".92"
  %".94" = load i8, i8* %"register0x00000206"
  %".95" = trunc i8 %".94" to i1
  br i1 %".95", label %"1", label %"a"
a:
  %".97" = load i32, i32* %"in_stack_ffffffac"
  %".98" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134539422, i32 %".97")
  br label %"1"
b:
  %".100" = load i32, i32* %"in_stack_ffffffac"
  %".101" = call i32 @"sym.cgc_fdprintf"(i32 1, i32 134542508, i32 %".100")
  store i32 0, i32* %"register0x00000000"
  %".103" = load i32, i32* %"register0x00000000"
  ret i32 %".103"
}

declare i32 @"sym.cgc_run_user_mode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_random_password"() 

declare void @"sym.cgc_rng"() 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_malloc_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_allocate"() 

declare i32 @"sym.cgc_find_fit"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_get_size_class"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_new_blk"() 

declare void @"sym.cgc_insert_into_flist"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_flist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strtol"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_readline"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_receive"() 

declare void @"sym.cgc_init_movies"() 

define void @"sym.imp.memcpy"() 
{
entry:
  %"stack" = alloca [999999 x i8]
  br label %"0"
"0":
  call void @"_reloc.memcpy"()
  ret void
}

declare i32 @"sym.cgc_add_movie"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h", i32 %"arg_1ch") 

declare i32 @"sym.cgc_check_rating"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_check_genre"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strdup"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare i32 @"sym.cgc_add_entry"(i32 %"arg_8h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare void @"sym.cgc_free_huge"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_deallocate"() 

declare void @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_remove_from_blist"(i32 %"arg_8h") 

declare i32 @"sym.cgc_run_debug_mode"(i32 %"arg_8h") 

declare void @"sym.cgc_dar"(i32 %"arg_8h") 

declare void @"sym.cgc_dag"(i32 %"arg_8h") 

declare i32 @"sym.cgc_run_admin_mode"(i32 %"arg_8h") 

declare i32 @"sym.cgc_memcmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fdprintf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_output_number_printf"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h", i32 %"arg_18h") 

declare void @"_reloc.memcpy"() 
