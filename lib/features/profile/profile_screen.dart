import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/onboarding_service.dart';
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
    if (_isLoading) {
      return const Scaffold(body: Center(child: AppLoader()));
    }

    if (_userProfile == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Profile'), centerTitle: true),
        body: const Center(child: Text('No profile data found')),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: _editProfile,
            icon: const Icon(LucideIcons.pencil),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Header
            _buildProfileHeader(context),
            const SizedBox(height: 32),

            // Basic Information Section
            _buildSectionHeader(context, 'Basic Information'),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              icon: LucideIcons.user,
              title: 'Personal Details',
              children: [
                _buildInfoRow(
                  'Gender',
                  _userProfile!.gender?.displayName ?? 'Not set',
                ),
                _buildInfoRow('Age', '${_userProfile!.age ?? 'N/A'} years'),
                _buildInfoRow(
                  'Height',
                  '${_userProfile!.height?.toStringAsFixed(0) ?? 'N/A'} cm',
                ),
                _buildInfoRow(
                  'Weight',
                  '${_userProfile!.weight?.toStringAsFixed(1) ?? 'N/A'} kg',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Goals Section
            _buildSectionHeader(context, 'Goals & Activity'),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              icon: LucideIcons.target,
              title: 'Weight Goal',
              children: [
                _buildInfoRow(
                  'Goal',
                  _userProfile!.weightGoal?.displayName ?? 'Not set',
                ),
                _buildInfoRow(
                  'Description',
                  _userProfile!.weightGoal?.description ?? 'Not set',
                ),
              ],
            ),
            const SizedBox(height: 16),
            _buildInfoCard(
              context,
              icon: LucideIcons.activity,
              title: 'Activity Level',
              children: [
                _buildInfoRow(
                  'Level',
                  _userProfile!.activityLevel?.displayName ?? 'Not set',
                ),
                _buildInfoRow(
                  'Description',
                  _userProfile!.activityLevel?.description ?? 'Not set',
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Calculated Values Section
            _buildSectionHeader(context, 'Calculated Values'),
            const SizedBox(height: 16),
            _buildCalculatedValuesCard(context),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colorScheme.primary, colorScheme.primaryContainer],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(LucideIcons.user, color: Colors.white, size: 32),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Your Profile',
                  style: textTheme.headlineSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'View and manage your health information',
                  style: textTheme.bodyMedium?.copyWith(
                    color: Colors.white.withOpacity(0.9),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Text(
      title,
      style: Theme.of(
        context,
      ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildInfoCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required List<Widget> children,
  }) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.surface,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.outline.withOpacity(0.2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: colorScheme.primary, size: 20),
              const SizedBox(width: 8),
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  Widget _buildInfoRow(String label, String value, {Color? valueColor}) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                color: valueColor ?? colorScheme.onSurface,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCalculatedValuesCard(BuildContext context) {
    final bmr = OnboardingService.instance.calculateBMR(_userProfile!);
    final tdee = OnboardingService.instance.calculateTDEE(_userProfile!);
    final dailyCalorieGoal = OnboardingService.instance
        .calculateDailyCalorieGoal(_userProfile!);

    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: colorScheme.primary.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                LucideIcons.calculator,
                color: colorScheme.primary,
                size: 20,
              ),
              const SizedBox(width: 8),
              Text(
                'Calculated Values',
                style: Theme.of(
                  context,
                ).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
              ),
            ],
          ),
          const SizedBox(height: 16),
          _buildInfoRow(
            'BMR',
            bmr != null ? '${bmr.toStringAsFixed(0)} calories/day' : 'N/A',
          ),
          _buildInfoRow(
            'TDEE',
            tdee != null ? '${tdee.toStringAsFixed(0)} calories/day' : 'N/A',
          ),
          _buildInfoRow(
            'Daily Goal',
            dailyCalorieGoal != null
                ? '${dailyCalorieGoal.toStringAsFixed(0)} calories/day'
                : 'N/A',
          ),
        ],
      ),
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
