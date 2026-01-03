import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  UserProfile? _userProfile;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadProfileData();
  }

  Future<void> _loadProfileData() async {
    final data = await OnboardingService.instance.getProfileData();
    if (!mounted) return;
    setState(() {
      _userProfile = data;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (_isLoading) {
      return const Scaffold(body: Center(child: AppLoader()));
    }

    if (_userProfile == null) {
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
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _editProfile,
            icon: const Icon(LucideIcons.pencil, size: 20),
            iconSize: 20,
            padding: const EdgeInsets.all(8),
            constraints: const BoxConstraints(),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          // Basic Information Section
          _buildCardSection(t.profile.sections.profile, [
            _buildProfileHeader(context),
          ]),
          const SizedBox(height: 16),
          _buildCardSection(t.profile.sections.basicInformation, [
            _buildPersonalDetailsTile(),
            _buildHeightTile(),
            _buildWeightTile(),
            if (_userProfile!.age != null) _buildAgeTile(),
          ]),
          const SizedBox(height: 16),

          // Goals & Activity Section
          _buildCardSection(t.profile.sections.goalsAndActivity, [
            _buildWeightGoalTile(),
            _buildActivityLevelTile(),
          ]),
          const SizedBox(height: 16),

          // Calculated Values Section
          _buildCardSection(t.profile.sections.calculatedValues, [
            _buildCalculatedValuesTile(),
          ]),
          const SizedBox(height: 32),
        ],
      ),
    );
  }

  Widget _buildCardSection(String title, List<Widget> children) {
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
              color: colorScheme.outlineVariant.withOpacity(0.5),
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
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildPersonalDetailsTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final gender = _userProfile!.gender?.displayName ?? 'Not set';

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildHeightTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final height = _userProfile!.height;
    final heightUnit = _userProfile!.heightUnit;

    String heightText = t.profile.notSet;
    if (height != null) {
      if (heightUnit.isMetric) {
        heightText = '${height.toStringAsFixed(0)} cm';
      } else {
        // Convert feet to feet and inches for display
        // Height is stored in feet (e.g., 5.5 feet = 5'6")
        final feet = height.floor();
        final inches = ((height - feet) * 12).round();
        heightText = '$feet\'$inches"';
      }
    }

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildWeightTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final weight = _userProfile!.weight;
    final weightUnit = _userProfile!.weightUnit;

    String weightText = t.profile.notSet;
    if (weight != null) {
      final unit = weightUnit.isMetric ? 'kg' : 'lbs';
      weightText = '${weight.toStringAsFixed(1)} $unit';
    }

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildAgeTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final age = _userProfile!.age;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.calendar, color: colorScheme.primary, size: 20),
      ),
      title: Text(t.profile.age, style: TextStyle(fontWeight: FontWeight.w600)),
      subtitle: Text('$age ${t.profile.years}'),
    );
  }

  Widget _buildWeightGoalTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final weightGoal = _userProfile!.weightGoal;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildActivityLevelTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final activityLevel = _userProfile!.activityLevel;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
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

  Widget _buildCalculatedValuesTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final bmr = OnboardingService.instance.calculateBMR(_userProfile!);
    final tdee = OnboardingService.instance.calculateTDEE(_userProfile!);
    final dailyCalorieGoal = OnboardingService.instance
        .calculateDailyCalorieGoal(_userProfile!);

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.tertiaryContainer.withOpacity(0.4),
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
        children: [
          const SizedBox(height: 4),
          Text(
            'BMR: ${bmr != null ? '${bmr.toStringAsFixed(0)} cal/day' : 'N/A'}',
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(height: 2),
          Text(
            'TDEE: ${tdee != null ? '${tdee.toStringAsFixed(0)} cal/day' : 'N/A'}',
            style: const TextStyle(fontSize: 13),
          ),
          const SizedBox(height: 2),
          Text(
            'Daily Goal: ${dailyCalorieGoal != null ? '${dailyCalorieGoal.toStringAsFixed(0)} cal/day' : 'N/A'}',
            style: const TextStyle(fontSize: 13),
          ),
        ],
      ),
      isThreeLine: true,
    );
  }

  Future<void> _editProfile() async {
    if (_userProfile == null) return;
    // Navigate to edit profile screen and wait for it to be popped.
    await context.router.push(EditProfileRoute(userProfile: _userProfile!));
    // When we return, reload the data to reflect any changes.
    setState(() {
      _isLoading = true;
    });
    await _loadProfileData();
  }
}
