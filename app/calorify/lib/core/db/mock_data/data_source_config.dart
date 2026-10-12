import 'package:calorify/core/config/env_config.dart';

/// Configuration for switching between mock and real data sources
class DataSourceConfig {
  static bool _useMockData = true;

  /// [Flavor.dev] uses mock data unless [USE_REAL_DATABASE] is set. Staging and prod use real Drift.
  static void configureForEnvironment({required Flavor flavor}) {
    const useRealDatabase = bool.fromEnvironment('USE_REAL_DATABASE');
    switch (flavor) {
      case Flavor.prod:
      case Flavor.staging:
        _useMockData = false;
      case Flavor.dev:
        _useMockData = !useRealDatabase;
    }
  }

  static void enableMockData() {
    _useMockData = true;
  }

  static void enableRealData() {
    _useMockData = false;
  }

  static bool get isMockDataEnabled => _useMockData;
  static bool get isRealDataEnabled => !_useMockData;
}
