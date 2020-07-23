; ModuleID = 'var_values_param.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@global_time = global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z10path_startv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: nounwind
declare i64 @time(i64*) #1

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z9path_goalv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z12path_nongoalv() #0 {
  %1 = call i64 @time(i64* @global_time) #3
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define void @_Z4funciiibc(i32 %0, i32 %1, i32 %2, i1 zeroext %3, i8 signext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  %11 = zext i1 %3 to i8
  store i8 %11, i8* %9, align 1
  store i8 %4, i8* %10, align 1
  %12 = load i32, i32* %6, align 4
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %32

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 8
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i8, i8* %9, align 1
  %21 = trunc i8 %20 to i1
  %22 = zext i1 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 7
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8, i8* %10, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 12
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  call void @_Z9path_goalv()
  br label %32

32:                                               ; preds = %31, %27, %24, %19, %14, %5
  ret void
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define i32 @main() #2 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @_Z10path_startv()
  %6 = call i32 @rand() #3
  store i32 %6, i32* %1, align 4
  %7 = call i32 @rand() #3
  store i32 %7, i32* %2, align 4
  %8 = call i32 @rand() #3
  store i32 %8, i32* %3, align 4
  %9 = call i32 @rand() #3
  %10 = icmp ne i32 %9, 0
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %4, align 1
  %12 = call i32 @rand() #3
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %5, align 1
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i8, i8* %4, align 1
  %18 = trunc i8 %17 to i1
  %19 = load i8, i8* %5, align 1
  call void @_Z4funciiibc(i32 %14, i32 %15, i32 %16, i1 zeroext %18, i8 signext %19)
  ret i32 0
}

; Function Attrs: nounwind
declare i32 @rand() #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"}
!1 = !{i32 1, !"wchar_size", i32 4}
