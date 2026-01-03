import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:calorify/shared_widgets/language_picker_sheet.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  UserProfile? _userProfile;
  bool _isLoading = true;
  int _debugTapCount = 0;
  bool _showDebugOptions = false;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  Future<void> _loadSettings() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (!mounted) return;
    setState(() {
      _userProfile = profile;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (_isLoading) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(t.settings.title),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        children: [
          _buildCardSection(t.settings.sections.profile, [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.user,
                  color: colorScheme.primary,
                  size: 20,
                ),
              ),
              title: Text(
                t.settings.editProfile.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(t.settings.editProfile.subtitle),
              trailing: const Icon(LucideIcons.chevronRight, size: 18),
              onTap:
                  _userProfile != null
                      ? () async {
                        await context.router.push(
                          EditProfileRoute(userProfile: _userProfile!),
                        );
                        // Reload profile data after returning from edit screen
                        await _loadSettings();
                      }
                      : null,
            ),
          ]),
          const SizedBox(height: 16),
          _buildCardSection(t.settings.sections.localization, [
            _buildLanguageTile(),
            _buildHeightUnitTile(),
            _buildWeightUnitTile(),
          ]),
          const SizedBox(height: 16),
          _buildCardSection(t.settings.sections.notifications, [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.bell,
                  color: colorScheme.primary,
                  size: 20,
                ),
              ),
              title: Text(
                t.settings.mealReminders.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(t.settings.mealReminders.subtitle),
              trailing: const Icon(LucideIcons.chevronRight, size: 18),
              onTap: () => context.router.push(const EditReminderRoute()),
            ),
          ]),
          const SizedBox(height: 16),
          _buildCardSection(t.settings.sections.supportAndLegal, [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.primaryContainer.withOpacity(0.4),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.mail,
                  color: colorScheme.primary,
                  size: 20,
                ),
              ),
              title: Text(
                t.settings.sendFeedback.title,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Text(t.settings.sendFeedback.subtitle),
              onTap: _sendFeedbackEmail,
            ),
          ]),
          const SizedBox(height: 16),
          _buildCardSection(t.settings.sections.dangerZone, [
            ListTile(
              leading: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: colorScheme.errorContainer.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  LucideIcons.trash2,
                  color: colorScheme.error,
                  size: 20,
                ),
              ),
              title: Text(
                t.settings.clearAllData.title,
                style: TextStyle(
                  color: colorScheme.error,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(t.settings.clearAllData.subtitle),
              onTap: _showClearDataConfirmation,
            ),
          ]),
          if (_showDebugOptions ||
              kDebugMode ||
              EnvConfig.instance.isStaging) ...[
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.developer, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.tertiaryContainer.withOpacity(0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LucideIcons.bug,
                    color: colorScheme.tertiary,
                    size: 20,
                  ),
                ),
                title: Text(
                  t.settings.debugOptions.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                trailing: const Icon(LucideIcons.chevronRight, size: 18),
                onTap: () => context.router.push(const DebugOptionsRoute()),
              ),
            ]),
          ],
          const SizedBox(height: 48),
          _buildAppInfo(),
          const SizedBox(height: 24),
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

  Widget _buildLanguageTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currentLocale = TranslationProvider.of(context).locale;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withOpacity(0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.languages,
          color: colorScheme.primary,
          size: 20,
        ),
      ),
      title: Text(
        t.settings.language.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(currentLocale.translations.language),
      trailing: const Icon(LucideIcons.chevronRight, size: 18),
      onTap: () async {
        await LanguagePickerSheet.show(context);
        setState(() {});
      },
    );
  }

  Widget _buildHeightUnitTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final unitSystem = _userProfile?.heightUnit ?? UnitSystem.metric;

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
        t.settings.heightUnit.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        unitSystem == UnitSystem.metric
            ? t.editProfile.metricCm
            : t.editProfile.imperialFtIn,
      ),
      trailing: SegmentedButton<UnitSystem>(
        segments: [
          ButtonSegment(
            value: UnitSystem.metric,
            label: Text(t.editProfile.metric),
          ),
          ButtonSegment(
            value: UnitSystem.imperial,
            label: Text(t.editProfile.imperial),
          ),
        ],
        selected: {unitSystem},
        showSelectedIcon: false,
        style: const ButtonStyle(
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
        ),
        onSelectionChanged: (Set<UnitSystem> selection) async {
          final newUnit = selection.first;
          if (newUnit.isMetric == unitSystem.isMetric) return;

          final currentHeight = _userProfile?.height;
          double? newHeight;

          if (currentHeight != null) {
            newHeight =
                newUnit.isMetric
                    ? LocaleUtils.convertHeightToMetric(currentHeight)
                    : LocaleUtils.convertHeightToImperial(currentHeight);
          }

          final updatedProfile = _userProfile?.copyWith(
            height: newHeight,
            heightUnit: newUnit,
          );

          if (updatedProfile != null) {
            await OnboardingService.instance.saveProfileData(updatedProfile);
            setState(() {
              _userProfile = updatedProfile;
            });
          }
        },
      ),
    );
  }

  Widget _buildWeightUnitTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final unitSystem = _userProfile?.weightUnit ?? UnitSystem.metric;

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
        t.settings.weightUnit.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        unitSystem == UnitSystem.metric
            ? t.editProfile.metricKg
            : t.editProfile.imperialLbs,
      ),
      trailing: SegmentedButton<UnitSystem>(
        segments: [
          ButtonSegment(
            value: UnitSystem.metric,
            label: Text(t.editProfile.metric),
          ),
          ButtonSegment(
            value: UnitSystem.imperial,
            label: Text(t.editProfile.imperial),
          ),
        ],
        selected: {unitSystem},
        showSelectedIcon: false,
        style: const ButtonStyle(
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
        ),
        onSelectionChanged: (Set<UnitSystem> selection) async {
          final newUnit = selection.first;
          if (newUnit.isMetric == unitSystem.isMetric) return;

          final currentWeight = _userProfile?.weight;
          final currentTargetWeight = _userProfile?.targetWeight;
          double? newWeight;
          double? newTargetWeight;

          if (currentWeight != null) {
            newWeight =
                newUnit.isMetric
                    ? LocaleUtils.convertWeightToMetric(currentWeight)
                    : LocaleUtils.convertWeightToImperial(currentWeight);
          }

          if (currentTargetWeight != null) {
            newTargetWeight =
                newUnit.isMetric
                    ? LocaleUtils.convertWeightToMetric(currentTargetWeight)
                    : LocaleUtils.convertWeightToImperial(currentTargetWeight);
          }

          final updatedProfile = _userProfile?.copyWith(
            weight: newWeight,
            targetWeight: newTargetWeight,
            weightUnit: newUnit,
          );

          if (updatedProfile != null) {
            await OnboardingService.instance.saveProfileData(updatedProfile);
            setState(() {
              _userProfile = updatedProfile;
            });
          }
        },
      ),
    );
  }

  void _showClearDataConfirmation() {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(t.settings.clearAllData.confirmationTitle),
            content: Text(t.settings.clearAllData.confirmationMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(t.settings.clearAllData.cancel),
              ),
              TextButton(
                onPressed: () async {
                  await DatabaseService.databaseInterface.clearAllData();
                  if (!mounted) return;
                  Navigator.pop(context);
                  context.router.pushAndPopUntil(
                    const OnboardingRoute(),
                    predicate: (route) => false,
                  );
                },
                child: Text(
                  t.settings.clearAllData.clearEverything,
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ],
          ),
    );
  }

  void _sendFeedbackEmail() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final deviceModel = androidInfo.model;
    final deviceVersion = androidInfo.version.release;

    final uid = FirebaseAuth.instance.currentUser?.uid;

    final body = '''
Please provide your feedback below:
--------------------


--------------------
App Version: $version+$buildNumber
Device: $deviceModel
OS Version: $deviceVersion
UID: $uid''';

    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: 'calorify@thecodepapaya.dev',
      query:
          'subject=${Uri.encodeComponent('Calorify App Feedback')}&body=${Uri.encodeComponent(body)}',
    );

    await launchUrl(emailLaunchUri);
  }

  Widget _buildAppInfo() {
    return FutureBuilder<PackageInfo>(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox.shrink();
        final info = snapshot.data!;
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            setState(() {
              _debugTapCount++;
              if (_debugTapCount >= 7 && !_showDebugOptions) {
                _showDebugOptions = true;
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(t.settings.developerModeEnabled),
                    duration: Duration(seconds: 2),
                  ),
                );
              }
            });
          },
          child: Center(
            child: Column(
              children: [
                Text(
                  'Calorify v${info.version}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Build ${info.buildNumber}',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
