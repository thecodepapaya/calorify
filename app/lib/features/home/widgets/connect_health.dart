import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HealthConnectPromptCard extends StatefulWidget {
  const HealthConnectPromptCard({
    required this.healthService,
    super.key,
    this.onSetupComplete,
  });

  final HealthService healthService;
  final Future<void> Function()? onSetupComplete;

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
    setState(() => _isWorking = true);

    try {
      if (isInstallRequired) {
        await widget.healthService.installHealthConnect();
      } else {
        try {
          final success = await widget.healthService.requestAuthorization();
          if (!context.mounted) return;
          if (!success) {
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
      await widget.onSetupComplete?.call();
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

    return Container(
      margin: globalMargin,
      padding: globalInnerPadding,
      decoration: BoxDecoration(
        border: Border.all(color: colorScheme.primary.withValues(alpha: 0.3)),
        borderRadius: globalRadius,
        color: colorScheme.surfaceTint.withValues(alpha: 0.1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(LucideIcons.link, size: 20, color: colorScheme.primary),
          SizedBox(width: 8),
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
                SizedBox(height: 4),
                Text(
                  t.home.connectHealth.description,
                  style: textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          SizedBox(width: 8),
          AppButton(
            variant: AppButtonVariant.primary,
            analyticsEvent: AnalyticsEvent.connectHealth,
            onPressed:
                _isWorking
                    ? null
                    : () => _onConnectPressed(context, isInstallRequired),
            isLoading: _isWorking,
            text:
                isInstallRequired
                    ? t.home.connectHealth.install
                    : t.home.connectHealth.connect,
            minimumSize: Size(40, 40),
          ),
        ],
      ),
    );
  }
}
