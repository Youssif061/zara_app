import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/app_colors.dart';

class Themes {
  static ThemeData get light => ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.lightGreyColor,
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    // splashFactory: NoSplash.splashFactory,
    fontFamily: 'CircularStd',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: Colors.transparent,
      elevation: 0,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      selectedIconTheme: IconThemeData(color: AppColors.primaryColor),
      backgroundColor: AppColors.backgroundColor,
      type: BottomNavigationBarType.fixed,
    ),
  );
}
