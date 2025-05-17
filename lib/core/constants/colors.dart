import 'package:flutter/material.dart';

/// A class holding predefined color constants for the application.
/// These colors are primarily derived from the light theme's color scheme.
/// For theme-aware colors, prefer using `Theme.of(context).colorScheme`.
class AppColors {
  /// Private constructor to prevent instantiation.
  AppColors._();

  // --- Primary Colors ---
  /// Primary color, often used for main interactive elements.
  /// From lightTheme.colorScheme.primary.
  static const Color primary = Color(0xFF3F8AE0); // --primary
  /// Color for text and icons displayed on top of [primary] color.
  /// From lightTheme.colorScheme.onPrimary.
  static const Color onPrimary = Color(0xFFF2F7FD); // --primary-foreground
  /// A lighter or toned-down variant of the primary color, for containers.
  /// From lightTheme.colorScheme.primaryContainer.
  static const Color primaryContainer = Color(0xFFD0E4FF);

  /// Color for text and icons displayed on top of [primaryContainer].
  /// From lightTheme.colorScheme.onPrimaryContainer.
  static const Color onPrimaryContainer = Color(0xFF001D36);

  // --- Secondary Colors ---
  /// Secondary color, used for less prominent elements or accents.
  /// From lightTheme.colorScheme.secondary.
  static const Color secondary = Color(0xFFE1E7F0); // --secondary
  /// Color for text and icons displayed on top of [secondary] color.
  /// From lightTheme.colorScheme.onSecondary.
  static const Color onSecondary = Color(0xFF4D5562); // --secondary-foreground
  /// A container variant for the secondary color.
  /// From lightTheme.colorScheme.secondaryContainer.
  static const Color secondaryContainer = Color(0xFFDDE2FF);

  /// Color for text and icons displayed on top of [secondaryContainer].
  /// From lightTheme.colorScheme.onSecondaryContainer.
  static const Color onSecondaryContainer = Color(0xFF131C2C);

  // --- Tertiary Colors (Accent) ---
  /// Tertiary or accent color.
  /// From lightTheme.colorScheme.tertiary.
  static const Color tertiary = Color(0xFFFC9B36); // --accent
  /// Color for text and icons displayed on top of [tertiary] color.
  /// From lightTheme.colorScheme.onTertiary.
  static const Color onTertiary = Color(0xFFFFFFFF); // --accent-foreground
  /// A container variant for the tertiary color.
  /// From lightTheme.colorScheme.tertiaryContainer.
  static const Color tertiaryContainer = Color(0xFFFFDDB9);

  /// Color for text and icons displayed on top of [tertiaryContainer].
  /// From lightTheme.colorScheme.onTertiaryContainer.
  static const Color onTertiaryContainer = Color(0xFF2A1800);

  // --- Error Colors (Destructive) ---
  /// Error color, used for indicating errors or destructive actions.
  /// From lightTheme.colorScheme.error.
  static const Color error = Color(0xFFE84C4C); // --destructive
  /// Color for text and icons displayed on top of [error] color.
  /// From lightTheme.colorScheme.onError.
  static const Color onError = Color(0xFFF9F9F9); // --destructive-foreground
  /// A container variant for the error color.
  /// From lightTheme.colorScheme.errorContainer.
  static const Color errorContainer = Color(0xFFFFDAD6);

  /// Color for text and icons displayed on top of [errorContainer].
  /// From lightTheme.colorScheme.onErrorContainer.
  static const Color onErrorContainer = Color(0xFF410002);

  // --- Background & Surface Colors ---
  /// Background color for the app.
  /// From lightTheme.colorScheme.background.
  static const Color background = Color(0xFFF7F8FC); // --background
  /// Color for text and icons displayed on top of [background] color.
  /// From lightTheme.colorScheme.onBackground.
  static const Color onBackground = Color(0xFF2D3036); // --foreground

  /// Surface color, typically for cards, dialogs, and sheets.
  /// From lightTheme.colorScheme.surface.
  static const Color surface = Color(0xFFFCFCFD); // --card
  /// Color for text and icons displayed on top of [surface] color.
  /// From lightTheme.colorScheme.onSurface.
  static const Color onSurface = Color(0xFF2D3036); // --card-foreground

  /// A variant of the surface color.
  /// From lightTheme.colorScheme.surfaceVariant.
  static const Color surfaceVariant = Color(0xFFE0E2EC);

  /// Color for text and icons displayed on top of [surfaceVariant].
  /// From lightTheme.colorScheme.onSurfaceVariant.
  static const Color onSurfaceVariant = Color(0xFF44474F);

  // --- Outline & Utility Colors ---
  /// Outline color, typically for borders.
  /// From lightTheme.colorScheme.outline.
  static const Color outline = Color(0xFFD3D9E2); // --border
  /// A variant of the outline color.
  /// From lightTheme.colorScheme.outlineVariant.
  static const Color outlineVariant = Color(0xFFC4C6CF);

  /// Shadow color.
  /// From lightTheme.colorScheme.shadow.
  static const Color shadow = Color(0xFF000000);

  /// Scrim color.
  /// From lightTheme.colorScheme.scrim.
  static const Color scrim = Color(0xFF000000);

  // --- Inverse Colors (for dark elements on light themes or vice-versa) ---
  /// An inverse surface color.
  /// From lightTheme.colorScheme.inverseSurface.
  static const Color inverseSurface = Color(0xFF2F3033);

  /// Color for text and icons on [inverseSurface].
  /// From lightTheme.colorScheme.onInverseSurface.
  static const Color onInverseSurface = Color(0xFFF1F0F4);

  /// An inverse primary color.
  /// From lightTheme.colorScheme.inversePrimary.
  static const Color inversePrimary = Color(0xFFADC7FF);

  /// Surface tint color, often same as primary.
  /// From lightTheme.colorScheme.surfaceTint.
  static const Color surfaceTint = Color(0xFF3F8AE0);

  // If you need static access to dark theme colors as well, you could add them here,
  // perhaps prefixed, e.g.:
  // static const Color primaryDark = Color(0xFF79B3F2);
  // static const Color onPrimaryDark = Color(0xFF1D2C3D);
  // However, for theme-aware components, using Theme.of(context).colorScheme
  // is generally preferred for accessing dark theme colors.
}
