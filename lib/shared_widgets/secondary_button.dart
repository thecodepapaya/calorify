import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final IconData? icon;
  final AnalyticsEvent analyticsEvent;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    required this.analyticsEvent,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        onPressed: () {
          Analytics.instance.logEvent(analyticsEvent);
          onPressed?.call();
        },
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: globalRadius),
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) Icon(icon),
            if (icon != null) const SizedBox(width: 6),
            Text(text),
          ],
        ),
      ),
    );
  }
}
