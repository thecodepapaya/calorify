import 'package:calorify/core/constants/colors.dart';
import 'package:models/models.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Extension on HealthScore to provide UI properties
extension HealthScoreExtension on HealthScore {
  /// Returns the color associated with this health score
  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return switch (this) {
      HealthScore.UNHEALTHY => colorScheme.error,
      HealthScore.HEALTHY => colorScheme.success,
      HealthScore.NEUTRAL => colorScheme.tertiary,
      _ => colorScheme.tertiary, // Fallback
    };
  }

  /// Returns the icon associated with this health score
  IconData get icon {
    return switch (this) {
      HealthScore.UNHEALTHY => LucideIcons.frown,
      HealthScore.HEALTHY => LucideIcons.smile,
      HealthScore.NEUTRAL => LucideIcons.meh,
      _ => LucideIcons.meh, // Fallback
    };
  }

  /// Returns the localized text for this health score
  String get displayText {
    return switch (this) {
      HealthScore.UNHEALTHY => t.healthScore.unhealthy,
      HealthScore.HEALTHY => t.healthScore.healthy,
      HealthScore.NEUTRAL => t.healthScore.neutral,
      _ => t.healthScore.neutral, // Fallback
    };
  }
}

/// A reusable widget that displays a health score indicator
/// Can be used as a small icon or a larger display with text
class HealthScoreIndicator extends StatelessWidget {
  const HealthScoreIndicator({
    super.key,
    required this.healthScore,
    this.size = 18,
    this.showBackground = true,
    this.onTap,
  });

  final HealthScore healthScore;
  final double size;
  final bool showBackground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final color = healthScore.color(context);
    final icon = healthScore.icon;

    Widget indicator = Icon(icon, color: color, size: size);

    if (showBackground) {
      indicator = Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: color.withValues(alpha: 0.1),
          shape: BoxShape.circle,
          border: Border.all(color: color.withValues(alpha: 0.5)),
        ),
        child: indicator,
      );
    }

    if (onTap != null) {
      return GestureDetector(onTap: onTap, child: indicator);
    }

    return indicator;
  }
}
