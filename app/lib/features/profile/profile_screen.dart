import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/providers/profile_providers.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:utils/utils.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getHealthMetricsDisclaimer;
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final profileAsync = ref.watch(userProfileProvider);

    return profileAsync.when(
      loading: () => const Scaffold(body: Center(child: AppLoader())),
      error:
          (error, _) => Scaffold(body: Center(child: ErrorView(error: error))),
      data: (userProfile) {
        if (userProfile == null) {
          return Scaffold(
            backgroundColor: colorScheme.surface,
            appBar: AppBar(
              title: Text(t.profile.title),
              centerTitle: true,
              backgroundColor: colorScheme.surface,
              elevation: 0,
            ),
            body: Center(child: Text(t.profile.noProfileData)),
          );
        }

        return Scaffold(
          backgroundColor: colorScheme.surface,
          appBar: AppBar(
            title: Text(t.profile.title),
            centerTitle: true,
            backgroundColor: colorScheme.surface,
            elevation: 0,
            actions: [
              IconButton(
                onPressed: () => _editProfile(context, ref, userProfile),
                icon: Icon(AppIcons.pencil, size: 20),
                iconSize: 20,
                padding: const EdgeInsets.all(8),
                constraints: const BoxConstraints(),
              ),
            ],
          ),
          body: ResponsiveContent(
            maxWidth: 760,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                _buildCardSection(context, t.profile.sections.profile, [
                  _buildProfileHeader(context),
                ]),
                const SizedBox(height: 16),
                _buildCardSection(
                  context,
                  t.profile.sections.basicInformation,
                  [
                    _buildPersonalDetailsTile(context, userProfile),
                    _buildHeightTile(context, userProfile),
                    _buildWeightTile(context, userProfile),
                    if (userProfile.age != null)
                      _buildAgeTile(context, userProfile),
                  ],
                ),
                const SizedBox(height: 16),
                _buildCardSection(
                  context,
                  t.profile.sections.goalsAndActivity,
                  [
                    _buildDailyGoalTile(context, ref),
                    _buildWeightGoalTile(context, userProfile),
                    _buildTargetWeightTile(context, userProfile),
                    _buildActivityLevelTile(context, userProfile),
                  ],
                ),
                const SizedBox(height: 16),
                _buildCardSection(
                  context,
                  t.profile.sections.calculatedValues,
                  [_buildCalculatedValuesTile(context, ref, userProfile)],
                ),
                const SizedBox(height: 32),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardSection(
    BuildContext context,
    String title,
    List<Widget> children,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 8),
          child: Text(
            title.toUpperCase(),
            style: theme.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.2,
            ),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(
              color: colorScheme.outlineVariant.withValues(alpha: 0.5),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      leading: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.user, color: colorScheme.primary, size: 24),
      ),
      title: Text(
        t.profile.yourProfile,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
      subtitle: Text(t.profile.viewAndManage, style: TextStyle(fontSize: 13)),
    );
  }

  Widget _buildPersonalDetailsTile(
    BuildContext context,
    UserProfile userProfile,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final gender =
        userProfile.hasGender()
            ? userProfile.gender.displayName
            : t.profile.notSet;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.user, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.gender,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(gender),
    );
  }

  Widget _buildHeightTile(BuildContext context, UserProfile userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final height = userProfile.hasHeight() ? userProfile.height : null;
    final heightUnit = userProfile.heightUnit.normalized;

    String heightText = t.profile.notSet;
    if (height != null) {
      heightText = LocaleUtils.formatHeight(height, heightUnit);
    }

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.ruler, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.height,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(heightText),
    );
  }

  Widget _buildWeightTile(BuildContext context, UserProfile userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final weight = userProfile.hasWeight() ? userProfile.weight : null;
    final weightUnit = userProfile.weightUnit.normalized;

    String weightText = t.profile.notSet;
    if (weight != null) {
      weightText =
          '${weight.toStringAsFixed(weightUnit.weightPrecision)} ${weightUnit.weightUnitDisplay}';
    }

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.scale, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.weight,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(weightText),
    );
  }

  Widget _buildAgeTile(BuildContext context, UserProfile userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final age = userProfile.age;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.calendar, color: colorScheme.primary, size: 20),
      ),
      title: Text(t.profile.age, style: TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text('$age ${t.profile.years}'),
    );
  }

  Widget _buildDailyGoalTile(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final goalAsync = ref.watch(savedDailyCalorieGoalProvider);
    final goal = goalAsync.maybeWhen(
      data: (value) => value ?? 0,
      orElse: () => 0,
    );
    final goalText =
        goal > 0
            ? '$goal ${t.profile.calculatedValues.calPerDay}'
            : t.profile.notSet;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.flame, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.calculatedValues.dailyGoal,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(goalText),
    );
  }

  Widget _buildWeightGoalTile(BuildContext context, UserProfile userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final weightGoal =
        userProfile.hasWeightGoal() ? userProfile.weightGoal : null;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.target, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.weightGoal,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(weightGoal?.displayName ?? t.profile.notSet),
    );
  }

  Widget _buildTargetWeightTile(BuildContext context, UserProfile userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final targetWeight = userProfile.targetWeight;
    final weightUnit = userProfile.weightUnit;

    String targetWeightText = t.profile.notSet;
    targetWeightText =
        '${targetWeight.toStringAsFixed(weightUnit.weightPrecision)} ${weightUnit.weightUnitDisplay}';

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.scale, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.targetWeight,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(targetWeightText),
    );
  }

  Widget _buildActivityLevelTile(
    BuildContext context,
    UserProfile userProfile,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final activityLevel =
        userProfile.hasActivityLevel() ? userProfile.activityLevel : null;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.activity, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.profile.activityLevel,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(activityLevel?.displayName ?? t.profile.notSet),
    );
  }

  Widget _buildCalculatedValuesTile(
    BuildContext context,
    WidgetRef ref,
    UserProfile userProfile,
  ) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final metrics = ref.read(profileMetricsProvider);
    final bmr = metrics.basalMetabolicRate(userProfile);
    final tdee = metrics.totalDailyEnergyExpenditure(userProfile);
    final dailyCalorieGoal = metrics.dailyCalorieGoal(userProfile);

    // Always display BMR, TDEE, and Daily Goal - show N/A if calculation fails
    final bmrText =
        bmr != null
            ? '${bmr.toStringAsFixed(0)} ${t.profile.calculatedValues.calPerDay}'
            : t.profile.calculatedValues.notAvailable;
    final tdeeText =
        tdee != null
            ? '${tdee.toStringAsFixed(0)} ${t.profile.calculatedValues.calPerDay}'
            : t.profile.calculatedValues.notAvailable;
    final dailyGoalText =
        dailyCalorieGoal != null
            ? '${dailyCalorieGoal.toStringAsFixed(0)} ${t.profile.calculatedValues.calPerDay}'
            : t.profile.calculatedValues.notAvailable;

    return Stack(
      children: [
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: colorScheme.tertiaryContainer.withValues(alpha: 0.4),
              shape: BoxShape.circle,
            ),
            child: Icon(
              LucideIcons.calculator,
              color: colorScheme.tertiary,
              size: 20,
            ),
          ),
          title: Text(
            t.profile.healthMetrics,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 4),
              // Always show BMR widget
              Text(
                '${t.profile.calculatedValues.bmr}: $bmrText',
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 2),
              Text(
                '${t.profile.calculatedValues.tdee}: $tdeeText',
                style: const TextStyle(fontSize: 13),
              ),
              const SizedBox(height: 2),
              Text(
                '${t.profile.calculatedValues.dailyGoal}: $dailyGoalText',
                style: const TextStyle(fontSize: 13),
              ),
            ],
          ),
          isThreeLine: true,
        ),
        Positioned(
          top: 0,
          right: 0,
          child: DisclaimerButton(data: getHealthMetricsDisclaimer()),
        ),
      ],
    );
  }

  Future<void> _editProfile(
    BuildContext context,
    WidgetRef ref,
    UserProfile userProfile,
  ) async {
    await context.router.push(EditProfileRoute(userProfile: userProfile));
    if (!context.mounted) return;
    ref.invalidate(userProfileProvider);
    ref.invalidate(savedDailyCalorieGoalProvider);
  }
}
