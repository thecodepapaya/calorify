import 'package:specs/src/light_colors.dart';
import 'package:specs/src/dark_colors.dart';
import 'package:specs/src/styles.dart';
import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = _buildTheme(
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

      surface: lightColors.surface,
      onSurface: lightColors.onSurface,

      surfaceContainerHighest: lightColors.surfaceContainerHighest,
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
  );

  static final ThemeData darkTheme = _buildTheme(
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

      surface: darkColors.surface,
      onSurface: darkColors.onSurface,

      surfaceContainerHighest: darkColors.surfaceContainerHighest,
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
  );

  static ThemeData _buildTheme({
    required Brightness brightness,
    required ColorScheme colorScheme,
  }) {
    final buttonShape = RoundedRectangleBorder(borderRadius: buttonRadius);
    final elevated = ElevatedButton.styleFrom(
      minimumSize: Size(64, appButtonMinHeight),
      padding: appButtonFilledPadding,
      shape: buttonShape,
    );
    final filled = FilledButton.styleFrom(
      minimumSize: Size(64, appButtonMinHeight),
      padding: appButtonFilledPadding,
      shape: buttonShape,
    );
    final outlined = OutlinedButton.styleFrom(
      minimumSize: Size(64, appButtonMinHeight),
      padding: appButtonOutlinedPadding,
      shape: buttonShape,
    );
    final text = TextButton.styleFrom(
      minimumSize: Size(48, appButtonMinHeight),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      shape: buttonShape,
    );

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: colorScheme,
      elevatedButtonTheme: ElevatedButtonThemeData(style: elevated),
      filledButtonTheme: FilledButtonThemeData(style: filled),
      outlinedButtonTheme: OutlinedButtonThemeData(style: outlined),
      textButtonTheme: TextButtonThemeData(style: text),
      popupMenuTheme: PopupMenuThemeData(
        shape: RoundedRectangleBorder(borderRadius: globalRadius),
      ),
    );
  }
}
