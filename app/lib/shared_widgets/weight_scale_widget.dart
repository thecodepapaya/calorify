import 'package:calorify/shared_widgets/scale_widget.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:intl/intl.dart';
import 'package:models/models.dart';

/// A reusable horizontal scale widget for selecting weight values.
/// Supports both metric (kg) and imperial (lbs) units.
class WeightScaleWidget extends StatelessWidget {
  final double value;
  final UnitSystem unitSystem;
  final ValueChanged<double> onValueChanged;
  final double? minValue;
  final double? maxValue;

  const WeightScaleWidget({
    super.key,
    required this.value,
    required this.unitSystem,
    required this.onValueChanged,
    this.minValue,
    this.maxValue,
  });

  @override
  Widget build(BuildContext context) {
    // Use smaller tick width for metric to reduce spacing
    final tickWidth =
        unitSystem.isMetric ? 8.0 : ScaleConstants.weightTickWidth;

    return ScaleWidget(
      value: value,
      unitSystem: unitSystem,
      onValueChanged: onValueChanged,
      minValue: minValue,
      maxValue: maxValue,
      tickWidth: tickWidth,
      // Major every 1kg (metric) or 5lb (imperial)
      ticksPerMajor: (unitSystem) => unitSystem.isMetric ? 10 : 5,
      getMinValue: (unitSystem) => unitSystem.weightMin,
      getMaxValue: (unitSystem) => unitSystem.weightMax,
      getStep:
          (unitSystem) =>
              unitSystem.isMetric
                  ? ScaleConstants.weightMetricStep
                  : ScaleConstants.weightImperialStep,
      formatValue: (value, unitSystem, context) {
        if (unitSystem.isMetric) {
          // Metric: one decimal place for kg - use app-selected locale-aware formatting
          final locale =
              TranslationProvider.of(context).locale.flutterLocale.toString();
          return NumberFormat('#.#', locale).format(value);
        } else {
          // Imperial: whole numbers for lbs
          return value.toInt().toString();
        }
      },
      shouldShowMajorLabel: (value, index, unitSystem, ticksPerMajor) {
        if (unitSystem.isMetric) {
          // Metric: every 1kg (every 10 steps of 0.1kg)
          return index % ticksPerMajor == 0;
        } else {
          // Imperial: show label when value is a multiple of 5
          return (value % 5) < 0.01;
        }
      },
      shouldShowMediumLabel: (value, index, unitSystem, ticksPerMedium) {
        if (unitSystem.isMetric) {
          // Medium ticks: every 0.5kg (metric)
          // This is every ticksPerMedium steps, but not at major ticks
          final ticksPerMajor = ticksPerMedium * 2;
          return index % ticksPerMedium == 0 && index % ticksPerMajor != 0;
        } else {
          // Imperial: no medium ticks (majors are already at 5lb intervals)
          return false;
        }
      },
    );
  }
}
