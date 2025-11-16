import 'package:calorify/core/models/profile_models.dart';
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
    switch (this) {
      case WeightGoal.loseWeight:
        return Colors.green;
      case WeightGoal.maintainWeight:
        return Theme.of(context).colorScheme.primary;
      case WeightGoal.gainWeight:
        return Colors.orange;
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
    switch (this) {
      case ActivityLevel.sedentary:
        return Colors.grey;
      case ActivityLevel.lightlyActive:
        return Colors.blue;
      case ActivityLevel.moderatelyActive:
        return Colors.green;
      case ActivityLevel.veryActive:
        return Colors.orange;
      case ActivityLevel.extremelyActive:
        return Colors.red;
    }
  }
}
