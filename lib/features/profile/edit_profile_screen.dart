import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:calorify/shared_widgets/value_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class EditProfileScreen extends StatefulWidget {
  final UserProfile userProfile;

  const EditProfileScreen({super.key, required this.userProfile});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late double _height;
  late double _weight;
  late DateTime _dateOfBirth;

  late Gender _selectedGender;
  late WeightGoal _selectedWeightGoal;
  late ActivityLevel _selectedActivityLevel;
  bool _isMetric = true;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    _selectedGender = widget.userProfile.gender ?? Gender.male;
    _selectedWeightGoal =
        widget.userProfile.weightGoal ?? WeightGoal.maintainWeight;
    _selectedActivityLevel =
        widget.userProfile.activityLevel ?? ActivityLevel.sedentary;
    _height = widget.userProfile.height ?? 170;
    _weight = widget.userProfile.weight ?? 70;
    _dateOfBirth =
        widget.userProfile.dateOfBirth ??
        DateTime.now().subtract(const Duration(days: 365 * 25));
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Profile'), centerTitle: true),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Gender Selection
              Text(
                'Gender',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              Row(
                children:
                    Gender.values.map((gender) {
                      return Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: FilterChip(
                            label: Text(gender.displayName),
                            selected: _selectedGender == gender,
                            onSelected: (selected) {
                              if (selected) {
                                setState(() {
                                  _selectedGender = gender;
                                });
                              }
                            },
                          ),
                        ),
                      );
                    }).toList(),
              ),
              const SizedBox(height: 24),

              // Unit System Toggle
              Row(
                children: [
                  Expanded(
                    child: _buildUnitToggle(
                      context,
                      label: 'Metric',
                      isSelected: _isMetric,
                      onTap: () => setState(() => _isMetric = true),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: _buildUnitToggle(
                      context,
                      label: 'Imperial',
                      isSelected: !_isMetric,
                      onTap: () => setState(() => _isMetric = false),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Height Input
              Text(
                'Height (${_isMetric ? "cm" : "ft"})',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ValueSlider(
                label: 'Height',
                unit: _isMetric ? 'cm' : 'ft',
                min: _isMetric ? 100 : 3,
                max: _isMetric ? 250 : 8,
                value: _isMetric ? _height : _height / 30.48,
                precision: _isMetric ? 0 : 2,
                onChanged: (value) {
                  setState(() {
                    _height = _isMetric ? value : value * 30.48;
                  });
                },
              ),
              const SizedBox(height: 24),

              // Weight Input
              Text(
                'Weight (${_isMetric ? "kg" : "lbs"})',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ValueSlider(
                label: 'Weight',
                unit: _isMetric ? 'kg' : 'lbs',
                min: _isMetric ? 20 : 44,
                max: _isMetric ? 300 : 660,
                value: _isMetric ? _weight : _weight * 2.20462,
                precision: 1,
                onChanged: (value) {
                  setState(() {
                    _weight = _isMetric ? value : value / 2.20462;
                  });
                },
              ),
              const SizedBox(height: 24),

              // Date of Birth Input
              Text(
                'Date of Birth',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
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
                    children: [
                      const Icon(LucideIcons.calendar),
                      const SizedBox(width: 12),
                      Text(
                        DateFormat.yMMMMd().format(_dateOfBirth),
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),

              // Weight Goal Selection
              Text(
                'Weight Goal',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ...WeightGoal.values.map((goal) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: _buildGoalCard(context, goal),
                );
              }),
              const SizedBox(height: 24),

              // Activity Level Selection
              Text(
                'Activity Level',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ...ActivityLevel.values.map((level) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  child: _buildActivityCard(context, level),
                );
              }),
              const SizedBox(height: 32),

              // Save Button
              PrimaryButton(
                onPressed: _saveProfile,
                analyticsEvent: AnalyticsEvent.profileEdit,
                text: 'Save Changes',
              ),
            ],
          ),
        ),
      ),
    );
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

  Widget _buildUnitToggle(
    BuildContext context, {
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
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
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: TextStyle(
            color:
                isSelected
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Theme.of(context).colorScheme.onSurfaceVariant,
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildGoalCard(BuildContext context, WeightGoal goal) {
    final isSelected = _selectedWeightGoal == goal;
    final icon = goal.icon;
    final color = goal.color(context);

    return SelectionCard(
      title: goal.displayName,
      description: goal.description,
      icon: icon,
      color: color,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          _selectedWeightGoal = goal;
        });
      },
    );
  }

  Widget _buildActivityCard(BuildContext context, ActivityLevel level) {
    final isSelected = _selectedActivityLevel == level;
    final icon = level.icon;
    final color = level.color(context);

    return SelectionCard(
      title: level.displayName,
      description: level.description,
      icon: icon,
      color: color,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          _selectedActivityLevel = level;
        });
      },
    );
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      final updatedData = UserProfile(
        height: _height,
        weight: _weight,
        gender: _selectedGender,
        dateOfBirth: _dateOfBirth,
        weightGoal: _selectedWeightGoal,
        activityLevel: _selectedActivityLevel,
      );

      // Save the updated profile data (upsert)
      OnboardingService.instance.saveProfileData(updatedData);

      // Show success message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profile updated successfully!'),
          backgroundColor: Colors.green,
        ),
      );

      // Navigate back
      context.router.maybePop();
    }
  }
}
