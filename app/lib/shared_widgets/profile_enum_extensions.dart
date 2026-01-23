import 'package:calorify/core/constants/colors.dart';
import 'package:models/models.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

extension WeightGoalExtension on WeightGoal {
  IconData get icon {
    switch (this) {
      case WeightGoal.loseWeight:
        return LucideIcons.trendingDown;
      case WeightGoal.maintainWeight:
        return LucideIcons.minus;
      case WeightGoal.gainWeight:
        return LucideIcons.trendingUp;
    }
  }

  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    switch (this) {
      case WeightGoal.loseWeight:
        return colorScheme.success;
      case WeightGoal.maintainWeight:
        return colorScheme.primary;
      case WeightGoal.gainWeight:
        return colorScheme.tertiary;
    }
  }
}

extension ActivityLevelExtension on ActivityLevel {
  IconData get icon {
    switch (this) {
      case ActivityLevel.sedentary:
        return LucideIcons.sofa;
      case ActivityLevel.lightlyActive:
        return LucideIcons.user;
      case ActivityLevel.moderatelyActive:
        return LucideIcons.bike;
      case ActivityLevel.veryActive:
        return LucideIcons.dumbbell;
      case ActivityLevel.extremelyActive:
        return LucideIcons.flame;
    }
  }

  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    switch (this) {
      case ActivityLevel.sedentary:
        return colorScheme.onSurfaceVariant;
      case ActivityLevel.lightlyActive:
        return colorScheme.primary;
      case ActivityLevel.moderatelyActive:
        return colorScheme.success;
      case ActivityLevel.veryActive:
        return colorScheme.tertiary;
      case ActivityLevel.extremelyActive:
        return colorScheme.error;
    }
  }
}
