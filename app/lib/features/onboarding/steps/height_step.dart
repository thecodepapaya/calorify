import 'package:models/models.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/app_filled_button.dart';
import 'package:utils/utils.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/height_scale_widget.dart';
import 'package:flutter/material.dart';

class HeightStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const HeightStepScreen({super.key, required this.onContinue});

  @override
  State<HeightStepScreen> createState() => _HeightStepScreenState();
}

class _HeightStepScreenState extends State<HeightStepScreen> {
  double _height = 170;
  UnitSystem _unitSystem = UnitSystem.METRIC;
  bool _unitSystemInitialized = false;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Only set locale-based default on first initialization (use app-selected locale)
    if (!_unitSystemInitialized) {
      _unitSystem = LocaleUtils.getDefaultUnitSystem(
        TranslationProvider.of(context).locale.flutterLocale,
      );
      _unitSystemInitialized = true;
    }
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null) {
      setState(() {
        _unitSystem = profile.heightUnit.normalized;
        _unitSystemInitialized = true;
        if (profile.hasHeight()) _height = profile.height;
      });
    }
  }

  @override
  void dispose() {
    super.dispose();
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
            t.onboarding.height.title,
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            t.onboarding.height.description,
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
                      LocaleUtils.formatHeightValue(_height, _unitSystem),
                      style: theme.textTheme.displayLarge?.copyWith(
                        fontWeight: FontWeight.w900,
                        color: colorScheme.primary,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      _unitSystem.isMetric ? 'cm' : 'ft',
                      style: theme.textTheme.titleLarge?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 48),
                HeightScaleWidget(
                  value: _height,
                  unitSystem: _unitSystem,
                  onValueChanged: (newHeight) {
                    setState(() {
                      _height = newHeight;
                    });
                  },
                ),
              ],
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildUnitButton(
                t.onboarding.height.metric,
                _unitSystem.isMetric,
                () {
                  if (_unitSystem.isMetric) return;
                  setState(() {
                    _height = LocaleUtils.convertHeightToMetric(_height);
                    _unitSystem = UnitSystem.METRIC;
                  });
                },
              ),
              const SizedBox(width: 16),
              _buildUnitButton(
                t.onboarding.height.imperial,
                _unitSystem.isImperial,
                () {
                  if (_unitSystem.isImperial) return;
                  setState(() {
                    _height = LocaleUtils.convertHeightToImperial(_height);
                    _unitSystem = UnitSystem.IMPERIAL;
                  });
                },
              ),
            ],
          ),
          const SizedBox(height: 32),
          AppFilledButton(
            onPressed: _saveAndContinue,
            text: t.onboarding.height.next,
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
    final profile =
        await OnboardingService.instance.getProfileData() ?? UserProfile();
    final updatedProfile = profile.deepCopy();
    updatedProfile.height = _height;
    updatedProfile.heightUnit = _unitSystem;
    await OnboardingService.instance.saveProfileData(updatedProfile);
    Analytics.instance.logEvent(AnalyticsEvent.onboardingSetHeight);
    widget.onContinue();
  }
}
