import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';

class ReminderNotificationsScreen extends StatefulWidget {
  final VoidCallback onFinish;
  const ReminderNotificationsScreen({super.key, required this.onFinish});

  @override
  State<ReminderNotificationsScreen> createState() =>
      _ReminderNotificationsScreenState();
}

class _ReminderNotificationsScreenState
    extends State<ReminderNotificationsScreen> {
  bool _isLoading = false;
  bool _notificationsEnabled = false;
  bool _breakfastEnabled = true;
  bool _lunchEnabled = true;
  bool _dinnerEnabled = true;
  bool _snackEnabled = false;

  TimeOfDay _breakfastTime = const TimeOfDay(hour: 8, minute: 0);
  TimeOfDay _lunchTime = const TimeOfDay(hour: 12, minute: 0);
  TimeOfDay _dinnerTime = const TimeOfDay(hour: 18, minute: 0);
  TimeOfDay _snackTime = const TimeOfDay(hour: 15, minute: 0);

  @override
  void initState() {
    super.initState();
    _checkNotificationStatus();
  }

  Future<void> _checkNotificationStatus() async {
    final enabled =
        await NotificationService.instance.areNotificationsEnabled();
    setState(() {
      _notificationsEnabled = enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stay on track with reminders',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Get gentle reminders to log your meals and stay consistent with your nutrition goals',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Notification Permission Status
                      _buildPermissionStatus(context),
                      const SizedBox(height: 24),

                      // Meal Reminder Settings
                      if (_notificationsEnabled) ...[
                        Text(
                          'Meal Reminders',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 16),

                        _buildMealReminder(
                          context,
                          icon: LucideIcons.sun,
                          title: 'Breakfast',
                          enabled: _breakfastEnabled,
                          time: _breakfastTime,
                          onToggle:
                              (enabled) =>
                                  setState(() => _breakfastEnabled = enabled),
                          onTimeChanged:
                              (time) => setState(() => _breakfastTime = time),
                        ),
                        const SizedBox(height: 12),

                        _buildMealReminder(
                          context,
                          icon: LucideIcons.sun,
                          title: 'Lunch',
                          enabled: _lunchEnabled,
                          time: _lunchTime,
                          onToggle:
                              (enabled) =>
                                  setState(() => _lunchEnabled = enabled),
                          onTimeChanged:
                              (time) => setState(() => _lunchTime = time),
                        ),
                        const SizedBox(height: 12),

                        _buildMealReminder(
                          context,
                          icon: LucideIcons.moon,
                          title: 'Dinner',
                          enabled: _dinnerEnabled,
                          time: _dinnerTime,
                          onToggle:
                              (enabled) =>
                                  setState(() => _dinnerEnabled = enabled),
                          onTimeChanged:
                              (time) => setState(() => _dinnerTime = time),
                        ),
                        const SizedBox(height: 12),

                        _buildMealReminder(
                          context,
                          icon: LucideIcons.apple,
                          title: 'Snack',
                          enabled: _snackEnabled,
                          time: _snackTime,
                          onToggle:
                              (enabled) =>
                                  setState(() => _snackEnabled = enabled),
                          onTimeChanged:
                              (time) => setState(() => _snackTime = time),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Enable Notifications Button
                  if (!_notificationsEnabled) ...[
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: _isLoading ? null : _enableNotifications,
                        icon:
                            _isLoading
                                ? const AppLoader(size: 16)
                                : const Icon(LucideIcons.bell),
                        label: Text(
                          _isLoading ? 'Enabling...' : 'Enable Notifications',
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],

                  // Continue Button
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton.icon(
                      onPressed: _isLoading ? null : _continue,
                      icon:
                          _isLoading
                              ? const AppLoader(size: 16)
                              : const Icon(LucideIcons.arrowRight),
                      label: Text(_isLoading ? 'Setting up...' : 'Continue'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: _skip,
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text('Skip for now'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionStatus(BuildContext context) {
    final color = _notificationsEnabled ? Colors.green : Colors.orange;
    final icon = _notificationsEnabled ? LucideIcons.check : LucideIcons.x;
    final title =
        _notificationsEnabled
            ? 'Notifications Enabled'
            : 'Notifications Disabled';
    final subtitle =
        _notificationsEnabled
            ? 'You\'ll receive meal reminders'
            : 'Enable notifications to get meal reminders';

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color),
      ),
      child: Row(
        children: [
          Icon(icon, color: color, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: color.withOpacity(0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMealReminder(
    BuildContext context, {
    required IconData icon,
    required String title,
    required bool enabled,
    required TimeOfDay time,
    required ValueChanged<bool> onToggle,
    required ValueChanged<TimeOfDay> onTimeChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            enabled
                ? Theme.of(
                  context,
                ).colorScheme.primaryContainer.withOpacity(0.3)
                : Theme.of(context).colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color:
              enabled
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.outline,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color:
                enabled
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.onSurfaceVariant,
            size: 24,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color:
                        enabled
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
                if (enabled) ...[
                  const SizedBox(height: 4),
                  Text(
                    '${time.format(context)}',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (enabled)
            TextButton(
              onPressed: () => _selectTime(context, time, onTimeChanged),
              child: Text('Change'),
            ),
          Switch(value: enabled, onChanged: onToggle),
        ],
      ),
    );
  }

  Future<void> _selectTime(
    BuildContext context,
    TimeOfDay currentTime,
    ValueChanged<TimeOfDay> onTimeChanged,
  ) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: currentTime,
    );
    if (picked != null && picked != currentTime) {
      onTimeChanged(picked);
    }
  }

  Future<void> _enableNotifications() async {
    setState(() => _isLoading = true);

    try {
      final granted = await NotificationService.instance.requestPermissions();
      if (granted) {
        setState(() => _notificationsEnabled = true);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Notifications enabled successfully!')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Notification permission denied')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error enabling notifications: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _continue() async {
    setState(() => _isLoading = true);

    try {
      // Schedule meal reminders if notifications are enabled
      if (_notificationsEnabled) {
        await NotificationService.instance.scheduleMealReminders(
          breakfastEnabled: _breakfastEnabled,
          lunchEnabled: _lunchEnabled,
          dinnerEnabled: _dinnerEnabled,
          snackEnabled: _snackEnabled,
          breakfastTime: _getDateTimeFromTimeOfDay(_breakfastTime),
          lunchTime: _getDateTimeFromTimeOfDay(_lunchTime),
          dinnerTime: _getDateTimeFromTimeOfDay(_dinnerTime),
          snackTime: _getDateTimeFromTimeOfDay(_snackTime),
        );
      }

      await OnboardingService.instance.completeOnboarding();

      // Navigate to home
      if (mounted) {
        widget.onFinish();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Error completing setup: $e')));
      }
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _skip() async {
    // Mark onboarding as complete
    await OnboardingService.instance.completeOnboarding();

    // Navigate to home
    if (mounted) {
      widget.onFinish();
    }
  }

  DateTime _getDateTimeFromTimeOfDay(TimeOfDay timeOfDay) {
    final now = DateTime.now();
    return DateTime(
      now.year,
      now.month,
      now.day,
      timeOfDay.hour,
      timeOfDay.minute,
    );
  }
}
