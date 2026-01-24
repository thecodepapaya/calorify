import 'package:utils/utils.dart';
import 'package:calorify/shared_widgets/scale_widget.dart';
import 'package:flutter/material.dart';
import 'package:models/models.dart';

/// A reusable horizontal scale widget for selecting height values.
/// Supports both metric (cm) and imperial (ft) units.
class HeightScaleWidget extends StatelessWidget {
  final double value;
  final UnitSystem unitSystem;
  final ValueChanged<double> onValueChanged;
  final double? minValue;
  final double? maxValue;

  const HeightScaleWidget({
    super.key,
    required this.value,
    required this.unitSystem,
    required this.onValueChanged,
    this.minValue,
    this.maxValue,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleWidget(
      value: value,
      unitSystem: unitSystem,
      onValueChanged: onValueChanged,
      minValue: minValue,
      maxValue: maxValue,
      tickWidth: ScaleConstants.heightTickWidth,
      ticksPerMajor:
          (unitSystem) =>
              ScaleConstants.heightTicksPerMajor(unitSystem.isMetric),
      getMinValue: (unitSystem) => unitSystem.heightMin,
      getMaxValue: (unitSystem) => unitSystem.heightMax,
      getStep:
          (unitSystem) =>
              unitSystem.isMetric
                  ? ScaleConstants.heightMetricStep
                  : ScaleConstants.heightImperialStep,
      formatValue:
          (value, unitSystem, context) =>
              LocaleUtils.formatHeightValue(value, unitSystem),
      shouldShowMajorLabel: (value, index, unitSystem, ticksPerMajor) {
        if (unitSystem.isMetric) {
          return index % ticksPerMajor == 0;
        } else {
          // Show label for whole feet (multiples of 12 inches)
          return (value % 12) < 0.01;
        }
      },
      shouldShowMediumLabel: (value, index, unitSystem, ticksPerMedium) {
        if (unitSystem.isMetric) {
          return index % ticksPerMedium == 0;
        } else {
          // Show medium label for 6-inch marks (half feet)
          return (value % 12 - 6).abs() < 0.01;
        }
      },
    );
  }
}
