import 'package:flutter/material.dart';

/// A text widget with a stroke/border effect for better readability
/// against various background colors.
///
/// The stroke color automatically adapts to the theme:
/// - Dark stroke for dark themes
/// - White stroke for light themes
///
/// Example:
/// ```dart
/// BorderText(
///   '50%',
///   style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
/// )
/// ```
class BorderText extends StatelessWidget {
  /// Creates a text widget with stroke effect.
  ///
  /// [text] is the text to display.
  ///
  /// [style] is the text style. The stroke effect will be applied on top
  /// of this style.
  ///
  /// [strokeColor] optionally overrides the automatic stroke color.
  /// If null, the stroke color will be dark for dark themes and white for light themes.
  ///
  /// [strokeWidth] controls the thickness of the stroke (default: 0.4).
  ///
  /// [textAlign] controls the text alignment.
  ///
  /// [maxLines] and [overflow] control text overflow behavior.
  const BorderText(
    this.text, {
    super.key,
    this.style,
    this.strokeColor,
    this.strokeWidth = 0.4,
    this.textAlign,
    this.maxLines,
    this.overflow,
  });

  final String text;
  final TextStyle? style;
  final Color? strokeColor;
  final double strokeWidth;
  final TextAlign? textAlign;
  final int? maxLines;
  final TextOverflow? overflow;

  /// Creates a text style with stroke effect for better readability.
  /// This static method can be used when you need a TextStyle (e.g., for pie charts)
  /// rather than a widget.
  ///
  /// [context] is used to determine the theme brightness.
  ///
  /// [baseStyle] is the base text style to apply the stroke to.
  ///
  /// [strokeColor] optionally overrides the automatic stroke color.
  /// If null, the stroke color will be dark for dark themes and white for light themes.
  ///
  /// [strokeWidth] controls the thickness of the stroke (default: 0.4).
  static TextStyle getStrokedTextStyle(
    BuildContext context, {
    TextStyle? baseStyle,
    Color? strokeColor,
    double strokeWidth = 0.4,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final isDark = colorScheme.brightness == Brightness.dark;
    final effectiveStrokeColor =
        strokeColor ??
        (isDark ? Colors.black.withValues(alpha: 0.8) : Colors.white);
    final textColor = baseStyle?.color ?? colorScheme.onSurface;

    // Calculate stroke offset based on stroke width
    final offset = strokeWidth;

    return (baseStyle ?? TextStyle()).copyWith(
      color: textColor,
      shadows: [
        // Create stroke effect using multiple shadows in 8 directions
        Shadow(
          offset: Offset(-offset, -offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(offset, -offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(offset, offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(-offset, offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        // Additional shadows for smoother stroke
        Shadow(
          offset: Offset(0, -offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(0, offset),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(-offset, 0),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
        Shadow(
          offset: Offset(offset, 0),
          color: effectiveStrokeColor,
          blurRadius: 0,
        ),
      ],
    );
  }

  /// Creates a text style with stroke effect for better readability
  /// Uses dark stroke for dark theme and white stroke for light theme
  TextStyle _getStrokedTextStyle(BuildContext context, TextStyle? baseStyle) {
    return getStrokedTextStyle(
      context,
      baseStyle: baseStyle,
      strokeColor: strokeColor,
      strokeWidth: strokeWidth,
    );
  }

  @override
  Widget build(BuildContext context) {
    final strokedStyle = _getStrokedTextStyle(context, style);

    return Text(
      text,
      style: strokedStyle,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
    );
  }
}
