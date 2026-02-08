import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HealthConnectPromptCard extends StatelessWidget {
  const HealthConnectPromptCard({super.key, this.onSetupComplete});

  final VoidCallback? onSetupComplete;

  Future<void> _onConnectPressed(bool isInstallRequired) async {
    if (isInstallRequired) {
      await HealthService.instance.installHealthConnect();
    } else {
      await HealthService.instance.requestAuthorization();
    }
    onSetupComplete?.call();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    final isInstallRequired =
        HealthService.instance.status ==
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
          PrimaryButton(
            analyticsEvent: AnalyticsEvent.connectHealth,
            onPressed: () => _onConnectPressed(isInstallRequired),
            text: isInstallRequired ? t.home.connectHealth.install : t.home.connectHealth.connect,
            minimumSize: Size(40, 40),
          ),
        ],
      ),
    );
  }
}
