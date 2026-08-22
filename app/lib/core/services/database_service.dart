import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:flutter/foundation.dart';

/// Owns the process-wide database initialized at application startup.
class DatabaseService {
  DatabaseService._();

  static AppDatabase? _database;
  static DatabaseInterface? _databaseInterface;
  static bool _initialized = false;

  @visibleForTesting
  static void setMockInterface(DatabaseInterface mock) {
    _databaseInterface = mock;
    _initialized = true;
  }

  /// Initialize the database service
  static void initialize() {
    if (!_initialized) {
      if (DataSourceConfig.isMockDataEnabled) {
        _database = AppDatabase.inMemory();
      } else {
        _database = AppDatabase();
      }
      _databaseInterface = _database;
      _initialized = true;
    }
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

  /// Access the raw Drift database (only available in real mode).
  static AppDatabase? get rawDatabase => _database;
}
