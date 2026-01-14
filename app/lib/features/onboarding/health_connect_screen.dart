import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/colors/color_scheme_extensions.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/primary_button.dart';
import 'package:calorify/shared_widgets/secondary_button.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class HealthConnectScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const HealthConnectScreen({super.key, required this.onContinue});

  @override
  State<HealthConnectScreen> createState() => _HealthConnectScreenState();
}

class _HealthConnectScreenState extends State<HealthConnectScreen> {
  bool _isLoading = false;
  bool _healthConnectEnabled = false;
  String _statusMessage = '';

  @override
  void initState() {
    super.initState();
    _checkHealthConnectStatus();
  }

  Future<void> _checkHealthConnectStatus() async {
    setState(() => _isLoading = true);
    final isAuthorized = HealthService.instance.isAuthorized;
    setState(() {
      _healthConnectEnabled = isAuthorized;
      _isLoading = false;
      if (isAuthorized) {
        _statusMessage = t.onboarding.healthConnect.statusConnected;
      }
    });
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
                    t.onboarding.healthConnect.description,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Health Connect Benefits
                  _buildBenefitItem(
                    context,
                    icon: LucideIcons.activity,
                    title: t.onboarding.healthConnect.automaticTracking.title,
                    description:
                        t
                            .onboarding
                            .healthConnect
                            .automaticTracking
                            .description,
                  ),
                  const SizedBox(height: 16),

                  _buildBenefitItem(
                    context,
                    icon: LucideIcons.trendingUp,
                    title: t.onboarding.healthConnect.progressInsights.title,
                    description:
                        t.onboarding.healthConnect.progressInsights.description,
                  ),
                  const SizedBox(height: 16),

                  _buildBenefitItem(
                    context,
                    icon: LucideIcons.link,
                    title: t.onboarding.healthConnect.seamlessIntegration.title,
                    description:
                        t
                            .onboarding
                            .healthConnect
                            .seamlessIntegration
                            .description,
                  ),
                  const SizedBox(height: 32),

                  // Health Connect Status
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color:
                          _healthConnectEnabled
                              ? colorScheme.successContainer
                              : colorScheme.surfaceContainerHighest.withValues(
                                alpha: 0.5,
                              ),
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color:
                            _healthConnectEnabled
                                ? colorScheme.success
                                : colorScheme.outline.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          _healthConnectEnabled
                              ? LucideIcons.check
                              : LucideIcons.info,
                          color:
                              _healthConnectEnabled
                                  ? colorScheme.success
                                  : colorScheme.onSurfaceVariant,
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _healthConnectEnabled
                                    ? t.onboarding.healthConnect.connected
                                    : t.onboarding.healthConnect.notConnected,
                                style: theme.textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color:
                                      _healthConnectEnabled
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
                if (_healthConnectEnabled)
                  PrimaryButton(
                    analyticsEvent:
                        AnalyticsEvent.onboardingContinueHealthConnect,
                    onPressed: _navigateToReminderNotifications,
                    text: t.common.kContinue,
                    trailingIcon: LucideIcons.arrowRight,
                  )
                else ...[
                  PrimaryButton(
                    analyticsEvent: AnalyticsEvent.onboardingSetupHealthConnect,
                    onPressed: _isLoading ? null : _setupHealthConnect,
                    text: t.onboarding.healthConnect.setup,
                    leadingIcon: LucideIcons.link,
                    isLoading: _isLoading,
                  ),
                  const SizedBox(height: 16),
                  SecondaryButton(
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
    setState(() {
      _isLoading = true;
      _statusMessage = '';
    });

    try {
      final success = await HealthService.instance.requestAuthorization();

      setState(() {
        _healthConnectEnabled = success;
        _statusMessage =
            success
                ? t.onboarding.healthConnect.statusSuccess
                : t.onboarding.healthConnect.statusPermissionDenied(
                  appLabel: t.appLabel(env: EnvConfig.instance.envSuffix),
                );
      });

      if (success) {
        _navigateToReminderNotifications();
      }
    } catch (e) {
      setState(() {
        _healthConnectEnabled = false;
        _statusMessage = t.onboarding.healthConnect.statusError(
          error: e.toString(),
        );
      });
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _navigateToReminderNotifications() {
    widget.onContinue();
  }
}
