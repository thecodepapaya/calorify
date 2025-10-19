import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ActivityLevelScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const ActivityLevelScreen({super.key, required this.onContinue});

  @override
  State<ActivityLevelScreen> createState() => _ActivityLevelScreenState();
}

class _ActivityLevelScreenState extends State<ActivityLevelScreen> {
  ActivityLevel? _selectedLevel;
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
      _selectedLevel = data?.activityLevel;
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
                        'How active are you?',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'This helps us calculate your daily calorie needs more accurately',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Activity Level Options
                      ...ActivityLevel.values.map((level) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: _buildActivityCard(context, level),
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
                analyticsEvent: AnalyticsEvent.onboardingSetActivityLevel,
                onPressed:
                    _selectedLevel != null
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

  Widget _buildActivityCard(BuildContext context, ActivityLevel level) {
    final isSelected = _selectedLevel == level;
    final icon = _getActivityIcon(level);
    final color = _getActivityColor(context, level);

    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedLevel = level;
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
                    level.displayName,
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
                    level.description,
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

  IconData _getActivityIcon(ActivityLevel level) {
    switch (level) {
      case ActivityLevel.sedentary:
        return LucideIcons.sofa;
      case ActivityLevel.lightlyActive:
        return LucideIcons.user;
      case ActivityLevel.moderatelyActive:
        return LucideIcons.bike;
      case ActivityLevel.veryActive:
        return LucideIcons.dumbbell;
      case ActivityLevel.extremelyActive:
        return LucideIcons.flame;
    }
  }

  Color _getActivityColor(BuildContext context, ActivityLevel level) {
    switch (level) {
      case ActivityLevel.sedentary:
        return Colors.grey;
      case ActivityLevel.lightlyActive:
        return Colors.blue;
      case ActivityLevel.moderatelyActive:
        return Colors.green;
      case ActivityLevel.veryActive:
        return Colors.orange;
      case ActivityLevel.extremelyActive:
        return Colors.red;
    }
  }

  void _continue(UserProfile profile) async {
    if (_selectedLevel != null) {
      final updatedProfile = profile.copyWith(activityLevel: _selectedLevel);
      await OnboardingService.instance.saveProfileData(updatedProfile);
      widget.onContinue();
    }
  }
}
