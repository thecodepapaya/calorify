import 'package:flutter/material.dart';

/// Utility class for locale-based unit system detection and formatting
class LocaleUtils {
  LocaleUtils._();

  /// Countries that use imperial system
  static const Set<String> imperialCountries = {
    'US', // United States
    'LR', // Liberia
    'MM', // Myanmar
  };

  /// Determine if the user's locale uses metric system
  static bool isMetricSystem(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final countryCode = locale.countryCode?.toUpperCase();

    return !imperialCountries.contains(countryCode);
  }

  /// Get the current locale
  static Locale getCurrentLocale(BuildContext context) {
    return Localizations.localeOf(context);
  }

  /// Get the country code from locale
  static String? getCountryCode(BuildContext context) {
    return Localizations.localeOf(context).countryCode?.toUpperCase();
  }

  /// Get unit system name using locale-specific formatting
  static String getUnitSystemName(BuildContext context, bool isMetric) {
    return isMetric ? 'Metric' : 'Imperial';
  }

  /// Get height unit using locale-specific formatting
  static String getHeightUnit(BuildContext context, bool isMetric) {
    return isMetric ? 'cm' : 'ft';
  }

  /// Get weight unit using locale-specific formatting
  static String getWeightUnit(BuildContext context, bool isMetric) {
    return isMetric ? 'kg' : 'lbs';
  }

  /// Convert height from imperial to metric
  static double convertHeightToMetric(double heightInFeet) {
    return heightInFeet * 30.48; // feet to cm
  }

  /// Convert height from metric to imperial
  static double convertHeightToImperial(double heightInCm) {
    return heightInCm / 30.48; // cm to feet
  }

  /// Convert weight from imperial to metric
  static double convertWeightToMetric(double weightInLbs) {
    return weightInLbs * 0.453592; // lbs to kg
  }

  /// Convert weight from metric to imperial
  static double convertWeightToImperial(double weightInKg) {
    return weightInKg / 0.453592; // kg to lbs
  }
}
