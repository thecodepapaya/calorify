import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_provider.g.dart';

@riverpod
class AppTheme extends _$AppTheme {
  @override
  ThemeMode build() {
    _loadTheme(ThemeService(database: ref.watch(databaseInterfaceProvider)));
    return ThemeMode.system;
  }

  Future<void> _loadTheme(ThemeService themeService) async {
    state = await themeService.getThemeMode();
  }

  Future<void> setTheme(ThemeMode mode) async {
    final themeService = ThemeService(
      database: ref.read(databaseInterfaceProvider),
    );
    await themeService.setThemeMode(mode);
    state = mode;
  }
}
