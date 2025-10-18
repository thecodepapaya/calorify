import 'package:flutter/material.dart';

/// Localized messages for the application
class Messages {
  static String detectedMetricCountry(BuildContext context) {
    // For now, return the English version
    // In a full implementation, you would use Flutter's localization system
    return 'We detected you\'re in a metric country. You can change this if needed.';
  }

  static String detectedImperialCountry(BuildContext context) {
    return 'We detected you\'re in an imperial country. You can change this if needed.';
  }

  static String enterHeightCentimeters(BuildContext context) {
    return 'Enter your height in centimeters';
  }

  static String enterHeightFeetInches(BuildContext context) {
    return 'Enter your height in feet and inches (e.g., 5\'9")';
  }

  static String enterWeightKilograms(BuildContext context) {
    return 'Enter your weight in kilograms';
  }

  static String enterWeightPounds(BuildContext context) {
    return 'Enter your weight in pounds';
  }

  static String heightValidationMetric(BuildContext context) {
    return 'Height must be between 100-250 cm (3\'3" - 8\'2")';
  }

  static String heightValidationImperial(BuildContext context) {
    return 'Height must be between 3-8 feet (91-244 cm)';
  }

  static String weightValidationMetric(BuildContext context) {
    return 'Weight must be between 20-300 kg (44-660 lbs)';
  }

  static String weightValidationImperial(BuildContext context) {
    return 'Weight must be between 44-660 lbs (20-300 kg)';
  }
}
