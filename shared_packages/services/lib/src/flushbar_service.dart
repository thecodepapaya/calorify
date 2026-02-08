import 'package:flashy_flushbar/flashy_flushbar.dart';
import 'package:flutter/material.dart';

/// Central configuration for all flushbar styles and behavior in the app.
/// Adjust these values to change how flushbars look and behave globally.
abstract final class FlushbarConfig {
  FlushbarConfig._();

  /// Default time the flushbar is visible.
  static const Duration defaultDuration = Duration(seconds: 2);

  /// Bar height (flat top bar).
  static const double height = 52;

  /// Margin around the bar. Use [EdgeInsets.zero] for full-width top bar.
  static const EdgeInsets margin = EdgeInsets.zero;

  /// Corner radius. Use [BorderRadius.zero] for a flat look.
  static const BorderRadius borderRadius = BorderRadius.zero;

  /// Horizontal padding for the message text.
  static const EdgeInsets horizontalPadding = EdgeInsets.symmetric(
    horizontal: 20,
  );

  /// Show/hide animation duration.
  static const Duration animationDuration = Duration(milliseconds: 280);

  /// No shadow for a flat style.
  static const List<BoxShadow> boxShadows = [];

  /// Fallback background color when [BuildContext] is not available for theme.
  static const Color fallbackBackgroundColor = Color(0xFFE0E2EC);

  /// Fallback text color when [BuildContext] is not available for theme.
  static const Color fallbackTextColor = Color(0xFF1C1B1F);

  /// Fallback text size when theme is not available.
  static const double fallbackFontSize = 15;
}

/// Shows a flushbar with app-wide style from [FlushbarConfig].
///
/// Pass [context] when available so the bar uses theme colors (background and
/// text). When [context] is null or unmounted, fallback colors from
/// [FlushbarConfig] are used.
void showFlushbar(
  String message, {
  Duration duration = FlushbarConfig.defaultDuration,
  BuildContext? context,
}) {
  final theme = context != null && context.mounted ? Theme.of(context) : null;
  final colorScheme = theme?.colorScheme;
  final textTheme = theme?.textTheme;

  FlashyFlushbar(
    message: message,
    duration: duration,
    margin: FlushbarConfig.margin,
    borderRadius: FlushbarConfig.borderRadius,
    height: FlushbarConfig.height,
    backgroundColor:
        colorScheme?.surfaceContainerHighest ??
        FlushbarConfig.fallbackBackgroundColor,
    messageStyle:
        textTheme?.bodyMedium?.copyWith(
          color: colorScheme?.onSurface ?? FlushbarConfig.fallbackTextColor,
        ) ??
        TextStyle(
          color: FlushbarConfig.fallbackTextColor,
          fontSize: FlushbarConfig.fallbackFontSize,
        ),
    boxShadows: FlushbarConfig.boxShadows,
    animationDuration: FlushbarConfig.animationDuration,
    horizontalPadding: FlushbarConfig.horizontalPadding,
  ).show();
}
