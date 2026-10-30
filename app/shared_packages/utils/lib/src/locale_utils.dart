import 'package:flutter/material.dart';
import 'package:models/models.dart';

/// Utility class for locale-based unit system detection and formatting.
/// Use the app's selected locale (e.g. TranslationProvider.of(context).locale.flutterLocale)
/// so unit system and formatting follow the app language, not the device locale.
class LocaleUtils {
  LocaleUtils._();

  /// Countries that use imperial system
  static const Set<String> imperialCountries = {
    'US', // United States
    'LR', // Liberia
    'MM', // Myanmar
  };

  /// Determine the default height unit based on the given locale.
  static HeightUnit getDefaultHeightUnit(Locale locale) {
    final countryCode = locale.countryCode?.toUpperCase();
    return imperialCountries.contains(countryCode)
        ? HeightUnit.FT
        : HeightUnit.CM;
  }

  /// Determine the default weight unit based on the given locale.
  static WeightUnit getDefaultWeightUnit(Locale locale) {
    final countryCode = locale.countryCode?.toUpperCase();
    return imperialCountries.contains(countryCode)
        ? WeightUnit.LB
        : WeightUnit.KG;
  }

  /// Get the country code from the given locale.
  static String? getCountryCode(Locale locale) {
    return locale.countryCode?.toUpperCase();
  }

  /// Get height unit name
  static String getHeightUnitName(HeightUnit unit) {
    return unit == HeightUnit.CM ? 'Centimeters' : 'Feet/Inches';
  }

  /// Get weight unit name
  static String getWeightUnitName(WeightUnit unit) {
    return unit == WeightUnit.KG ? 'Kilograms' : 'Pounds';
  }

  /// Convert height from imperial to metric (inches to cm)
  static double convertHeightToMetric(double heightInInches) {
    return heightInInches * 2.54;
  }

  /// Convert height from metric to imperial (cm to inches)
  static double convertHeightToImperial(double heightInCm) {
    return heightInCm / 2.54;
  }

  /// Convert weight from imperial to metric (lbs to kg)
  static double convertWeightToMetric(double weightInLbs) {
    return weightInLbs * 0.45359237;
  }

  /// Convert weight from metric to imperial (kg to lbs)
  static double convertWeightToImperial(double weightInKg) {
    return weightInKg / 0.45359237;
  }

  /// Get weight change unit for daily weight changes
  /// Returns 'g' for metric, 'oz' for imperial (since daily changes are small)
  static String getWeightChangeUnit(WeightUnit weightUnit) {
    return weightUnit.isMetric ? 'g' : 'oz';
  }

  /// Convert weight change from grams to ounces (for imperial display)
  /// 1 ounce = 28.3495 grams
  static double convertWeightChangeToImperial(double grams) {
    return grams / 28.3495;
  }

  /// Format weight change with appropriate unit and precision
  /// Metric: whole grams (0 decimals), Imperial: ounces (1 decimal)
  static String formatWeightChange(double grams, WeightUnit weightUnit) {
    if (weightUnit.isMetric) {
      return '${grams.abs().toStringAsFixed(0)}g';
    } else {
      final ounces = convertWeightChangeToImperial(grams);
      return '${ounces.abs().toStringAsFixed(1)}oz';
    }
  }

  /// Format height value only (without unit)
  /// Metric: displays in cm with appropriate precision
  /// Imperial: displays in ft'in" format (e.g., 5'7" for 67 inches)
  static String formatHeightValue(double height, HeightUnit heightUnit) {
    if (heightUnit.isMetric) {
      return height.toStringAsFixed(heightUnit.precision);
    } else {
      // Height is stored in inches, convert to feet and inches for display
      final totalInches = height.round();
      final feet = totalInches ~/ 12;
      final inches = totalInches % 12;
      return '$feet\'$inches"';
    }
  }

  /// Format height for display
  /// Metric: displays in cm with appropriate precision
  /// Imperial: displays in ft'in" format (e.g., 5'7" for 67 inches)
  static String formatHeight(double height, HeightUnit heightUnit) {
    final value = formatHeightValue(height, heightUnit);
    if (heightUnit.isMetric) {
      return '$value cm';
    } else {
      // Imperial already includes the format in formatHeightValue (ft'in")
      return value;
    }
  }
}
