import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/meal_reminder_settings_store.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/widgets.dart';

class ReminderNotificationsScreen extends ConsumerStatefulWidget {
  final VoidCallback onContinue;
  final bool isEditing;
  const ReminderNotificationsScreen({
    super.key,
    required this.onContinue,
    this.isEditing = false,
  });

  @override
  ConsumerState<ReminderNotificationsScreen> createState() =>
      _ReminderNotificationsScreenState();
}

class _ReminderNotificationsScreenState
    extends ConsumerState<ReminderNotificationsScreen> {
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
    _loadInitialState();
  }

  Future<void> _loadInitialState() async {
    if (widget.isEditing && mounted) setState(() => _isLoading = true);
    final enabled =
        await NotificationService.instance.areNotificationsEnabled();
    MealReminderSettings? settings;
    if (widget.isEditing) {
      try {
        settings =
            await NotificationService.instance.loadMealReminderSettings();
      } on Object {
        settings = null;
      }
    }
    if (!mounted) return;
    setState(() {
      _notificationsEnabled = enabled;
      if (settings != null) {
        _breakfastEnabled = settings.breakfastEnabled;
        _lunchEnabled = settings.lunchEnabled;
        _dinnerEnabled = settings.dinnerEnabled;
        _snackEnabled = settings.snackEnabled;
        _breakfastTime = _timeFromMinutes(settings.breakfastMinutes);
        _lunchTime = _timeFromMinutes(settings.lunchMinutes);
        _dinnerTime = _timeFromMinutes(settings.dinnerMinutes);
        _snackTime = _timeFromMinutes(settings.snackMinutes);
      }
      _isLoading = false;
    });
  }

  TimeOfDay _timeFromMinutes(int minutes) =>
      TimeOfDay(hour: minutes ~/ 60, minute: minutes % 60);

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
                  if (!widget.isEditing) const SizedBox(height: 48),
                  Text(
                    t.reminders.title,
                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 16),

                    _buildMealReminder(
                      context,
                      icon: AppIcons.sunrise,
                      title: t.reminders.breakfast,
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
                      icon: AppIcons.sun,
                      title: t.reminders.lunch,
                      enabled: _lunchEnabled,
                      time: _lunchTime,
                      onToggle:
                          (enabled) => setState(() => _lunchEnabled = enabled),
                      onTimeChanged:
                          (time) => setState(() => _lunchTime = time),
                    ),
                    const SizedBox(height: 12),

                    _buildMealReminder(
                      context,
                      icon: AppIcons.moon,
                      title: t.reminders.dinner,
                      enabled: _dinnerEnabled,
                      time: _dinnerTime,
                      onToggle:
                          (enabled) => setState(() => _dinnerEnabled = enabled),
                      onTimeChanged:
                          (time) => setState(() => _dinnerTime = time),
                    ),
                    const SizedBox(height: 12),

                    _buildMealReminder(
                      context,
                      icon: AppIcons.apple,
                      title: t.reminders.snack,
                      enabled: _snackEnabled,
                      time: _snackTime,
                      onToggle:
                          (enabled) => setState(() => _snackEnabled = enabled),
                      onTimeChanged:
                          (time) => setState(() => _snackTime = time),
                    ),
                  ],
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 24.0),
            child: Column(
              children: [
                if (_notificationsEnabled)
                  AppButton(
                    variant: AppButtonVariant.primary,
                    analyticsEvent: AnalyticsEvent.onboardingSetReminders,
                    onPressed: _isLoading ? null : _continue,
                    text:
                        widget.isEditing
                            ? t.reminders.saveChanges
                            : t.common.kContinue,
                    leadingIcon: widget.isEditing ? AppIcons.check : null,
                    trailingIcon:
                        widget.isEditing ? null : AppIcons.arrowRight,
                    isLoading: _isLoading,
                  )
                else ...[
                  AppButton(
                    variant: AppButtonVariant.primary,
                    analyticsEvent:
                        AnalyticsEvent.onboardingEnableNotifications,
                    onPressed: _isLoading ? null : _enableNotifications,
                    text: t.reminders.enableNotifications,
                    leadingIcon: AppIcons.bell,
                    isLoading: _isLoading,
                  ),
                  const SizedBox(height: 16),
                  AppButton(
                    variant: AppButtonVariant.secondary,
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
    final colorScheme = Theme.of(context).colorScheme;
    final color =
        _notificationsEnabled ? colorScheme.success : colorScheme.tertiary;
    final icon = _notificationsEnabled ? AppIcons.check : AppIcons.x;
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
        color: color.withValues(alpha: 0.1),
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
                    color: color.withValues(alpha: 0.8),
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
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            enabled
                ? colorScheme.primaryContainer.withValues(alpha: 0.3)
                : colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: enabled ? colorScheme.primary : colorScheme.outline,
        ),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: enabled ? colorScheme.primary : colorScheme.onSurfaceVariant,
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
                            ? colorScheme.onSurface
                            : colorScheme.onSurfaceVariant,
                  ),
                ),
                if (enabled) ...[
                  const SizedBox(height: 4),
                  Text(
                    time.format(context),
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
      // Listener setup is non-interactive; the following call is the only
      // permission prompt in this flow.
      await NotificationService.instance.initializeFirebaseMessaging();

      final granted = await NotificationService.instance.requestPermissions();
      if (granted) {
        setState(() => _notificationsEnabled = true);
        if (!mounted) return;
        showFlushbar(t.reminders.enabledSuccessfully, context: context);
      } else {
        if (!mounted) return;
        showFlushbar(t.reminders.permissionDenied, context: context);
      }
    } catch (e) {
      if (!mounted) return;
      showFlushbar(t.reminders.errorEnabling(error: e), context: context);
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
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

      await ref.read(onboardingServiceProvider).completeOnboarding();

      // Navigate to home
      if (mounted) widget.onContinue();
    } catch (e) {
      if (mounted) {
        showFlushbar(
          t.reminders.errorCompletingSetup(error: e),
          context: context,
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _skip() async {
    // Mark onboarding as complete
    await ref.read(onboardingServiceProvider).completeOnboarding();

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
