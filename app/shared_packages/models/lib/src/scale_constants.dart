/// Constants for height and weight scale widgets
class ScaleConstants {
  ScaleConstants._();

  // Height constants - Metric (cm)
  static const double heightMetricMin = 100.0;
  static const double heightMetricMax = 250.0;
  static const double heightMetricStep = 1.0; // 1 cm per step

  // Height constants - Imperial (inches)
  static const double heightImperialMin = 39.0; // 39 inches = 3'3"
  static const double heightImperialMax = 98.0; // 98 inches = 8'2"
  static const double heightImperialStep = 1.0; // 1 inch per step

  // Weight constants - Metric (kg)
  static const double weightMetricMin = 30.0;
  static const double weightMetricMax = 300.0;
  static const double weightMetricStep = 0.1; // 0.1 kg per step

  // Weight constants - Imperial (lbs)
  static const double weightImperialMin = 66.0;
  static const double weightImperialMax = 660.0;
  static const double weightImperialStep = 1.0; // 1 lb per step

  // Visual constants
  static const double heightTickWidth = 10.0;
  static const double weightTickWidth = 15.0;

  // Ticks per major label
  static int heightTicksPerMajor(bool isMetric) =>
      isMetric ? 10 : 12; // Every 12 inches = 1 foot
  static const int weightTicksPerMajor = 5;
}
