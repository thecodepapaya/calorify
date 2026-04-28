import 'dart:developer';

import 'package:calorify/core/errors/app_error.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Renders an inline error state for a failed async flow.
///
/// Accepts any [error] value; if it isn't already an [AppError] it'll be
/// normalised via [AppError.fromException] so the displayed copy + icon
/// match the error kind. Pass [onRetry] to offer the user a retry action —
/// the button is suppressed automatically for non-retryable errors (auth,
/// validation, parse) unless [retryOverride] is `true`.
class ErrorView extends StatelessWidget {
  const ErrorView({
    super.key,
    required this.error,
    this.onRetry,
    this.retryOverride,
  });

  final Object error;
  final VoidCallback? onRetry;

  /// Forces the retry button on or off regardless of [AppError.isRetryable].
  final bool? retryOverride;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.onSurface.withValues(alpha: 0.7);
    final textTheme = theme.textTheme;

    final appError = error is AppError
        ? error as AppError
        : AppError.fromException(error);

    log('Error: $appError', error: appError.cause, stackTrace: appError.stackTrace);

    final showRetry = retryOverride ?? appError.isRetryable;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(_iconFor(appError), color: color, size: 28),
            const SizedBox(height: 12),
            Text(
              _messageFor(appError),
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(color: color),
            ),
            if (showRetry && onRetry != null) ...[
              const SizedBox(height: 16),
              FilledButton.tonalIcon(
                onPressed: onRetry,
                icon: const Icon(LucideIcons.refreshCw, size: 16),
                label: Text(t.errors.retry),
              ),
            ],
          ],
        ),
      ),
    );
  }

  IconData _iconFor(AppError error) {
    return switch (error) {
      NetworkError() => LucideIcons.wifiOff,
      AuthError() => LucideIcons.lock,
      RateLimitError() => LucideIcons.clock,
      ServerError() => LucideIcons.serverOff,
      ValidationError() => LucideIcons.circleAlert,
      ParseError() => LucideIcons.circleX,
      UnknownError() => LucideIcons.info,
    };
  }

  /// Prefer translated copy where the variant maps cleanly to an existing
  /// string; otherwise fall back to the message embedded in the error (which
  /// comes from the server JSON `message` field when available).
  String _messageFor(AppError error) {
    return switch (error) {
      NetworkError() => t.errors.networkError,
      RateLimitError() => t.errors.rateLimitExceeded,
      AuthError() || ServerError() || ValidationError() || ParseError() =>
        error.message,
      UnknownError() =>
        error.message.isNotEmpty ? error.message : t.errors.somethingWentWrong,
    };
  }
}
