import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';

class ReminderNotificationsScreen extends StatefulWidget {
  final VoidCallback onContinue;
  final bool isEditing;
  const ReminderNotificationsScreen({
    super.key,
    required this.onContinue,
    this.isEditing = false,
  });

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
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  Text(
                    t.reminders.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.reminders.description,
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
                      t.reminders.mealReminders,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 16),

                    _buildMealReminder(
                      context,
                      icon: LucideIcons.sunrise,
                      title: t.reminders.breakfast,
                      enabled: _breakfastEnabled,
                      time: _breakfastTime,
                      onToggle: (enabled) => setState(() => _breakfastEnabled = enabled),
                      onTimeChanged: (time) => setState(() => _breakfastTime = time),
                    ),
                    const SizedBox(height: 12),

                    _buildMealReminder(
                      context,
                      icon: LucideIcons.sun,
                      title: t.reminders.lunch,
                      enabled: _lunchEnabled,
                      time: _lunchTime,
                      onToggle: (enabled) => setState(() => _lunchEnabled = enabled),
                      onTimeChanged: (time) => setState(() => _lunchTime = time),
                    ),
                    const SizedBox(height: 12),

                    _buildMealReminder(
                      context,
                      icon: LucideIcons.moon,
                      title: t.reminders.dinner,
                      enabled: _dinnerEnabled,
                      time: _dinnerTime,
                      onToggle: (enabled) => setState(() => _dinnerEnabled = enabled),
                      onTimeChanged: (time) => setState(() => _dinnerTime = time),
                    ),
                    const SizedBox(height: 12),

                    _buildMealReminder(
                      context,
                      icon: LucideIcons.apple,
                      title: t.reminders.snack,
                      enabled: _snackEnabled,
                      time: _snackTime,
                      onToggle: (enabled) => setState(() => _snackEnabled = enabled),
                      onTimeChanged: (time) => setState(() => _snackTime = time),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24.0),
            child: Column(
              children: [
                if (_notificationsEnabled)
                  PrimaryButton(
                    analyticsEvent: AnalyticsEvent.onboardingSetReminders,
                    onPressed: _isLoading ? null : _continue,
                    text: widget.isEditing ? t.reminders.saveChanges : t.reminders.continue_,
                    leadingIcon: widget.isEditing ? LucideIcons.check : null,
                    trailingIcon: widget.isEditing ? null : LucideIcons.arrowRight,
                    isLoading: _isLoading,
                  )
                else ...[
                  PrimaryButton(
                    analyticsEvent: AnalyticsEvent.onboardingEnableNotifications,
                    onPressed: _isLoading ? null : _enableNotifications,
                    text: t.reminders.enableNotifications,
                    leadingIcon: LucideIcons.bell,
                    isLoading: _isLoading,
                  ),
                  const SizedBox(height: 16),
                  SecondaryButton(
                    analyticsEvent: AnalyticsEvent.onboardingSkipReminders,
                    onPressed: _skip,
                    text: t.reminders.skipForNow,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPermissionStatus(BuildContext context) {
    final color = _notificationsEnabled ? Colors.green : Colors.orange;
    final icon = _notificationsEnabled ? LucideIcons.check : LucideIcons.x;
    final title =
        _notificationsEnabled
            ? t.reminders.notificationsEnabled
            : t.reminders.notificationsDisabled;
    final subtitle =
        _notificationsEnabled
            ? t.reminders.enabledSubtitle
            : t.reminders.disabledSubtitle;

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
              child: Text(t.reminders.change),
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
      // Initialize firebase messaging and request permissions
      await NotificationService.instance.initializeFirebaseMessaging();

      final granted = await NotificationService.instance.requestPermissions();
      if (granted) {
        setState(() => _notificationsEnabled = true);
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.reminders.enabledSuccessfully)),
        );
      } else {
        if (!mounted) return;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(t.reminders.permissionDenied)),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(t.reminders.errorEnabling.replaceAll('{error}', e.toString()))),
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
        widget.onContinue();
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(t.reminders.errorCompletingSetup.replaceAll('{error}', e.toString()))));
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
      widget.onContinue();
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
