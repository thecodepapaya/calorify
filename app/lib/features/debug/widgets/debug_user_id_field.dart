import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

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
      child: TextFormField(
        key: ValueKey('debug-user-id-value-${value ?? 'signed-out'}'),
        initialValue: authenticated ? value : 'Not authenticated',
        readOnly: true,
        enableInteractiveSelection: authenticated,
        decoration: InputDecoration(
          labelText: 'User ID',
          helperText:
              authenticated
                  ? 'Firebase UID used by backend diagnostic tools'
                  : 'Sign in to obtain a Firebase UID',
          prefixIcon: const Icon(LucideIcons.userRound),
          suffixIcon: IconButton(
            tooltip: authenticated ? 'Copy user ID' : 'No user ID to copy',
            onPressed: authenticated ? _copy : null,
            icon: const Icon(LucideIcons.copy),
          ),
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
