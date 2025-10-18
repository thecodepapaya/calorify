import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
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
      _userProfile = data;
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
                      }).toList(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed:
                      _selectedGoal != null
                          ? () => _continue(_userProfile!)
                          : null,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGoalCard(BuildContext context, WeightGoal goal) {
    final isSelected = _selectedGoal == goal;
    final icon = _getGoalIcon(goal);
    final color = _getGoalColor(context, goal);

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedGoal = goal;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? color.withOpacity(0.1)
                  : Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: isSelected ? color : Theme.of(context).colorScheme.outline,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color:
                    isSelected
                        ? color
                        : Theme.of(context).colorScheme.surfaceVariant,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                icon,
                color:
                    isSelected
                        ? Theme.of(context).colorScheme.onPrimary
                        : Theme.of(context).colorScheme.onSurfaceVariant,
                size: 24,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    goal.displayName,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                      color:
                          isSelected
                              ? color
                              : Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    goal.description,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ),
            ),
            if (isSelected) Icon(LucideIcons.check, color: color, size: 24),
          ],
        ),
      ),
    );
  }

  IconData _getGoalIcon(WeightGoal goal) {
    switch (goal) {
      case WeightGoal.loseWeight:
        return LucideIcons.trendingDown;
      case WeightGoal.maintainWeight:
        return LucideIcons.minus;
      case WeightGoal.gainWeight:
        return LucideIcons.trendingUp;
    }
  }

  Color _getGoalColor(BuildContext context, WeightGoal goal) {
    switch (goal) {
      case WeightGoal.loseWeight:
        return Colors.green;
      case WeightGoal.maintainWeight:
        return Theme.of(context).colorScheme.primary;
      case WeightGoal.gainWeight:
        return Colors.orange;
    }
  }

  void _continue(UserProfile profile) {
    if (_selectedGoal != null) {
      final updatedProfile = profile.copyWith(weightGoal: _selectedGoal);
      OnboardingService.instance.saveProfileData(updatedProfile);
      widget.onContinue();
    }
  }
}
