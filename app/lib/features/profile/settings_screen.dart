import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/app_constants.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/providers/home_providers.dart'
    hide databaseInterfaceProvider;
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/local_inference_providers.dart';
import 'package:calorify/core/providers/theme_provider.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:calorify/shared_widgets/app_tag.dart';
import 'package:calorify/shared_widgets/easter_egg/grass.dart';
import 'package:calorify/shared_widgets/language_picker_sheet.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:path_provider/path_provider.dart';
import 'package:services/services.dart';
import 'package:share_plus/share_plus.dart';
import 'package:utils/utils.dart';

@RoutePage()
class SettingsScreen extends ConsumerStatefulWidget {
  const SettingsScreen({super.key});

  @override
  ConsumerState<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends ConsumerState<SettingsScreen> {
  int _debugTapCount = 0;
  bool _isExporting = false;
  bool _isInstallingNutrition = false;
  bool _isClearingNutrition = false;
  bool _showDebugOptions = false;
  late final Future<AppVersionInfo> _appVersionFuture;

  @override
  void initState() {
    super.initState();
    _appVersionFuture = getAppVersionInfo();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final profileAsync = ref.watch(userProfileProvider);
    final localAvailabilityAsync = ref.watch(
      localInferenceAvailabilityProvider,
    );
    final localPreferencesAsync = ref.watch(localInferencePreferencesProvider);
    final localNutritionStatusAsync = ref.watch(localNutritionStatusProvider);
    final showOfflineNutrition = localPreferencesAsync.maybeWhen(
      data: (preferences) => preferences.enabled,
      orElse: () => false,
    );
    final userProfile = profileAsync.maybeWhen(
      data: (profile) => profile,
      orElse: () => null,
    );

    if (profileAsync.isLoading) {
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
      body: ResponsiveContent(
        maxWidth: 760,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          children: [
            _buildCardSection(t.settings.sections.profile, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
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
                    userProfile != null
                        ? () async {
                          await context.router.push(
                            EditProfileRoute(userProfile: userProfile),
                          );
                          ref.invalidate(userProfileProvider);
                          ref.invalidate(dailyCalorieGoalProvider);
                        }
                        : null,
              ),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.localization, [
              _buildLanguageTile(),
              _buildThemeTile(),
              _buildHeightUnitTile(userProfile),
              _buildWeightUnitTile(userProfile),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.notifications, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
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
            _buildCardSection(t.settings.sections.healthConnect, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LucideIcons.activity,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  t.settings.healthConnect.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(t.settings.healthConnect.subtitle),
                trailing: const Icon(LucideIcons.chevronRight, size: 18),
                onTap:
                    () => context.router.push(
                      const HealthConnectPermissionsRoute(),
                    ),
              ),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.localInference, [
              _buildLocalInferenceTile(
                availabilityAsync: localAvailabilityAsync,
                preferencesAsync: localPreferencesAsync,
              ),
              if (showOfflineNutrition)
                _buildOfflineNutritionTile(
                  availabilityAsync: localAvailabilityAsync,
                  preferencesAsync: localPreferencesAsync,
                  statusAsync: localNutritionStatusAsync,
                ),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.supportAndLegal, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
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
                subtitle: Text(
                  t.settings.sendFeedback.subtitle(
                    appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                  ),
                ),
                onTap: _sendFeedbackEmail,
              ),
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LucideIcons.download,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  t.settings.exportMealHistory.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(t.settings.exportMealHistory.subtitle),
                trailing:
                    _isExporting
                        ? const SizedBox(
                          height: 18,
                          width: 18,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        )
                        : const Icon(LucideIcons.chevronRight, size: 18),
                onTap: _isExporting ? null : _exportMealHistory,
              ),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.about, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.primaryContainer.withValues(alpha: 0.4),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    LucideIcons.info,
                    color: colorScheme.primary,
                    size: 20,
                  ),
                ),
                title: Text(
                  t.settings.about.title,
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(t.settings.about.ourStory.title),
                trailing: const Icon(LucideIcons.chevronRight, size: 18),
                onTap: () => context.router.push(const AboutRoute()),
              ),
            ]),
            const SizedBox(height: 16),
            _buildCardSection(t.settings.sections.dangerZone, [
              ListTile(
                leading: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: colorScheme.errorContainer.withValues(alpha: 0.2),
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
                subtitle: Text(t.settings.clearAllData.localOnlySubtitle),
                onTap: _showClearDataConfirmation,
              ),
            ]),
            if (_showDebugOptions ||
                kDebugMode ||
                EnvConfig.instance.usesStagingIdentity) ...[
              const SizedBox(height: 16),
              _buildCardSection(t.settings.sections.developer, [
                ListTile(
                  leading: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: colorScheme.tertiaryContainer.withValues(
                        alpha: 0.4,
                      ),
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
            const Grass(height: 120),
          ],
        ),
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
          shape: RoundedSuperellipseBorder(
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

  Widget _buildLocalInferenceTile({
    required AsyncValue<LocalInferenceAvailability> availabilityAsync,
    required AsyncValue<LocalInferencePreferences> preferencesAsync,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final availability = switch (availabilityAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final preferences = switch (preferencesAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final enabled = preferences?.enabled ?? false;
    final device = availability?.device;
    final rolloutEnabled = availability?.policy.textEnabled == true;
    final canEnable = device?.supported == true && rolloutEnabled;
    final subtitle =
        availability == null
            ? t.settings.localInference.subtitle
            : device?.supported != true
            ? t.settings.localInference.unavailable
            : !rolloutEnabled
            ? t.settings.localInference.rolloutUnavailable
            : device?.ready != true
            ? t.settings.localInference.subtitle
            : t.settings.localInference.useLocalSubtitle;

    return SwitchListTile(
      secondary: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.cpu,
          color:
              canEnable || enabled ? colorScheme.primary : colorScheme.outline,
          size: 20,
        ),
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              t.settings.localInference.useLocalTitle,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 8),
          AppTag(label: t.common.betaTag),
        ],
      ),
      subtitle: Text(subtitle),
      value: enabled,
      onChanged:
          preferences == null || (!enabled && !canEnable)
              ? null
              : (value) => _setLocalInferenceEnabled(
                value: value,
                availability: availability,
              ),
    );
  }

  Widget _buildOfflineNutritionTile({
    required AsyncValue<LocalInferenceAvailability> availabilityAsync,
    required AsyncValue<LocalInferencePreferences> preferencesAsync,
    required AsyncValue<LocalNutritionStatus> statusAsync,
  }) {
    final availability = switch (availabilityAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final preferences = switch (preferencesAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final status = switch (statusAsync) {
      AsyncData(:final value) => value,
      _ => null,
    };
    final policy = availability?.policy;
    final available =
        preferences?.enabled == true &&
        policy?.hasLocalNutritionManifestUrl() == true;
    final enabled = preferences?.offlineNutritionEnabled ?? false;
    final pack = status?.pack;
    final copy = t.localNutritionPhase4;
    final subtitle =
        _isInstallingNutrition
            ? copy.offlineNutritionInstalling
            : !available
            ? copy.offlineNutritionUnavailable
            : pack == null
            ? copy.offlineNutritionNotDownloaded
            : copy.offlineNutritionStatus(
              version: pack.pack.packVersion,
              size: _formatBytes(pack.byteSize),
              datasetVersion: pack.pack.datasetVersion,
            );

    return Column(
      children: [
        SwitchListTile(
          secondary: const Icon(LucideIcons.database),
          title: Text(
            copy.offlineNutritionTitle,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(subtitle),
          value: enabled,
          onChanged:
              preferences == null ||
                      _isInstallingNutrition ||
                      _isClearingNutrition ||
                      (!enabled && !available)
                  ? null
                  : (value) => _setOfflineNutritionEnabled(
                    value: value,
                    availability: availability,
                  ),
        ),
        if (pack != null)
          ListTile(
            dense: true,
            leading: const Icon(LucideIcons.hardDrive, size: 19),
            title: Text(
              copy.offlineNutritionCacheStatus(
                count: status!.cacheRecords,
                size: _formatBytes(status.cacheBytes),
              ),
            ),
            trailing: IconButton(
              tooltip: copy.offlineNutritionUpdate,
              onPressed:
                  available && !_isInstallingNutrition
                      ? () => _installOfflineNutrition(availability!)
                      : null,
              icon: const Icon(LucideIcons.refreshCw, size: 19),
            ),
          ),
        if (pack != null || (status?.cacheRecords ?? 0) > 0)
          ListTile(
            dense: true,
            leading: const Icon(LucideIcons.trash2, size: 19),
            title: Text(copy.offlineNutritionClear),
            enabled: !_isClearingNutrition,
            onTap: _isClearingNutrition ? null : _clearOfflineNutrition,
          ),
      ],
    );
  }

  Future<void> _setOfflineNutritionEnabled({
    required bool value,
    required LocalInferenceAvailability? availability,
  }) async {
    final database = ref.read(databaseInterfaceProvider);
    if (!value) {
      await database.setOfflineNutritionEnabled(false);
      ref.invalidate(localInferencePreferencesProvider);
      return;
    }
    if (availability == null) return;
    await _installOfflineNutrition(availability);
  }

  Future<void> _installOfflineNutrition(
    LocalInferenceAvailability availability,
  ) async {
    final policy = availability.policy;
    if (!policy.hasLocalNutritionManifestUrl()) {
      return;
    }
    final manifestUri = Uri.tryParse(policy.localNutritionManifestUrl);
    if (manifestUri == null) return;
    setState(() => _isInstallingNutrition = true);
    try {
      await ref.read(localNutritionPackServiceProvider).install(manifestUri);
      await ref
          .read(databaseInterfaceProvider)
          .setOfflineNutritionEnabled(true);
      ref.invalidate(localInferencePreferencesProvider);
      ref.invalidate(localNutritionStatusProvider);
    } on Object catch (error) {
      if (mounted) {
        showFlushbar(
          t.localNutritionPhase4.offlineNutritionInstallFailed(error: error),
          context: context,
        );
      }
    } finally {
      if (mounted) setState(() => _isInstallingNutrition = false);
    }
  }

  Future<void> _clearOfflineNutrition() async {
    final copy = t.localNutritionPhase4;
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: Text(copy.offlineNutritionClearTitle),
            content: Text(copy.offlineNutritionClearBody),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext, false),
                child: Text(t.settings.localInference.cancel),
              ),
              FilledButton(
                onPressed: () => Navigator.pop(dialogContext, true),
                child: Text(copy.offlineNutritionClearConfirm),
              ),
            ],
          ),
    );
    if (confirmed != true || !mounted) return;
    setState(() => _isClearingNutrition = true);
    try {
      await ref.read(localNutritionPackServiceProvider).clear();
      final database = ref.read(databaseInterfaceProvider);
      await database.clearLocalNutritionCache();
      await database.setOfflineNutritionEnabled(false);
      ref.invalidate(localInferencePreferencesProvider);
      ref.invalidate(localNutritionStatusProvider);
      if (mounted) {
        showFlushbar(copy.offlineNutritionCleared, context: context);
      }
    } finally {
      if (mounted) setState(() => _isClearingNutrition = false);
    }
  }

  static String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    final kilobytes = bytes / 1024;
    if (kilobytes < 1024) return '${kilobytes.toStringAsFixed(1)} KB';
    return '${(kilobytes / 1024).toStringAsFixed(1)} MB';
  }

  Future<void> _setLocalInferenceEnabled({
    required bool value,
    required LocalInferenceAvailability? availability,
  }) async {
    final database = ref.read(databaseInterfaceProvider);
    if (!value) {
      await database.setLocalInferenceEnabled(false);
      ref.invalidate(localInferencePreferencesProvider);
      return;
    }
    if (availability == null || !availability.policy.textEnabled) return;
    final acknowledged = await _showLocalInferenceDisclosure();
    if (acknowledged != true || !mounted) return;
    await database.setLocalInferenceEnabled(true);
    ref.invalidate(localInferencePreferencesProvider);

    if (availability.device.canDownload) {
      unawaited(_downloadLocalInferenceModel());
    }
  }

  Future<void> _downloadLocalInferenceModel() async {
    try {
      await ref.read(localInferenceServiceProvider).downloadModel();
      ref.invalidate(localInferenceAvailabilityProvider);
    } on Object {
      // The setting remains enabled and the normal cloud fallback is safe.
      // A later capability refresh can offer the model download again.
    }
  }

  Future<bool?> _showLocalInferenceDisclosure() {
    var acknowledged = false;
    return showModalBottomSheet<bool>(
      context: context,
      useRootNavigator: true,
      isScrollControlled: true,
      showDragHandle: true,
      builder:
          (sheetContext) => StatefulBuilder(
            builder:
                (context, setSheetState) => SafeArea(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.fromLTRB(24, 4, 24, 24),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          t.settings.localInference.disclosureTitle,
                          style: Theme.of(context).textTheme.titleLarge
                              ?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 10),
                        Text(t.settings.localInference.disclosureBody),
                        const SizedBox(height: 16),
                        _disclosurePoint(
                          context,
                          t.settings.localInference.disclosureLimit1,
                        ),
                        _disclosurePoint(
                          context,
                          t.settings.localInference.disclosureLimit2,
                        ),
                        _disclosurePoint(
                          context,
                          t.settings.localInference.disclosureLimit3,
                        ),
                        const SizedBox(height: 12),
                        CheckboxListTile(
                          contentPadding: EdgeInsets.zero,
                          controlAffinity: ListTileControlAffinity.leading,
                          value: acknowledged,
                          title: Text(
                            t.settings.localInference.acknowledgement,
                          ),
                          onChanged:
                              (value) => setSheetState(
                                () => acknowledged = value ?? false,
                              ),
                        ),
                        const SizedBox(height: 8),
                        FilledButton(
                          onPressed:
                              acknowledged
                                  ? () => Navigator.pop(sheetContext, true)
                                  : null,
                          child: Text(t.settings.localInference.enable),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(sheetContext, false),
                          child: Text(t.settings.localInference.cancel),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
    );
  }

  Widget _disclosurePoint(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            LucideIcons.circleAlert,
            size: 18,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }

  Widget _buildThemeTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final currentThemeMode = ref.watch(appThemeProvider);

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
          shape: BoxShape.circle,
        ),
        child: Icon(LucideIcons.palette, color: colorScheme.primary, size: 20),
      ),
      title: Text(
        t.settings.theme.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      trailing: SegmentedButton<ThemeMode>(
        segments: [
          ButtonSegment(
            value: ThemeMode.light,
            icon: const Icon(LucideIcons.sun, size: 18),
            tooltip: t.settings.theme.light,
          ),
          ButtonSegment(
            value: ThemeMode.dark,
            icon: const Icon(LucideIcons.moon, size: 18),
            tooltip: t.settings.theme.dark,
          ),
          ButtonSegment(
            value: ThemeMode.system,
            icon: const Icon(LucideIcons.smartphone, size: 18),
            tooltip: t.settings.theme.system,
          ),
        ],
        selected: {currentThemeMode},
        showSelectedIcon: false,
        style: const ButtonStyle(
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          ),
        ),
        onSelectionChanged: (Set<ThemeMode> selection) async {
          final newMode = selection.first;
          if (newMode == currentThemeMode) return;

          await ref.read(appThemeProvider.notifier).setTheme(newMode);
        },
      ),
    );
  }

  Widget _buildLanguageTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.4),
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
      subtitle: Row(
        children: [
          Text(t.flag, style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 8),
          Text(t.language),
        ],
      ),
      trailing: const Icon(LucideIcons.chevronRight, size: 18),
      onTap: () async {
        await LanguagePickerSheet.show(context);
        if (mounted) setState(() {});
      },
    );
  }

  Widget _buildHeightUnitTile(UserProfile? userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final unitSystem =
        userProfile != null
            ? userProfile.heightUnit.normalized
            : UnitSystem.METRIC;

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
        t.settings.heightUnit.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        unitSystem == UnitSystem.METRIC
            ? t.editProfile.metricCm
            : t.editProfile.imperialFtIn,
      ),
      trailing: SegmentedButton<UnitSystem>(
        segments: [
          ButtonSegment(
            value: UnitSystem.METRIC,
            label: Text(t.editProfile.unitCm),
          ),
          ButtonSegment(
            value: UnitSystem.IMPERIAL,
            label: Text(t.editProfile.unitFt),
          ),
        ],
        selected: {unitSystem},
        showSelectedIcon: false,
        style: const ButtonStyle(
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          ),
        ),
        onSelectionChanged: (Set<UnitSystem> selection) async {
          final newUnit = selection.first;
          if (newUnit.isMetric == unitSystem.isMetric) return;

          final currentHeight = userProfile?.height;
          double? newHeight;

          if (currentHeight != null) {
            newHeight =
                newUnit.isMetric
                    ? LocaleUtils.convertHeightToMetric(currentHeight)
                    : LocaleUtils.convertHeightToImperial(currentHeight);
          }

          final updatedProfile = userProfile?.deepCopy();
          if (updatedProfile != null && newHeight != null) {
            updatedProfile.height = newHeight;
            updatedProfile.heightUnit = newUnit;
          }

          if (updatedProfile != null) {
            await ref
                .read(profileRepositoryProvider)
                .saveUserProfile(updatedProfile);
            ref.invalidate(userProfileProvider);
          }
        },
      ),
    );
  }

  Widget _buildWeightUnitTile(UserProfile? userProfile) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final unitSystem =
        userProfile != null
            ? userProfile.weightUnit.normalized
            : UnitSystem.METRIC;

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
        t.settings.weightUnit.title,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(
        unitSystem == UnitSystem.METRIC
            ? t.editProfile.metricKg
            : t.editProfile.imperialLbs,
      ),
      trailing: SegmentedButton<UnitSystem>(
        segments: [
          ButtonSegment(
            value: UnitSystem.METRIC,
            label: Text(t.editProfile.unitKg),
          ),
          ButtonSegment(
            value: UnitSystem.IMPERIAL,
            label: Text(t.editProfile.unitLbs),
          ),
        ],
        selected: {unitSystem},
        showSelectedIcon: false,
        style: const ButtonStyle(
          visualDensity: VisualDensity.compact,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          padding: WidgetStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 6, vertical: 4),
          ),
        ),
        onSelectionChanged: (Set<UnitSystem> selection) async {
          final newUnit = selection.first;
          if (newUnit.isMetric == unitSystem.isMetric) return;

          final currentWeight = userProfile?.weight;
          final currentTargetWeight = userProfile?.targetWeight;
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

          final updatedProfile = userProfile?.deepCopy();
          if (updatedProfile != null && newWeight != null) {
            updatedProfile.weight = newWeight;
            if (newTargetWeight != null) {
              updatedProfile.targetWeight = newTargetWeight;
            }
            updatedProfile.weightUnit = newUnit;
          }

          if (updatedProfile != null) {
            await ref
                .read(profileRepositoryProvider)
                .saveUserProfile(updatedProfile);
            ref.invalidate(userProfileProvider);
          }
        },
      ),
    );
  }

  void _showClearDataConfirmation() {
    showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.clearDataConfirmationDialog,
      ),
      builder: (context) {
        final colorScheme = Theme.of(context).colorScheme;
        return AlertDialog(
          title: Text(t.settings.clearAllData.confirmationTitle),
          content: Text(t.settings.clearAllData.localOnlyConfirmationMessage),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(t.settings.clearAllData.cancel),
            ),
            TextButton(
              onPressed: () async {
                await ref.read(databaseInterfaceProvider).clearAllData();
                await NotificationService.instance.clearMealReminders();
                if (!context.mounted) return;
                Navigator.pop(context);
                await context.router.pushAndPopUntil(
                  const OnboardingRoute(),
                  predicate: (route) => false,
                );
              },
              child: Text(
                t.settings.clearAllData.clearEverything,
                style: TextStyle(color: colorScheme.error),
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _sendFeedbackEmail() async {
    final versionInfo = await getAppVersionInfo();
    await sendFeedbackEmail(
      appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
      emailAddress: AppConstants.supportEmail,
      version: versionInfo.uiVersionWithBuild,
    );
  }

  Future<void> _exportMealHistory() async {
    setState(() {
      _isExporting = true;
    });

    try {
      final csv = await ref.read(foodRepositoryProvider).exportMealHistoryCsv();
      final directory = await getTemporaryDirectory();
      final file = File('${directory.path}/calorify-meal-history.csv');
      await file.writeAsString(csv);

      if (!mounted) return;

      await SharePlus.instance.share(
        ShareParams(
          files: [XFile(file.path)],
          text: t.settings.exportMealHistory.shareText,
          subject: t.settings.exportMealHistory.title,
        ),
      );
    } catch (error) {
      if (!mounted) return;
      showFlushbar(
        t.settings.exportMealHistory.failed(error: '$error'),
        context: context,
      );
    } finally {
      if (mounted) {
        setState(() {
          _isExporting = false;
        });
      }
    }
  }

  Widget _buildAppInfo() {
    return FutureBuilder<AppVersionInfo>(
      future: _appVersionFuture,
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
                showFlushbar(
                  t.settings.developerModeEnabled,
                  duration: const Duration(seconds: 2),
                  context: context,
                );
              }
            });
          },
          child: Center(
            child: Column(
              children: [
                Text(
                  t.settings.appInfo.version(version: info.uiVersion),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                    fontSize: 12,
                  ),
                ),
                Text(
                  t.settings.appInfo.build(buildNumber: info.buildNumber),
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
