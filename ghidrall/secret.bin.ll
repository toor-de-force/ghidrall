; ModuleID = "secret.bin"
target triple = "x86_64-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

define void @"main"() 
{
entry:
  %"iVar1" = alloca i32
  %"iVar2" = alloca i32
  %"iVar3" = alloca i32
  %"iVar4" = alloca i32
  %"iVar5" = alloca i32
  %"iVar6" = alloca i32
  %"iVar7" = alloca i32
  %"var_1h" = alloca i64
  br label %"0x000006c3"
"0x000006c3":
  %".3" = call i32 @nd()
  store i32 %".3", i32* %"iVar1"
  %".5" = call i32 @nd()
  store i32 %".5", i32* %"iVar2"
  %".7" = call i32 @nd()
  store i32 %".7", i32* %"iVar3"
  %".9" = call i32 @nd()
  store i32 %".9", i32* %"iVar4"
  %".11" = call i32 @nd()
  store i32 %".11", i32* %"iVar5"
  %".13" = call i32 @nd()
  store i32 %".13", i32* %"iVar6"
  %".15" = call i32 @nd()
  store i32 %".15", i32* %"iVar7"
  %".17" = load i32, i32* %"iVar1"
  %".18" = shl i32 %".17", 5
  %".19" = ashr i32 %".18", 2
  store i32 %".19", i32* %"iVar1"
  %".21" = load i32, i32* %"iVar1"
  %".22" = sdiv i32 %".21", 26
  %".23" = trunc i32 %".22" to i8
  %".24" = mul i8 %".23", -26
  %".25" = load i32, i32* %"iVar1"
  %".26" = trunc i32 %".25" to i8
  %".27" = add i8 %".26", %".24"
  %".28" = icmp eq i8 %".27", 2
  %".29" = load i32, i32* %"iVar2"
  %".30" = mul i32 %".29", 23
  %".31" = ashr i32 %".30", 2
  store i32 %".31", i32* %"iVar2"
  %".33" = load i32, i32* %"iVar2"
  %".34" = sdiv i32 %".33", 26
  %".35" = trunc i32 %".34" to i8
  %".36" = mul i8 %".35", -26
  %".37" = load i32, i32* %"iVar2"
  %".38" = trunc i32 %".37" to i8
  %".39" = add i8 %".38", %".36"
  %".40" = icmp eq i8 %".39", 8
  %".41" = load i32, i32* %"iVar3"
  %".42" = mul i32 %".41", 22
  %".43" = ashr i32 %".42", 2
  store i32 %".43", i32* %"iVar3"
  %".45" = load i32, i32* %"iVar3"
  %".46" = sdiv i32 %".45", 26
  %".47" = trunc i32 %".46" to i8
  %".48" = mul i8 %".47", -26
  %".49" = load i32, i32* %"iVar3"
  %".50" = trunc i32 %".49" to i8
  %".51" = add i8 %".50", %".48"
  %".52" = icmp eq i8 %".51", 25
  %".53" = load i32, i32* %"iVar4"
  %".54" = mul i32 %".53", 42
  %".55" = ashr i32 %".54", 2
  store i32 %".55", i32* %"iVar4"
  %".57" = load i32, i32* %"iVar4"
  %".58" = sdiv i32 %".57", 26
  %".59" = trunc i32 %".58" to i8
  %".60" = mul i8 %".59", -26
  %".61" = load i32, i32* %"iVar4"
  %".62" = trunc i32 %".61" to i8
  %".63" = add i8 %".62", %".60"
  %".64" = icmp eq i8 %".63", 20
  %".65" = load i32, i32* %"iVar5"
  %".66" = mul i32 %".65", 15
  %".67" = ashr i32 %".66", 2
  store i32 %".67", i32* %"iVar5"
  %".69" = load i32, i32* %"iVar5"
  %".70" = sdiv i32 %".69", 26
  %".71" = trunc i32 %".70" to i8
  %".72" = mul i8 %".71", -26
  %".73" = load i32, i32* %"iVar5"
  %".74" = trunc i32 %".73" to i8
  %".75" = add i8 %".74", %".72"
  %".76" = icmp eq i8 %".75", 11
  %".77" = load i32, i32* %"iVar6"
  %".78" = mul i32 %".77", 25
  %".79" = ashr i32 %".78", 2
  store i32 %".79", i32* %"iVar6"
  %".81" = load i32, i32* %"iVar6"
  %".82" = sdiv i32 %".81", 26
  %".83" = trunc i32 %".82" to i8
  %".84" = mul i8 %".83", -26
  %".85" = load i32, i32* %"iVar6"
  %".86" = trunc i32 %".85" to i8
  %".87" = add i8 %".86", %".84"
  %".88" = icmp eq i8 %".87", 16
  %".89" = load i32, i32* %"iVar7"
  %".90" = mul i32 %".89", 29
  %".91" = ashr i32 %".90", 2
  store i32 %".91", i32* %"iVar7"
  %".93" = load i32, i32* %"iVar7"
  %".94" = sdiv i32 %".93", 26
  %".95" = trunc i32 %".94" to i8
  %".96" = mul i8 %".95", -26
  %".97" = load i32, i32* %"iVar7"
  %".98" = trunc i32 %".97" to i8
  %".99" = add i8 %".98", %".96"
  %".100" = icmp eq i8 %".99", 4
  %".101" = and i1 %".100", %".100"
  %".102" = and i1 %".100", %".101"
  %".103" = and i1 %".100", %".102"
  %".104" = and i1 %".100", %".103"
  %".105" = and i1 %".100", %".104"
  %".106" = and i1 %".100", %".105"
  br i1 %".106", label %"0x00000867", label %"0x0000086c"
"0x00000867":
  call void @verifier.error()
  br label %"0x0000086c"
"0x0000086c":
  ret void
}

declare i32 @nd() 

declare void @verifier.error() 
