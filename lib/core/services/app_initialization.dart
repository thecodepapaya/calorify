import 'package:calorify/core/config/app_config.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/services/database_service.dart';

/// App initialization service that sets up the database service
class AppInitialization {
  static bool _initialized = false;

  /// Initialize the app with database service
  static Future<void> initialize() async {
    if (_initialized) return;
    AppConfig.instance.init();

    // Configure data source based on environment
    // In production, use real data; in development, use mock data
    DataSourceConfig.configureForEnvironment(
      isProduction: AppConfig.instance.isProd,
    );

    // Initialize the database service
    await DatabaseService.initialize();

    _initialized = true;
  }

  /// Initialize for development (with mock data)
  static Future<void> initializeForDevelopment() async {
    DataSourceConfig.enableMockData();
    await DatabaseService.initialize();
    _initialized = true;
  }

  /// Initialize for production (with real data)
  static Future<void> initializeForProduction() async {
    DataSourceConfig.enableRealData();
    await DatabaseService.initialize();
    _initialized = true;
  }

  /// Initialize for testing (with mock data)
  static Future<void> initializeForTesting() async {
    DataSourceConfig.enableMockData();
    await DatabaseService.initialize();
    _initialized = true;
  }

  /// Check if app is initialized
  static bool get isInitialized => _initialized;

  /// Get current data source type
  static String get currentDataSourceType =>
      DatabaseService.currentDataSourceType;

  /// Check if using mock data
  static bool get isUsingMockData => DatabaseService.isUsingMockData;

  /// Check if using real data
  static bool get isUsingRealData => DatabaseService.isUsingRealData;
}
