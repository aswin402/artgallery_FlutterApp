import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText {
  // H1 – Page titles (Outfit)
  static TextStyle h1(BuildContext context) {
    return GoogleFonts.outfit(
      fontSize: 32,
      fontWeight: FontWeight.w700,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  // H2 – Section titles
  static TextStyle h2(BuildContext context) {
    return GoogleFonts.outfit(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  // Body – Main content (Geist)
  static TextStyle body(BuildContext context) {
    return GoogleFonts.geist(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }

  // Muted – Secondary text
  static TextStyle muted(BuildContext context) {
    return GoogleFonts.geist(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: Theme.of(context).colorScheme.onSurfaceVariant,
    );
  }

  // Mono – Prices, IDs (Geist Mono)
  static TextStyle mono(BuildContext context) {
    return GoogleFonts.geistMono(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Theme.of(context).colorScheme.onSurface,
    );
  }
}
