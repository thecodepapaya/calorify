import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

enum AppButtonVariant { primary, secondary, filled, outlined }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.variant,
    required this.onPressed,
    required this.text,
    this.analyticsEvent,
    this.leadingIcon,
    this.trailingIcon,
    this.isLoading = false,
    this.minimumSize,
    this.padding,
  });

  final AppButtonVariant variant;
  final VoidCallback? onPressed;
  final String text;
  final AnalyticsEvent? analyticsEvent;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final bool isLoading;
  final Size? minimumSize;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return switch (variant) {
      AppButtonVariant.primary => _buildPrimary(context),
      AppButtonVariant.secondary => _buildSecondary(),
      AppButtonVariant.filled => _buildFilled(context),
      AppButtonVariant.outlined => _buildOutlined(),
    };
  }

  VoidCallback? get _effectiveOnPressed {
    final callback = onPressed;
    if (isLoading || callback == null) {
      return null;
    }

    final event = analyticsEvent;
    if (event == null) {
      return callback;
    }

    return () {
      Analytics.instance.logEvent(event);
      callback();
    };
  }

  Widget _buildPrimary(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return ElevatedButton(
      onPressed: _effectiveOnPressed,
      style: ButtonStyle(
        minimumSize: WidgetStatePropertyAll(
          minimumSize ?? const Size(double.infinity, appButtonMinHeight),
        ),
        padding: WidgetStatePropertyAll(padding ?? appButtonFilledPadding),
        backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return isLoading
                ? colorScheme.secondary
                : colorScheme.onSurface.withValues(alpha: 0.12);
          }
          return colorScheme.primary;
        }),
        foregroundColor: WidgetStateProperty.resolveWith<Color>((states) {
          if (states.contains(WidgetState.disabled)) {
            return isLoading
                ? colorScheme.onPrimary
                : colorScheme.onSurface.withValues(alpha: 0.38);
          }
          return colorScheme.onPrimary;
        }),
        textStyle: WidgetStateProperty.resolveWith<TextStyle?>((states) {
          final baseStyle = textTheme.bodyLarge;
          if (states.contains(WidgetState.disabled)) {
            return isLoading
                ? baseStyle?.copyWith(color: colorScheme.onPrimary)
                : baseStyle?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.38),
                );
          }
          return baseStyle?.copyWith(color: colorScheme.onPrimary);
        }),
        shape: WidgetStatePropertyAll(
          RoundedRectangleBorder(borderRadius: buttonRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (isLoading)
            AppLoader(color: colorScheme.onPrimary)
          else if (leadingIcon != null)
            Icon(leadingIcon),
          if (text.isNotEmpty) ...[const SizedBox(width: 6), Text(text)],
          if (trailingIcon != null && !isLoading) ...[
            const SizedBox(width: 6),
            Icon(trailingIcon),
          ],
        ],
      ),
    );
  }

  Widget _buildSecondary() {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: _effectiveOnPressed,
        style: OutlinedButton.styleFrom(
          minimumSize:
              minimumSize ?? const Size(double.infinity, appButtonMinHeight),
          shape: RoundedRectangleBorder(borderRadius: buttonRadius),
          padding: padding ?? appButtonSecondaryPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) Icon(leadingIcon),
            if (leadingIcon != null) const SizedBox(width: 6),
            Text(text),
            if (trailingIcon != null) ...[
              const SizedBox(width: 6),
              Icon(trailingIcon),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildFilled(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: _effectiveOnPressed,
        style: FilledButton.styleFrom(
          minimumSize:
              minimumSize ?? const Size(double.infinity, appButtonMinHeight),
          padding: padding ?? appButtonFilledPadding,
          shape: RoundedRectangleBorder(borderRadius: buttonRadius),
        ),
        child:
            isLoading
                ? AppLoader(color: colorScheme.onPrimary)
                : _buildCompactContent(
                  iconSize: 18,
                  textStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
      ),
    );
  }

  Widget _buildOutlined() {
    return OutlinedButton(
      onPressed: _effectiveOnPressed,
      style: OutlinedButton.styleFrom(
        minimumSize: minimumSize ?? const Size(0, appButtonMinHeight),
        padding: padding ?? appButtonOutlinedPadding,
        shape: RoundedRectangleBorder(borderRadius: buttonRadius),
      ),
      child: _buildCompactContent(iconSize: 18),
    );
  }

  Widget _buildCompactContent({double? iconSize, TextStyle? textStyle}) {
    if (leadingIcon == null && trailingIcon == null) {
      return Text(text, style: textStyle);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leadingIcon != null) ...[
          Icon(leadingIcon, size: iconSize),
          const SizedBox(width: 6),
        ],
        Text(text, style: textStyle),
        if (trailingIcon != null) ...[
          const SizedBox(width: 6),
          Icon(trailingIcon, size: iconSize),
        ],
      ],
    );
  }
}
