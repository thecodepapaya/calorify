import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/widgets.dart';

typedef DebugCopyText = Future<void> Function(String value);

class DebugUserIdField extends StatelessWidget {
  const DebugUserIdField({
    required this.userId,
    this.onCopied,
    this.copyText,
    super.key,
  });

  final String? userId;
  final VoidCallback? onCopied;
  final DebugCopyText? copyText;

  Future<void> _copy() async {
    final value = userId;
    if (value == null || value.isEmpty) return;
    await (copyText ?? _copyToClipboard)(value);
    onCopied?.call();
  }

  static Future<void> _copyToClipboard(String value) {
    return Clipboard.setData(ClipboardData(text: value));
  }

  @override
  Widget build(BuildContext context) {
    final value = userId?.trim();
    final authenticated = value != null && value.isNotEmpty;
    return KeyedSubtree(
      key: const ValueKey('debug-user-id-field'),
      child: ListTile(
        key: ValueKey('debug-user-id-value-${value ?? 'signed-out'}'),
        leading: const Icon(AppIcons.userRound),
        title: const Text('Firebase user ID'),
        subtitle: SelectableText(
          authenticated ? value : 'Not authenticated',
          maxLines: 2,
        ),
        trailing: IconButton(
          tooltip: authenticated ? 'Copy user ID' : 'No user ID to copy',
          onPressed: authenticated ? _copy : null,
          icon: const Icon(AppIcons.copy),
        ),
      ),
    );
  }
}
