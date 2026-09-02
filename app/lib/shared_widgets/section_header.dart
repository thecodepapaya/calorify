import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    super.key,
    this.icon,
    this.leading,
    required this.title,
    this.iconSize,
    this.trailing,
  }) : assert((icon == null) != (leading == null));

  final IconData? icon;
  final Widget? leading;
  final String title;
  final double? iconSize;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconTheme(
          data: IconThemeData(color: theme.colorScheme.primary, size: iconSize),
          child: leading ?? Icon(icon),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            title,
            style: theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w600,
              color: theme.colorScheme.onSurface,
            ),
          ),
        ),
        if (trailing != null) trailing!,
      ],
    );
  }
}
