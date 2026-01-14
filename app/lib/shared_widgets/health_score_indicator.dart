import 'package:calorify/core/constants/colors/color_scheme_extensions.dart';
import 'package:calorify/core/models/health_score.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Extension on HealthScore to provide UI properties
extension HealthScoreExtension on HealthScore {
  /// Returns the color associated with this health score
  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return switch (this) {
      HealthScore.unhealthy => colorScheme.error,
      HealthScore.healthy => colorScheme.success,
      HealthScore.neutral || HealthScore.unknown => colorScheme.tertiary,
    };
  }

  /// Returns the icon associated with this health score
  IconData get icon {
    return switch (this) {
      HealthScore.unhealthy => LucideIcons.frown,
      HealthScore.healthy => LucideIcons.smile,
      HealthScore.neutral || HealthScore.unknown => LucideIcons.meh,
    };
  }

  /// Returns the localized text for this health score
  String get displayText {
    return switch (this) {
      HealthScore.unhealthy => t.healthScore.unhealthy,
      HealthScore.healthy => t.healthScore.healthy,
      HealthScore.neutral || HealthScore.unknown => t.healthScore.neutral,
    };
  }
}

/// A reusable widget that displays a health score indicator
/// Can be used as a small icon or a larger display with text
class HealthScoreIndicator extends StatelessWidget {
  const HealthScoreIndicator({
    super.key,
    required this.healthScore,
    this.size = 16,
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
        padding: const EdgeInsets.all(4),
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
