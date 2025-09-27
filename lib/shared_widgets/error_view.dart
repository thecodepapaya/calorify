import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class ErrorView extends StatelessWidget {
  const ErrorView({super.key, required this.error});

  final Object error;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final color = theme.colorScheme.onSurface.withValues(alpha: 0.7);
    final textTheme = theme.textTheme;

    log('Error: $error');

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(LucideIcons.info, color: color, size: 24),
          SizedBox(height: 8),
          Text(
            'Something went wrong.',
            style: textTheme.bodyLarge?.copyWith(color: color),
          ),
        ],
      ),
    );
  }
}
