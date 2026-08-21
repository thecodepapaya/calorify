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
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';

class WeightGoalScreen extends ConsumerStatefulWidget {
  final VoidCallback onContinue;
  const WeightGoalScreen({super.key, required this.onContinue});

  @override
  ConsumerState<WeightGoalScreen> createState() => _WeightGoalScreenState();
}

class _WeightGoalScreenState extends ConsumerState<WeightGoalScreen> {
  WeightGoal? _selectedGoal;
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
      _selectedGoal =
          data != null && data.hasWeightGoal() ? data.weightGoal : null;
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
            t.onboarding.weightGoal.title,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            t.onboarding.weightGoal.description,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 32),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children:
                  weightGoalValues.map((goal) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: _buildGoalCard(context, goal),
                    );
                  }).toList(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 24.0),
            child: AppButton(
              variant: AppButtonVariant.primary,
              analyticsEvent: AnalyticsEvent.onboardingSetWeightGoal,
              onPressed:
                  _selectedGoal != null && !_isSaving
                      ? () => _continue(_userProfile!)
                      : null,
              isLoading: _isSaving,
              text: t.common.kContinue,
              trailingIcon: LucideIcons.arrowRight,
            ),
          ),
        ],
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

  Future<void> _continue(UserProfile profile) async {
    if (_selectedGoal != null && !_isSaving) {
      setState(() => _isSaving = true);
      final updatedProfile = profile.deepCopy();
      updatedProfile.weightGoal = _selectedGoal!;
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
