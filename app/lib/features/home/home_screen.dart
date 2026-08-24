import 'dart:async';

import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
import 'package:calorify/core/providers/history_providers.dart';
import 'package:calorify/core/services/health_service.dart';
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
  int _healthRefreshGeneration = 0;
  bool? _isHealthConnectPromptDismissed;
  DateTime _dashboardDay = _dateOnly(DateTime.now());
  Duration _dashboardTimeZoneOffset = DateTime.now().timeZoneOffset;
  Timer? _dashboardRefreshTimer;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_loadHealthConnectPromptPreference());
    unawaited(_refreshHealthConnectStatus(syncPendingMeals: true));
    _dashboardRefreshTimer = Timer.periodic(const Duration(minutes: 15), (_) {
      if (!mounted) return;
      ref.invalidate(aiSummaryProvider);
      _refreshCaloriesBurned();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _healthRefreshGeneration++;
    _dashboardRefreshTimer?.cancel();
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      // A provider batch can finish at any point during the same calendar day.
      ref.invalidate(aiSummaryProvider);
      _refreshDateSensitiveData();
      unawaited(_refreshHealthConnectStatus(syncPendingMeals: true));
    }
  }

  static DateTime _dateOnly(DateTime value) =>
      DateTime(value.year, value.month, value.day);

  Future<void> _loadHealthConnectPromptPreference() async {
    var isDismissed = false;
    try {
      isDismissed =
          await ref
              .read(databaseInterfaceProvider)
              .isHealthConnectPromptDismissed();
    } catch (_) {
      // A preference read failure should not permanently suppress setup.
    }
    if (mounted) setState(() => _isHealthConnectPromptDismissed = isDismissed);
  }

  Future<void> _dismissHealthConnectPrompt() async {
    setState(() => _isHealthConnectPromptDismissed = true);
    try {
      await ref
          .read(databaseInterfaceProvider)
          .setHealthConnectPromptDismissed();
    } catch (error) {
      debugPrint('Failed to persist Health Connect prompt dismissal: $error');
    }
  }

  void _refreshDateSensitiveData() {
    final today = _dateOnly(DateTime.now());
    final timeZoneOffset = DateTime.now().timeZoneOffset;
    if (today == _dashboardDay && timeZoneOffset == _dashboardTimeZoneOffset) {
      return;
    }
    _dashboardDay = today;
    _dashboardTimeZoneOffset = timeZoneOffset;
    ref.invalidate(todaysMealsProvider);
    ref.invalidate(last7DaysMealsProvider);
    ref.invalidate(mealHistoryProvider);
    ref.invalidate(caloriesBurnedProvider);
  }

  void _refreshCaloriesBurned() {
    if (!mounted) return;
    ref.invalidate(caloriesBurnedProvider);
    setState(() {});
  }

  Future<void> _refreshHealthConnectStatus({
    bool syncPendingMeals = false,
    bool enableNutritionSync = false,
  }) async {
    final generation = ++_healthRefreshGeneration;
    final healthService = ref.read(healthServiceProvider);
    final hadNutritionWrite = healthService.canWriteNutrition;
    await healthService.refreshAuthorizationStatus();
    if (!mounted || generation != _healthRefreshGeneration) return;

    try {
      final syncService = ref.read(healthConnectSyncServiceProvider);
      await syncService.reconcileAuthorization();
      final gainedNutritionWrite =
          !hadNutritionWrite && healthService.canWriteNutrition;
      if ((enableNutritionSync || gainedNutritionWrite) &&
          healthService.canWriteNutrition) {
        await syncService.enableNutritionSync();
      } else if (syncPendingMeals) {
        await syncService.syncPending();
      }
      if (!mounted || generation != _healthRefreshGeneration) return;
    } catch (_) {
      // Pending records remain queued for the next foreground refresh.
    }

    _refreshCaloriesBurned();
  }

  @override
  Widget build(BuildContext context) {
    final healthService = ref.watch(healthServiceProvider);
    final isHealthConnectUnsupported =
        healthService.status == HealthConnectSdkStatus.sdkUnavailable &&
        healthService.initializationState !=
            HealthServiceInitializationState.failed;
    final hasAnyHealthConnectPermission = healthService.hasAnyHealthPermission;

    return Scaffold(
      body: ResponsiveContent(
        maxWidth: 840,
        child: SingleChildScrollView(
          child: HomeDashboardShimmer(
            child: Column(
              children: [
                const SizedBox(height: 10),
                // const AiSummaryCard(),
                if (!isHealthConnectUnsupported &&
                    !hasAnyHealthConnectPermission &&
                    _isHealthConnectPromptDismissed == false) ...[
                  const SizedBox(height: 10),
                  HealthConnectPromptCard(
                    healthService: healthService,
                    onDismiss: _dismissHealthConnectPrompt,
                    onSetupComplete:
                        ({required enableNutritionSync}) =>
                            _refreshHealthConnectStatus(
                              syncPendingMeals: true,
                              enableNutritionSync: enableNutritionSync,
                            ),
                  ),
                ],
                const SizedBox(height: 10),
                const SetDailyGoal(),
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
