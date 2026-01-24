import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/wear_os_channel.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:utils/utils.dart';
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
          _buildSectionTitle(context, 'Wear OS'),
          _buildWearOsOptions(context),
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
      routeSettings: const RouteSettings(
        name: RouteNames.activeNotificationsDialog,
      ),
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

  Widget _buildWearOsOptions(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.watch),
            title: const Text('Check Watch Connection'),
            onTap: _checkWatchConnection,
          ),
          ListTile(
            leading: const Icon(LucideIcons.send),
            title: const Text('Send Test Message'),
            subtitle: const Text('Send a simple test message to watch'),
            onTap: _sendTestMessage,
          ),
          ListTile(
            leading: const Icon(LucideIcons.database),
            title: const Text('Send Test Meal Data'),
            subtitle: const Text('Send sample meal data to watch'),
            onTap: _sendTestMealData,
          ),
          ListTile(
            leading: const Icon(LucideIcons.activity),
            title: const Text('Send Test Calorie Goal'),
            subtitle: const Text('Send sample calorie goal to watch'),
            onTap: _sendTestCalorieGoal,
          ),
          ListTile(
            leading: const Icon(LucideIcons.inbox),
            title: const Text('View Received Messages'),
            subtitle: const Text('View messages received from watch'),
            onTap: _viewReceivedMessages,
          ),
        ],
      ),
    );
  }

  Future<void> _checkWatchConnection() async {
    try {
      final connected = await WearOsPhoneChannel.isWatchConnected();
      if (!mounted) return;

      String message;
      if (connected) {
        final watchInfo = await WearOsPhoneChannel.getConnectedWatchInfo();
        if (watchInfo != null) {
          final deviceName = watchInfo['name'] as String? ?? 'Unknown Device';
          final isNearby = watchInfo['isNearby'] as bool? ?? false;
          final count = watchInfo['count'] as int? ?? 1;

          message = 'Watch is connected ✓\n\n';
          message += 'Device: $deviceName\n';
          message += 'Nearby: ${isNearby ? "Yes" : "No"}\n';
          if (count > 1) {
            message += 'Connected devices: $count';
          }
        } else {
          message = 'Watch is connected ✓\n\n(Device info unavailable)';
        }
      } else {
        message =
            'Watch is not connected ✗\n\nMake sure:\n• Both devices are paired\n• Watch app is running\n• Both apps are in debug/staging mode';
      }

      _showDataDialog('Watch Connection', message);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error checking connection: $e');
    }
  }

  Future<void> _sendTestMessage() async {
    try {
      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/test',
        data: {
          'message': 'Hello from phone!',
          'timestamp': DateTime.now().toIso8601String(),
          'type': 'test',
        },
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test message sent successfully!'
            : 'Failed to send test message. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending message: $e');
    }
  }

  Future<void> _sendTestMealData() async {
    try {
      final testMeal = {
        'id': 'test-${DateTime.now().millisecondsSinceEpoch}',
        'name': 'Test Meal',
        'calories': 500,
        'protein': 30.0,
        'carbs': 60.0,
        'fat': 20.0,
        'timestamp': DateTime.now().toIso8601String(),
        'type': 'meal',
      };

      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/meals/today',
        data: {
          'meals': [testMeal],
          'totalCalories': 500,
        },
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test meal data sent successfully!'
            : 'Failed to send meal data. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending meal data: $e');
    }
  }

  Future<void> _sendTestCalorieGoal() async {
    try {
      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/calorie_goal',
        data: {'goal': 2000, 'timestamp': DateTime.now().toIso8601String()},
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test calorie goal sent successfully!'
            : 'Failed to send calorie goal. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending calorie goal: $e');
    }
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
    final isMetric = unitSystem == UnitSystem.METRIC;
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
        'Weight: ${weight.toStringAsFixed(UnitSystem.METRIC.weightPrecision)} kg',
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
        'Height: ${(height * 100).toStringAsFixed(UnitSystem.METRIC.heightPrecision)} cm',
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

  Future<void> _viewReceivedMessages() async {
    if (!mounted) return;

    await showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.receivedMessagesDialog,
      ),
      builder:
          (context) => AlertDialog(
            title: const Text('Received Messages from Watch'),
            content: SizedBox(
              width: double.maxFinite,
              child:
                  WearOsMessageLog.messages.isEmpty
                      ? const Text(
                        'No messages received yet.\n\nSend test data from watch to see messages here.',
                      )
                      : ListView.builder(
                        shrinkWrap: true,
                        itemCount: WearOsMessageLog.messages.length,
                        itemBuilder: (context, index) {
                          final message = WearOsMessageLog.messages[index];
                          final timestamp = message['timestamp'] as DateTime;
                          final path = message['path'] as String;
                          final data = message['data'] as Map<String, dynamic>;
                          return Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: ListTile(
                              title: Text(
                                path,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}:${timestamp.second.toString().padLeft(2, '0')}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _formatData(data),
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'monospace',
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              isThreeLine: true,
                            ),
                          );
                        },
                      ),
            ),
            actions: [
              if (WearOsMessageLog.messages.isNotEmpty)
                TextButton(
                  onPressed: () {
                    WearOsMessageLog.clear();
                    setState(() {});
                    Navigator.of(context).pop();
                    _showSnackbar('Messages cleared');
                  },
                  child: const Text('Clear'),
                ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }

  String _formatData(Map<String, dynamic> data) {
    return data.entries.map((e) => '${e.key}: ${e.value}').join(', ');
  }

  void _showDataDialog(String title, String content) {
    showDialog(
      context: context,
      routeSettings: RouteSettings(
        name: RouteNames.dataDialog,
        arguments: {'title': title, 'content': content},
      ),
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
