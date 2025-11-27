import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.palmLeaf,
        primary: AppColors.palmLeaf,
        secondary: AppColors.carrotOrange,
        background: AppColors.pearlBeige,
        surface: AppColors.pearlBeige,
      ),
      scaffoldBackgroundColor: AppColors.pearlBeige,
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkSpruce,
        foregroundColor: AppColors.pearlBeige,
        elevation: 0,
      ),
    );
  }
}
