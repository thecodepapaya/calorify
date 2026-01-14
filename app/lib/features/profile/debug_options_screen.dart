import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class DebugOptionsScreen extends StatefulWidget {
  const DebugOptionsScreen({super.key});

  @override
  State<DebugOptionsScreen> createState() => _DebugOptionsScreenState();
}

class _DebugOptionsScreenState extends State<DebugOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.debug.title)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle(context, t.debug.sections.notifications),
          _buildNotificationOptions(context),
          const SizedBox(height: 24),
          _buildSectionTitle(context, t.debug.sections.healthConnect),
          _buildHealthConnectOptions(context),
          const SizedBox(height: 24),
          _buildSectionTitle(context, t.debug.sections.appInfo),
          _buildAppInfoOptions(context),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildNotificationOptions(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.list),
            title: Text(t.debug.showActiveNotifications),
            onTap: _showActiveNotifications,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellPlus),
            title: Text(t.debug.scheduleTestNotification),
            onTap: _scheduleTestNotification,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellRing),
            title: Text(t.debug.triggerBreakfastNotification),
            onTap: _triggerBreakfastNotification,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellOff),
            title: Text(t.debug.cancelAllNotifications),
            onTap: _cancelAllNotifications,
          ),
        ],
      ),
    );
  }

  Future<void> _showActiveNotifications() async {
    final pendingRequests =
        await NotificationService.instance.pendingNotificationRequests();
    if (!mounted) return;

    if (pendingRequests.isEmpty) {
      _showSnackbar(t.debug.noNotifications);
      return;
    }

    await showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(t.debug.activeNotifications),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: pendingRequests.length,
                itemBuilder: (context, index) {
                  final request = pendingRequests[index];
                  return ListTile(
                    title: Text(request.title ?? t.debug.noTitle),
                    subtitle: Text(request.body ?? t.debug.noBody),
                    trailing: Text(t.debug.id(id: request.id)),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }

  Future<void> _scheduleTestNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 99,
      title: t.notifications.test.title,
      body: t.debug.testNotificationBody,
      scheduledTime: DateTime.now().add(const Duration(seconds: 10)),
    );
    _showSnackbar(t.debug.testNotificationScheduled);
  }

  Future<void> _triggerBreakfastNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 1,
      title: t.notifications.breakfast.title,
      body: t.notifications.breakfast.body,
      scheduledTime: DateTime.now().add(const Duration(seconds: 5)),
      payload: 'meal_reminder_breakfast',
      channel: NotificationService.remindersChannel,
    );
    _showSnackbar(t.debug.breakfastNotificationTriggered);
  }

  Future<void> _cancelAllNotifications() async {
    await NotificationService.instance.cancelAllNotifications();
    _showSnackbar(t.debug.allNotificationsCancelled);
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  Widget _buildHealthConnectOptions(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.activity),
            title: Text(t.debug.fetchTodaysSteps),
            onTap: _fetchTodaysSteps,
          ),
          ListTile(
            leading: const Icon(LucideIcons.flame),
            title: Text(t.debug.fetchTodaysCalories),
            onTap: _fetchTodaysCalories,
          ),
          ListTile(
            leading: const Icon(LucideIcons.scale),
            title: Text(t.debug.fetchLatestWeight),
            onTap: _fetchLatestWeight,
          ),
          ListTile(
            leading: const Icon(LucideIcons.ruler),
            title: Text(t.debug.fetchLatestHeight),
            onTap: _fetchLatestHeight,
          ),
          ListTile(
            leading: const Icon(LucideIcons.plus),
            title: Text(t.debug.writeTestWeight),
            onTap: _writeTestWeight,
          ),
          ListTile(
            leading: const Icon(LucideIcons.plus),
            title: Text(t.debug.writeTestHeight),
            onTap: _writeTestHeight,
          ),
          ListTile(
            leading: const Icon(LucideIcons.refreshCw),
            title: Text(t.debug.syncLast7Days),
            onTap: _syncLast7Days,
          ),
        ],
      ),
    );
  }

  Widget _buildAppInfoOptions(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.languages),
            title: Text(t.debug.checkCurrentLocale),
            onTap: _checkCurrentLocale,
          ),
        ],
      ),
    );
  }

  void _checkCurrentLocale() {
    final locale = LocaleUtils.getCurrentLocale(context);
    final unitSystem = LocaleUtils.getDefaultUnitSystem(context);
    final isMetric = unitSystem == UnitSystem.metric;
    final countryCode = locale.countryCode ?? 'N/A';
    final languageCode = locale.languageCode;

    _showDataDialog(
      t.debug.currentLocale,
      t.debug.localeInfo(
        languageCode: languageCode,
        countryCode: countryCode,
        unitSystem: isMetric ? t.editProfile.metric : t.editProfile.imperial,
      ),
    );
  }

  Future<void> _fetchTodaysSteps() async {
    final steps = await HealthService.instance.getTodaySteps();
    _showDataDialog('Today\'s Steps', 'Steps: $steps');
  }

  Future<void> _fetchLatestWeight() async {
    final weight = await HealthService.instance.getLatestWeight();
    if (weight == null) {
      _showSnackbar(t.debug.noWeightData);
    } else {
      _showDataDialog(
        t.debug.latestWeight,
        'Weight: ${weight.toStringAsFixed(UnitSystem.metric.weightPrecision)} kg',
      );
    }
  }

  Future<void> _fetchLatestHeight() async {
    final height = await HealthService.instance.getLatestHeight();
    if (height == null) {
      _showSnackbar(t.debug.noHeightData);
    } else {
      // Height is usually in meters from Health Connect
      _showDataDialog(
        t.debug.latestHeight,
        'Height: ${(height * 100).toStringAsFixed(UnitSystem.metric.heightPrecision)} cm',
      );
    }
  }

  Future<void> _writeTestWeight() async {
    final success = await HealthService.instance.writeWeight(70.0);
    if (success) {
      _showSnackbar(t.debug.weightWritten);
    } else {
      _showSnackbar(t.debug.weightWriteFailed);
    }
  }

  Future<void> _writeTestHeight() async {
    final success = await HealthService.instance.writeHeight(175.0);
    if (success) {
      _showSnackbar(t.debug.heightWritten);
    } else {
      _showSnackbar(t.debug.heightWriteFailed);
    }
  }

  Future<void> _fetchTodaysCalories() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final calories = await HealthService.instance.fetchHealthData(
      startOfDay,
      now,
      HealthDataType.TOTAL_CALORIES_BURNED,
    );

    if (!mounted) return;

    if (calories.isEmpty) {
      _showSnackbar(t.debug.noCalorieData);
      return;
    }

    final totalCalories = calories
        .map((e) => (e.value as NumericHealthValue).numericValue.toDouble())
        .reduce((value, element) => value + element);

    _showDataDialog(
      t.debug.todaysCalories,
      t.debug.totalCaloriesBurned(calories: totalCalories.toStringAsFixed(2)),
    );
  }

  Future<void> _syncLast7Days() async {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 7));

    _showSnackbar(t.debug.fetchingData);

    final types = [
      HealthDataType.STEPS,
      HealthDataType.TOTAL_CALORIES_BURNED,
      HealthDataType.WEIGHT,
    ];

    int totalPoints = 0;
    for (final type in types) {
      final data = await HealthService.instance.fetchHealthData(
        sevenDaysAgo,
        now,
        type,
      );
      totalPoints += data.length;
    }

    _showDataDialog(
      t.debug.sync7DaysTitle,
      t.debug.syncSuccess(count: totalPoints),
    );
  }

  void _showDataDialog(String title, String content) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }
}
