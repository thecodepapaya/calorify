import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
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
      appBar: AppBar(title: const Text('Debug Options')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildSectionTitle(context, 'Notifications'),
          _buildNotificationOptions(context),
          const SizedBox(height: 24),
          _buildSectionTitle(context, 'Health Connect'),
          _buildHealthConnectOptions(context),
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
            title: const Text('Show Active Notifications'),
            onTap: _showActiveNotifications,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellPlus),
            title: const Text('Schedule Test Notification (10s)'),
            onTap: _scheduleTestNotification,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellRing),
            title: const Text('Trigger Breakfast Notification'),
            onTap: _triggerBreakfastNotification,
          ),
          ListTile(
            leading: const Icon(LucideIcons.bellOff),
            title: const Text('Cancel All Notifications'),
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
      _showSnackbar('No active notifications.');
      return;
    }

    await showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Active Notifications'),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: pendingRequests.length,
                itemBuilder: (context, index) {
                  final request = pendingRequests[index];
                  return ListTile(
                    title: Text(request.title ?? 'No Title'),
                    subtitle: Text(request.body ?? 'No Body'),
                    trailing: Text('ID: ${request.id}'),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  Future<void> _scheduleTestNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 99,
      title: 'Test Notification',
      body: 'This is a test notification scheduled for 10 seconds from now.',
      scheduledTime: DateTime.now().add(const Duration(seconds: 10)),
    );
    _showSnackbar('Test notification scheduled for 10 seconds from now.');
  }

  Future<void> _triggerBreakfastNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 1,
      title: 'Breakfast Time! 🍳',
      body: 'Don\'t forget to log your breakfast',
      scheduledTime: DateTime.now().add(const Duration(seconds: 5)),
      payload: 'meal_reminder_breakfast',
      channel: NotificationService.remindersChannel,
    );
    _showSnackbar('Breakfast notification triggered.');
  }

  Future<void> _cancelAllNotifications() async {
    await NotificationService.instance.cancelAllNotifications();
    _showSnackbar('All notifications cancelled.');
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
            title: const Text('Fetch Today\'s Steps'),
            onTap: _fetchTodaysSteps,
          ),
          ListTile(
            leading: const Icon(LucideIcons.flame),
            title: const Text('Fetch Today\'s Calories'),
            onTap: _fetchTodaysCalories,
          ),
          ListTile(
            leading: const Icon(LucideIcons.refreshCw),
            title: const Text('Sync Last 7 Days'),
            onTap: _syncLast7Days,
          ),
        ],
      ),
    );
  }

  Future<void> _fetchTodaysSteps() async {
    // TODO: Implement steps fetching
    _showSnackbar('Steps fetching not implemented yet.');
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
      _showSnackbar('No calorie data found for today.');
      return;
    }

    final totalCalories = calories
        .map((e) => (e.value as NumericHealthValue).numericValue.toDouble())
        .reduce((value, element) => value + element);

    _showDataDialog(
      'Today\'s Calories',
      'Total calories burned: ${totalCalories.toStringAsFixed(2)}',
    );
  }

  Future<void> _syncLast7Days() async {
    // TODO: Implement 7-day sync
    _showSnackbar('7-day sync not implemented yet.');
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
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }
}
