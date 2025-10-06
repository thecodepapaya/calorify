import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class DisclaimerButton extends StatelessWidget {
  const DisclaimerButton({super.key, required this.data});

  final DisclaimerData data;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;

    return IconButton(
      icon: Icon(
        LucideIcons.info,
        color: colorScheme.onSurface.withValues(alpha: 0.5),
      ),
      onPressed: () => showDisclaimer(context, data),
    );
  }
}
