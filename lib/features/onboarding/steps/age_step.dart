import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AgeStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const AgeStepScreen({super.key, required this.onContinue});

  @override
  State<AgeStepScreen> createState() => _AgeStepScreenState();
}

class _AgeStepScreenState extends State<AgeStepScreen> {
  DateTime _dateOfBirth = DateTime(
    DateTime.now().year - 25,
    DateTime.now().month,
    DateTime.now().day,
  );

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null && profile.dateOfBirth != null && mounted) {
      setState(() => _dateOfBirth = profile.dateOfBirth!);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

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
                      DateFormat.yMMMMd(
                        Localizations.localeOf(context).toString(),
                      ).format(_dateOfBirth),
                      style: theme.textTheme.headlineSmall?.copyWith(
                        color: colorScheme.primary,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  '${_calculateAge(_dateOfBirth)} ${t.profile.years}',
                  style: theme.textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurfaceVariant,
                  ),
                ),
                const SizedBox(height: 48),
                SizedBox(
                  height: 200,
                  child: CupertinoDatePicker(
                    mode: CupertinoDatePickerMode.date,
                    initialDateTime: _dateOfBirth,
                    maximumDate: DateTime.now(),
                    minimumYear: 1900,
                    maximumYear: DateTime.now().year,
                    onDateTimeChanged: (DateTime newDate) {
                      setState(() => _dateOfBirth = newDate);
                    },
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _saveAndContinue,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                t.onboarding.age.next,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
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
      initialDate: _dateOfBirth,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _dateOfBirth) {
      setState(() => _dateOfBirth = picked);
    }
  }

  Future<void> _saveAndContinue() async {
    final profile =
        await OnboardingService.instance.getProfileData() ??
        const UserProfile();
    await OnboardingService.instance.saveProfileData(
      profile.copyWith(dateOfBirth: _dateOfBirth),
    );
    widget.onContinue();
  }
}
