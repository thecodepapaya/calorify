import 'package:calorify/core/models/profile_models.dart';
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

  /// Determine the default unit system based on the user's locale
  static UnitSystem getDefaultUnitSystem(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final countryCode = locale.countryCode?.toUpperCase();

    return imperialCountries.contains(countryCode)
        ? UnitSystem.imperial
        : UnitSystem.metric;
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
  static String getUnitSystemName(UnitSystem unitSystem) {
    return unitSystem == UnitSystem.metric ? 'Metric' : 'Imperial';
  }

  /// Get height unit using locale-specific formatting
  static String getHeightUnit(UnitSystem unitSystem) {
    return unitSystem == UnitSystem.metric ? 'cm' : 'ft';
  }

  /// Get weight unit using locale-specific formatting
  static String getWeightUnit(UnitSystem unitSystem) {
    return unitSystem == UnitSystem.metric ? 'kg' : 'lbs';
  }

  /// Convert height from imperial to metric (ft to cm)
  static double convertHeightToMetric(double heightInFeet) {
    return heightInFeet * 30.48;
  }

  /// Convert height from metric to imperial (cm to ft)
  static double convertHeightToImperial(double heightInCm) {
    return heightInCm / 30.48;
  }

  /// Convert weight from imperial to metric (lbs to kg)
  static double convertWeightToMetric(double weightInLbs) {
    return weightInLbs * 0.45359237;
  }

  /// Convert weight from metric to imperial (kg to lbs)
  static double convertWeightToImperial(double weightInKg) {
    return weightInKg / 0.45359237;
  }
}
