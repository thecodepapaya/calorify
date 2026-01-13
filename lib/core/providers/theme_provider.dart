import 'package:calorify/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeMode build() {
    _loadTheme();
    return ThemeMode.system;
  }

  Future<void> _loadTheme() async {
    final themeService = ThemeService.instance;
    state = await themeService.getThemeMode();
  }

  Future<void> setTheme(ThemeMode mode) async {
    final themeService = ThemeService.instance;
    await themeService.setThemeMode(mode);
    state = mode;
  }
}
