import 'package:specs/src/color_scheme_interface.dart';
import 'package:flutter/material.dart';

/// Dark theme color constants implementing the common interface
class DarkColors implements ColorSchemeInterface {
  const DarkColors();

  // --- Primary Colors ---
  @override
  Color get primary => const Color(0xFF79B3F2);

  @override
  Color get onPrimary => const Color(0xFF1D2C3D);

  @override
  Color get primaryContainer => const Color(0xFF1A3A5C);

  @override
  Color get onPrimaryContainer => const Color(0xFFD0E4FF);

  // --- Secondary Colors ---
  @override
  Color get secondary => const Color(0xFF4D5562);

  @override
  Color get onSecondary => const Color(0xFFE1E7F0);

  @override
  Color get secondaryContainer => const Color(0xFF2A3140);

  @override
  Color get onSecondaryContainer => const Color(0xFFDDE2FF);

  // --- Tertiary Colors ---
  @override
  Color get tertiary => const Color(0xFFFFB366);

  @override
  Color get onTertiary => const Color(0xFF4A2A00);

  @override
  Color get tertiaryContainer => const Color(0xFF6B4A1A);

  @override
  Color get onTertiaryContainer => const Color(0xFFFFDDB9);

  // --- Error Colors ---
  @override
  Color get error => const Color(0xFFFF6B6B);

  @override
  Color get onError => const Color(0xFF4A0000);

  @override
  Color get errorContainer => const Color(0xFF6B1A1A);

  @override
  Color get onErrorContainer => const Color(0xFFFFDAD6);

  // --- Background & Surface Colors ---
  @override
  Color get background => const Color(0xFF1A1C1E);

  @override
  Color get onBackground => const Color(0xFFE3E2E6);

  @override
  Color get surface => const Color(0xFF1F1F23);

  @override
  Color get onSurface => const Color(0xFFE3E2E6);

  @override
  Color get surfaceVariant => const Color(0xFF3A3B40);

  @override
  Color get onSurfaceVariant => const Color(0xFFC4C6CF);

  // --- Outline & Utility Colors ---
  @override
  Color get outline => const Color(0xFF5C5D62);

  @override
  Color get outlineVariant => const Color(0xFF44474F);

  @override
  Color get shadow => const Color(0xFF000000);

  @override
  Color get scrim => const Color(0xFF000000);

  // --- Inverse Colors ---
  @override
  Color get inverseSurface => const Color(0xFFE3E2E6);

  @override
  Color get onInverseSurface => const Color(0xFF2F3033);

  @override
  Color get inversePrimary => const Color(0xFF3F8AE0);

  @override
  Color get surfaceTint => const Color(0xFF79B3F2);

  // --- Icon Colors for Macro Nutrients ---
  @override
  Color get calorieIconColor => const Color(0xFF3F8AE0);

  @override
  Color get proteinIconColor => const Color(0xFFFC9B36);

  @override
  Color get carbsIconColor => const Color(0xFF4CB3B3);

  @override
  Color get fatIconColor => const Color(0xFF85B3E0);

  @override
  Color get fiberIconColor => const Color(0xFFE0B341);

  // --- Success Colors (Green) ---
  @override
  Color get success => const Color(0xFF81C784); // Material Green 300

  @override
  Color get onSuccess => const Color(0xFF1B5E20); // Material Green 900

  @override
  Color get successContainer => const Color(0x4D1B5E20); // Material Green 900 with 30% alpha

  @override
  Color get onSuccessContainer => const Color(0xFF81C784); // Material Green 300
}

/// Singleton instance for dark colors
const DarkColors darkColors = DarkColors();
