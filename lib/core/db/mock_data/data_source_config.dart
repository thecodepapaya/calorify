/// Configuration for switching between mock and real data sources
class DataSourceConfig {
  /// Flag to control whether to use mock data or real database data
  /// Set to true for testing/development, false for production
  static bool _useMockData = true;

  /// Environment-based configuration
  /// Automatically sets the flag based on the current environment
  static void configureForEnvironment({bool? isProduction}) {
    if (isProduction != null) {
      _useMockData = !isProduction;
    } else {
      // Default behavior: use mock data in debug mode, real data in release mode
      _useMockData =
          true; // You can change this based on your build configuration
    }
  }

  /// Force enable mock data (useful for testing)
  static void enableMockData() {
    _useMockData = true;
  }

  /// Force enable real data (useful for production)
  static void enableRealData() {
    _useMockData = false;
  }

  /// Check if mock data is enabled
  static bool get isMockDataEnabled => _useMockData;

  /// Check if real data is enabled
  static bool get isRealDataEnabled => !_useMockData;
}
