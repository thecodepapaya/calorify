import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

class AppFilledButton extends StatelessWidget {
  const AppFilledButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.icon,
    this.isLoading = false,
  });

  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: FilledButton(
        onPressed: isLoading || onPressed == null ? null : onPressed,
        style: FilledButton.styleFrom(
          minimumSize: Size(double.infinity, appButtonMinHeight),
          padding: appButtonFilledPadding,
          shape: RoundedRectangleBorder(borderRadius: buttonRadius),
        ),
        child: isLoading
            ? AppLoader(color: colorScheme.onPrimary)
            : icon != null
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(icon, size: 18),
                      const SizedBox(width: 6),
                      Text(
                        text,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  )
                : Text(
                    text,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
      ),
    );
  }
}
