import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:models/models.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';

class ActivityLevelScreen extends ConsumerStatefulWidget {
  final VoidCallback onContinue;
  const ActivityLevelScreen({super.key, required this.onContinue});

  @override
  ConsumerState<ActivityLevelScreen> createState() =>
      _ActivityLevelScreenState();
}

class _ActivityLevelScreenState extends ConsumerState<ActivityLevelScreen> {
  ActivityLevel? _selectedLevel;
  bool _isLoading = true;
  UserProfile? _userProfile;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final data = await ref.read(onboardingServiceProvider).getProfileData();
    if (!mounted) return;
    setState(() {
      _userProfile = data ?? UserProfile();
      _selectedLevel =
          data != null && data.hasActivityLevel() ? data.activityLevel : null;
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
                  activityLevelValues.map((level) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: _buildActivityCard(context, level),
                    );
                  }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 24.0),
            child: AppButton(
              variant: AppButtonVariant.primary,
              analyticsEvent: AnalyticsEvent.onboardingSetActivityLevel,
              onPressed:
                  _selectedLevel != null && !_isSaving
                      ? () => _continue(_userProfile!)
                      : null,
              isLoading: _isSaving,
              text: t.common.kContinue,
              trailingIcon: AppIcons.arrowRight,
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
    if (_selectedLevel != null && !_isSaving) {
      setState(() => _isSaving = true);
      final updatedProfile = profile.deepCopy();
      updatedProfile.activityLevel = _selectedLevel!;
      try {
        await ref
            .read(onboardingServiceProvider)
            .saveProfileData(updatedProfile);
        if (!mounted) return;
        widget.onContinue();
      } catch (_) {
        if (mounted) showFlushbar(t.meal.failedToSave, context: context);
      } finally {
        if (mounted) setState(() => _isSaving = false);
      }
    }
  }
}
