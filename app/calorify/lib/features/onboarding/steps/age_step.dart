import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:intl/intl.dart';
import 'package:models/models.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';

String ageDatePlaceholder(Locale locale) {
  final pattern = DateFormat.yMd(locale.toString()).pattern ?? 'MM/dd/yyyy';
  return pattern
      .replaceAll(RegExp('y+'), 'YYYY')
      .replaceAll(RegExp('M+'), 'MM')
      .replaceAll(RegExp('d+'), 'DD');
}

class AgeStepScreen extends ConsumerStatefulWidget {
  final VoidCallback onContinue;
  const AgeStepScreen({super.key, required this.onContinue});

  @override
  ConsumerState<AgeStepScreen> createState() => _AgeStepScreenState();
}

class _AgeStepScreenState extends ConsumerState<AgeStepScreen> {
  bool _isSaving = false;
  DateTime? _dateOfBirth;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final profile = await ref.read(onboardingServiceProvider).getProfileData();
    if (profile != null && profile.hasDateOfBirth() && mounted) {
      setState(() {
        _dateOfBirth = iso8601DateToDateTime(profile.dateOfBirth);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final locale = TranslationProvider.of(context).locale.flutterLocale;
    final dateOfBirth = _dateOfBirth;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Text(
            t.onboarding.age.title,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            t.onboarding.age.description,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => _selectDate(context),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 20,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.surface,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: colorScheme.primary, width: 2),
                      boxShadow: [
                        BoxShadow(
                          color: colorScheme.primary.withValues(alpha: 0.1),
                          blurRadius: 12,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Text(
                      dateOfBirth == null
                          ? ageDatePlaceholder(locale)
                          : DateFormat.yMMMMd(
                            locale.toString(),
                          ).format(dateOfBirth),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (dateOfBirth != null)
                  Text(
                    '${_calculateAge(dateOfBirth)} ${t.profile.years}',
                    style: theme.textTheme.titleLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
              ],
            ),
          ),
          const Spacer(),
          AppButton(
            variant: AppButtonVariant.filled,
            onPressed:
                _isSaving || dateOfBirth == null ? null : _saveAndContinue,
            isLoading: _isSaving,
            text: t.onboarding.age.next,
          ),
        ],
      ),
    );
  }

  int _calculateAge(DateTime birthDate) {
    DateTime today = DateTime.now();
    int age = today.year - birthDate.year;
    if (today.month < birthDate.month ||
        (today.month == birthDate.month && today.day < birthDate.day)) {
      age--;
    }
    return age;
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (mounted && picked != null && picked != _dateOfBirth) {
      setState(() => _dateOfBirth = picked);
    }
  }

  Future<void> _saveAndContinue() async {
    final dateOfBirth = _dateOfBirth;
    if (_isSaving || dateOfBirth == null) return;
    setState(() => _isSaving = true);
    try {
      final onboardingService = ref.read(onboardingServiceProvider);
      final profile = await onboardingService.getProfileData() ?? UserProfile();
      final updatedProfile = profile.deepCopy();
      updatedProfile.dateOfBirth = dateTimeToIso8601Date(dateOfBirth);
      await onboardingService.saveProfileData(updatedProfile);
      if (!mounted) return;
      Analytics.instance.logEvent(AnalyticsEvent.onboardingSetAge);
      widget.onContinue();
    } catch (_) {
      if (mounted) showFlushbar(t.meal.failedToSave, context: context);
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }
}
