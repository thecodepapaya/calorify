import 'dart:io';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/db/mappers/favorite_meal_mapper.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/db/mappers/user_profile_mapper.dart';
import 'package:calorify/core/db/mock_data/favorite_meal_mock.dart';
import 'package:calorify/core/db/mock_data/meal_info_mock.dart';
import 'package:calorify/core/db/mock_data/user_settings_mock.dart'
    hide UserProfile;
import 'package:calorify/core/db/tables/favorite_meal.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/user_preferences.dart';
import 'package:calorify/core/db/tables/user_profile.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/foundation.dart' show visibleForTesting;
import 'package:flutter/material.dart' show ThemeMode;
import 'package:models/models.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

part 'app_database.g.dart';

@DriftDatabase(
  tables: [
    MealInfoTable,
    UserProfileTable,
    UserPreferencesTable,
    FavoriteMealTable,
  ],
)
class AppDatabase extends _$AppDatabase implements DatabaseInterface {
  AppDatabase()
    : _dataSourceType = DataSourceType.real,
      _seedDevelopmentData = false,
      super(_openConnection());

  @visibleForTesting
  AppDatabase.forTesting(super.executor)
    : _dataSourceType = DataSourceType.real,
      _seedDevelopmentData = false;

  /// Reactive development database using the same Drift implementation as
  /// production, with optional sample data inserted on first open.
  AppDatabase.inMemory({bool seedDevelopmentData = true})
    : _dataSourceType = DataSourceType.mock,
      _seedDevelopmentData = seedDevelopmentData,
      super(NativeDatabase.memory());

  final DataSourceType _dataSourceType;
  final bool _seedDevelopmentData;

  @override
  int get schemaVersion => 23;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
        if (_seedDevelopmentData) await _seedMockData();
      },
      onUpgrade: (m, from, to) async {
        if (from < 3) {
          await m.addColumn(mealInfoTable, mealInfoTable.imageUrl);
          await m.addColumn(favoriteMealTable, favoriteMealTable.imageUrl);
        }
        if (from < 4) {
          await m.addColumn(favoriteMealTable, favoriteMealTable.createdAt);
        }
        if (from < 5) {
          await m.addColumn(favoriteMealTable, favoriteMealTable.lastUsedAt);
        }
        if (from < 6) {
          await m.addColumn(userProfileTable, userProfileTable.height);
          await m.addColumn(userProfileTable, userProfileTable.weight);
          await m.addColumn(userProfileTable, userProfileTable.gender);
          await m.addColumn(userProfileTable, userProfileTable.dateOfBirth);
          await m.addColumn(userProfileTable, userProfileTable.weightGoal);
          await m.addColumn(userProfileTable, userProfileTable.activityLevel);
          await m.addColumn(userProfileTable, userProfileTable.createdAt);
          await m.addColumn(userProfileTable, userProfileTable.updatedAt);
        }
        if (from < 7) {
          await m.addColumn(mealInfoTable, mealInfoTable.healthScore);
          await m.addColumn(mealInfoTable, mealInfoTable.healthScoreReason);
        }
        if (from < 8) {
          await m.addColumn(userProfileTable, userProfileTable.targetWeight);
        }
        if (from < 10) {
          await m.addColumn(userProfileTable, userProfileTable.heightUnit);
          await m.addColumn(userProfileTable, userProfileTable.weightUnit);
        }
        if (from < 11) {
          // Skipping languageCode addition to old table as it's no longer needed
        }
        if (from < 12) {
          await m.createTable(userPreferencesTable);

          // 3. Initialize with default preferences (languageCode is null by default)
          await into(userPreferencesTable).insert(
            UserPreferencesTableCompanion.insert(
              id: const Value(_userPreferencesId),
              theme: Value(ThemeMode.system.name),
            ),
          );
        }
        // Migration 13 removed - clientId column no longer exists
        if (from < 15) {
          // Migration 15: Remove clientId and sourceMealId columns
          // SQLite doesn't support DROP COLUMN directly, so these columns will remain
          // in the database but won't be used by the app. They can be safely ignored.
          // The app now uses only the auto-increment 'id' column for both meal_info
          // and favorite_meal tables.
        }
        if (from >= 12 && from < 16) {
          await m.addColumn(
            userPreferencesTable,
            userPreferencesTable.feedbackSheetShownAt,
          );
        }
        if (from < 17) {
          await m.addColumn(mealInfoTable, mealInfoTable.analysisId);
        }
        if (from < 18) {
          // FavoriteMealTable inherits MealInfoTable in Dart, but Drift does not
          // automatically replay columns added to the parent table. Some v17
          // databases therefore lack these columns, while fresh v17 databases
          // already have them. Check the physical schema so both upgrade paths
          // are safe.
          if (!await _columnExists('favorite_meal_table', 'health_score')) {
            await m.addColumn(favoriteMealTable, favoriteMealTable.healthScore);
          }
          if (!await _columnExists(
            'favorite_meal_table',
            'health_score_reason',
          )) {
            await m.addColumn(
              favoriteMealTable,
              favoriteMealTable.healthScoreReason,
            );
          }
          if (!await _columnExists('favorite_meal_table', 'analysis_id')) {
            await m.addColumn(favoriteMealTable, favoriteMealTable.analysisId);
          }
          if (!await _columnExists(
            'user_preferences_table',
            'onboarding_current_step',
          )) {
            await m.addColumn(
              userPreferencesTable,
              userPreferencesTable.onboardingCurrentStep,
            );
          }
          if (!await _columnExists(
            'user_preferences_table',
            'onboarding_completed_at',
          )) {
            await m.addColumn(
              userPreferencesTable,
              userPreferencesTable.onboardingCompletedAt,
            );
          }

          // Existing releases inferred completion from a fully populated
          // profile. Materialize that legacy state once so all runtime checks
          // can rely exclusively on explicit onboarding completion.
          const completedAt = "CAST(strftime('%s', 'now') AS INTEGER)";
          const completeProfile = '''
            EXISTS (
              SELECT 1 FROM user_profile_table
              WHERE id = 1
                AND height IS NOT NULL
                AND weight IS NOT NULL
                AND gender IS NOT NULL
                AND date_of_birth IS NOT NULL
                AND weight_goal IS NOT NULL
                AND activity_level IS NOT NULL
            )
          ''';
          await customStatement('''
            INSERT OR IGNORE INTO user_preferences_table
              (id, onboarding_completed_at)
            SELECT 1, $completedAt
            WHERE $completeProfile
          ''');
          await customStatement('''
            UPDATE user_preferences_table
            SET onboarding_completed_at = COALESCE(
              onboarding_completed_at,
              $completedAt
            )
            WHERE $completeProfile
          ''');
        }
        if (from < 19) {
          // The phone sync queue was never enabled in a released runtime. Keep
          // upgrades from schemas that contained it compatible while omitting
          // it from new databases.
          await customStatement('DROP TABLE IF EXISTS sync_queue_table');
        }
        if (from < 20) {
          if (!await _columnExists('user_profile_table', 'needs_remote_sync')) {
            await m.addColumn(
              userProfileTable,
              userProfileTable.needsRemoteSync,
            );
          }
          if (!await _columnExists(
            'user_profile_table',
            'remote_sync_revision',
          )) {
            await m.addColumn(
              userProfileTable,
              userProfileTable.remoteSyncRevision,
            );
          }
          // Older builds retried every profile at startup. Preserve that one
          // pending upload while future successful syncs can now be tracked.
          await customStatement('''
            UPDATE user_profile_table
            SET needs_remote_sync = 1,
                remote_sync_revision = lower(hex(randomblob(16)))
          ''');
        }
        if (from < 21 && await _tableExists('favorite_meal_table')) {
          // Favorites need an identity independent from the meal they were
          // copied from. Some databases upgraded from schema 14 still have a
          // trustworthy source_meal_id column; newer databases need it added.
          if (!await _columnExists('favorite_meal_table', 'source_meal_id')) {
            await customStatement('''
              ALTER TABLE favorite_meal_table
              ADD COLUMN source_meal_id INTEGER NULL
            ''');
          }

          // Schema 15-20 used the favorite row id as the source id. That is
          // ambiguous for custom favorites, so only restore the association
          // when the complete stored snapshot still matches the logged meal.
          // Run this for legacy databases that retained source_meal_id too:
          // favorites created after their v15 upgrade left that column NULL.
          if (await _tableExists('meal_info_table')) {
            await customStatement('''
              UPDATE favorite_meal_table
              SET source_meal_id = id
              WHERE source_meal_id IS NULL
                AND NOT EXISTS (
                  SELECT 1
                  FROM favorite_meal_table AS existing
                  WHERE existing.source_meal_id = favorite_meal_table.id
                )
                AND EXISTS (
                  SELECT 1
                  FROM meal_info_table AS source
                  WHERE source.id = favorite_meal_table.id
                    AND source.meal_name = favorite_meal_table.meal_name
                    AND source.meal_quantity = favorite_meal_table.meal_quantity
                    AND source.meal_type = favorite_meal_table.meal_type
                    AND source.calories = favorite_meal_table.calories
                    AND source.protein = favorite_meal_table.protein
                    AND source.carbs = favorite_meal_table.carbs
                    AND source.fat = favorite_meal_table.fat
                    AND source.fiber = favorite_meal_table.fiber
                    AND source.timestamp = favorite_meal_table.timestamp
                    AND source.image_url IS favorite_meal_table.image_url
                    AND source.health_score IS favorite_meal_table.health_score
                    AND source.health_score_reason
                        IS favorite_meal_table.health_score_reason
                )
            ''');
          }

          // Preserve all rows if a legacy database somehow contains duplicate
          // source ids, then enforce the invariant for future writes.
          await customStatement('''
            UPDATE favorite_meal_table
            SET source_meal_id = NULL
            WHERE source_meal_id IS NOT NULL
              AND id NOT IN (
                SELECT MIN(id)
                FROM favorite_meal_table
                WHERE source_meal_id IS NOT NULL
                GROUP BY source_meal_id
              )
          ''');
          await customStatement('''
            CREATE UNIQUE INDEX IF NOT EXISTS
              favorite_meal_source_meal_id_unique
            ON favorite_meal_table(source_meal_id)
          ''');
        }
        if (from < 22 && await _tableExists('meal_info_table')) {
          // Older clients used a select-then-insert idempotency check, so two
          // concurrent retries could persist the same analysis more than once.
          // Keep every historical meal (and any favorite that points to it),
          // but retain the idempotency key only on the earliest row before
          // enforcing the invariant at the database boundary.
          await customStatement('''
            UPDATE meal_info_table
            SET analysis_id = NULLIF(trim(analysis_id), '')
            WHERE analysis_id IS NOT NULL
          ''');
          await customStatement('''
            UPDATE meal_info_table
            SET analysis_id = NULL
            WHERE analysis_id IS NOT NULL
              AND id NOT IN (
                SELECT MIN(id)
                FROM meal_info_table
                WHERE analysis_id IS NOT NULL
                GROUP BY analysis_id
              )
          ''');
          await customStatement('''
            CREATE UNIQUE INDEX IF NOT EXISTS
              meal_info_analysis_id_unique
            ON meal_info_table(analysis_id)
          ''');
        }
        if (from < 23) {
          if (!await _tableExists('user_preferences_table')) {
            await m.createTable(userPreferencesTable);
          } else if (!await _columnExists(
            'user_preferences_table',
            'local_inference_enabled',
          )) {
            await m.addColumn(
              userPreferencesTable,
              userPreferencesTable.localInferenceEnabled,
            );
          }
          if (!await _columnExists(
            'user_preferences_table',
            'local_inference_acknowledged_policy_version',
          )) {
            await m.addColumn(
              userPreferencesTable,
              userPreferencesTable.localInferenceAcknowledgedPolicyVersion,
            );
          }
        }
      },
    );
  }

  Future<bool> _columnExists(String tableName, String columnName) async {
    final columns = await customSelect('PRAGMA table_info($tableName)').get();
    return columns.any((row) => row.read<String>('name') == columnName);
  }

  Future<bool> _tableExists(String tableName) async {
    final tables =
        await customSelect(
          'SELECT 1 FROM sqlite_master WHERE type = ? AND name = ?',
          variables: [
            const Variable<String>('table'),
            Variable<String>(tableName),
          ],
        ).get();
    return tables.isNotEmpty;
  }

  static const int _userProfileId = 1;
  static const int _userPreferencesId = 1;

  Future<void> _seedMockData() async {
    final meals = MealInfoMock.generateWeek();
    final favorites = FavoriteMealMock.generateUserFavorites();
    final goal =
        UserSettingsMock.generateRealistic()['dailyCalorieGoal'] as int;

    await batch((batch) {
      batch.insertAll(
        mealInfoTable,
        meals.map((meal) => meal.toCompanion()).toList(),
      );
      batch.insertAll(
        favoriteMealTable,
        favorites.map((favorite) {
          final loggedMeal = favorite.loggedMeal;
          return loggedMeal.toFavoriteCompanion().copyWith(
            id: Value(favorite.clientId),
            sourceMealId: const Value(null),
            createdAt: Value(
              iso8601StringToDateTime(favorite.favoriteAt) ?? DateTime.now(),
            ),
            lastUsedAt: Value(
              iso8601StringToDateTime(favorite.lastUsedAt) ?? DateTime.now(),
            ),
          );
        }).toList(),
      );
      batch.insert(
        userProfileTable,
        UserProfileTableCompanion(
          id: const Value(_userProfileId),
          dailyCalorieGoal: Value(goal),
        ),
      );
    });
  }

  // --- User Preferences Methods ---

  Future<UserPreferencesTableData> _getOrInitPreferences() async {
    final prefs =
        await (select(
          userPreferencesTable,
        )..where((tbl) => tbl.id.equals(_userPreferencesId))).getSingleOrNull();

    if (prefs == null) {
      final newPrefs = UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        theme: Value(ThemeMode.system.name),
      );
      await into(userPreferencesTable).insertOnConflictUpdate(newPrefs);
      return (select(userPreferencesTable)
        ..where((tbl) => tbl.id.equals(_userPreferencesId))).getSingle();
    }
    return prefs;
  }

  @override
  Future<String?> getLanguageCode() async {
    final prefs = await _getOrInitPreferences();
    return prefs.languageCode;
  }

  @override
  Future<void> setLanguageCode(String? code) async {
    await _getOrInitPreferences();
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        languageCode: Value(code),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<ThemeMode> getThemeMode() async {
    final prefs = await _getOrInitPreferences();
    final themeString = prefs.theme;
    if (themeString == null) return ThemeMode.system;
    return ThemeMode.values.firstWhere(
      (m) => m.name == themeString,
      orElse: () => ThemeMode.system,
    );
  }

  @override
  Future<void> setThemeMode(ThemeMode mode) async {
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        theme: Value(mode.name),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<bool> hasSeenFeedbackSheet() async {
    final prefs = await _getOrInitPreferences();
    return prefs.feedbackSheetShownAt != null;
  }

  @override
  Future<void> setFeedbackSheetShown() async {
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        feedbackSheetShownAt: Value(DateTime.now()),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<int?> getOnboardingStep() async {
    final prefs = await _getOrInitPreferences();
    return prefs.onboardingCurrentStep;
  }

  @override
  Future<void> setOnboardingStep(int step) async {
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        onboardingCurrentStep: Value(step),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<bool> hasCompletedOnboarding() async {
    final prefs = await _getOrInitPreferences();
    return prefs.onboardingCompletedAt != null;
  }

  @override
  Future<void> setOnboardingCompleted() async {
    await into(userPreferencesTable).insertOnConflictUpdate(
      UserPreferencesTableCompanion.insert(
        id: const Value(_userPreferencesId),
        onboardingCompletedAt: Value(DateTime.now()),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<LocalInferencePreferences> getLocalInferencePreferences() async {
    final prefs = await _getOrInitPreferences();
    return LocalInferencePreferences(
      enabled: prefs.localInferenceEnabled,
      acknowledgedPolicyVersion: prefs.localInferenceAcknowledgedPolicyVersion,
    );
  }

  @override
  Future<void> setLocalInferenceEnabled(bool enabled) async {
    await _getOrInitPreferences();
    await (update(userPreferencesTable)
      ..where((table) => table.id.equals(_userPreferencesId))).write(
      UserPreferencesTableCompanion(
        localInferenceEnabled: Value(enabled),
        updatedAt: Value(DateTime.now().toUtc()),
      ),
    );
  }

  @override
  Future<void> acknowledgeLocalInferencePolicy(String policyVersion) async {
    await _getOrInitPreferences();
    await (update(userPreferencesTable)
      ..where((table) => table.id.equals(_userPreferencesId))).write(
      UserPreferencesTableCompanion(
        localInferenceAcknowledgedPolicyVersion: Value(policyVersion),
        updatedAt: Value(DateTime.now().toUtc()),
      ),
    );
  }

  @override
  Future<int?> getDailyCalorieGoal() async {
    final setting =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    return setting?.dailyCalorieGoal;
  }

  @override
  Stream<int?> watchDailyCalorieGoal() {
    return (select(userProfileTable)..where(
      (tbl) => tbl.id.equals(_userProfileId),
    )).watchSingleOrNull().map((row) => row?.dailyCalorieGoal);
  }

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    final revision = const Uuid().v4();
    await into(userProfileTable).insertOnConflictUpdate(
      UserProfileTableCompanion.insert(
        id: const Value(_userProfileId),
        dailyCalorieGoal: Value(goal),
        updatedAt: Value(DateTime.now().toUtc()),
        needsRemoteSync: const Value(true),
        remoteSyncRevision: Value(revision),
      ),
    );
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForToday() {
    final now = DateTime.now();
    final startOfToday = DateTime(now.year, now.month, now.day);
    final endOfToday = DateTime(now.year, now.month, now.day + 1);

    return (select(mealInfoTable)
          ..where(
            (tbl) =>
                tbl.timestamp.isBiggerOrEqualValue(startOfToday) &
                tbl.timestamp.isSmallerThanValue(endOfToday),
          )
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.timestamp,
              mode: OrderingMode.desc,
            ),
            (tbl) => OrderingTerm(expression: tbl.id, mode: OrderingMode.desc),
          ]))
        .watch()
        .map((rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList());
  }

  @override
  Stream<List<LoggedMeal>> watchAllMealsForLast7Days() {
    final now = DateTime.now();
    final startOfSevenDaysAgo = DateTime(now.year, now.month, now.day - 6);

    return (select(mealInfoTable)..where(
      (tbl) => tbl.timestamp.isBiggerOrEqualValue(startOfSevenDaysAgo),
    )).watch().map(
      (rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList(),
    );
  }

  @override
  Future<void> logMeal(Meal mealInfo, {String? analysisId}) async {
    final normalizedAnalysisId = analysisId?.trim();
    final idempotencyKey =
        normalizedAnalysisId == null || normalizedAnalysisId.isEmpty
            ? null
            : normalizedAnalysisId;
    final companion = mealInfo.toCompanion(
      timestamp: DateTime.now(),
      analysisId: Value(idempotencyKey),
    );

    if (idempotencyKey == null) {
      await into(mealInfoTable).insert(companion);
      return;
    }

    // The unique index and INSERT OR IGNORE form one atomic idempotency
    // boundary across concurrent UI, watch, and retry deliveries.
    await into(
      mealInfoTable,
    ).insert(companion, mode: InsertMode.insertOrIgnore);
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) {
    return into(mealInfoTable).insertOnConflictUpdate(mealInfo.toCompanion());
  }

  @override
  Future<void> deleteMeal(int mealId) {
    return (delete(mealInfoTable)..where((tbl) => tbl.id.equals(mealId))).go();
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) async {
    final row =
        await (select(mealInfoTable)
          ..where((tbl) => tbl.id.equals(mealId))).getSingleOrNull();
    if (row == null) return null;
    return MealInfoMapper.fromRow(row);
  }

  @override
  Stream<List<FavoriteMeal>> watchAllFavoriteMeals() {
    return select(favoriteMealTable).watch().map(
      (rows) => rows.map((row) => FavoriteMealMapper.fromRow(row)).toList(),
    );
  }

  @override
  Stream<List<FavoriteMeal>> watchLastUsedFavoriteMeals() {
    return (select(favoriteMealTable)
          ..orderBy([
            (tbl) => OrderingTerm(
              expression: tbl.lastUsedAt,
              mode: OrderingMode.desc,
              nulls: NullsOrder.last,
            ),
            (tbl) => OrderingTerm(
              expression: tbl.createdAt,
              mode: OrderingMode.desc,
            ),
          ])
          ..limit(4))
        .watch()
        .map(
          (rows) => rows.map((row) => FavoriteMealMapper.fromRow(row)).toList(),
        );
  }

  @override
  Future<bool> isFavoriteMeal(int sourceMealId) async {
    final meal =
        await (select(favoriteMealTable)..where(
          (tbl) => tbl.sourceMealId.equals(sourceMealId),
        )).getSingleOrNull();
    return meal != null;
  }

  @override
  Future<void> addToFavorites(LoggedMeal mealInfo) async {
    final favorite = mealInfo.toFavoriteCompanion();
    await into(favoriteMealTable).insert(
      favorite,
      onConflict: DoUpdate(
        (_) => favorite,
        target: [favoriteMealTable.sourceMealId],
      ),
    );
  }

  @override
  Future<void> updateFavoriteMeal(int favoriteId, LoggedMeal mealInfo) {
    final changes = mealInfo.toFavoriteCompanion().copyWith(
      createdAt: const Value.absent(),
      lastUsedAt: const Value.absent(),
    );
    return (update(favoriteMealTable)
      ..where((tbl) => tbl.id.equals(favoriteId))).write(changes);
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int favoriteMealId) {
    return (update(favoriteMealTable)..where(
      (tbl) => tbl.id.equals(favoriteMealId),
    )).write(FavoriteMealTableCompanion(lastUsedAt: Value(DateTime.now())));
  }

  @override
  Future<void> removeFavoriteMeal(int favoriteId) {
    return (delete(favoriteMealTable)
      ..where((tbl) => tbl.id.equals(favoriteId))).go();
  }

  @override
  Future<void> removeFavoriteMealBySourceMealId(int sourceMealId) {
    return (delete(favoriteMealTable)
      ..where((tbl) => tbl.sourceMealId.equals(sourceMealId))).go();
  }

  @override
  Future<List<LoggedMeal>> paginatedMealsHistory({
    required int offset,
    int mealsPerPage = 30,
  }) {
    return (select(mealInfoTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.timestamp, mode: OrderingMode.desc),
            (t) => OrderingTerm(expression: t.id, mode: OrderingMode.desc),
          ])
          ..limit(mealsPerPage, offset: offset))
        .get()
        .then(
          (rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList(),
        );
  }

  @override
  Future<List<LoggedMeal>> getLatestMealsForFeedbackEligibility({
    int limit = 5,
  }) {
    return (select(mealInfoTable)
          ..orderBy([
            (t) =>
                OrderingTerm(expression: t.timestamp, mode: OrderingMode.desc),
          ])
          ..limit(limit))
        .get()
        .then(
          (rows) => rows.map((row) => MealInfoMapper.fromRow(row)).toList(),
        );
  }

  @override
  DataSourceType get dataSourceType => _dataSourceType;

  // User Profile Methods
  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    // Use upsert (insert or update) - always use id = 1 for single profile
    final revision = const Uuid().v4();
    await into(userProfileTable).insertOnConflictUpdate(
      UserProfileMapper.toDrift(profile).copyWith(
        id: const Value(_userProfileId),
        updatedAt: Value(DateTime.now().toUtc()),
        needsRemoteSync: const Value(true),
        remoteSyncRevision: Value(revision),
      ),
    );
  }

  @override
  Future<UserProfile?> getUserProfile() async {
    final result =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    if (result == null) return null;

    return UserProfileMapper.fromDrift(result);
  }

  @override
  Future<PendingProfileSync?> getPendingProfileSync() async {
    final row =
        await (select(userProfileTable)..where(
          (table) =>
              table.id.equals(_userProfileId) &
              table.needsRemoteSync.equals(true),
        )).getSingleOrNull();
    if (row == null || row.remoteSyncRevision == null) return null;
    return PendingProfileSync(
      profile: UserProfileMapper.fromDrift(row),
      revision: row.remoteSyncRevision!,
    );
  }

  @override
  Future<bool> markProfileSynced(String revision) async {
    final updated = await (update(userProfileTable)..where(
      (table) =>
          table.id.equals(_userProfileId) &
          table.needsRemoteSync.equals(true) &
          table.remoteSyncRevision.equals(revision),
    )).write(const UserProfileTableCompanion(needsRemoteSync: Value(false)));
    return updated == 1;
  }

  @override
  Future<bool> isProfileComplete() async {
    final result =
        await (select(userProfileTable)
          ..where((tbl) => tbl.id.equals(_userProfileId))).getSingleOrNull();
    if (result == null) return false;

    return result.height != null &&
        result.weight != null &&
        result.gender != null &&
        result.dateOfBirth != null &&
        result.weightGoal != null &&
        result.activityLevel != null;
  }

  @override
  Future<void> clearUserPreferences() async {
    await (delete(userPreferencesTable)
      ..where((tbl) => tbl.id.equals(_userPreferencesId))).go();
  }

  @override
  Future<void> clearUserProfile() async {
    await (delete(userProfileTable)
      ..where((tbl) => tbl.id.equals(_userProfileId))).go();
  }

  @override
  Future<void> clearAllData() async {
    await transaction(() async {
      await delete(mealInfoTable).go();
      await delete(userProfileTable).go();
      await delete(userPreferencesTable).go();
      await delete(favoriteMealTable).go();
    });
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app_db.sqlite'));
    return NativeDatabase(file);
  });
}
