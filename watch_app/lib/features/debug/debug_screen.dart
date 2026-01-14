import 'dart:async';
import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/services/wear_os_channel.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:specs/specs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:intl/intl.dart';

@RoutePage()
class DebugScreen extends StatefulWidget {
  const DebugScreen({super.key});

  @override
  State<DebugScreen> createState() => _DebugScreenState();
}

class _DebugScreenState extends State<DebugScreen> {
  final List<MessageLog> _messages = [];
  StreamSubscription<Map<String, dynamic>>? _messageSubscription;
  bool _isPhoneConnected = false;
  bool _isCheckingConnection = false;

  @override
  void initState() {
    super.initState();
    _startListening();
    _checkConnection();
  }

  @override
  void dispose() {
    _messageSubscription?.cancel();
    super.dispose();
  }

  Future<void> _checkConnection() async {
    setState(() {
      _isCheckingConnection = true;
    });
    try {
      final connected = await SyncService.instance.isPhoneConnected();
      if (mounted) {
        setState(() {
          _isPhoneConnected = connected;
          _isCheckingConnection = false;
        });
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _isPhoneConnected = false;
          _isCheckingConnection = false;
        });
      }
    }
  }

  void _startListening() {
    _messageSubscription?.cancel();
    _messageSubscription = WearOsChannel.listenForMessages().listen(
      (message) {
        if (mounted) {
          setState(() {
            _messages.insert(
              0,
              MessageLog(
                timestamp: DateTime.now(),
                data: message,
                path: message['path']?.toString() ?? 'unknown',
              ),
            );
            // Keep only last 50 messages
            if (_messages.length > 50) {
              _messages.removeRange(50, _messages.length);
            }
          });
          HapticFeedback.lightImpact();
        }
      },
      onError: (error) {
        if (mounted) {
          setState(() {
            _messages.insert(
              0,
              MessageLog(
                timestamp: DateTime.now(),
                data: {'error': error.toString()},
                path: 'error',
              ),
            );
          });
        }
      },
    );
  }

  void _clearMessages() {
    setState(() {
      _messages.clear();
    });
    HapticFeedback.mediumImpact();
  }

  Future<void> _sendTestMessage() async {
    if (!_isPhoneConnected) {
      HapticFeedback.mediumImpact();
      return;
    }
    try {
      await WearOsChannel.sendMessage(
        path: '/test',
        data: {
          'message': 'Hello from watch!',
          'timestamp': DateTime.now().toIso8601String(),
          'type': 'test',
        },
      );
      HapticFeedback.lightImpact();
    } catch (e) {
      HapticFeedback.mediumImpact();
    }
  }

  Future<void> _sendTestMeal() async {
    if (!_isPhoneConnected) {
      HapticFeedback.mediumImpact();
      return;
    }
    try {
      await WearOsChannel.sendMessage(
        path: '/meal',
        data: {
          'id': 'test-${DateTime.now().millisecondsSinceEpoch}',
          'name': 'Test Meal from Watch',
          'calories': 350,
          'protein': 25.0,
          'carbs': 45.0,
          'fat': 12.0,
          'timestamp': DateTime.now().toIso8601String(),
        },
      );
      HapticFeedback.lightImpact();
    } catch (e) {
      HapticFeedback.mediumImpact();
    }
  }

  Future<void> _sendTestGoal() async {
    if (!_isPhoneConnected) {
      HapticFeedback.mediumImpact();
      return;
    }
    try {
      await WearOsChannel.sendMessage(
        path: '/test/goal',
        data: {
          'goal': 2200,
          'timestamp': DateTime.now().toIso8601String(),
          'source': 'watch_debug',
        },
      );
      HapticFeedback.lightImpact();
    } catch (e) {
      HapticFeedback.mediumImpact();
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.background,
      body: SafeArea(
        minimum: circularWatchPadding,
        child: CustomScrollView(
          slivers: [
            // Header with title and actions
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        'Debug Logs',
                        style: theme.textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.w700,
                          fontSize: 9,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(LucideIcons.refreshCw, size: 12),
                          onPressed: _checkConnection,
                          tooltip: 'Refresh connection',
                          padding: const EdgeInsets.all(2),
                          constraints: const BoxConstraints(
                            minWidth: 28,
                            minHeight: 28,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(LucideIcons.trash2, size: 12),
                          onPressed: _clearMessages,
                          tooltip: 'Clear logs',
                          padding: const EdgeInsets.all(2),
                          constraints: const BoxConstraints(
                            minWidth: 28,
                            minHeight: 28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // Connection Status
            SliverToBoxAdapter(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  color: _isPhoneConnected
                      ? colorScheme.primaryContainer
                      : colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _isPhoneConnected ? LucideIcons.check : LucideIcons.x,
                      size: 12,
                      color: _isPhoneConnected
                          ? colorScheme.onPrimaryContainer
                          : colorScheme.onErrorContainer,
                    ),
                    const SizedBox(width: 6),
                    Flexible(
                      child: Text(
                        _isCheckingConnection
                            ? 'Checking...'
                            : _isPhoneConnected
                                ? 'Phone Connected'
                                : 'Phone Not Connected',
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: _isPhoneConnected
                              ? colorScheme.onPrimaryContainer
                              : colorScheme.onErrorContainer,
                          fontWeight: FontWeight.w600,
                          fontSize: 8,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Send Test Data Buttons
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _SendButton(
                      icon: LucideIcons.send,
                      label: 'Test',
                      onTap: _sendTestMessage,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    _SendButton(
                      icon: LucideIcons.database,
                      label: 'Meal',
                      onTap: _sendTestMeal,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                    _SendButton(
                      icon: LucideIcons.activity,
                      label: 'Goal',
                      onTap: _sendTestGoal,
                      colorScheme: colorScheme,
                      theme: theme,
                    ),
                  ],
                ),
              ),
            ),
            // Messages List
            if (_messages.isEmpty)
              SliverFillRemaining(
                hasScrollBody: false,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Icon(
                            LucideIcons.inbox,
                            size: 24,
                            color: colorScheme.onSurfaceVariant.withValues(
                              alpha: 0.5,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'No messages received',
                            style: theme.textTheme.bodySmall?.copyWith(
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.7,
                              ),
                              fontSize: 8,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Send test data from phone',
                            style: theme.textTheme.labelSmall?.copyWith(
                              color: colorScheme.onSurfaceVariant.withValues(
                                alpha: 0.5,
                              ),
                              fontSize: 7,
                            ),
                          ),
                    ],
                  ),
                ),
              )
            else
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final message = _messages[index];
                    return _MessageCard(
                      message: message,
                      colorScheme: colorScheme,
                      theme: theme,
                    );
                  },
                  childCount: _messages.length,
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class MessageLog {
  final DateTime timestamp;
  final Map<String, dynamic> data;
  final String path;

  MessageLog({
    required this.timestamp,
    required this.data,
    required this.path,
  });
}

class _MessageCard extends StatelessWidget {
  final MessageLog message;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _MessageCard({
    required this.message,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    final timeFormat = DateFormat('HH:mm:ss.SSS');
    final isError = message.path == 'error';

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      color: isError
          ? colorScheme.errorContainer.withValues(alpha: 0.3)
          : colorScheme.surfaceContainerHighest,
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            // Header
            Row(
              children: [
                Icon(
                  isError ? LucideIcons.x : LucideIcons.messageSquare,
                  size: 9,
                  color: isError
                      ? colorScheme.error
                      : colorScheme.primary,
                ),
                const SizedBox(width: 3),
                Expanded(
                  child: Text(
                    message.path,
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 7,
                      color: isError
                          ? colorScheme.error
                          : colorScheme.primary,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                const SizedBox(width: 3),
                Flexible(
                  child: Text(
                    timeFormat.format(message.timestamp),
                    style: theme.textTheme.labelSmall?.copyWith(
                      fontSize: 6,
                      color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            // Data
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: colorScheme.surface,
                borderRadius: BorderRadius.circular(4),
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: SelectableText(
                  _formatData(message.data),
                  style: theme.textTheme.bodySmall?.copyWith(
                    fontSize: 7,
                    fontFamily: 'monospace',
                    color: colorScheme.onSurface,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatData(Map<String, dynamic> data) {
    final buffer = StringBuffer();
    void writeMap(Map<dynamic, dynamic> map, int indent) {
      map.forEach((key, value) {
        buffer.write('  ' * indent);
        buffer.write('$key: ');
        if (value is Map) {
          buffer.writeln('{');
          writeMap(value, indent + 1);
          buffer.write('  ' * indent);
          buffer.writeln('}');
        } else if (value is List) {
          buffer.writeln('[');
          for (var item in value) {
            buffer.write('  ' * (indent + 1));
            if (item is Map) {
              buffer.writeln('{');
              writeMap(item, indent + 2);
              buffer.write('  ' * (indent + 1));
              buffer.writeln('}');
            } else {
              buffer.writeln('$item');
            }
          }
          buffer.write('  ' * indent);
          buffer.writeln(']');
        } else {
          buffer.writeln('$value');
        }
      });
    }
    writeMap(data, 0);
    return buffer.toString();
  }
}

class _SendButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final ColorScheme colorScheme;
  final ThemeData theme;

  const _SendButton({
    required this.icon,
    required this.label,
    required this.onTap,
    required this.colorScheme,
    required this.theme,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(alpha: 0.5),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: colorScheme.primary.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 12,
              color: colorScheme.primary,
            ),
            const SizedBox(height: 2),
            Text(
              label,
              style: theme.textTheme.labelSmall?.copyWith(
                fontSize: 7,
                color: colorScheme.primary,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
