import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/core/constants/colors.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:health/health.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class HealthConnectPermissionsScreen extends StatefulWidget {
  const HealthConnectPermissionsScreen({super.key});

  @override
  State<HealthConnectPermissionsScreen> createState() =>
      _HealthConnectPermissionsScreenState();
}

class _HealthConnectPermissionsScreenState
    extends State<HealthConnectPermissionsScreen> {
  bool _isLoading = true;
  bool _isHealthConnectAvailable = false;
  bool _isRequestingPermissions = false;
  Map<HealthDataType, Map<HealthDataAccess, bool>> _permissionStatus = {};

  @override
  void initState() {
    super.initState();
    _checkPermissions();
  }

  Future<void> _checkPermissions() async {
    setState(() => _isLoading = true);

    final healthService = HealthService.instance;
    await healthService.init();

    final isAvailable =
        healthService.status == HealthConnectSdkStatus.sdkAvailable;

    final permissionStatus = <HealthDataType, Map<HealthDataAccess, bool>>{};

    if (isAvailable) {
      // Check each permission
      final caloriesBurnedRead = await healthService.hasPermission(
        HealthDataType.TOTAL_CALORIES_BURNED,
        HealthDataAccess.READ,
      );

      final nutritionRead = await healthService.hasPermission(
        HealthDataType.NUTRITION,
        HealthDataAccess.READ,
      );

      final nutritionWrite = await healthService.hasPermission(
        HealthDataType.NUTRITION,
        HealthDataAccess.WRITE,
      );

      permissionStatus[HealthDataType.TOTAL_CALORIES_BURNED] = {
        HealthDataAccess.READ: caloriesBurnedRead,
      };

      permissionStatus[HealthDataType.NUTRITION] = {
        HealthDataAccess.READ: nutritionRead,
        HealthDataAccess.WRITE: nutritionWrite,
      };
    }

    setState(() {
      _isHealthConnectAvailable = isAvailable;
      _permissionStatus = permissionStatus;
      _isLoading = false;
    });
  }

  bool _areAllPermissionsGranted() {
    if (!_isHealthConnectAvailable || _permissionStatus.isEmpty) {
      return false;
    }

    // Check if all required permissions are granted
    final caloriesBurnedRead =
        _permissionStatus[HealthDataType
            .TOTAL_CALORIES_BURNED]?[HealthDataAccess.READ] ??
        false;
    final nutritionRead =
        _permissionStatus[HealthDataType.NUTRITION]?[HealthDataAccess.READ] ??
        false;
    final nutritionWrite =
        _permissionStatus[HealthDataType.NUTRITION]?[HealthDataAccess.WRITE] ??
        false;

    return caloriesBurnedRead && nutritionRead && nutritionWrite;
  }

  Future<void> _requestPermissions() async {
    // Prevent multiple simultaneous requests
    if (_isRequestingPermissions) {
      return;
    }

    setState(() {
      _isRequestingPermissions = true;
    });

    try {
      final success = await HealthService.instance.requestAuthorization();

      // Always refresh permissions after request, regardless of success
      await _checkPermissions();

      // Track permission result
      if (success && _areAllPermissionsGranted()) {
        Analytics.instance.logEvent(
          AnalyticsEvent.healthConnectPermissionGranted,
        );
      } else {
        Analytics.instance.logEvent(
          AnalyticsEvent.healthConnectPermissionDenied,
        );
      }

      if (mounted) {
        if (!success) {
          // If request failed, show helpful message
          showFlushbar(
            t.settings.healthConnect.permissionRequestCancelledOrFailed,
            duration: const Duration(seconds: 4),
            context: context,
          );
        }
      }
    } catch (e) {
      // Handle any errors gracefully
      if (mounted) {
        showFlushbar(
          t.settings.healthConnect.permissionRequestFailed,
          duration: const Duration(seconds: 4),
          context: context,
        );
      }
      // Still refresh permissions in case something changed
      await _checkPermissions();
    } finally {
      if (mounted) {
        setState(() {
          _isRequestingPermissions = false;
        });
      }
    }
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
      body:
          _isLoading
              ? const Center(child: CircularProgressIndicator())
              : _buildContent(context, theme, colorScheme),
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
          if (!_isHealthConnectAvailable) ...[
            _buildUnavailableCard(colorScheme, theme),
            _verticalSpacing(24),
          ],
          _buildSectionHeader(theme, colorScheme),
          _verticalSpacing(24),
          ..._buildPermissionCards(context),
          if (_isHealthConnectAvailable && !_areAllPermissionsGranted()) ...[
            _verticalSpacing(24),
            _buildManagePermissionsButton(context, colorScheme, theme),
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
        access: HealthDataAccess.READ,
        title: t.settings.healthConnect.permissions.nutritionRead.title,
        description:
            t.settings.healthConnect.permissions.nutritionRead.description,
        usage: t.settings.healthConnect.permissions.nutritionRead.usage,
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
                  t.settings.healthConnect.unavailable.title,
                  style: theme.textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: colorScheme.onErrorContainer,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  t.settings.healthConnect.unavailable.description,
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
      shape: RoundedRectangleBorder(
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

  Widget _buildManagePermissionsButton(
    BuildContext context,
    ColorScheme colorScheme,
    ThemeData theme,
  ) {
    return SizedBox(
      width: double.infinity,
      child: OutlinedButton.icon(
        onPressed: _isRequestingPermissions ? null : _requestPermissions,
        icon:
            _isRequestingPermissions
                ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(strokeWidth: 2),
                )
                : const Icon(LucideIcons.settings),
        label: Text(
          _isRequestingPermissions
              ? t.settings.healthConnect.requestingPermissions
              : t.settings.healthConnect.requestPermissions,
        ),
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
