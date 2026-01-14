import 'package:calorify/core/constants/analytics_events.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
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
      _userProfile = data ?? const UserProfile();
      _selectedLevel = data?.activityLevel;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: AppLoader());
    }
    if (_userProfile == null) {
      return Center(child: Text(t.errors.loadingProfileData));
    }
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Text(
            t.onboarding.activityLevel.title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            t.onboarding.activityLevel.description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children:
                  ActivityLevel.values.map((level) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: _buildActivityCard(context, level),
                    );
                  }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 24.0),
            child: PrimaryButton(
              analyticsEvent: AnalyticsEvent.onboardingSetActivityLevel,
              onPressed:
                  _selectedLevel != null
                      ? () => _continue(_userProfile!)
                      : null,
              text: t.common.kContinue,
              trailingIcon: LucideIcons.arrowRight,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActivityCard(BuildContext context, ActivityLevel level) {
    final isSelected = _selectedLevel == level;
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
          _selectedLevel = level;
        });
      },
    );
  }

  void _continue(UserProfile profile) async {
    if (_selectedLevel != null) {
      final updatedProfile = profile.copyWith(activityLevel: _selectedLevel);
      await OnboardingService.instance.saveProfileData(updatedProfile);
      widget.onContinue();
    }
  }
}
