import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/weight_scale_widget.dart';
import 'package:flutter/material.dart';

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
  UnitSystem _unitSystem = UnitSystem.metric;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _loadData();
    _textController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    if (!_focusNode.hasFocus) return;
    final val = double.tryParse(_textController.text);
    if (val != null) {
      setState(() {
        _weight = val.clamp(_unitSystem.weightMin, _unitSystem.weightMax);
      });
    }
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null) {
      setState(() {
        _unitSystem = profile.weightUnit;
        final weight =
            widget.isTargetWeight ? profile.targetWeight : profile.weight;

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

        _updateTextField();
      });
    }
  }

  void _updateTextField() {
    _textController.text = _weight.toStringAsFixed(_unitSystem.weightPrecision);
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.dispose();
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
                GestureDetector(
                  onTap: () => _focusNode.requestFocus(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Hidden text field
                      Opacity(
                        opacity: 0,
                        child: SizedBox(
                          width: 1,
                          height: 1,
                          child: TextField(
                            controller: _textController,
                            focusNode: _focusNode,
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            onSubmitted: (_) => _focusNode.unfocus(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            _weight.toStringAsFixed(
                              _unitSystem.weightPrecision,
                            ),
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _unitSystem.isMetric ? 'kg' : 'lbs',
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                WeightScaleWidget(
                  value: _weight,
                  unitSystem: _unitSystem,
                  onValueChanged: (newWeight) {
                    setState(() {
                      _weight = newWeight;
                      _updateTextField();
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
                      final newUnit = UnitSystem.metric;
                      _weight = LocaleUtils.convertWeightToMetric(
                        _weight,
                      ).clamp(newUnit.weightMin, newUnit.weightMax);
                      _unitSystem = newUnit;
                      _updateTextField();
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
                      final newUnit = UnitSystem.imperial;
                      _weight = LocaleUtils.convertWeightToImperial(
                        _weight,
                      ).clamp(newUnit.weightMin, newUnit.weightMax);
                      _unitSystem = newUnit;
                      _updateTextField();
                    });
                  },
                ),
              ],
            ),
          const SizedBox(height: 32),
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
                t.onboarding.weight.next,
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
        await OnboardingService.instance.getProfileData() ??
        const UserProfile();
    final updatedProfile =
        widget.isTargetWeight
            ? profile.copyWith(targetWeight: _weight, weightUnit: _unitSystem)
            : profile.copyWith(weight: _weight, weightUnit: _unitSystem);
    await OnboardingService.instance.saveProfileData(updatedProfile);
    widget.onContinue();
  }
}
