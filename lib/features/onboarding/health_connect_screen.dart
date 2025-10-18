import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Connect with Health Connect',
                        style: Theme.of(context).textTheme.headlineSmall
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Sync your health data for better insights and automatic calorie tracking',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                      ),
                      const SizedBox(height: 32),

                      // Health Connect Benefits
                      _buildBenefitItem(
                        context,
                        icon: LucideIcons.activity,
                        title: 'Automatic Calorie Tracking',
                        description:
                            'Track calories burned from your fitness apps',
                      ),
                      const SizedBox(height: 16),

                      _buildBenefitItem(
                        context,
                        icon: LucideIcons.trendingUp,
                        title: 'Progress Insights',
                        description:
                            'Get detailed insights into your health trends',
                      ),
                      const SizedBox(height: 16),

                      _buildBenefitItem(
                        context,
                        icon: LucideIcons.link,
                        title: 'Seamless Integration',
                        description: 'Sync data from your favorite health apps',
                      ),
                      const SizedBox(height: 32),

                      // Health Connect Status
                      Container(
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color:
                              _healthConnectEnabled
                                  ? Colors.green.withOpacity(0.1)
                                  : Theme.of(
                                    context,
                                  ).colorScheme.surfaceVariant,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color:
                                _healthConnectEnabled
                                    ? Colors.green
                                    : Theme.of(context).colorScheme.outline,
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              _healthConnectEnabled
                                  ? LucideIcons.check
                                  // TODO: Add a warning icon
                                  : LucideIcons.messageSquareWarning600,
                              color:
                                  _healthConnectEnabled
                                      ? Colors.green
                                      : Theme.of(
                                        context,
                                      ).colorScheme.onSurfaceVariant,
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    _healthConnectEnabled
                                        ? 'Health Connect Connected'
                                        : 'Health Connect Not Connected',
                                    style: Theme.of(
                                      context,
                                    ).textTheme.titleMedium?.copyWith(
                                      fontWeight: FontWeight.w600,
                                      color:
                                          _healthConnectEnabled
                                              ? Colors.green
                                              : Theme.of(
                                                context,
                                              ).colorScheme.onSurface,
                                    ),
                                  ),
                                  if (_statusMessage.isNotEmpty) ...[
                                    const SizedBox(height: 4),
                                    Text(
                                      _statusMessage,
                                      style: Theme.of(
                                        context,
                                      ).textTheme.bodySmall?.copyWith(
                                        color:
                                            Theme.of(
                                              context,
                                            ).colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  // Setup Button
                  if (!_healthConnectEnabled)
                    SizedBox(
                      width: double.infinity,
                      child: FilledButton.icon(
                        onPressed: _isLoading ? null : _setupHealthConnect,
                        icon:
                            _isLoading
                                ? const AppLoader(size: 16)
                                : const Icon(LucideIcons.link),
                        label: Text(
                          _isLoading ? 'Setting up...' : 'Setup Health Connect',
                        ),
                      ),
                    ),
                  if (!_healthConnectEnabled) const SizedBox(height: 16),

                  // Continue Button (shown after successful setup or if skipped)
                  SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => _navigateToReminderNotifications(),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        child: Text('Continue'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Skip Button (only shown if not connected)
                  if (!_healthConnectEnabled)
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: _skip,
                        child: const Padding(
                          padding: EdgeInsets.symmetric(vertical: 16.0),
                          child: Text('Skip for now'),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
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
                ? 'Health Connect has been successfully connected!'
                : 'Failed to connect to Health Connect. You can try again or skip for now.';
      });
    } catch (e) {
      setState(() {
        _healthConnectEnabled = false;
        _statusMessage = 'Error setting up Health Connect: ${e.toString()}';
      });
    } finally {
      setState(() => _isLoading = false);
      _navigateToReminderNotifications();
    }
  }

  void _skip() {
    _navigateToReminderNotifications();
  }

  void _navigateToReminderNotifications() {
    widget.onContinue();
  }
}
