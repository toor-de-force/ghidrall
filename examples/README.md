# Examples

## Buffer Overflow

The buffer overflow example can be found in `buffer_overflow.c` and the binary, `buffer_overflow.bin`. If you run the binary in Ghidra and look at the resulting C code, you get a mess like this:

```

// WARNING: Variable defined which should be unmapped: var_4h
// WARNING: Could not reconcile some variable overlaps
// WARNING: [rz-ghidra] Detected overlap for variable var_8h

undefined8 main(void)
{
    int64_t var_40h;
    undefined4 uStack64;
    undefined4 uStack60;
    undefined4 uStack56;
    undefined4 uStack52;
    undefined4 uStack48;
    undefined4 uStack44;
    undefined4 uStack40;
    undefined4 uStack36;
    undefined4 uStack32;
    undefined4 uStack28;
    undefined2 uStack24;
    int64_t var_4h;
    
    var_4h._0_4_ = 0;
    uStack40 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._32_4_;
    uStack36 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._36_4_;
    uStack32 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._40_4_;
    uStack28 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._44_4_;
    uStack56 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._16_4_;
    uStack52 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._20_4_;
    uStack48 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._24_4_;
    uStack44 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._28_4_;
    var_40h._0_4_ = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._0_4_;
    var_40h._4_4_ = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._4_4_;
    uStack64 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._8_4_;
    uStack60 = str.aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa._12_4_;
    uStack24 = 0x6161;
    sym.foo((int64_t)&var_40h);
    return 0;
}

```

As C code, this doesn't make sense. It's treating the char array in main as seperate 4-byte variables and assuming they are adjacent in memory. In Ghidrall's byte_addressable mode, the variables are all represented on the stack and this convention of seperate variables forming a whole array makes more sense:

```
; ModuleID = "vuln.bin"
target triple = "i386-pc-linux-gnu"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"

@"reloc.__libc_start_main" = global i32 0
@"segment.GNU_STACK" = global i32 0
@"sym..bss" = global i32 0
@"segment.LOAD1" = global i32 0
@"reloc.strncpy" = global i32 0
@"0x004005e0" = global [51 x i8] c"aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa\00"
@"reloc.__gmon_start" = global i32 0
define void @"sym.foo"(i64 %"arg1") 
{
"0":
  %"stack" = alloca [999999 x i8]
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"var_18h" = bitcast i8* %".3" to i64*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999979
  %"var_dh" = bitcast i8* %".4" to i64*
  %".5" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i64 999979
  ret void
}

define i64 @"main"() 
{
"0":
  %"stack" = alloca [999999 x i8]
  %".2" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999928
  %"var_40h" = bitcast i8* %".2" to i64*
  %".3" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999936
  %"uStack64" = bitcast i8* %".3" to i32*
  %".4" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999940
  %"uStack60" = bitcast i8* %".4" to i32*
  %".5" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999944
  %"uStack56" = bitcast i8* %".5" to i32*
  %".6" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999948
  %"uStack52" = bitcast i8* %".6" to i32*
  %".7" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999952
  %"uStack48" = bitcast i8* %".7" to i32*
  %".8" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999956
  %"uStack44" = bitcast i8* %".8" to i32*
  %".9" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999960
  %"uStack40" = bitcast i8* %".9" to i32*
  %".10" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999964
  %"uStack36" = bitcast i8* %".10" to i32*
  %".11" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999968
  %"uStack32" = bitcast i8* %".11" to i32*
  %".12" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999972
  %"uStack28" = bitcast i8* %".12" to i32*
  %".13" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999976
  %"uStack24" = bitcast i8* %".13" to i16*
  %".14" = getelementptr [999999 x i8], [999999 x i8]* %"stack", i32 0, i32 999988
  %"var_4h" = bitcast i8* %".14" to i64*
  %"register0x0" = alloca i64
  %".15" = getelementptr inbounds [999999 x i8], [999999 x i8]* %"stack", i32 0, i64 999928
  %".16" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 32
  %".17" = bitcast i8* %".16" to i32*
  %".18" = load i32, i32* %".17"
  store i32 %".18", i32* %"uStack40"
  %".20" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 36
  %".21" = bitcast i8* %".20" to i32*
  %".22" = load i32, i32* %".21"
  store i32 %".22", i32* %"uStack36"
  %".24" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 40
  %".25" = bitcast i8* %".24" to i32*
  %".26" = load i32, i32* %".25"
  store i32 %".26", i32* %"uStack32"
  %".28" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 44
  %".29" = bitcast i8* %".28" to i32*
  %".30" = load i32, i32* %".29"
  store i32 %".30", i32* %"uStack28"
  %".32" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 16
  %".33" = bitcast i8* %".32" to i32*
  %".34" = load i32, i32* %".33"
  store i32 %".34", i32* %"uStack56"
  %".36" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 20
  %".37" = bitcast i8* %".36" to i32*
  %".38" = load i32, i32* %".37"
  store i32 %".38", i32* %"uStack52"
  %".40" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 24
  %".41" = bitcast i8* %".40" to i32*
  %".42" = load i32, i32* %".41"
  store i32 %".42", i32* %"uStack48"
  %".44" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 28
  %".45" = bitcast i8* %".44" to i32*
  %".46" = load i32, i32* %".45"
  store i32 %".46", i32* %"uStack44"
  %".48" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 0
  %".49" = bitcast i8* %".48" to i32*
  %".50" = load i32, i32* %".49"
  %".51" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 4
  %".52" = bitcast i8* %".51" to i32*
  %".53" = load i32, i32* %".52"
  %".54" = zext i32 %".53" to i64
  store i64 %".54", i64* %"var_40h"
  %".56" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 8
  %".57" = bitcast i8* %".56" to i32*
  %".58" = load i32, i32* %".57"
  store i32 %".58", i32* %"uStack64"
  %".60" = getelementptr [51 x i8], [51 x i8]* @"0x004005e0", i32 0, i32 12
  %".61" = bitcast i8* %".60" to i32*
  %".62" = load i32, i32* %".61"
  store i32 %".62", i32* %"uStack60"
  store i16 24929, i16* %"uStack24"
  %".65" = ptrtoint i8* %".15" to i64
  call void @"sym.foo"(i64 %".65")
  store i64 0, i64* %"register0x0"
  %".68" = load i64, i64* %"register0x0"
  ret i64 %".68"
}

```

To regenerate this example:

1. clang -fno-stack-protector buffer_overflow.c -o buffer_overflow.bin
2. python3 ghidrall.py examples/buffer_overflow.bin -f main,sym.foo,sym.imp.strncpy -l byte_addressable

Then inspect the result visually.

## Password Challenge
