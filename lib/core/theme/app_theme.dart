import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_radius.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.background,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: AppColors.primaryForeground,
      surface: AppColors.background,
      onSurface: AppColors.foreground,
      error: AppColors.destructive,
    ),

    cardTheme: CardThemeData(
      color: AppColors.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        side: const BorderSide(color: AppColors.border),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.primaryForeground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkBackground,

    cardTheme: CardThemeData(
      color: AppColors.darkCard,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        side: const BorderSide(color: AppColors.darkBorder),
      ),
    ),
  );
}
