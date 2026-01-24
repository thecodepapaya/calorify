import 'package:models/models.dart';
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
        ? UnitSystem.IMPERIAL
        : UnitSystem.METRIC;
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
    return unitSystem == UnitSystem.METRIC ? 'Metric' : 'Imperial';
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
  static String getWeightChangeUnit(UnitSystem unitSystem) {
    return unitSystem.isMetric ? 'g' : 'oz';
  }

  /// Convert weight change from grams to ounces (for imperial display)
  /// 1 ounce = 28.3495 grams
  static double convertWeightChangeToImperial(double grams) {
    return grams / 28.3495;
  }

  /// Format weight change with appropriate unit and precision
  /// Metric: whole grams (0 decimals), Imperial: ounces (1 decimal)
  static String formatWeightChange(double grams, UnitSystem unitSystem) {
    if (unitSystem.isMetric) {
      return '${grams.abs().toStringAsFixed(0)}g';
    } else {
      final ounces = convertWeightChangeToImperial(grams);
      return '${ounces.abs().toStringAsFixed(1)}oz';
    }
  }

  /// Format height value only (without unit)
  /// Metric: displays in cm with appropriate precision
  /// Imperial: displays in ft'in" format (e.g., 5'7" for 67 inches)
  static String formatHeightValue(double height, UnitSystem unitSystem) {
    if (unitSystem.isMetric) {
      return height.toStringAsFixed(unitSystem.heightPrecision);
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
  static String formatHeight(double height, UnitSystem unitSystem) {
    final value = formatHeightValue(height, unitSystem);
    if (unitSystem.isMetric) {
      return '$value cm';
    } else {
      // Imperial already includes the format in formatHeightValue (ft'in")
      return value;
    }
  }
}
