import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/database_logger.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/db/mock_database_adapter.dart';
import 'package:calorify/core/db/real_database_adapter.dart';

/// Database service that can switch between mock and real data using interface-based architecture
class DatabaseService {
  DatabaseService._();

  static AppDatabase? _database;
  static DatabaseInterface? _databaseInterface;
  static bool _initialized = false;

  /// Initialize the database service
  static void initialize() {
    if (!_initialized) {
      DatabaseInterface adapter;
      if (DataSourceConfig.isMockDataEnabled) {
        adapter = MockDatabaseAdapter();
      } else {
        _database = AppDatabase();
        adapter = RealDatabaseAdapter(_database!);
      }
      // Wrap with logger to track all DB operations
      _databaseInterface = DatabaseLogger(adapter);
      _initialized = true;
    }
  }

  /// Reinitialize with current configuration
  static Future<void> reinitialize() async {
    _initialized = false;
    await _database?.close();
    _database = null;
    _databaseInterface = null;
    initialize();
  }

  /// Switch to mock data
  static Future<void> switchToMockData() async {
    DataSourceConfig.enableMockData();
    await reinitialize();
  }

  /// Switch to real data
  static Future<void> switchToRealData() async {
    DataSourceConfig.enableRealData();
    await reinitialize();
  }

  /// Get the current database interface
  static DatabaseInterface get databaseInterface {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return _databaseInterface!;
  }

  /// Check if using mock data
  static bool get isUsingMockData => DataSourceConfig.isMockDataEnabled;

  /// Check if using real data
  static bool get isUsingRealData => DataSourceConfig.isRealDataEnabled;

  /// Get current data source type
  static String get currentDataSourceType {
    if (!_initialized || _databaseInterface == null) {
      return 'Not Initialized';
    }
    return _databaseInterface!.dataSourceType.name;
  }
}
