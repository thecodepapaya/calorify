import 'package:flutter/material.dart';

/// Common interface for theme color schemes
abstract class ColorSchemeInterface {
  // Primary Colors
  Color get primary;
  Color get onPrimary;
  Color get primaryContainer;
  Color get onPrimaryContainer;

  // Secondary Colors
  Color get secondary;
  Color get onSecondary;
  Color get secondaryContainer;
  Color get onSecondaryContainer;

  // Tertiary Colors
  Color get tertiary;
  Color get onTertiary;
  Color get tertiaryContainer;
  Color get onTertiaryContainer;

  // Error Colors
  Color get error;
  Color get onError;
  Color get errorContainer;
  Color get onErrorContainer;

  // Background & Surface Colors
  Color get background;
  Color get onBackground;
  Color get surface;
  Color get onSurface;
  Color get surfaceVariant;
  Color get onSurfaceVariant;

  // Outline & Utility Colors
  Color get outline;
  Color get outlineVariant;
  Color get shadow;
  Color get scrim;

  // Inverse Colors
  Color get inverseSurface;
  Color get onInverseSurface;
  Color get inversePrimary;
  Color get surfaceTint;

  // Icon Colors for Macro Nutrients
  Color get calorieIconColor;
  Color get proteinIconColor;
  Color get carbsIconColor;
  Color get fatIconColor;
  Color get fiberIconColor;

  // Success Colors (Green)
  Color get success;
  Color get onSuccess;
  Color get successContainer;
  Color get onSuccessContainer;
}
