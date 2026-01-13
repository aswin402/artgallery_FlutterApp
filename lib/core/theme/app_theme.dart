import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_radius.dart';
import 'app_tokens.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: LightTokens.background,

    colorScheme: const ColorScheme.light(
      primary: LightTokens.primary,
      onPrimary: LightTokens.primaryForeground,
      surface: LightTokens.background,
      onSurface: LightTokens.foreground,
      error: LightTokens.destructive,
    ),

    extensions: const [
      AppTokens(
        background: LightTokens.background,
        foreground: LightTokens.foreground,
        secondary: LightTokens.secondary,
        accent: LightTokens.accent,
        destructive: LightTokens.accent,
        ring: LightTokens.ring,
        input: LightTokens.input,
        card: LightTokens.card,
        navbar: LightTokens.navbar,
        themeToggleButton: LightTokens.themeToggleButton,
        themeToggleButtonbg: LightTokens.themeToggleButtonbg,
        border: LightTokens.border,
        primary: LightTokens.primary,
        muted: LightTokens.muted,
        button: LightTokens.button,
        buttonbg: LightTokens.buttonBg,
        secondarybutton: LightTokens.secondaryButton,
        secondarybuttonbg: LightTokens.secondaryButtonBg
      ),
    ],

    cardTheme: CardThemeData(
      color: LightTokens.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        side: const BorderSide(color: LightTokens.border),
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: LightTokens.primary,
        foregroundColor: LightTokens.primaryForeground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.lg),
        ),
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
      ),
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: DarkTokens.background,

    extensions: const [
      AppTokens(
        background: DarkTokens.background,
        foreground: DarkTokens.foreground,
        secondary: DarkTokens.secondary,
        accent: DarkTokens.accent,
        destructive: DarkTokens.destructive,
        ring: DarkTokens.ring,
        input: DarkTokens.input,
        card: DarkTokens.card,
        navbar: DarkTokens.navbar,
        themeToggleButton: DarkTokens.themeToggleButton,
        themeToggleButtonbg: DarkTokens.themeToggleButtonbg,
        border: DarkTokens.border,
        primary: DarkTokens.primary,
        muted: DarkTokens.muted,
        button: DarkTokens.button,
        buttonbg: DarkTokens.buttonBg,
        secondarybutton: DarkTokens.secondaryButton,
        secondarybuttonbg: DarkTokens.secondaryButtonBg
      ),
    ],

    cardTheme: CardThemeData(
      color: DarkTokens.card,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.lg),
        side: const BorderSide(color: DarkTokens.border),
      ),
    ),
  );
}
