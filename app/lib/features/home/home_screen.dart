import 'dart:async';

import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/history_providers.dart';
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
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with WidgetsBindingObserver {
  int _healthConnectRefreshTrigger = 0;
  DateTime _dashboardDay = _dateOnly(DateTime.now());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _refreshDateSensitiveData();
      unawaited(_refreshHealthConnectStatus());
    }
  }

  static DateTime _dateOnly(DateTime value) =>
      DateTime(value.year, value.month, value.day);

  void _refreshDateSensitiveData() {
    final today = _dateOnly(DateTime.now());
    if (today == _dashboardDay) return;
    _dashboardDay = today;
    ref.invalidate(todaysMealsProvider);
    ref.invalidate(last7DaysMealsProvider);
    ref.invalidate(mealHistoryProvider);
    ref.invalidate(aiSummaryProvider);
    ref.invalidate(caloriesBurnedProvider);
  }

  Future<void> _refreshHealthConnectStatus() async {
    final healthService = ref.read(healthServiceProvider);
    await healthService.refreshAuthorizationStatus();
    if (!mounted) return;

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
      body: ResponsiveContent(
        maxWidth: 840,
        child: SingleChildScrollView(
          child: HomeDashboardShimmer(
            child: Column(
              children: [
                const SizedBox(height: 10),
                const AiSummaryCard(),
                if (!isHealthConnectUnsupported &&
                    !isHealthConnectAuthorized) ...[
                  const SizedBox(height: 10),
                  HealthConnectPromptCard(
                    healthService: healthService,
                    onSetupComplete: _refreshHealthConnectStatus,
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
      ),
    );
  }
}
