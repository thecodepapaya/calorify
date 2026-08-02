import 'package:models/models.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/app_filled_button.dart';
import 'package:utils/utils.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/weight_scale_widget.dart';
import 'package:flutter/material.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';

class WeightStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  final bool isTargetWeight;
  const WeightStepScreen({
    super.key,
    required this.onContinue,
    this.isTargetWeight = false,
  });

  @override
  State<WeightStepScreen> createState() => _WeightStepScreenState();
}

class _WeightStepScreenState extends State<WeightStepScreen> {
  double _weight = 70;
  UnitSystem _unitSystem = UnitSystem.METRIC;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (!mounted) return;
    if (profile != null) {
      setState(() {
        _unitSystem = profile.weightUnit.normalized;
        final weight =
            widget.isTargetWeight
                ? (profile.hasTargetWeight() ? profile.targetWeight : null)
                : (profile.hasWeight() ? profile.weight : null);

        if (weight != null) {
          _weight = weight;
        } else {
          // Calculate ideal weight as default if no value saved
          final ideal = OnboardingService.instance.calculateIdealWeight(
            profile,
          );
          if (ideal != null) {
            _weight = ideal;
          } else {
            _weight = _unitSystem.isMetric ? 70.0 : 154.0;
          }
        }
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
            widget.isTargetWeight
                ? t.onboarding.weight.targetTitle
                : t.onboarding.weight.currentTitle,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.isTargetWeight
                ? t.onboarding.weight.targetDescription
                : t.onboarding.weight.currentDescription,
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(
                      _weight.toStringAsFixed(_unitSystem.weightPrecision),
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _unitSystem.weightUnitDisplay,
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                WeightScaleWidget(
                  value: _weight,
                  unitSystem: _unitSystem,
                  onValueChanged: (newWeight) {
                    setState(() {
                      _weight = newWeight;
                    });
                  },
                ),
              ],
            ),
          ),
          const Spacer(),
          if (!widget.isTargetWeight)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildUnitButton(
                  t.onboarding.weight.metric,
                  _unitSystem.isMetric,
                  () {
                    if (_unitSystem.isMetric) return;
                    setState(() {
                      final newUnit = UnitSystem.METRIC;
                      _weight = LocaleUtils.convertWeightToMetric(
                        _weight,
                      ).clamp(newUnit.weightMin, newUnit.weightMax);
                      _unitSystem = newUnit;
                    });
                  },
                ),
                const SizedBox(width: 16),
                _buildUnitButton(
                  t.onboarding.weight.imperial,
                  _unitSystem.isImperial,
                  () {
                    if (_unitSystem.isImperial) return;
                    setState(() {
                      final newUnit = UnitSystem.IMPERIAL;
                      _weight = LocaleUtils.convertWeightToImperial(
                        _weight,
                      ).clamp(newUnit.weightMin, newUnit.weightMax);
                      _unitSystem = newUnit;
                    });
                  },
                ),
              ],
            ),
          const SizedBox(height: 32),
          AppFilledButton(
            onPressed: _isSaving ? null : _saveAndContinue,
            isLoading: _isSaving,
            text: t.onboarding.weight.next,
          ),
        ],
      ),
    );
  }

  Widget _buildUnitButton(String label, bool isSelected, VoidCallback onTap) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? colorScheme.primary
                  : colorScheme.surfaceContainerHighest.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color:
                isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Future<void> _saveAndContinue() async {
    if (_isSaving) return;
    setState(() => _isSaving = true);
    try {
      final profile =
          await OnboardingService.instance.getProfileData() ?? UserProfile();
      final updatedProfile = profile.deepCopy();
      if (widget.isTargetWeight) {
        updatedProfile.targetWeight = _weight;
      } else {
        updatedProfile.weight = _weight;
      }
      updatedProfile.weightUnit = _unitSystem;
      await OnboardingService.instance.saveProfileData(updatedProfile);
      if (!mounted) return;
      Analytics.instance.logEvent(
        widget.isTargetWeight
            ? AnalyticsEvent.onboardingSetTargetWeight
            : AnalyticsEvent.onboardingSetWeight,
      );
      widget.onContinue();
    } catch (_) {
      if (mounted) showFlushbar(t.meal.failedToSave, context: context);
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }
}
