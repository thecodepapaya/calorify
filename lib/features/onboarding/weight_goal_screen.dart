import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class WeightGoalScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const WeightGoalScreen({super.key, required this.onContinue});

  @override
  State<WeightGoalScreen> createState() => _WeightGoalScreenState();
}

class _WeightGoalScreenState extends State<WeightGoalScreen> {
  WeightGoal? _selectedGoal;
  bool _isLoading = true;
  UserProfile? _userProfile;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final data = await OnboardingService.instance.getProfileData();
    setState(() {
      _userProfile = data ?? const UserProfile();
      _selectedGoal = data?.weightGoal;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(body: Center(child: AppLoader()));
    }
    if (_userProfile == null) {
      return const Scaffold(
        body: Center(child: Text('Error loading profile data')),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'What\'s your goal?',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Choose the goal that best describes what you want to achieve',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Weight Goal Options
                      ...WeightGoal.values.map((goal) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: _buildGoalCard(context, goal),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: PrimaryButton(
                analyticsEvent: AnalyticsEvent.onboardingSetWeightGoal,
                onPressed:
                    _selectedGoal != null
                        ? () => _continue(_userProfile!)
                        : null,
                text: 'Continue',
                trailingIcon: LucideIcons.arrowRight,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGoalCard(BuildContext context, WeightGoal goal) {
    final isSelected = _selectedGoal == goal;
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
          _selectedGoal = goal;
        });
      },
    );
  }

  void _continue(UserProfile profile) {
    if (_selectedGoal != null) {
      final updatedProfile = profile.copyWith(weightGoal: _selectedGoal);
      OnboardingService.instance.saveProfileData(updatedProfile);
      widget.onContinue();
    }
  }
}
