import 'package:flutter/material.dart';
import 'app_tokens.dart';

extension ThemeX on BuildContext {
  AppTokens get colors => Theme.of(this).extension<AppTokens>()!;
}
