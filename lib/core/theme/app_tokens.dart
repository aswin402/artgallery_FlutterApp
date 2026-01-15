import 'package:flutter/material.dart';

@immutable
class AppTokens extends ThemeExtension<AppTokens> {
  final Color background;
  final Color foreground;
  final Color navbar;
  final Color themeToggleButton;
  final Color themeToggleButtonbg;
  final Color card;
  final Color cardForeground;
  final Color cardSecondary;
  final Color cardSecondaryForeground;
  final Color border;
  final Color primary;
  final Color secondary;
  final Color muted;
  final Color mutedForeground;
  final Color accent;
  final Color destructive;
  final Color ring;
  final Color input;
  final Color inputField;
  final Color button;
  final Color buttonbg;
  final Color secondarybutton;
  final Color secondarybuttonbg;
  final Color fontcolor;

  const AppTokens({
    required this.background,
    required this.foreground,
    required this.navbar,
    required this.themeToggleButton,
    required this.themeToggleButtonbg,
    required this.card,
    required this.cardForeground,
    required this.cardSecondary,
    required this.cardSecondaryForeground,
    required this.border,
    required this.primary,
    required this.secondary,
    required this.muted,
    required this.mutedForeground,
    required this.accent,
    required this.destructive,
    required this.ring,
    required this.input,
    required this.inputField,
    required this.button,
    required this.buttonbg,
    required this.secondarybutton,
    required this.secondarybuttonbg,
    required this.fontcolor,
  });

  @override
  AppTokens copyWith({
    Color? background,
    Color? foreground,
    Color? navbar,
    Color? themeToggleButton,
    Color? themeToggleButtonbg,
    Color? card,
    Color? cardForeground,
    Color? cardSecondary,
    Color? cardSecondaryForeground,
    Color? border,
    Color? primary,
    Color? secondary,
    Color? muted,
    Color? mutedForeground,
    Color? accent,
    Color? destructive,
    Color? ring,
    Color? input,
    Color? inputField,
    Color? button,
    Color? buttonbg,
    Color? secondarybutton,
    Color? secondarybuttonbg,
    Color? fontcolor,
  }) {
    return AppTokens(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      navbar: navbar ?? this.navbar,
      themeToggleButton: themeToggleButton ?? this.themeToggleButton,
      themeToggleButtonbg: themeToggleButtonbg ?? this.themeToggleButtonbg,
      card: card ?? this.card,
      cardForeground: cardForeground ?? this.cardForeground,
      cardSecondary: cardSecondary ?? this.cardSecondary,
      cardSecondaryForeground: cardSecondaryForeground ?? this.cardSecondaryForeground,
      border: border ?? this.border,
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      muted: muted ?? this.muted,
      mutedForeground: mutedForeground ?? this.mutedForeground,
      accent: accent ?? this.accent,
      destructive: destructive ?? this.destructive,
      ring: ring ?? this.ring,
      input: input ?? this.input,
      inputField: inputField ?? this.inputField,
      button: button ?? this.button,
      buttonbg: buttonbg ?? this.buttonbg,
      secondarybutton: secondarybutton ?? this.secondarybutton,
      secondarybuttonbg: secondarybuttonbg ?? this.secondarybuttonbg,
      fontcolor: fontcolor ?? this.fontcolor,
    );
  }

  @override
  AppTokens lerp(AppTokens? other, double t) {
    if (other == null) return this;
    return AppTokens(
      background: Color.lerp(background, other.background, t)!,
      foreground: Color.lerp(foreground, other.foreground, t)!,
      navbar: Color.lerp(navbar, other.navbar, t)!,
      themeToggleButton: Color.lerp(
        themeToggleButton,
        other.themeToggleButton,
        t,
      )!,
      themeToggleButtonbg: Color.lerp(
        themeToggleButtonbg,
        other.themeToggleButtonbg,
        t,
      )!,
      card: Color.lerp(card, other.card, t)!,
      cardForeground: Color.lerp(cardForeground, other.cardForeground, t)!,
      cardSecondary: Color.lerp(cardSecondary, other.cardSecondary, t)!,
      cardSecondaryForeground: Color.lerp(
        cardSecondaryForeground,
        other.cardSecondaryForeground,
        t,
      )!,
      border: Color.lerp(border, other.border, t)!,
      primary: Color.lerp(primary, other.primary, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      muted: Color.lerp(muted, other.muted, t)!,
      mutedForeground: Color.lerp(mutedForeground, other.mutedForeground, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      destructive: Color.lerp(destructive, other.destructive, t)!,
      ring: Color.lerp(ring, other.ring, t)!,
      input: Color.lerp(input, other.input, t)!,
      inputField: Color.lerp(inputField, other.inputField, t)!,
      button: Color.lerp(button, other.button, t)!,
      buttonbg: Color.lerp(buttonbg, other.buttonbg, t)!,
      secondarybutton: Color.lerp(secondarybutton, other.secondarybutton, t)!,
      secondarybuttonbg: Color.lerp(
        secondarybuttonbg,
        other.secondarybuttonbg,
        t,
      )!,
      fontcolor: Color.lerp(fontcolor, other.fontcolor, t)!,
    );
  }
}
