import 'package:calorify/core/constants/colors/light_colors.dart';
import 'package:calorify/core/constants/colors/dark_colors.dart';
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
