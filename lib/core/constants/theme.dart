import 'package:calorify/core/constants/colors/light_colors.dart';
import 'package:calorify/core/constants/colors/dark_colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: lightColors.primary,
      onPrimary: lightColors.onPrimary,
      primaryContainer: lightColors.primaryContainer,
      onPrimaryContainer: lightColors.onPrimaryContainer,

      secondary: lightColors.secondary,
      onSecondary: lightColors.onSecondary,
      secondaryContainer: lightColors.secondaryContainer,
      onSecondaryContainer: lightColors.onSecondaryContainer,

      tertiary: lightColors.tertiary,
      onTertiary: lightColors.onTertiary,
      tertiaryContainer: lightColors.tertiaryContainer,
      onTertiaryContainer: lightColors.onTertiaryContainer,

      error: lightColors.error,
      onError: lightColors.onError,
      errorContainer: lightColors.errorContainer,
      onErrorContainer: lightColors.onErrorContainer,

      background: lightColors.background,
      onBackground: lightColors.onBackground,

      surface: lightColors.surface,
      onSurface: lightColors.onSurface,

      surfaceContainerHighest: lightColors.surfaceVariant,
      onSurfaceVariant: lightColors.onSurfaceVariant,

      outline: lightColors.outline,
      outlineVariant: lightColors.outlineVariant,
      shadow: lightColors.shadow,
      scrim: lightColors.scrim,

      inverseSurface: lightColors.inverseSurface,
      onInverseSurface: lightColors.onInverseSurface,
      inversePrimary: lightColors.inversePrimary,
      surfaceTint: lightColors.surfaceTint,
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(borderRadius: globalRadius),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,

      primary: darkColors.primary,
      onPrimary: darkColors.onPrimary,
      primaryContainer: darkColors.primaryContainer,
      onPrimaryContainer: darkColors.onPrimaryContainer,

      secondary: darkColors.secondary,
      onSecondary: darkColors.onSecondary,
      secondaryContainer: darkColors.secondaryContainer,
      onSecondaryContainer: darkColors.onSecondaryContainer,

      tertiary: darkColors.tertiary,
      onTertiary: darkColors.onTertiary,
      tertiaryContainer: darkColors.tertiaryContainer,
      onTertiaryContainer: darkColors.onTertiaryContainer,

      error: darkColors.error,
      onError: darkColors.onError,
      errorContainer: darkColors.errorContainer,
      onErrorContainer: darkColors.onErrorContainer,

      background: darkColors.background,
      onBackground: darkColors.onBackground,

      surface: darkColors.surface,
      onSurface: darkColors.onSurface,

      surfaceContainerHighest: darkColors.surfaceVariant,
      onSurfaceVariant: darkColors.onSurfaceVariant,

      outline: darkColors.outline,
      outlineVariant: darkColors.outlineVariant,
      shadow: darkColors.shadow,
      scrim: darkColors.scrim,

      inverseSurface: darkColors.inverseSurface,
      onInverseSurface: darkColors.onInverseSurface,
      inversePrimary: darkColors.inversePrimary,
      surfaceTint: darkColors.surfaceTint,
    ),
    popupMenuTheme: PopupMenuThemeData(
      shape: RoundedRectangleBorder(borderRadius: globalRadius),
    ),
  );
}
