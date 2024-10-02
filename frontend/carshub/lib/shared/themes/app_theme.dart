import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_color.dart';

class AppTheme {
  /// App colors are defined here
  AppColor get appColor => AppColor(
      primaryColor: const Color(0xff199A8E),
      disableButtonColor: const Color(0xffCCCDD1),
      warningColor: const Color(0xffc7400a));

  /// Theme for snackbar
  static snackbarTheme(BuildContext context) {
    return SnackBarThemeData(
        showCloseIcon: true,
        backgroundColor: Colors.white,
        disabledActionBackgroundColor: Colors.transparent,
        shape: Border.all(
            color: AppTheme().appColor.primaryColor!,
            width: 2.0,
            style: BorderStyle.solid),
        elevation: 3.0,
        // backgroundColor: AppTheme().appColor.primaryColor,
        width: MediaQuery.of(context).size.width * 0.8,
        actionBackgroundColor: Colors.transparent,
        behavior: SnackBarBehavior.floating,
        closeIconColor: AppTheme().appColor.primaryColor,
        contentTextStyle: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: AppTheme().appColor.primaryColor,
            fontSize: 14.sp,
            fontFamily: "Quicksand"));
  }

  /// Theme for bottom navigation bar
  static bottomNavigationBarTheme(BuildContext context) {
    return BottomNavigationBarThemeData(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedLabelStyle: AppTheme().textTheme.titleMedium,
        unselectedLabelStyle: AppTheme().textTheme.titleMedium!.copyWith(
            fontSize: 12.0, color: AppTheme().appColor.disableButtonColor),
        selectedItemColor: AppTheme().appColor.primaryColor);
  }

  /// Theme for oulined button
  static outlinedButtonTheme(BuildContext context) {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          disabledBackgroundColor: AppTheme().appColor.disableButtonColor,
          fixedSize: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height * 0.05),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
          backgroundColor: AppTheme().appColor.primaryColor),
    );
  }

  /// Theme for appbar
  static appbarTheme(BuildContext buildContext) {
    return AppBarTheme(
      titleTextStyle: AppTheme().textTheme.titleMedium,
      iconTheme: IconThemeData(
        color: AppTheme().appColor.primaryColor,
      ),
    );
  }

  /// Theme for floating action button
  static floatingActionButtonTheme(context) {
    return FloatingActionButtonThemeData(
      backgroundColor: AppTheme().appColor.primaryColor,
    );
  }

  /// Fontweight are defined here
  static const _small = FontWeight.w300;
  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w700;
  static const _bold = FontWeight.w900;

  /// Theme for text
  TextTheme get textTheme => TextTheme(
      titleLarge: TextStyle(
          fontWeight: _bold,
          fontFamily: "Quicksand",
          fontSize: 16.sp,
          color: AppTheme().appColor.primaryColor),
      titleMedium: TextStyle(
          fontWeight: _medium,
          fontFamily: "Quicksand",
          fontSize: 14.sp,
          color: AppTheme().appColor.primaryColor),
      titleSmall: TextStyle(
          fontWeight: _regular,
          fontFamily: "Quicksand",
          fontSize: 12.sp,
          color: AppTheme().appColor.primaryColor),
      displaySmall: TextStyle(
          fontWeight: _small,
          fontFamily: "Quicksand",
          fontSize: 10.sp,
          color: AppTheme().appColor.primaryColor));
}
