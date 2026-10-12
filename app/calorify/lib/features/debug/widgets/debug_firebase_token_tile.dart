import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:widgets/widgets.dart';
import 'package:specs/specs.dart';

typedef DebugTokenResolver = Future<String?> Function();
typedef DebugTokenCopyText = Future<void> Function(String value);
typedef DebugTokenPrinter = void Function(String value);

class DebugFirebaseTokenTile extends StatefulWidget {
  const DebugFirebaseTokenTile({
    required this.isAuthenticated,
    required this.resolveToken,
    this.onCopied,
    this.onUnavailable,
    this.copyText,
    this.printToken,
    super.key,
  });

  final bool isAuthenticated;
  final DebugTokenResolver resolveToken;
  final VoidCallback? onCopied;
  final VoidCallback? onUnavailable;
  final DebugTokenCopyText? copyText;
  final DebugTokenPrinter? printToken;

  @override
  State<DebugFirebaseTokenTile> createState() => _DebugFirebaseTokenTileState();
}

class _DebugFirebaseTokenTileState extends State<DebugFirebaseTokenTile> {
  bool _isCopying = false;

  Future<void> _copy() async {
    if (_isCopying || !widget.isAuthenticated) return;
    setState(() => _isCopying = true);

    try {
      final token = (await widget.resolveToken())?.trim();
      if (token == null || token.isEmpty) {
        widget.onUnavailable?.call();
        return;
      }
      (widget.printToken ?? debugPrint)('Firebase bearer token: $token');
      await (widget.copyText ?? _copyToClipboard)(token);
      widget.onCopied?.call();
    } on Object {
      widget.onUnavailable?.call();
    } finally {
      if (mounted) setState(() => _isCopying = false);
    }
  }

  static Future<void> _copyToClipboard(String value) {
    return Clipboard.setData(ClipboardData(text: value));
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: const ValueKey('debug-firebase-token-tile'),
      child: ListTile(
        leading: const Icon(AppIcons.keyRound),
        title: const Text('Firebase bearer token'),
        subtitle: Text(
          widget.isAuthenticated
              ? 'Copy a freshly resolved Firebase ID token'
              : 'Not authenticated',
        ),
        trailing:
            _isCopying
                ? Padding(
                  padding: globalInnerPadding,
                  child: SizedBox.square(
                    dimension: 20,
                    child: CircularProgressIndicator(strokeWidth: 2),
                  ),
                )
                : IconButton(
                  tooltip:
                      widget.isAuthenticated
                          ? 'Copy Firebase bearer token'
                          : 'No bearer token to copy',
                  onPressed: widget.isAuthenticated ? _copy : null,
                  icon: const Icon(AppIcons.copy),
                ),
      ),
    );
  }
}
