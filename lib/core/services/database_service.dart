import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/db/mock_database_adapter.dart';
import 'package:calorify/core/db/real_database_adapter.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/analytics.dart';

/// Database service that can switch between mock and real data using interface-based architecture
class DatabaseService implements DatabaseInterface {
  static AppDatabase? _database;
  static DatabaseInterface? _databaseInterface;
  static bool _initialized = false;

  /// Initialize the database service
  static Future<void> initialize() async {
    if (!_initialized) {
      if (DataSourceConfig.isMockDataEnabled) {
        _databaseInterface = MockDatabaseAdapter();
      } else {
        _database = AppDatabase();
        _databaseInterface = RealDatabaseAdapter(_database!);
      }
      _initialized = true;
    }
  }

  /// Reinitialize with current configuration
  static Future<void> reinitialize() async {
    _initialized = false;
    _database = null;
    _databaseInterface = null;
    await initialize();
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

  /// Get the current database instance (for real data)
  static AppDatabase get database {
    if (!_initialized) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    if (_database == null) {
      throw StateError('Database not available. Using mock data mode.');
    }
    return _database!;
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

  // Database operations that work with both mock and real data

  /// Get daily calorie goal
  @override
  Future<int?> getDailyCalorieGoal() async {
    await _ensureInitialized();
    return await databaseInterface.getDailyCalorieGoal();
  }

  /// Set daily calorie goal
  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await _ensureInitialized();
    await databaseInterface.setDailyCalorieGoal(goal);
    Analytics.instance.logEvent('set_calorie_goal', {'goal': goal});
  }

  /// Log a meal
  @override
  Future<void> logMeal(MealInfo mealInfo) async {
    await _ensureInitialized();
    await databaseInterface.logMeal(mealInfo);
    Analytics.instance.logEvent('log_meal', {'meal': mealInfo.toJson()});
  }

  /// Upsert a meal
  @override
  Future<void> upsertMeal(MealInfo mealInfo) async {
    await _ensureInitialized();
    await databaseInterface.upsertMeal(mealInfo);
    Analytics.instance.logEvent('update_meal', {'meal': mealInfo.toJson()});
  }

  /// Check if a meal is favorite
  @override
  Future<bool> isFavoriteMeal(int mealId) async {
    await _ensureInitialized();
    return await databaseInterface.isFavoriteMeal(mealId);
  }

  /// Add a meal to favorites
  @override
  Future<void> addToFavorites(MealInfo mealInfo) async {
    await _ensureInitialized();
    await databaseInterface.addToFavorites(mealInfo);
    Analytics.instance.logEvent('add_to_favorite', {'meal': mealInfo.toJson()});
  }

  /// Remove a meal from favorites
  @override
  Future<void> removeFavoriteMeal(int mealId) async {
    await _ensureInitialized();
    await databaseInterface.removeFavoriteMeal(mealId);
    Analytics.instance.logEvent('remove_favorite', {'meal_id': mealId});
  }

  /// Update last used time for a favorite meal
  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) async {
    await _ensureInitialized();
    await databaseInterface.updateFavoriteLastUsedAt(mealId);
  }

  // Stream operations (only work with real database)

  /// Watch all meals for today (stream)
  @override
  Stream<List<MealInfo>> watchAllMealsForToday() {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.watchAllMealsForToday();
  }

  /// Watch all meals for last 7 days (stream)
  @override
  Stream<List<MealInfo>> watchAllMealsForLast7Days() {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.watchAllMealsForLast7Days();
  }

  /// Watch all favorite meals (stream)
  @override
  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.watchAllFavoriteMeals();
  }

  /// Watch last used favorite meals (stream)
  @override
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals() {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.watchLastUsedFavoriteMeals();
  }

  @override
  Future<List<MealInfo>> paginatedMealsHistory({required int offset}) {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.paginatedMealsHistory(offset: offset);
  }

  static Future<void> _ensureInitialized() async {
    if (!_initialized) {
      await initialize();
    }
  }

  @override
  DataSourceType get dataSourceType {
    if (!_initialized || _databaseInterface == null) {
      throw StateError(
        'DatabaseService not initialized. Call initialize() first.',
      );
    }
    return databaseInterface.dataSourceType;
  }
}
