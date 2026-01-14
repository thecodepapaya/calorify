import 'package:calorify/core/constants/colors.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';

/// Shared macro legend widget for displaying macro nutrient labels
/// Used in both macro split charts and 7-day macro history charts
class MacroLegend extends StatelessWidget {
  const MacroLegend({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 16,
        runSpacing: 8,
        alignment: WrapAlignment.center,
        children: [
          _LegendItem(color: carbsIconColor, label: t.home.dailySummary.carbs),
          _LegendItem(
            color: proteinIconColor,
            label: t.home.dailySummary.protein,
          ),
          _LegendItem(color: fatIconColor, label: t.home.dailySummary.fat),
          _LegendItem(color: fiberIconColor, label: t.home.dailySummary.fiber),
        ],
      ),
    );
  }
}

class _LegendItem extends StatelessWidget {
  const _LegendItem({required this.color, required this.label});

  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 12,
          height: 12,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
        const SizedBox(width: 4),
        Text(label, style: Theme.of(context).textTheme.bodySmall),
      ],
    );
  }
}
