import 'package:calorify/core/providers/home_providers.dart';
import 'package:auto_route/auto_route.dart';
import 'package:calorify/features/home/widgets/ai_summary_card.dart';
import 'package:calorify/features/home/widgets/connect_health.dart';
import 'package:calorify/features/home/widgets/daily_goal.dart';
import 'package:calorify/features/home/widgets/daily_summary.dart';
import 'package:calorify/features/home/widgets/home_skeletons.dart';
import 'package:calorify/features/home/widgets/intake_history_bar_chart.dart';
import 'package:calorify/features/home/widgets/macro_split.dart';
import 'package:calorify/features/home/widgets/meal_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  int _healthConnectRefreshTrigger = 0;

  void _onHealthConnectSetupComplete() {
    setState(() {
      _healthConnectRefreshTrigger++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final healthService = ref.watch(healthServiceProvider);
    final isHealthConnectUnsupported =
        healthService.status == HealthConnectSdkStatus.sdkUnavailable;
    final isHealthConnectAuthorized = healthService.isAuthorized;

    return Scaffold(
      body: SingleChildScrollView(
        child: HomeDashboardShimmer(
          child: Column(
            children: [
              const SizedBox(height: 10),
              const AiSummaryCard(),
              if (!isHealthConnectUnsupported &&
                  !isHealthConnectAuthorized) ...[
                const SizedBox(height: 10),
                HealthConnectPromptCard(
                  onSetupComplete: _onHealthConnectSetupComplete,
                ),
              ],
              const SizedBox(height: 10),
              SetDailyGoal(
                healthConnectRefreshTrigger: _healthConnectRefreshTrigger,
              ),
              const SizedBox(height: 20),
              const DailySummaryCard(),
              const SizedBox(height: 20),
              const MacroSplit(),
              const SizedBox(height: 20),
              const IntakeHistoryBarChart(),
              const SizedBox(height: 20),
              const MealLog(),
              const SizedBox(height: 120),
            ],
          ),
        ),
      ),
    );
  }
}
