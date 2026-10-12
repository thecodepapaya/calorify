import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:widgets/widgets.dart';

class HealthConnectPromptCard extends StatefulWidget {
  const HealthConnectPromptCard({
    required this.healthService,
    super.key,
    this.onDismiss,
    this.onSetupComplete,
  });

  final HealthService healthService;
  final VoidCallback? onDismiss;
  final Future<void> Function({required bool enableNutritionSync})?
  onSetupComplete;

  @override
  State<HealthConnectPromptCard> createState() =>
      _HealthConnectPromptCardState();
}

class _HealthConnectPromptCardState extends State<HealthConnectPromptCard> {
  bool _isWorking = false;

  Future<void> _onConnectPressed(
    BuildContext context,
    bool isInstallRequired,
  ) async {
    if (_isWorking) return;
    Analytics.instance.logEvent(AnalyticsEvent.connectHealth);
    setState(() => _isWorking = true);
    var enableNutritionSync = false;

    try {
      if (isInstallRequired) {
        await widget.healthService.installHealthConnect();
      } else {
        final nutritionPermissionWasMissing =
            !widget.healthService.canWriteNutrition;
        try {
          final success = await widget.healthService.requestAuthorization();
          enableNutritionSync =
              nutritionPermissionWasMissing &&
              widget.healthService.canWriteNutrition;
          if (!context.mounted) return;
          if (!success && !widget.healthService.hasAnyHealthPermission) {
            showFlushbar(
              t.settings.healthConnect.permissionRequestCancelledOrFailed,
              duration: const Duration(seconds: 5),
              context: context,
            );
          }
        } catch (_) {
          if (!context.mounted) return;
          showFlushbar(
            t.settings.healthConnect.permissionRequestFailed,
            duration: const Duration(seconds: 5),
            context: context,
          );
        }
      }
      await widget.onSetupComplete?.call(
        enableNutritionSync: enableNutritionSync,
      );
    } finally {
      if (mounted) setState(() => _isWorking = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final isInstallRequired =
        widget.healthService.status ==
        HealthConnectSdkStatus.sdkUnavailableProviderUpdateRequired;
    return Padding(
      padding: globalMargin,
      child: Material(
        color: colorScheme.surfaceTint.withValues(alpha: 0.1),
        shape: RoundedRectangleBorder(
          borderRadius: globalRadius,
          side: BorderSide(color: colorScheme.primary.withValues(alpha: 0.3)),
        ),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          key: const Key('healthConnectPromptAction'),
          onTap:
              _isWorking
                  ? null
                  : () => _onConnectPressed(context, isInstallRequired),
          child: Padding(
            padding: globalInnerPadding,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Icon(
                    AppIcons.link,
                    size: 20,
                    color: colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        t.home.connectHealth.title,
                        style: textTheme.titleMedium?.copyWith(
                          color: colorScheme.primary,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        t.home.connectHealth.dataUseDescription,
                        style: textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                if (_isWorking)
                  const Padding(
                    padding: EdgeInsets.only(top: 9),
                    child: SizedBox.square(
                      dimension: 18,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    ),
                  ),
                if (widget.onDismiss != null) ...[
                  const SizedBox(width: 4),
                  IconButton(
                    key: const Key('healthConnectPromptDismiss'),
                    tooltip:
                        MaterialLocalizations.of(context).closeButtonTooltip,
                    onPressed: widget.onDismiss,
                    visualDensity: VisualDensity.compact,
                    constraints: const BoxConstraints(
                      minWidth: 36,
                      minHeight: 36,
                    ),
                    icon: Icon(
                      AppIcons.x,
                      size: 18,
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
