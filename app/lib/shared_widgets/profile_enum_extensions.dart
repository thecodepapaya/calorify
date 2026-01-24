import 'package:calorify/core/constants/colors.dart';
import 'package:models/models.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

extension WeightGoalExtension on WeightGoal {
  IconData get icon {
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return LucideIcons.trendingDown;
      case WeightGoal.MAINTAIN_WEIGHT:
        return LucideIcons.minus;
      case WeightGoal.GAIN_WEIGHT:
        return LucideIcons.trendingUp;
    }
    return LucideIcons.minus; // Fallback
  }

  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return colorScheme.success;
      case WeightGoal.MAINTAIN_WEIGHT:
        return colorScheme.primary;
      case WeightGoal.GAIN_WEIGHT:
        return colorScheme.tertiary;
    }
    return colorScheme.primary; // Fallback
  }
}

extension ActivityLevelExtension on ActivityLevel {
  IconData get icon {
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return LucideIcons.sofa;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return LucideIcons.user;
      case ActivityLevel.MODERATELY_ACTIVE:
        return LucideIcons.bike;
      case ActivityLevel.VERY_ACTIVE:
        return LucideIcons.dumbbell;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return LucideIcons.flame;
    }
    return LucideIcons.sofa; // Fallback
  }

  Color color(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    switch (this) {
      case ActivityLevel.SEDENTARY:
        return colorScheme.onSurfaceVariant;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return colorScheme.primary;
      case ActivityLevel.MODERATELY_ACTIVE:
        return colorScheme.success;
      case ActivityLevel.VERY_ACTIVE:
        return colorScheme.tertiary;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return colorScheme.error;
    }
    return colorScheme.onSurfaceVariant; // Fallback
  }
}
