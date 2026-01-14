import 'package:calorify/core/services/database_service.dart';
import 'package:flutter/material.dart';

class ThemeService {
  static ThemeService? _instance;

  ThemeService._();

  static ThemeService get instance {
    _instance ??= ThemeService._();
    return _instance!;
  }

  /// Get the current theme mode preference
  Future<ThemeMode> getThemeMode() async {
    return await DatabaseService.databaseInterface.getThemeMode();
  }

  /// Set the theme mode preference
  Future<void> setThemeMode(ThemeMode mode) async {
    await DatabaseService.databaseInterface.setThemeMode(mode);
  }
}
