import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';

class NutrientIconWithValue extends StatelessWidget {
  final IconData icon;
  final double value;
  final String unit;
  final Color iconColor;

  const NutrientIconWithValue({
    super.key,
    required this.icon,
    required this.value,
    required this.unit,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Container(
      constraints: BoxConstraints(minWidth: 45),
      margin: EdgeInsets.symmetric(horizontal: 2),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: iconColor.withValues(alpha: 0.1),
        borderRadius: globalRadius,
        border: Border.all(color: iconColor.withValues(alpha: 0.2)),
      ),
      child: Column(
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(height: 4),
          Text(
            value.toStringAsFixed(0) + unit,
            style: textTheme.bodySmall?.copyWith(
              color: iconColor,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.clip,
          ),
        ],
      ),
    );
  }
}
