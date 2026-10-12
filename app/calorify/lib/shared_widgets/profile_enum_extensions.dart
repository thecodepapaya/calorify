import 'package:calorify/core/constants/colors.dart';
import 'package:models/models.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

extension WeightGoalExtension on WeightGoal {
  IconData get icon {
    switch (this) {
      case WeightGoal.LOSE_WEIGHT:
        return AppIcons.trendingDown;
      case WeightGoal.MAINTAIN_WEIGHT:
        return AppIcons.minus;
      case WeightGoal.GAIN_WEIGHT:
        return AppIcons.trendingUp;
    }
    return AppIcons.minus; // Fallback
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
        return AppIcons.sofa;
      case ActivityLevel.LIGHTLY_ACTIVE:
        return AppIcons.user;
      case ActivityLevel.MODERATELY_ACTIVE:
        return AppIcons.bike;
      case ActivityLevel.VERY_ACTIVE:
        return AppIcons.dumbbell;
      case ActivityLevel.EXTREMELY_ACTIVE:
        return AppIcons.flame;
    }
    return AppIcons.sofa; // Fallback
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
