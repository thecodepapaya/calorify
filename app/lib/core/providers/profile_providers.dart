import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/profile_metrics.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Compatibility names used only by profile_screen.dart, which is intentionally
// outside this architecture change. Both names point at existing stateless
// objects; no second calorie-goal stream is created.
final savedDailyCalorieGoalProvider = dailyCalorieGoalProvider;
final profileMetricsProvider = Provider<ProfileMetrics>(
  (ref) => const ProfileMetrics(),
);
