import 'package:calorify/core/db/database_interface.dart';
import 'package:flutter/material.dart';

class ThemeService {
  const ThemeService({required DatabaseInterface database})
    : _database = database;

  final DatabaseInterface _database;

  /// Get the current theme mode preference
  Future<ThemeMode> getThemeMode() {
    return _database.getThemeMode();
  }

  /// Set the theme mode preference
  Future<void> setThemeMode(ThemeMode mode) async {
    await _database.setThemeMode(mode);
  }
}
