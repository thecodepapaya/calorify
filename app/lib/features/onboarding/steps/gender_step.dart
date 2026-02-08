import 'package:models/models.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class GenderStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const GenderStepScreen({super.key, required this.onContinue});

  @override
  State<GenderStepScreen> createState() => _GenderStepScreenState();
}

class _GenderStepScreenState extends State<GenderStepScreen> {
  Gender? _selectedGender;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null && mounted) {
      setState(() {
        _selectedGender = profile.hasGender() ? profile.gender : null;
      });
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
            t.onboarding.gender.title,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            t.onboarding.gender.description,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 48),
          ...genderValues.map(
            (gender) => Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: _buildGenderCard(gender),
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: SizedBox(
              width: double.infinity,
              child: FilledButton(
                onPressed: _selectedGender != null ? _saveAndContinue : null,
                style: FilledButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Text(
                  t.onboarding.gender.next,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGenderCard(Gender gender) {
    final isSelected = _selectedGender == gender;
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: () => setState(() => _selectedGender = gender),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? colorScheme.primaryContainer.withValues(alpha: 0.5)
                  : colorScheme.surface,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color:
                isSelected
                    ? colorScheme.primary
                    : colorScheme.outline.withValues(alpha: 0.2),
            width: 2,
          ),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      color: colorScheme.primary.withValues(alpha: 0.1),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                  : null,
        ),
        child: Row(
          children: [
            Icon(
              _getGenderIcon(gender),
              color:
                  isSelected
                      ? colorScheme.primary
                      : colorScheme.onSurfaceVariant,
              size: 32,
            ),
            const SizedBox(width: 20),
            Text(
              gender.displayName,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
            const Spacer(),
            if (isSelected) Icon(LucideIcons.check, color: colorScheme.primary),
          ],
        ),
      ),
    );
  }

  IconData _getGenderIcon(Gender gender) {
    switch (gender) {
      case Gender.MALE:
        return LucideIcons.mars;
      case Gender.FEMALE:
        return LucideIcons.venus;
      case Gender.OTHER:
        return LucideIcons.transgender;
    }
    return LucideIcons.transgender; // Fallback
  }

  Future<void> _saveAndContinue() async {
    try {
      final profile =
          await OnboardingService.instance.getProfileData() ?? UserProfile();
      final updatedProfile = profile.deepCopy();
      if (_selectedGender != null) {
        updatedProfile.gender = _selectedGender!;
      }
      await OnboardingService.instance.saveProfileData(updatedProfile);
      Analytics.instance.logEvent(AnalyticsEvent.onboardingSetGender);
      widget.onContinue();
    } catch (e) {
      if (mounted) {
        showFlushbar(t.meal.failedToSave, context: context);
      }
    }
  }
}
