import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ValueSlider extends StatelessWidget {
  final String unit;
  final double value;
  final double min;
  final double max;
  final ValueChanged<double> onChanged;
  final int precision;
  final double step;
  final String Function(double value)? valueFormatter;

  const ValueSlider({
    super.key,
    required this.unit,
    required this.value,
    required this.min,
    required this.max,
    required this.onChanged,
    this.precision = 1,
    this.step = 1.0,
    this.valueFormatter,
  });

  String _formatValue(double val) {
    if (valueFormatter != null) {
      return valueFormatter!.call(val);
    }
    return '${val.toStringAsFixed(precision)} $unit';
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      children: [
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: const Icon(LucideIcons.minus),
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            final newValue = (value - step).clamp(min, max);
            if (newValue != value) {
              onChanged(newValue);
            }
          },
        ),
        Expanded(
          child: Slider(
            value: value.clamp(min, max),
            min: min,
            max: max,
            divisions: ((max - min) / step).round(),
            label: _formatValue(value),
            onChanged: (newValue) {
              // Clamp the value to ensure it stays within bounds
              final clampedValue = newValue.clamp(min, max);
              onChanged(clampedValue);
            },
          ),
        ),
        IconButton(
          icon: Container(
            decoration: BoxDecoration(
              color: colorScheme.primaryContainer,
              shape: BoxShape.circle,
            ),
            child: const Icon(LucideIcons.plus),
          ),
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(),
          onPressed: () {
            final newValue = (value + step).clamp(min, max);
            if (newValue != value) {
              onChanged(newValue);
            }
          },
        ),
        // Show value on the right side of the slider row
        Padding(
          padding: const EdgeInsets.only(left: 4),
          child: SizedBox(
            width: 65,
            child: Text(
              _formatValue(value),
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.right,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
