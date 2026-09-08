import 'dart:convert';
import 'dart:developer' as developer;
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
import 'package:calorify/core/db/tables/health_connect_sync_queue.dart';
import 'package:calorify/core/db/tables/meal_info.dart';
import 'package:calorify/core/db/tables/meal_log_sync_queue.dart';
import 'package:calorify/core/db/tables/local_nutrition_cache.dart';
import 'package:calorify/core/db/tables/local_ai_summary.dart';
import 'package:calorify/core/ai_summary/ai_summary_models.dart';
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
    LocalNutritionCacheTable,
    HealthConnectSyncQueueTable,
    MealLogSyncQueueTable,
    LocalAiSummaryTable,
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

  // The schema was squashed into this baseline on 2026-09-09 by collapsing the
  // previous 29-step migration ladder. Databases from before the squash are
  // wiped and rebuilt; see the onUpgrade handler below.
  @override
  int get schemaVersion => 1;

  @override
  MigrationStrategy get migration {
    return MigrationStrategy(
      onCreate: (m) async {
        await m.createAll();
        if (_seedDevelopmentData) await _seedMockData();
      },
      onUpgrade: (m, from, to) async {
        // The pre-squash migration ladder was collapsed into the v1
        // baseline. A database from any earlier schema version is wiped and
        // rebuilt from the baseline; its local history is not carried over.
        // A database already at version 1 is either a baseline database or a
        // pre-release database from before the ladder's first step existed.
        if (from > 1) {
          await _dropAllEntities();
          await m.createAll();
        }
      },
    );
  }

  /// Drops every table, view, trigger, and index in the database file,
  /// including entities that are no longer part of the schema.
  Future<void> _dropAllEntities() async {
    final entities =
        await customSelect(
          'SELECT type, name FROM sqlite_master '
          "WHERE name NOT LIKE 'sqlite_%' AND name != 'android_metadata'",
        ).get();
    for (final entity in entities) {
      final type = entity.read<String>('type');
      final name = entity.read<String>('name');
      if (type == 'table') {
        await customStatement('DROP TABLE IF EXISTS "$name"');
      } else if (type == 'view') {
        await customStatement('DROP VIEW IF EXISTS "$name"');
      } else if (type == 'trigger') {
        await customStatement('DROP TRIGGER IF EXISTS "$name"');
      } else if (type == 'index') {
        await customStatement('DROP INDEX IF EXISTS "$name"');
      }
    }
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
  Future<bool?> getHealthConnectNutritionSyncEnabled() async {
    final preferences =
        await (select(userPreferencesTable)..where(
          (table) => table.id.equals(_userPreferencesId),
        )).getSingleOrNull();
    return preferences?.healthConnectNutritionSyncEnabled;
  }

  Future<bool> _isHealthConnectNutritionSyncEnabled() async {
    return await getHealthConnectNutritionSyncEnabled() ?? false;
  }

  @override
  Future<void> setHealthConnectNutritionSyncEnabled(bool enabled) async {
    await _getOrInitPreferences();
    await (update(userPreferencesTable)
      ..where((table) => table.id.equals(_userPreferencesId))).write(
      UserPreferencesTableCompanion(
        healthConnectNutritionSyncEnabled: Value(enabled),
        updatedAt: Value(DateTime.now().toUtc()),
      ),
    );
  }

  @override
  Future<bool> isHealthConnectPromptDismissed() async {
    final preferences = await _getOrInitPreferences();
    return preferences.healthConnectPromptDismissed;
  }

  @override
  Future<void> setHealthConnectPromptDismissed() async {
    await _getOrInitPreferences();
    await (update(userPreferencesTable)
      ..where((table) => table.id.equals(_userPreferencesId))).write(
      UserPreferencesTableCompanion(
        healthConnectPromptDismissed: const Value(true),
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
  Future<List<LoggedMeal>> getMealsBetween(
    DateTime startInclusive,
    DateTime endExclusive,
  ) {
    return (select(mealInfoTable)
          ..where(
            (table) =>
                table.timestamp.isBiggerOrEqualValue(startInclusive) &
                table.timestamp.isSmallerThanValue(endExclusive),
          )
          ..orderBy([
            (table) => OrderingTerm(expression: table.timestamp),
            (table) => OrderingTerm(expression: table.id),
          ]))
        .get()
        .then((rows) => rows.map(MealInfoMapper.fromRow).toList());
  }

  LocalAiSummary _localSummaryFromRow(LocalAiSummaryTableData row) =>
      LocalAiSummary(
        summaryLocalDate: row.summaryLocalDate,
        response:
            AiMealSummaryResponse()
              ..mergeFromProto3Json(jsonDecode(row.responseJson)),
        resolvedLocale: row.resolvedLocale,
      );

  @override
  Future<LocalAiSummary?> getLocalAiSummary(String summaryLocalDate) async {
    final row =
        await (select(localAiSummaryTable)..where(
          (table) => table.summaryLocalDate.equals(summaryLocalDate),
        )).getSingleOrNull();
    return row == null ? null : _localSummaryFromRow(row);
  }

  @override
  Stream<LocalAiSummary?> watchLocalAiSummary(String summaryLocalDate) {
    return (select(localAiSummaryTable)
          ..where((table) => table.summaryLocalDate.equals(summaryLocalDate)))
        .watchSingleOrNull()
        .map((row) => row == null ? null : _localSummaryFromRow(row));
  }

  @override
  Future<void> saveLocalAiSummary(LocalAiSummary summary) {
    return into(localAiSummaryTable).insertOnConflictUpdate(
      LocalAiSummaryTableCompanion.insert(
        summaryLocalDate: summary.summaryLocalDate,
        responseJson: jsonEncode(summary.response.toProto3Json()),
        resolvedLocale: summary.resolvedLocale,
      ),
    );
  }

  @override
  Future<void> logMeal(
    Meal mealInfo, {
    String? analysisId,
    PipelineResultData? analysisSnapshot,
    DateTime? loggedAt,
  }) async {
    final normalizedAnalysisId = analysisId?.trim();
    final idempotencyKey =
        normalizedAnalysisId == null || normalizedAnalysisId.isEmpty
            ? null
            : normalizedAnalysisId;
    final timestamp = loggedAt ?? DateTime.now();
    final syncAnalysisLog = _isRemoteMealAnalysis(
      idempotencyKey,
      analysisSnapshot,
    );

    try {
      await transaction(() async {
        if (idempotencyKey != null) {
          final existing =
              await (select(mealInfoTable)..where(
                (table) => table.analysisId.equals(idempotencyKey),
              )).getSingleOrNull();
          if (existing != null) return;
        }

        final syncEnabled = await _isHealthConnectNutritionSyncEnabled();
        final recordId =
            syncEnabled ? 'calorify-meal-${const Uuid().v4()}' : null;
        final companion = mealInfo.toCompanion(
          timestamp: timestamp,
          analysisId: Value(idempotencyKey),
          analysisSnapshotJson: Value(
            analysisSnapshot == null
                ? null
                : jsonEncode(analysisSnapshot.toProto3Json()),
          ),
          healthConnectRecordId:
              recordId == null ? const Value.absent() : Value(recordId),
          healthConnectRecordVersion:
              recordId == null ? const Value.absent() : const Value(1),
          mealLogSyncVersion:
              syncAnalysisLog ? const Value(1) : const Value.absent(),
        );

        if (idempotencyKey == null) {
          await into(mealInfoTable).insert(companion);
        } else {
          // The unique index remains the final atomic boundary if two callers
          // race before either transaction observes the other row.
          final inserted = await into(
            mealInfoTable,
          ).insert(companion, mode: InsertMode.insertOrIgnore);
          if (inserted <= 0) return;
        }

        if (recordId != null) {
          await _enqueueHealthConnectUpsert(
            mealInfo,
            loggedAt: timestamp,
            clientRecordId: recordId,
            clientRecordVersion: 1,
          );
        }
        if (syncAnalysisLog) {
          await _enqueueMealLogSync(
            analysisId: idempotencyKey!,
            operation: MealLogSyncOperation.upsert,
            version: 1,
            meal: mealInfo,
            loggedAt: timestamp,
          );
        }
      });
    } on Object catch (error, stackTrace) {
      developer.log(
        'Failed to log meal to the local database',
        name: 'AppDatabase',
        error: error,
        stackTrace: stackTrace,
      );
      rethrow;
    }
  }

  @override
  Future<void> upsertMeal(LoggedMeal mealInfo) async {
    await transaction(() async {
      final existing =
          mealInfo.hasClientId()
              ? await (select(mealInfoTable)..where(
                (table) => table.id.equals(mealInfo.clientId),
              )).getSingleOrNull()
              : null;
      final syncEnabled = await _isHealthConnectNutritionSyncEnabled();
      final loggedAt =
          mealInfo.hasCreatedAt()
              ? iso8601StringToDateTime(mealInfo.createdAt) ?? DateTime.now()
              : DateTime.now();
      final syncAnalysisLog = _isRemoteMealAnalysisRow(existing);
      final mealLogSyncVersion =
          syncAnalysisLog ? existing!.mealLogSyncVersion + 1 : 0;

      if (!syncEnabled) {
        await into(mealInfoTable).insertOnConflictUpdate(
          mealInfo.toCompanion().copyWith(
            mealLogSyncVersion:
                syncAnalysisLog
                    ? Value(mealLogSyncVersion)
                    : const Value.absent(),
          ),
        );
        if (syncAnalysisLog) {
          await _enqueueMealLogSync(
            analysisId: existing!.analysisId!,
            operation: MealLogSyncOperation.upsert,
            version: mealLogSyncVersion,
            meal: mealInfo.meal,
            loggedAt: loggedAt,
          );
        }
        return;
      }

      final recordId =
          existing?.healthConnectRecordId ??
          'calorify-meal-${const Uuid().v4()}';
      final recordVersion =
          existing == null ? 1 : existing.healthConnectRecordVersion + 1;
      await into(mealInfoTable).insertOnConflictUpdate(
        mealInfo.toCompanion().copyWith(
          healthConnectRecordId: Value(recordId),
          healthConnectRecordVersion: Value(recordVersion),
          mealLogSyncVersion:
              syncAnalysisLog
                  ? Value(mealLogSyncVersion)
                  : const Value.absent(),
        ),
      );
      await _enqueueHealthConnectUpsert(
        mealInfo.meal,
        loggedAt: loggedAt,
        clientRecordId: recordId,
        clientRecordVersion: recordVersion,
      );
      if (syncAnalysisLog) {
        await _enqueueMealLogSync(
          analysisId: existing!.analysisId!,
          operation: MealLogSyncOperation.upsert,
          version: mealLogSyncVersion,
          meal: mealInfo.meal,
          loggedAt: loggedAt,
        );
      }
    });
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    await transaction(() async {
      final existing =
          await (select(mealInfoTable)
            ..where((table) => table.id.equals(mealId))).getSingleOrNull();
      if (existing?.healthConnectRecordId != null) {
        await _enqueueHealthConnectDelete(
          clientRecordId: existing!.healthConnectRecordId!,
          clientRecordVersion: existing.healthConnectRecordVersion + 1,
        );
      }
      if (_isRemoteMealAnalysisRow(existing)) {
        await _enqueueMealLogSync(
          analysisId: existing!.analysisId!,
          operation: MealLogSyncOperation.delete,
          version: existing.mealLogSyncVersion + 1,
        );
      }
      await (delete(mealInfoTable)
        ..where((table) => table.id.equals(mealId))).go();
    });
  }

  @override
  Future<LoggedMeal?> getMealById(int mealId) async {
    final row =
        await (select(mealInfoTable)
          ..where((tbl) => tbl.id.equals(mealId))).getSingleOrNull();
    if (row == null) return null;
    return MealInfoMapper.fromRow(row);
  }

  static final RegExp _uuidPattern = RegExp(
    r'^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[1-5][0-9a-fA-F]{3}-[89abAB][0-9a-fA-F]{3}-[0-9a-fA-F]{12}$',
  );

  bool _isRemoteMealAnalysis(String? analysisId, PipelineResultData? snapshot) {
    if (analysisId == null || !_uuidPattern.hasMatch(analysisId)) return false;
    return !(snapshot?.hasReceipt() == true &&
        snapshot!.receipt.calculationOrigin ==
            CalculationOrigin.CALCULATION_ORIGIN_LOCAL_DETERMINISTIC);
  }

  bool _isRemoteMealAnalysisRow(MealInfoTableData? row) {
    if (row == null || row.analysisId == null) return false;
    PipelineResultData? snapshot;
    if (row.analysisSnapshotJson != null) {
      try {
        final json = jsonDecode(row.analysisSnapshotJson!);
        snapshot =
            PipelineResultData()
              ..mergeFromProto3Json(Map<String, dynamic>.from(json as Map));
      } on Object {
        // A valid remote analysis ID remains the authoritative ownership key.
      }
    }
    return _isRemoteMealAnalysis(row.analysisId, snapshot);
  }

  @override
  Future<void> preparePendingMealLogSyncs() async {
    await transaction(() async {
      final rows =
          await (select(mealInfoTable)
            ..where((table) => table.analysisId.isNotNull())).get();
      for (final row in rows) {
        if (!_isRemoteMealAnalysisRow(row)) continue;
        final version = row.mealLogSyncVersion > 0 ? row.mealLogSyncVersion : 1;
        if (row.mealLogSyncVersion == 0) {
          await (update(mealInfoTable)..where(
            (table) => table.id.equals(row.id),
          )).write(MealInfoTableCompanion(mealLogSyncVersion: Value(version)));
        }
        if (version <= row.mealLogSyncedVersion) continue;
        await _enqueueMealLogSync(
          analysisId: row.analysisId!,
          operation: MealLogSyncOperation.upsert,
          version: version,
          meal: MealInfoMapper.fromRow(row).meal,
          loggedAt: row.timestamp,
        );
      }
    });
  }

  @override
  Future<List<PendingMealLogSync>> getPendingMealLogSyncs({
    int limit = 50,
  }) async {
    final rows =
        await (select(mealLogSyncQueueTable)
              ..orderBy([(table) => OrderingTerm.asc(table.updatedAt)])
              ..limit(limit))
            .get();
    return rows
        .map((row) {
          Meal? meal;
          if (row.mealJson != null) {
            final json = jsonDecode(row.mealJson!);
            meal =
                Meal()
                  ..mergeFromProto3Json(Map<String, dynamic>.from(json as Map));
          }
          return PendingMealLogSync(
            id: row.id,
            analysisId: row.analysisId,
            operation: MealLogSyncOperation.values.byName(row.operation),
            version: row.version,
            attempts: row.attempts,
            meal: meal,
            loggedAt: row.loggedAt,
          );
        })
        .toList(growable: false);
  }

  @override
  Future<void> markMealLogSyncCompleted(int id, int version) async {
    await transaction(() async {
      final operation =
          await (select(mealLogSyncQueueTable)..where(
            (table) => table.id.equals(id) & table.version.equals(version),
          )).getSingleOrNull();
      if (operation == null) return;
      await (delete(mealLogSyncQueueTable)..where(
        (table) => table.id.equals(id) & table.version.equals(version),
      )).go();
      if (operation.operation == MealLogSyncOperation.upsert.name) {
        await (update(mealInfoTable)..where(
          (table) =>
              table.analysisId.equals(operation.analysisId) &
              table.mealLogSyncVersion.equals(version),
        )).write(MealInfoTableCompanion(mealLogSyncedVersion: Value(version)));
      }
    });
  }

  @override
  Future<void> markMealLogSyncFailed(int id, int version, Object error) async {
    final row =
        await (select(mealLogSyncQueueTable)..where(
          (table) => table.id.equals(id) & table.version.equals(version),
        )).getSingleOrNull();
    if (row == null) return;
    final message = error.toString();
    await (update(mealLogSyncQueueTable)..where(
      (table) => table.id.equals(id) & table.version.equals(version),
    )).write(
      MealLogSyncQueueTableCompanion(
        attempts: Value(row.attempts + 1),
        lastError: Value(
          message.length <= 500 ? message : message.substring(0, 500),
        ),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  Future<void> _enqueueMealLogSync({
    required String analysisId,
    required MealLogSyncOperation operation,
    required int version,
    Meal? meal,
    DateTime? loggedAt,
  }) async {
    final values = MealLogSyncQueueTableCompanion.insert(
      analysisId: analysisId,
      operation: operation.name,
      version: version,
      mealJson: Value(meal == null ? null : jsonEncode(meal.toProto3Json())),
      loggedAt: Value(loggedAt),
      attempts: const Value(0),
      lastError: const Value(null),
      updatedAt: Value(DateTime.now()),
    );
    await into(mealLogSyncQueueTable).insert(
      values,
      onConflict: DoUpdate(
        (_) => MealLogSyncQueueTableCompanion(
          operation: Value(operation.name),
          version: Value(version),
          mealJson: Value(
            meal == null ? null : jsonEncode(meal.toProto3Json()),
          ),
          loggedAt: Value(loggedAt),
          attempts: const Value(0),
          lastError: const Value(null),
          updatedAt: Value(DateTime.now()),
        ),
        target: [mealLogSyncQueueTable.analysisId],
      ),
    );
  }

  @override
  Future<List<PendingHealthConnectSync>> getPendingHealthConnectSyncs({
    int limit = 50,
  }) async {
    final rows =
        await (select(healthConnectSyncQueueTable)
              ..orderBy([(table) => OrderingTerm.asc(table.updatedAt)])
              ..limit(limit))
            .get();
    return rows
        .map((row) {
          Meal? meal;
          if (row.mealJson != null) {
            final json = jsonDecode(row.mealJson!);
            meal =
                Meal()
                  ..mergeFromProto3Json(Map<String, dynamic>.from(json as Map));
          }
          return PendingHealthConnectSync(
            id: row.id,
            operation: HealthConnectSyncOperation.values.byName(row.operation),
            clientRecordId: row.clientRecordId,
            clientRecordVersion: row.clientRecordVersion,
            attempts: row.attempts,
            meal: meal,
            loggedAt: row.loggedAt,
          );
        })
        .toList(growable: false);
  }

  @override
  Future<void> markHealthConnectSyncCompleted(
    int id,
    int clientRecordVersion,
  ) async {
    await (delete(healthConnectSyncQueueTable)..where(
      (table) =>
          table.id.equals(id) &
          table.clientRecordVersion.equals(clientRecordVersion),
    )).go();
  }

  @override
  Future<void> markHealthConnectSyncFailed(
    int id,
    int clientRecordVersion,
    Object error,
  ) async {
    final row =
        await (select(healthConnectSyncQueueTable)..where(
          (table) =>
              table.id.equals(id) &
              table.clientRecordVersion.equals(clientRecordVersion),
        )).getSingleOrNull();
    if (row == null) return;
    final message = error.toString();
    await (update(healthConnectSyncQueueTable)..where(
      (table) =>
          table.id.equals(id) &
          table.clientRecordVersion.equals(clientRecordVersion),
    )).write(
      HealthConnectSyncQueueTableCompanion(
        attempts: Value(row.attempts + 1),
        lastError: Value(
          message.length <= 500 ? message : message.substring(0, 500),
        ),
        updatedAt: Value(DateTime.now()),
      ),
    );
  }

  @override
  Future<int> countPendingHealthConnectDeletes() async {
    final count = healthConnectSyncQueueTable.id.count();
    final query =
        selectOnly(healthConnectSyncQueueTable)
          ..addColumns([count])
          ..where(
            healthConnectSyncQueueTable.operation.equals(
              HealthConnectSyncOperation.delete.name,
            ),
          );
    return (await query.getSingle()).read(count) ?? 0;
  }

  @override
  Future<void> enqueueAllHealthConnectDeletes() async {
    await transaction(() async {
      final meals =
          await (select(mealInfoTable)
            ..where((table) => table.healthConnectRecordId.isNotNull())).get();
      for (final meal in meals) {
        await _enqueueHealthConnectDelete(
          clientRecordId: meal.healthConnectRecordId!,
          clientRecordVersion: meal.healthConnectRecordVersion + 1,
        );
      }
    });
  }

  @override
  Future<void> enqueueLinkedHealthConnectUpserts() async {
    await transaction(() async {
      final meals =
          await (select(mealInfoTable)
            ..where((table) => table.healthConnectRecordId.isNotNull())).get();
      for (final row in meals) {
        final nextVersion = row.healthConnectRecordVersion + 1;
        await (update(mealInfoTable)
          ..where((table) => table.id.equals(row.id))).write(
          MealInfoTableCompanion(
            healthConnectRecordVersion: Value(nextVersion),
          ),
        );
        await _enqueueHealthConnectUpsert(
          MealInfoMapper.fromRow(row).meal,
          loggedAt: row.timestamp,
          clientRecordId: row.healthConnectRecordId!,
          clientRecordVersion: nextVersion,
        );
      }
    });
  }

  @override
  Future<void> discardPendingHealthConnectUpserts() async {
    await (delete(healthConnectSyncQueueTable)..where(
      (table) => table.operation.equals(HealthConnectSyncOperation.upsert.name),
    )).go();
  }

  Future<void> _enqueueHealthConnectUpsert(
    Meal meal, {
    required DateTime loggedAt,
    required String clientRecordId,
    required int clientRecordVersion,
  }) {
    return _enqueueHealthConnectOperation(
      operation: HealthConnectSyncOperation.upsert,
      clientRecordId: clientRecordId,
      clientRecordVersion: clientRecordVersion,
      mealJson: jsonEncode(meal.toProto3Json()),
      loggedAt: loggedAt,
    );
  }

  Future<void> _enqueueHealthConnectDelete({
    required String clientRecordId,
    required int clientRecordVersion,
  }) {
    return _enqueueHealthConnectOperation(
      operation: HealthConnectSyncOperation.delete,
      clientRecordId: clientRecordId,
      clientRecordVersion: clientRecordVersion,
    );
  }

  Future<void> _enqueueHealthConnectOperation({
    required HealthConnectSyncOperation operation,
    required String clientRecordId,
    required int clientRecordVersion,
    String? mealJson,
    DateTime? loggedAt,
  }) async {
    final values = HealthConnectSyncQueueTableCompanion.insert(
      operation: operation.name,
      clientRecordId: clientRecordId,
      clientRecordVersion: clientRecordVersion,
      mealJson: Value(mealJson),
      loggedAt: Value(loggedAt),
      attempts: const Value(0),
      lastError: const Value(null),
      updatedAt: Value(DateTime.now()),
    );
    await into(healthConnectSyncQueueTable).insert(
      values,
      onConflict: DoUpdate(
        (_) => HealthConnectSyncQueueTableCompanion(
          operation: Value(operation.name),
          clientRecordVersion: Value(clientRecordVersion),
          mealJson: Value(mealJson),
          loggedAt: Value(loggedAt),
          attempts: const Value(0),
          lastError: const Value(null),
          updatedAt: Value(DateTime.now()),
        ),
        target: [healthConnectSyncQueueTable.clientRecordId],
      ),
    );
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
      await delete(localNutritionCacheTable).go();
      await delete(healthConnectSyncQueueTable).go();
      await delete(mealLogSyncQueueTable).go();
      await delete(localAiSummaryTable).go();
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
