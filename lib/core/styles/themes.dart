import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/app_colors.dart';

class Themes {
  static ThemeData get light => ThemeData(
    fontFamily: 'CircularStd',
    scaffoldBackgroundColor: AppColors.backgroundColor,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.backgroundColor,
      surfaceTintColor: Colors.transparent,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.backgroundColor,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.lightGreyColor,
    ),
  );
}
