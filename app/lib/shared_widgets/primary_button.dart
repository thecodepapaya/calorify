import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool isLoading;
  final Size minimumSize;
  final EdgeInsetsGeometry? padding;
  final AnalyticsEvent analyticsEvent;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.analyticsEvent,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.minimumSize = const Size(double.infinity, 50),
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return ElevatedButton(
      onPressed:
          isLoading || onPressed == null
              ? null
              : () {
                Analytics.instance.logEvent(analyticsEvent);
                onPressed?.call();
              },
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(minimumSize),
        padding: WidgetStatePropertyAll(padding),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            if (isLoading) {
              return colorScheme.secondary;
            } else {
              return colorScheme.onSurface.withValues(alpha: 0.12);
            }
          }
          return colorScheme.primary;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            if (isLoading) {
              return colorScheme.onPrimary;
            } else {
              return colorScheme.onSurface.withValues(alpha: 0.38);
            }
          }
          return colorScheme.onPrimary;
        }),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          final baseStyle = textTheme.bodyLarge;
          if (states.contains(WidgetState.disabled)) {
            if (isLoading) {
              return baseStyle?.copyWith(color: colorScheme.onPrimary);
            } else {
              return baseStyle?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.38),
              );
            }
          }
          return baseStyle?.copyWith(color: colorScheme.onPrimary);
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: globalRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLoading) ...[
            AppLoader(color: colorScheme.onPrimary),
          ] else if (leadingIcon != null) ...[
            Icon(leadingIcon),
          ],
          if (text.isNotEmpty) ...[const SizedBox(width: 6), Text(text)],
          if (trailingIcon != null && !isLoading) ...[
            const SizedBox(width: 6),
            Icon(trailingIcon),
          ],
        ],
      ),
    );
  }
}
