import 'package:specs/src/light_colors.dart';
import 'package:specs/src/dark_colors.dart';
import 'package:flutter/material.dart';

/// Extension on ColorScheme to provide success/green colors
/// These colors are defined in the color scheme implementations
extension ColorSchemeSuccess on ColorScheme {
  /// Success color (green) for positive states
  Color get success {
    return brightness == Brightness.dark
        ? darkColors.success
        : lightColors.success;
  }

  /// On success color (text/icon color on success background)
  Color get onSuccess {
    return brightness == Brightness.dark
        ? darkColors.onSuccess
        : lightColors.onSuccess;
  }

  /// Success container color (lighter background)
  Color get successContainer {
    return brightness == Brightness.dark
        ? darkColors.successContainer
        : lightColors.successContainer;
  }

  /// On success container color
  Color get onSuccessContainer {
    return brightness == Brightness.dark
        ? darkColors.onSuccessContainer
        : lightColors.onSuccessContainer;
  }
}

/// Extension on ColorScheme to provide macro nutrient icon colors
/// These colors are defined in the color scheme implementations
extension ColorSchemeMacroNutrients on ColorScheme {
  /// Calorie icon color (uses primary color)
  Color get calorieIconColor => primary;

  /// Protein icon color
  Color get proteinIconColor {
    return brightness == Brightness.dark
        ? darkColors.proteinIconColor
        : lightColors.proteinIconColor;
  }

  /// Carbs icon color
  Color get carbsIconColor {
    return brightness == Brightness.dark
        ? darkColors.carbsIconColor
        : lightColors.carbsIconColor;
  }

  /// Fat icon color
  Color get fatIconColor {
    return brightness == Brightness.dark
        ? darkColors.fatIconColor
        : lightColors.fatIconColor;
  }

  /// Fiber icon color
  Color get fiberIconColor {
    return brightness == Brightness.dark
        ? darkColors.fiberIconColor
        : lightColors.fiberIconColor;
  }
}
