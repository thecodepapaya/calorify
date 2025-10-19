import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/value_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class BasicInfoScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const BasicInfoScreen({super.key, required this.onContinue});

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  final _formKey = GlobalKey<FormState>();

  Gender _selectedGender = Gender.male;
  late bool _isMetric; // true for cm/kg, false for ft/lbs
  double _height = 170;
  double _weight = 70;
  DateTime _dateOfBirth = DateTime.now().subtract(
    const Duration(days: 365 * 25),
  );
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null) {
      _initializeData(profile);
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _isMetric = LocaleUtils.isMetricSystem(context);
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: AppLoader()));
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tell us about yourself',
                          style: Theme.of(context).textTheme.headlineSmall
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'This helps us personalize your nutrition goals',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyMedium?.copyWith(
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                        ),
                        const SizedBox(height: 32),

                        // Gender Selection
                        Text(
                          'Gender',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          children:
                              Gender.values.map((gender) {
                                return Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: _buildGenderOption(
                                      context,
                                      gender: gender,
                                      isSelected: _selectedGender == gender,
                                      onTap:
                                          () => setState(
                                            () => _selectedGender = gender,
                                          ),
                                    ),
                                  ),
                                );
                              }).toList(),
                        ),
                        const SizedBox(height: 24),

                        // Unit System Toggle
                        Text(
                          'Unit System',
                          style: Theme.of(context).textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Expanded(
                              child: _buildUnitToggle(
                                context,
                                label: 'cm/kg',
                                icon: LucideIcons.ruler,
                                isSelected: _isMetric,
                                onTap: () => setState(() => _isMetric = true),
                              ),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: _buildUnitToggle(
                                context,
                                label: 'ft/lbs',
                                icon: LucideIcons.ruler,
                                isSelected: !_isMetric,
                                onTap: () => setState(() => _isMetric = false),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 24),
                        // Height Input
                        ValueSlider(
                          label: 'Height',
                          unit: _isMetric ? 'cm' : 'ft',
                          value:
                              _isMetric
                                  ? _height
                                  : LocaleUtils.convertHeightToImperial(
                                    _height,
                                  ),
                          min: _isMetric ? 100 : 3.28,
                          max: _isMetric ? 220 : 7.22,
                          precision: _isMetric ? 0 : 2,
                          step: _isMetric ? 1 : 0.1,
                          onChanged: (value) {
                            setState(() {
                              _height =
                                  _isMetric
                                      ? value
                                      : LocaleUtils.convertHeightToMetric(
                                        value,
                                      );
                            });
                          },
                        ),
                        const SizedBox(height: 24),

                        // Weight Input
                        ValueSlider(
                          label: 'Weight',
                          unit: _isMetric ? 'kg' : 'lbs',
                          value:
                              _isMetric
                                  ? _weight
                                  : LocaleUtils.convertWeightToImperial(
                                    _weight,
                                  ),
                          min: _isMetric ? 30 : 66,
                          max: _isMetric ? 150 : 330,
                          precision: 1,
                          step: 0.5,
                          onChanged: (value) {
                            setState(() {
                              _weight =
                                  _isMetric
                                      ? value
                                      : LocaleUtils.convertWeightToMetric(
                                        value,
                                      );
                            });
                          },
                        ),
                        const SizedBox(height: 24),

                        // Age Input
                        InkWell(
                          onTap: () => _selectDate(context),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 12,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Theme.of(context).colorScheme.outline,
                              ),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Date of Birth',
                                  style: Theme.of(context).textTheme.titleMedium
                                      ?.copyWith(fontWeight: FontWeight.w600),
                                ),
                                Row(
                                  children: [
                                    const Icon(LucideIcons.calendar),
                                    const SizedBox(width: 12),
                                    Text(
                                      DateFormat.yMMMMd().format(_dateOfBirth),
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 32),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: PrimaryButton(
                analyticsEvent: AnalyticsEvent.onboardingSetBasicInfo,
                onPressed: _continue,
                text: 'Continue',
                trailingIcon: LucideIcons.arrowRight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _initializeData(UserProfile? profile) {
    if (profile != null) {
      _selectedGender = profile.gender ?? Gender.male;
      _height = profile.height ?? 170;
      _weight = profile.weight ?? 70;
      _dateOfBirth =
          profile.dateOfBirth ??
          DateTime.now().subtract(const Duration(days: 365 * 25));
    }
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _dateOfBirth) {
      setState(() {
        _dateOfBirth = picked;
      });
    }
  }

  Widget _buildGenderOption(
    BuildContext context, {
    required Gender gender,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final color =
        isSelected
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : Theme.of(context).colorScheme.onSurfaceVariant;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_getGenderIcon(gender), size: 20, color: color),
            const SizedBox(width: 8),
            Text(
              gender.displayName,
              style: TextStyle(
                color: color,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUnitToggle(
    BuildContext context, {
    required String label,
    required IconData icon,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final color =
        isSelected
            ? Theme.of(context).colorScheme.onPrimaryContainer
            : Theme.of(context).colorScheme.onSurfaceVariant;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color:
                isSelected
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.outline,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: color),
            const SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(
                color: color,
                fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _getGenderIcon(Gender gender) {
    switch (gender) {
      case Gender.male:
        return LucideIcons.mars;
      case Gender.female:
        return LucideIcons.venus;
      case Gender.other:
        return LucideIcons.transgender;
    }
  }

  void _continue() {
    if (_formKey.currentState!.validate()) {
      final profile = UserProfile(
        height: _height,
        weight: _weight,
        dateOfBirth: _dateOfBirth,
        gender: _selectedGender,
      );
      OnboardingService.instance.saveProfileData(profile);
      widget.onContinue();
    }
  }
}
