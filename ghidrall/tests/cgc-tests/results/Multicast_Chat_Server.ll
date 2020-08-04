; ModuleID = "Multicast_Chat_Server"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"obj.cgc_strtok.prev" = global i32 0
@"obj.size_class_sizes" = global i32 0
@"obj.cgc_stdin" = global i32 0
@"str.auth" = external global i64
@"str.out" = external global i64
@"str.subscribe" = external global i64
@"str.token" = external global i64
define void @"main"(i8** %"argv", i32** %"envp") 
{
entry:
  %"stack" = alloca [999999 x i8]
  %"arg_8h" = alloca i32
  %"iVar1" = alloca i32
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"var_24h" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"var_20h" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_1ch" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"var_18h" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"var_14h" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %"var_10h" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999984
  %"var_ch" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_8h" = bitcast i8* %".11" to i32*
  %"register0x00000206" = alloca i8
  %".12" = alloca i8**
  %".13" = alloca i32**
  store i8** %"argv", i8*** %".12"
  store i32** %"envp", i32*** %".13"
  br label %"0"
"0":
  %".17" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".18" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  store i32 0, i32* %"var_10h"
  store i32 0, i32* %"var_14h"
  store i32 0, i32* %"var_18h"
  %".22" = ptrtoint i8* %".18" to i32
  %".23" = ptrtoint i8* %".18" to i32
  call void @"sym.cgc_initFlagChannel"(i32 %".22", i32 %".23")
  br label %"1"
"1":
  %".26" = load i32, i32* %"var_14h"
  %".27" = icmp ne i32 %".26", 0
  %".28" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".27", i1* %".28"
  %".30" = load i8, i8* %"register0x00000206"
  %".31" = trunc i8 %".30" to i1
  br i1 %".31", label %"2", label %"3"
"2":
  %".33" = load i32, i32* %"var_14h"
  call void @"sym.cgc_free"(i32 %".33")
  store i32 0, i32* %"var_14h"
  br label %"3"
"3":
  %".37" = call i32 @"sym.cgc_getCommand"()
  store i32 %".37", i32* %"arg_8h"
  %".39" = load i32, i32* %"arg_8h"
  %".40" = icmp ne i32 %".39", 0
  %".41" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".40", i1* %".41"
  %".43" = load i8, i8* %"register0x00000206"
  %".44" = trunc i8 %".43" to i1
  br i1 %".44", label %"4", label %"5"
"4":
  %".46" = load i32, i32* %"arg_8h"
  %".47" = call i32 @"sym.cgc_parseCommand"(i32 %".46")
  store i32 %".47", i32* %"var_14h"
  br label %"5"
"5":
  %".50" = load i32, i32* %"var_14h"
  %".51" = icmp eq i32 %".50", 0
  %".52" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".51", i1* %".52"
  %".54" = load i8, i8* %"register0x00000206"
  %".55" = trunc i8 %".54" to i1
  br i1 %".55", label %"1", label %"6"
"6":
  %".57" = load i32, i32* %"var_14h"
  %".58" = call i32 @"sym.cgc_strcmp"(i32 %".57", i32 134554510)
  store i32 %".58", i32* %"iVar1"
  %".60" = load i32, i32* %"iVar1"
  %".61" = icmp ne i32 %".60", 0
  %".62" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".61", i1* %".62"
  %".64" = load i8, i8* %"register0x00000206"
  %".65" = trunc i8 %".64" to i1
  br i1 %".65", label %"7", label %"13"
"7":
  %".67" = load i32, i32* %"var_14h"
  %".68" = call i32 @"sym.cgc_strcmp"(i32 %".67", i32 134554516)
  store i32 %".68", i32* %"iVar1"
  %".70" = load i32, i32* %"iVar1"
  %".71" = icmp eq i32 %".70", 0
  %".72" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".71", i1* %".72"
  %".74" = load i8, i8* %"register0x00000206"
  %".75" = trunc i8 %".74" to i1
  br i1 %".75", label %"12", label %"8"
"8":
  %".77" = load i32, i32* %"var_14h"
  %".78" = add i32 %".77", 8
  %".79" = inttoptr i32 %".78" to i8*
  %".80" = load i8, i8* %".79"
  %".81" = load i32, i32* %"var_18h"
  %".82" = zext i8 %".80" to i32
  %".83" = call i32 @"sym.cgc_authenticateToken"(i32 %".81", i32 %".82")
  store i32 %".83", i32* %"iVar1"
  %".85" = load i32, i32* %"iVar1"
  %".86" = icmp eq i32 %".85", 0
  %".87" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".86", i1* %".87"
  %".89" = load i8, i8* %"register0x00000206"
  %".90" = trunc i8 %".89" to i1
  br i1 %".90", label %"11", label %"9"
"9":
  %".92" = load i32, i32* %"var_14h"
  %".93" = add i32 %".92", 8
  %".94" = inttoptr i32 %".93" to i8*
  %".95" = load i8, i8* %".94"
  %".96" = load i32, i32* %"var_18h"
  %".97" = zext i8 %".95" to i32
  %".98" = call i32 @"sym.cgc_getUserByToken"(i32 %".96", i32 %".97")
  store i32 %".98", i32* %"var_1ch"
  %".100" = load i32, i32* %"var_1ch"
  %".101" = icmp ne i32 %".100", 0
  %".102" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".101", i1* %".102"
  %".104" = load i8, i8* %"register0x00000206"
  %".105" = trunc i8 %".104" to i1
  br i1 %".105", label %"a", label %"1"
a:
  %".107" = load i32, i32* %"var_14h"
  %".108" = call i32 @"sym.cgc_strcmp"(i32 %".107", i32 134554494)
  store i32 %".108", i32* %"iVar1"
  %".110" = load i32, i32* %"iVar1"
  %".111" = icmp eq i32 %".110", 0
  %".112" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".111", i1* %".112"
  %".114" = load i8, i8* %"register0x00000206"
  %".115" = trunc i8 %".114" to i1
  br i1 %".115", label %"f", label %"b"
b:
  %".117" = load i32, i32* %"var_14h"
  %".118" = call i32 @"sym.cgc_strcmp"(i32 %".117", i32 134554505)
  store i32 %".118", i32* %"iVar1"
  %".120" = load i32, i32* %"iVar1"
  %".121" = icmp eq i32 %".120", 0
  %".122" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".121", i1* %".122"
  %".124" = load i8, i8* %"register0x00000206"
  %".125" = trunc i8 %".124" to i1
  br i1 %".125", label %"e", label %"c"
c:
  %".127" = load i32, i32* %"var_14h"
  %".128" = call i32 @"sym.cgc_strcmp"(i32 %".127", i32 134554523)
  store i32 %".128", i32* %"iVar1"
  %".130" = load i32, i32* %"iVar1"
  %".131" = icmp eq i32 %".130", 0
  %".132" = bitcast i8* %"register0x00000206" to i1*
  store i1 %".131", i1* %".132"
  %".134" = load i8, i8* %"register0x00000206"
  %".135" = trunc i8 %".134" to i1
  br i1 %".135", label %"10", label %"d"
d:
  %".137" = load i32, i32* %"var_10h"
  %".138" = load i32, i32* %"var_14h"
  %".139" = load i32, i32* %"var_1ch"
  call void @"sym.cgc_sendMessage"(i32 %".137", i32 %".138", i32 %".139")
  %".141" = load i32, i32* %"var_10h"
  %".142" = load i32, i32* %"var_18h"
  call void @"sym.cgc_sendMessageToFlagChannel"(i32 %".141", i32 %".142")
  br label %"10"
e:
  %".145" = load i32, i32* %"var_14h"
  %".146" = add i32 %".145", 4
  %".147" = inttoptr i32 %".146" to i8*
  %".148" = load i8, i8* %".147"
  %".149" = load i32, i32* %"var_10h"
  %".150" = load i32, i32* %"var_1ch"
  %".151" = zext i8 %".148" to i32
  call void @"sym.cgc_getMessages"(i32 %".149", i32 %".151", i32 %".150")
  br label %"10"
f:
  %".154" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %".155" = ptrtoint i8* %".154" to i32
  %".156" = load i32, i32* %"var_14h"
  call void @"sym.cgc_updateSubscription"(i32 %".155", i32 %".156")
  br label %"10"
"10":
  %".159" = load i32, i32* %"arg_8h"
  call void @"sym.cgc_free"(i32 %".159")
  br label %"1"
"11":
  %".162" = load i32, i32* %"var_14h"
  call void @"sym.cgc_sendAuthRequest"(i32 %".162")
  br label %"1"
"12":
  %".165" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".166" = ptrtoint i8* %".165" to i32
  %".167" = load i32, i32* %"var_14h"
  call void @"sym.cgc_processTokenRequest"(i32 %".166", i32 %".167")
  br label %"1"
"13":
  %".170" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999980
  %".171" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %".172" = ptrtoint i8* %".171" to i32
  %".173" = ptrtoint i8* %".171" to i32
  %".174" = load i32, i32* %"var_14h"
  call void @"sym.cgc_processAuthRequest"(i32 %".172", i32 %".173", i32 %".174")
  br label %"1"
}

declare void @"sym.cgc_getMessages"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getChannel"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_getMessagesFromAllChannels"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_getMessagesFromChannel"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_sendAllPriorityMessages"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getMessageById"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_cleanupChannel"(i32 %"arg_8h") 

declare i32 @"sym.cgc_transmit_all"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.imp.cgc_transmit"() 

declare i32 @"sym.cgc_strlen"(i32 %"arg_8h") 

declare void @"sym.cgc_sendNextMessage"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sendAllMessages"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sendLatestMessage"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getLastMessage"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getSubscription"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcmp"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_sendMessage"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_strcpy"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strtok"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strchr"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_memset"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_malloc"(i32 %"arg_8h") 

declare i32 @"sym.cgc_split_chunk"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_mark_allocated"(i32 %"arg_8h") 

declare i32 @"sym.cgc_log_base_two"(i32 %"arg_8h") 

declare void @"sym.cgc_list_remove"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_list_find"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_grow_heap"() 

declare void @"sym.imp.cgc_allocate"() 

declare void @"sym.cgc_mark_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_chunk_to_ptr"(i32 %"arg_8h") 

declare i32 @"sym.cgc_allocate_large_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_processAuthRequest"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_getUserByName"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_newUser"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sendWrongPasswordMessage"() 

declare void @"sym.cgc_sendAuthResponse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_strcat"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_computeSignature"(i32 %"arg_8h") 

declare i32 @"sym.cgc_to_hex"(i32 %"arg_8h") 

declare i32 @"sym.cgc_generateSigningKey"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_random"() 

declare void @"sym.cgc_addSubscriptions"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h", i32 %"arg_14h") 

declare i32 @"sym.cgc_newChannel"(i32 %"arg_8h") 

declare i32 @"sym.cgc_newSubscription"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_setDeliveryType"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_atoi"(i32 %"arg_8h") 

declare i32 @"sym.cgc_strncpy"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_free"(i32 %"arg_8h") 

declare i32 @"sym.cgc_ptr_to_chunk"(i32 %"arg_8h") 

declare void @"sym.cgc_list_insert_in_order"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_push_back"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_list_insert_after"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_list_insert_before"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_coalesce"(i32 %"arg_8h") 

declare void @"sym.cgc_updateSubscription"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_processTokenRequest"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_freeResponse"(i32 %"arg_8h") 

declare void @"sym.cgc_sendTokenResponse"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parseAuthResponse"(i32 %"arg_8h") 

declare i32 @"sym.cgc_newToken"(i32 %"arg_8h") 

declare i32 @"sym.cgc_generateRandomToken"(i32 %"arg_8h") 

declare void @"sym.cgc_sendInvalidSignatureError"() 

declare i32 @"sym.cgc_verifySignature"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_reverseSubscriptionList"(i32 %"arg_8h") 

declare i8 @"sym.cgc_to_bin"(i32 %"arg_8h") 

declare i32 @"sym.cgc_authenticateToken"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_parseCommand"(i32 %"arg_8h") 

declare i32 @"sym.cgc_newRequest"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.imp.cgc__terminate"() 

declare i32 @"sym.cgc_fgets"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare i32 @"sym.cgc_fgetc"(i32 %"arg_8h") 

declare void @"sym.imp.cgc_receive"() 

declare i32 @"sym.cgc_strncmp"(i32 %"arg_8h", i32 %"arg_ch", i32 %"arg_10h") 

declare void @"sym.cgc_sendMessageToFlagChannel"(i32 %"arg_8h", i32 %"arg_ch") 

declare void @"sym.cgc_initFlagChannel"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getRandomString"(i32 %"arg_8h") 

declare void @"sym.cgc_sendAuthRequest"(i32 %"arg_8h") 

declare i32 @"sym.cgc_getUserByToken"(i32 %"arg_8h", i32 %"arg_ch") 

declare i32 @"sym.cgc_getCommand"() 
