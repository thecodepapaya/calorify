import 'package:specs/src/color_scheme_interface.dart';
import 'package:flutter/material.dart';

/// Light theme color constants implementing the common interface
class LightColors implements ColorSchemeInterface {
  const LightColors();

  // --- Primary Colors ---
  @override
  Color get primary => const Color(0xFF3F8AE0);

  @override
  Color get onPrimary => const Color(0xFFF2F7FD);

  @override
  Color get primaryContainer => const Color(0xFFD0E4FF);

  @override
  Color get onPrimaryContainer => const Color(0xFF001D36);

  // --- Secondary Colors ---
  @override
  Color get secondary => const Color(0xFFE1E7F0);

  @override
  Color get onSecondary => const Color(0xFF4D5562);

  @override
  Color get secondaryContainer => const Color(0xFFDDE2FF);

  @override
  Color get onSecondaryContainer => const Color(0xFF131C2C);

  // --- Tertiary Colors (Accent) ---
  @override
  Color get tertiary => const Color(0xFFFC9B36);

  @override
  Color get onTertiary => const Color(0xFFFFFFFF);

  @override
  Color get tertiaryContainer => const Color(0xFFFFDDB9);

  @override
  Color get onTertiaryContainer => const Color(0xFF2A1800);

  // --- Error Colors (Destructive) ---
  @override
  Color get error => const Color(0xFFE84C4C);

  @override
  Color get onError => const Color(0xFFF9F9F9);

  @override
  Color get errorContainer => const Color(0xFFFFDAD6);

  @override
  Color get onErrorContainer => const Color(0xFF410002);

  // --- Background & Surface Colors ---
  @override
  Color get background => const Color(0xFFF7F8FC);

  @override
  Color get onBackground => const Color(0xFF2D3036);

  @override
  Color get surface => const Color(0xFFFCFCFD);

  @override
  Color get onSurface => const Color(0xFF2D3036);

  @override
  Color get surfaceVariant => const Color(0xFFE0E2EC);

  @override
  Color get onSurfaceVariant => const Color(0xFF44474F);

  // --- Outline & Utility Colors ---
  @override
  Color get outline => const Color(0xFFD3D9E2);

  @override
  Color get outlineVariant => const Color(0xFFC4C6CF);

  @override
  Color get shadow => const Color(0xFF000000);

  @override
  Color get scrim => const Color(0xFF000000);

  // --- Inverse Colors ---
  @override
  Color get inverseSurface => const Color(0xFF2F3033);

  @override
  Color get onInverseSurface => const Color(0xFFF1F0F4);

  @override
  Color get inversePrimary => const Color(0xFFADC7FF);

  @override
  Color get surfaceTint => const Color(0xFF3F8AE0);

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
  Color get success => const Color(0xFF4CAF50); // Material Green 500

  @override
  Color get onSuccess => const Color(0xFFFFFFFF); // White

  @override
  Color get successContainer => const Color(0x1A4CAF50); // Material Green 500 with 10% alpha

  @override
  Color get onSuccessContainer => const Color(0xFF2E7D32); // Material Green 700
}

/// Singleton instance for light colors
const LightColors lightColors = LightColors();

/// Icon colors for macro nutrients (backward compatibility - uses light theme)
final Color calorieIconColor = lightColors.calorieIconColor;
final Color proteinIconColor = lightColors.proteinIconColor;
final Color carbsIconColor = lightColors.carbsIconColor;
final Color fatIconColor = lightColors.fatIconColor;
final Color fiberIconColor = lightColors.fiberIconColor;
