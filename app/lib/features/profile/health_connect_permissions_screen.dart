import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';
import 'package:health/health.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class HealthConnectPermissionsScreen extends ConsumerStatefulWidget {
  const HealthConnectPermissionsScreen({super.key});

  @override
  ConsumerState<HealthConnectPermissionsScreen> createState() =>
      _HealthConnectPermissionsScreenState();
}

class _HealthConnectPermissionsScreenState
    extends ConsumerState<HealthConnectPermissionsScreen>
    with WidgetsBindingObserver {
  bool _isLoading = true;
  bool _isRequestingPermissions = false;
  HealthConnectSdkStatus _sdkStatus = HealthConnectSdkStatus.sdkUnavailable;
  Object? _loadError;
  int _checkGeneration = 0;
  Map<HealthDataType, Map<HealthDataAccess, bool>> _permissionStatus = {};

  bool get _isHealthConnectAvailable =>
      _sdkStatus == HealthConnectSdkStatus.sdkAvailable;

  bool get _isProviderUpdateRequired =>
      _sdkStatus == HealthConnectSdkStatus.sdkUnavailableProviderUpdateRequired;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    unawaited(_checkPermissions());
  }

  @override
  void dispose() {
    _checkGeneration++;
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed && !_isRequestingPermissions) {
      unawaited(_checkPermissions(showLoading: false));
    }
  }

  Future<void> _checkPermissions({bool showLoading = true}) async {
    final generation = ++_checkGeneration;
    if (mounted && showLoading) {
      setState(() {
        _isLoading = true;
        _loadError = null;
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
        _permissionStatus = {
          HealthDataType.TOTAL_CALORIES_BURNED: {
            HealthDataAccess.READ: healthService.canReadTotalCalories,
          },
          HealthDataType.NUTRITION: {
            HealthDataAccess.WRITE: healthService.canWriteNutrition,
          },
        };
        _loadError = null;
      });
      unawaited(
        _reconcileAndSync(
          enableNutritionSync:
              !hadNutritionWrite && healthService.canWriteNutrition,
        ),
      );
    } catch (error) {
      if (!mounted || generation != _checkGeneration) return;
      setState(() => _loadError = error);
    } finally {
      if (mounted && generation == _checkGeneration) {
        setState(() => _isLoading = false);
      }
    }
  }

  bool _areAllPermissionsGranted() {
    if (!_isHealthConnectAvailable || _permissionStatus.isEmpty) {
      return false;
    }

    final caloriesBurnedRead =
        _permissionStatus[HealthDataType
            .TOTAL_CALORIES_BURNED]?[HealthDataAccess.READ] ??
        false;
    final nutritionWrite =
        _permissionStatus[HealthDataType.NUTRITION]?[HealthDataAccess.WRITE] ??
        false;

    return caloriesBurnedRead && nutritionWrite;
  }

  bool _hasAnyPermission() =>
      (_permissionStatus[HealthDataType.TOTAL_CALORIES_BURNED]?[HealthDataAccess
              .READ] ??
          false) ||
      (_permissionStatus[HealthDataType.NUTRITION]?[HealthDataAccess.WRITE] ??
          false);

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
      // Pending records remain queued and will be retried on the next refresh.
    }
  }

  Future<void> _requestPermissions() async {
    if (_isRequestingPermissions) {
      return;
    }

    setState(() {
      _isRequestingPermissions = true;
    });

    try {
      final healthService = ref.read(healthServiceProvider);
      final hadNutritionWrite = healthService.canWriteNutrition;
      final success = await healthService.requestAuthorization();
      if (!hadNutritionWrite && healthService.canWriteNutrition) {
        await ref.read(healthConnectSyncServiceProvider).enableNutritionSync();
      }

      await _checkPermissions(showLoading: false);
      if (!mounted) return;

      if (!success && !_hasAnyPermission()) {
        _showMessage(
          t.settings.healthConnect.permissionRequestCancelledOrFailed,
        );
      }
    } catch (_) {
      if (mounted) {
        _showMessage(t.settings.healthConnect.permissionRequestFailed);
      }
      if (mounted) await _checkPermissions(showLoading: false);
    } finally {
      if (mounted) {
        setState(() {
          _isRequestingPermissions = false;
        });
      }
    }
  }

  Future<void> _installOrUpdate() async {
    if (_isRequestingPermissions) return;
    setState(() => _isRequestingPermissions = true);
    try {
      await ref.read(healthServiceProvider).installHealthConnect();
    } catch (_) {
      if (mounted) _showMessage(t.settings.healthConnect.actionFailed);
    } finally {
      if (mounted) setState(() => _isRequestingPermissions = false);
    }
  }

  Future<void> _openSettings() async {
    if (_isRequestingPermissions) return;
    setState(() => _isRequestingPermissions = true);
    try {
      final opened =
          await ref.read(healthServiceProvider).openHealthConnectSettings();
      if (!opened && mounted) {
        _showMessage(t.settings.healthConnect.actionFailed);
      }
    } catch (_) {
      if (mounted) _showMessage(t.settings.healthConnect.actionFailed);
    } finally {
      if (mounted) setState(() => _isRequestingPermissions = false);
    }
  }

  Future<void> _disconnect() async {
    if (_isRequestingPermissions) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: Text(t.settings.healthConnect.disconnectConfirmationTitle),
            content: Text(
              t.settings.healthConnect.disconnectConfirmationMessage,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: Text(t.settings.clearAllData.cancel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                child: Text(
                  t.settings.healthConnect.disconnectConfirmationAction,
                ),
              ),
            ],
          ),
    );
    if (confirmed != true || !mounted) return;

    setState(() => _isRequestingPermissions = true);
    try {
      final revoked =
          await ref.read(healthConnectSyncServiceProvider).disconnect();
      if (!revoked) {
        if (mounted) _showMessage(t.settings.healthConnect.actionFailed);
        return;
      }
      if (mounted) {
        setState(() {
          _permissionStatus = {
            HealthDataType.TOTAL_CALORIES_BURNED: {
              HealthDataAccess.READ: false,
            },
            HealthDataType.NUTRITION: {HealthDataAccess.WRITE: false},
          };
        });
      }
    } catch (_) {
      if (mounted) _showMessage(t.settings.healthConnect.actionFailed);
    } finally {
      if (mounted) setState(() => _isRequestingPermissions = false);
    }
  }

  Future<void> _deleteSyncedMeals() async {
    if (_isRequestingPermissions) return;
    final confirmed = await showDialog<bool>(
      context: context,
      builder:
          (dialogContext) => AlertDialog(
            title: Text(
              t.settings.healthConnect.deleteSyncedMealsConfirmationTitle,
            ),
            content: Text(
              t.settings.healthConnect.deleteSyncedMealsConfirmationMessage,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(dialogContext).pop(false),
                child: Text(t.settings.clearAllData.cancel),
              ),
              FilledButton(
                onPressed: () => Navigator.of(dialogContext).pop(true),
                child: Text(
                  t.settings.healthConnect.deleteSyncedMealsConfirmationAction,
                ),
              ),
            ],
          ),
    );
    if (confirmed != true || !mounted) return;

    setState(() => _isRequestingPermissions = true);
    try {
      await ref.read(healthConnectSyncServiceProvider).deleteSyncedMeals();
      if (mounted) {
        _showMessage(t.settings.healthConnect.deleteSyncedMealsSuccess);
      }
    } catch (_) {
      if (mounted) {
        _showMessage(t.settings.healthConnect.deleteSyncedMealsFailed);
      }
    } finally {
      if (mounted) setState(() => _isRequestingPermissions = false);
    }
  }

  void _showMessage(String message) {
    showFlushbar(
      message,
      duration: const Duration(seconds: 4),
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(t.settings.healthConnect.title),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
      ),
      body: ResponsiveContent(
        maxWidth: 760,
        child:
            _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildContent(context, theme, colorScheme),
      ),
    );
  }

  Widget _buildContent(
    BuildContext context,
    ThemeData theme,
    ColorScheme colorScheme,
  ) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_loadError != null || !_isHealthConnectAvailable) ...[
            _buildUnavailableCard(colorScheme, theme),
            _verticalSpacing(24),
            _buildActionButton(
              onPressed:
                  _isRequestingPermissions
                      ? null
                      : _loadError != null
                      ? _checkPermissions
                      : _isProviderUpdateRequired
                      ? _installOrUpdate
                      : _checkPermissions,
              icon:
                  _loadError != null
                      ? LucideIcons.refreshCw
                      : _isProviderUpdateRequired
                      ? LucideIcons.download
                      : LucideIcons.refreshCw,
              label:
                  _loadError != null
                      ? t.errors.retry
                      : _isProviderUpdateRequired
                      ? t.settings.healthConnect.updateRequired.action
                      : t.errors.retry,
              isPrimary: true,
            ),
          ] else ...[
            _buildConnectionSummary(theme, colorScheme),
            _verticalSpacing(24),
            _buildSectionHeader(theme, colorScheme),
            _verticalSpacing(24),
            ..._buildPermissionCards(context),
            _verticalSpacing(24),
            if (!_areAllPermissionsGranted()) ...[
              _buildActionButton(
                onPressed:
                    _isRequestingPermissions ? null : _requestPermissions,
                icon: LucideIcons.link,
                label:
                    _isRequestingPermissions
                        ? t.settings.healthConnect.requestingPermissions
                        : t.settings.healthConnect.requestPermissions,
                isPrimary: true,
              ),
              _verticalSpacing(12),
            ],
            _buildActionButton(
              onPressed: _isRequestingPermissions ? null : _openSettings,
              icon: LucideIcons.settings,
              label: t.settings.healthConnect.openSettings,
            ),
            if (_permissionStatus[HealthDataType.NUTRITION]?[HealthDataAccess
                    .WRITE] ??
                false) ...[
              _verticalSpacing(12),
              _buildActionButton(
                onPressed: _isRequestingPermissions ? null : _deleteSyncedMeals,
                icon: LucideIcons.trash2,
                label: t.settings.healthConnect.deleteSyncedMeals,
                isDestructive: true,
              ),
            ],
            if (_hasAnyPermission()) ...[
              _verticalSpacing(12),
              _buildActionButton(
                onPressed: _isRequestingPermissions ? null : _disconnect,
                icon: LucideIcons.unplug,
                label: t.settings.healthConnect.disconnect,
                isDestructive: true,
              ),
            ],
          ],
          _verticalSpacing(32),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(ThemeData theme, ColorScheme colorScheme) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.settings.healthConnect.permissions.title,
          style: theme.textTheme.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        _verticalSpacing(8),
        Text(
          t.settings.healthConnect.permissions.description,
          style: theme.textTheme.bodyMedium?.copyWith(
            color: colorScheme.onSurfaceVariant,
          ),
        ),
      ],
    );
  }

  List<Widget> _buildPermissionCards(BuildContext context) {
    final permissions = [
      (
        type: HealthDataType.TOTAL_CALORIES_BURNED,
        access: HealthDataAccess.READ,
        title: t.settings.healthConnect.permissions.caloriesBurned.title,
        description:
            t.settings.healthConnect.permissions.caloriesBurned.description,
        usage: t.settings.healthConnect.permissions.caloriesBurned.usage,
      ),
      (
        type: HealthDataType.NUTRITION,
        access: HealthDataAccess.WRITE,
        title: t.settings.healthConnect.permissions.nutritionWrite.title,
        description:
            t.settings.healthConnect.permissions.nutritionWrite.description,
        usage: t.settings.healthConnect.permissions.nutritionWrite.usage,
      ),
    ];

    return [
      for (var i = 0; i < permissions.length; i++) ...[
        _buildPermissionCard(
          context,
          type: permissions[i].type,
          access: permissions[i].access,
          title: permissions[i].title,
          description: permissions[i].description,
          usage: permissions[i].usage,
        ),
        if (i < permissions.length - 1) _verticalSpacing(16),
      ],
    ];
  }

  Widget _verticalSpacing(double height) => SizedBox(height: height);

  Widget _buildUnavailableCard(ColorScheme colorScheme, ThemeData theme) {
    final title =
        _loadError != null
            ? t.errors.somethingWentWrong
            : _isProviderUpdateRequired
            ? t.settings.healthConnect.updateRequired.title
            : t.settings.healthConnect.unavailable.title;
    final description =
        _loadError != null
            ? t.settings.healthConnect.permissionRequestFailed
            : _isProviderUpdateRequired
            ? t.settings.healthConnect.updateRequired.description
            : t.settings.healthConnect.unavailable.unsupportedDescription;

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: colorScheme.errorContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colorScheme.error.withValues(alpha: 0.3)),
      ),
      child: Row(
        children: [
          Icon(LucideIcons.x, color: colorScheme.error, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onErrorContainer,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: theme.textTheme.bodySmall?.copyWith(
                    color: colorScheme.onErrorContainer.withValues(alpha: 0.8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPermissionCard(
    BuildContext context, {
    required HealthDataType type,
    required HealthDataAccess access,
    required String title,
    required String description,
    required String usage,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final isGranted = _permissionStatus[type]?[access] ?? false;

    return Card(
      elevation: 0,
      shape: RoundedSuperellipseBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(
          color:
              isGranted
                  ? colorScheme.success.withValues(alpha: 0.3)
                  : colorScheme.outline.withValues(alpha: 0.2),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildPermissionHeader(theme, colorScheme, isGranted, title),
            _verticalSpacing(8),
            _buildDescription(theme, colorScheme, description),
            _verticalSpacing(12),
            _buildUsageInfo(theme, colorScheme, usage),
          ],
        ),
      ),
    );
  }

  Widget _buildPermissionHeader(
    ThemeData theme,
    ColorScheme colorScheme,
    bool isGranted,
    String title,
  ) {
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: theme.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        _buildStatusBadge(theme, colorScheme, isGranted),
      ],
    );
  }

  Widget _buildStatusBadge(
    ThemeData theme,
    ColorScheme colorScheme,
    bool isGranted,
  ) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color:
            isGranted
                ? colorScheme.successContainer
                : colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            isGranted ? LucideIcons.check : LucideIcons.x,
            size: 14,
            color:
                isGranted
                    ? colorScheme.onSuccessContainer
                    : colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 4),
          Text(
            isGranted
                ? t.settings.healthConnect.permissions.granted
                : t.settings.healthConnect.permissions.notGranted,
            style: theme.textTheme.labelSmall?.copyWith(
              color:
                  isGranted
                      ? colorScheme.onSuccessContainer
                      : colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(
    ThemeData theme,
    ColorScheme colorScheme,
    String text,
  ) {
    return Text(
      text,
      style: theme.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurfaceVariant,
      ),
    );
  }

  Widget _buildUsageInfo(
    ThemeData theme,
    ColorScheme colorScheme,
    String text,
  ) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: colorScheme.primaryContainer.withValues(alpha: 0.3),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(LucideIcons.info, size: 16, color: colorScheme.primary),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.onPrimaryContainer,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildConnectionSummary(ThemeData theme, ColorScheme colorScheme) {
    final isComplete = _areAllPermissionsGranted();
    final isPartial = _hasAnyPermission() && !isComplete;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color:
            isComplete
                ? colorScheme.successContainer
                : colorScheme.surfaceContainerHighest,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Icon(
            isComplete
                ? LucideIcons.circleCheck
                : isPartial
                ? LucideIcons.circleDashed
                : LucideIcons.circleOff,
            color:
                isComplete
                    ? colorScheme.onSuccessContainer
                    : colorScheme.onSurfaceVariant,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              isComplete
                  ? t.settings.healthConnect.connectionComplete
                  : isPartial
                  ? t.settings.healthConnect.connectionPartial
                  : t.onboarding.healthConnect.statusNotConnected,
              style: theme.textTheme.bodyMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton({
    required VoidCallback? onPressed,
    required IconData icon,
    required String label,
    bool isPrimary = false,
    bool isDestructive = false,
  }) {
    final colorScheme = Theme.of(context).colorScheme;
    final child = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (_isRequestingPermissions && isPrimary)
          const SizedBox.square(
            dimension: 16,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        else
          Icon(icon),
        const SizedBox(width: 8),
        Text(label),
      ],
    );

    return SizedBox(
      width: double.infinity,
      child:
          isPrimary
              ? FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                  padding: appButtonOutlinedPadding,
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: child,
              )
              : OutlinedButton(
                onPressed: onPressed,
                style: OutlinedButton.styleFrom(
                  foregroundColor: isDestructive ? colorScheme.error : null,
                  padding: appButtonOutlinedPadding,
                  shape: RoundedSuperellipseBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: child,
              ),
    );
  }
}
