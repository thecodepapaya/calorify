import 'dart:async';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:health/health.dart';
import 'package:widgets/widgets.dart';

class HealthConnectScreen extends ConsumerStatefulWidget {
  final VoidCallback onContinue;
  const HealthConnectScreen({super.key, required this.onContinue});

  @override
  ConsumerState<HealthConnectScreen> createState() =>
      _HealthConnectScreenState();
}

class _HealthConnectScreenState extends ConsumerState<HealthConnectScreen>
    with WidgetsBindingObserver {
  bool _isLoading = false;
  bool _canReadTotalCalories = false;
  bool _canWriteNutrition = false;
  bool _loadFailed = false;
  HealthConnectSdkStatus _sdkStatus = HealthConnectSdkStatus.sdkUnavailable;
  int _checkGeneration = 0;

  bool get _healthConnectEnabled => _canReadTotalCalories && _canWriteNutrition;
  bool get _hasAnyPermission => _canReadTotalCalories || _canWriteNutrition;
  bool get _isAvailable => _sdkStatus == HealthConnectSdkStatus.sdkAvailable;
  bool get _isProviderUpdateRequired =>
      _sdkStatus == HealthConnectSdkStatus.sdkUnavailableProviderUpdateRequired;

  String get _statusMessage {
    if (_loadFailed) return t.settings.healthConnect.permissionRequestFailed;
    if (_isProviderUpdateRequired) {
      return t.onboarding.healthConnect.statusProviderUpdateRequired;
    }
    if (!_isAvailable) return t.onboarding.healthConnect.statusUnavailable;
    if (_healthConnectEnabled) {
      return t.onboarding.healthConnect.statusConnected;
    }
    if (_hasAnyPermission) return t.onboarding.healthConnect.statusPartial;
    return t.onboarding.healthConnect.statusNotConnected;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_checkHealthConnectStatus());
  }

  @override
  void dispose() {
    _checkGeneration++;
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && !_isLoading) {
      unawaited(_checkHealthConnectStatus(showLoading: false));
    }
  }

  Future<void> _checkHealthConnectStatus({bool showLoading = true}) async {
    final generation = ++_checkGeneration;
    if (mounted && showLoading) {
      setState(() {
        _isLoading = true;
        _loadFailed = false;
      });
    }

    try {
      final healthService = ref.read(healthServiceProvider);
      final hadNutritionWrite = healthService.canWriteNutrition;
      await healthService.refreshAuthorizationStatus();
      if (healthService.initializationState ==
          HealthServiceInitializationState.failed) {
        throw healthService.lastError ??
            StateError('Health Connect initialization failed');
      }
      if (!mounted || generation != _checkGeneration) return;
      setState(() {
        _sdkStatus = healthService.status;
        _canReadTotalCalories = healthService.canReadTotalCalories;
        _canWriteNutrition = healthService.canWriteNutrition;
        _loadFailed = false;
      });
      unawaited(
        _reconcileAndSync(
          enableNutritionSync:
              !hadNutritionWrite && healthService.canWriteNutrition,
        ),
      );
    } catch (_) {
      if (!mounted || generation != _checkGeneration) return;
      setState(() => _loadFailed = true);
    } finally {
      if (showLoading && mounted && generation == _checkGeneration) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _reconcileAndSync({bool enableNutritionSync = false}) async {
    try {
      final syncService = ref.read(healthConnectSyncServiceProvider);
      await syncService.reconcileAuthorization();
      if (enableNutritionSync) {
        await syncService.enableNutritionSync();
      } else {
        await syncService.syncPending();
      }
    } catch (_) {
      // Pending records remain queued and will be retried in the foreground.
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 48),
                  Text(
                    t.onboarding.healthConnect.title,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    t.onboarding.healthConnect.overviewDescription,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Health Connect Benefits
                  _buildBenefitItem(
                    context,
                    icon: AppIcons.activity,
                    title: t.onboarding.healthConnect.caloriesBurned.title,
                    description:
                        t.onboarding.healthConnect.caloriesBurned.description,
                  ),
                  const SizedBox(height: 16),

                  _buildBenefitItem(
                    context,
                    icon: AppIcons.trendingUp,
                    title: t.onboarding.healthConnect.shareLoggedMeals.title,
                    description:
                        t.onboarding.healthConnect.shareLoggedMeals.description,
                  ),
                  const SizedBox(height: 16),

                  _buildBenefitItem(
                    context,
                    icon: AppIcons.link,
                    title: t.onboarding.healthConnect.userControl.title,
                    description:
                        t.onboarding.healthConnect.userControl.description,
                  ),
                  const SizedBox(height: 32),

                  // Health Connect Status
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          _healthConnectEnabled && !_loadFailed
                              ? colorScheme.successContainer
                              : colorScheme.surfaceContainerHighest.withValues(
                                alpha: 0.5,
                              ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color:
                            _healthConnectEnabled && !_loadFailed
                                ? colorScheme.success
                                : colorScheme.outline.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          _healthConnectEnabled && !_loadFailed
                              ? AppIcons.check
                              : _loadFailed
                              ? AppIcons.triangleAlert
                              : AppIcons.info,
                          color:
                              _healthConnectEnabled && !_loadFailed
                                  ? colorScheme.success
                                  : colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _loadFailed
                                    ? t.errors.somethingWentWrong
                                    : _healthConnectEnabled
                                    ? t.onboarding.healthConnect.connected
                                    : _hasAnyPermission
                                    ? t.settings.healthConnect.connectionPartial
                                    : t.onboarding.healthConnect.notConnected,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color:
                                      _healthConnectEnabled && !_loadFailed
                                          ? colorScheme.onSuccessContainer
                                          : colorScheme.onSurface,
                                ),
                              ),
                              if (_statusMessage.isNotEmpty) ...[
                                const SizedBox(height: 4),
                                Text(
                                  _statusMessage,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 24.0),
            child: Column(
              children: [
                if (_healthConnectEnabled && !_loadFailed) ...[
                  AppButton(
                    variant: AppButtonVariant.primary,
                    analyticsEvent:
                        AnalyticsEvent.onboardingContinueHealthConnect,
                    onPressed: _navigateToReminderNotifications,
                    text: t.common.kContinue,
                    trailingIcon: AppIcons.arrowRight,
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    variant: AppButtonVariant.secondary,
                    onPressed: _isLoading ? null : _openSettings,
                    text: t.onboarding.healthConnect.manageAccess,
                    leadingIcon: AppIcons.settings,
                  ),
                ] else ...[
                  AppButton(
                    variant: AppButtonVariant.primary,
                    analyticsEvent: AnalyticsEvent.onboardingSetupHealthConnect,
                    onPressed: _isLoading ? null : _setupHealthConnect,
                    text:
                        _isProviderUpdateRequired
                            ? t.onboarding.healthConnect.installOrUpdate
                            : (!_isAvailable || _loadFailed)
                            ? t.errors.retry
                            : t.onboarding.healthConnect.setup,
                    leadingIcon:
                        _isProviderUpdateRequired
                            ? AppIcons.download
                            : (!_isAvailable || _loadFailed)
                            ? AppIcons.refreshCw
                            : AppIcons.link,
                    isLoading: _isLoading,
                  ),
                  if (_isAvailable && _hasAnyPermission) ...[
                    const SizedBox(height: 12),
                    AppButton(
                      variant: AppButtonVariant.secondary,
                      onPressed: _isLoading ? null : _openSettings,
                      text: t.onboarding.healthConnect.manageAccess,
                      leadingIcon: AppIcons.settings,
                    ),
                  ],
                  const SizedBox(height: 16),
                  AppButton(
                    variant: AppButtonVariant.secondary,
                    analyticsEvent: AnalyticsEvent.onboardingSkipHealthConnect,
                    onPressed: _navigateToReminderNotifications,
                    text: t.onboarding.healthConnect.skipForNow,
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBenefitItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(
            icon,
            color: Theme.of(context).colorScheme.onPrimaryContainer,
            size: 20,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w600),
              ),
              Text(
                description,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _setupHealthConnect() async {
    if (_isLoading) return;
    setState(() => _isLoading = true);

    try {
      final healthService = ref.read(healthServiceProvider);
      if (_loadFailed || (!_isAvailable && !_isProviderUpdateRequired)) {
        await _checkHealthConnectStatus(showLoading: false);
        return;
      }

      if (_isProviderUpdateRequired) {
        await healthService.installHealthConnect();
        return;
      }

      final hadNutritionWrite = healthService.canWriteNutrition;
      await healthService.requestAuthorization();
      if (!hadNutritionWrite && healthService.canWriteNutrition) {
        await ref.read(healthConnectSyncServiceProvider).enableNutritionSync();
      }
      await _checkHealthConnectStatus(showLoading: false);
      if (mounted && _healthConnectEnabled) {
        _navigateToReminderNotifications();
      }
    } catch (_) {
      if (!mounted) return;
      setState(() => _loadFailed = true);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _openSettings() async {
    if (_isLoading) return;
    setState(() => _isLoading = true);
    try {
      final opened =
          await ref.read(healthServiceProvider).openHealthConnectSettings();
      if (!opened && mounted) setState(() => _loadFailed = true);
    } catch (_) {
      if (mounted) setState(() => _loadFailed = true);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _navigateToReminderNotifications() {
    widget.onContinue();
  }
}
