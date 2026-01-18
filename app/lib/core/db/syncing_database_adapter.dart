import 'dart:async';

import 'package:calorify/core/db/database_interface.dart';
import 'package:calorify/core/services/sync_service.dart';
import 'package:models/models.dart';
import 'package:flutter/material.dart' show ThemeMode;

class SyncingDatabaseAdapter implements DatabaseInterface {
  SyncingDatabaseAdapter(this._delegate);

  final DatabaseInterface _delegate;

  @override
  DataSourceType get dataSourceType => _delegate.dataSourceType;

  @override
  Future<int?> getDailyCalorieGoal() => _delegate.getDailyCalorieGoal();

  @override
  Stream<int?> watchDailyCalorieGoal() => _delegate.watchDailyCalorieGoal();

  @override
  Future<void> setDailyCalorieGoal(int goal) async {
    await _delegate.setDailyCalorieGoal(goal);
    unawaited(_syncProfile());
  }

  @override
  Future<void> logMeal(MealInfo mealInfo) async {
    final normalized = _ensureClientId(mealInfo);
    await _delegate.logMeal(normalized);
    unawaited(SyncService.instance.enqueueMealUpsert(normalized));
  }

  @override
  Future<void> upsertMeal(MealInfo mealInfo) async {
    final normalized = _ensureClientId(mealInfo);
    await _delegate.upsertMeal(normalized);
    unawaited(SyncService.instance.enqueueMealUpsert(normalized));
  }

  @override
  Future<void> deleteMeal(int mealId) async {
    final existing = await _delegate.getMealById(mealId);
    await _delegate.deleteMeal(mealId);
    if (existing != null) {
      unawaited(
        SyncService.instance.enqueueMealDelete(
          clientId: existing.clientIdValue,
          localId: existing.localIdValue,
        ),
      );
    }
  }

  @override
  Future<MealInfo?> getMealById(int mealId) {
    return _delegate.getMealById(mealId);
  }

  @override
  Future<bool> isFavoriteMeal(int mealId) => _delegate.isFavoriteMeal(mealId);

  @override
  Future<void> addToFavorites(MealInfo mealInfo) {
    return _delegate.addToFavorites(mealInfo);
  }

  @override
  Future<void> removeFavoriteMeal(int mealId) {
    return _delegate.removeFavoriteMeal(mealId);
  }

  @override
  Future<void> updateFavoriteLastUsedAt(int mealId) {
    return _delegate.updateFavoriteLastUsedAt(mealId);
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForToday() {
    return _delegate.watchAllMealsForToday();
  }

  @override
  Stream<List<MealInfo>> watchAllMealsForLast7Days() {
    return _delegate.watchAllMealsForLast7Days();
  }

  @override
  Stream<List<MealInfo>> watchAllFavoriteMeals() {
    return _delegate.watchAllFavoriteMeals();
  }

  @override
  Stream<List<MealInfo>> watchLastUsedFavoriteMeals() {
    return _delegate.watchLastUsedFavoriteMeals();
  }

  @override
  Future<List<MealInfo>> paginatedMealsHistory({required int offset}) {
    return _delegate.paginatedMealsHistory(offset: offset);
  }

  @override
  Future<void> saveUserProfile(UserProfile profile) async {
    await _delegate.saveUserProfile(profile);
    unawaited(SyncService.instance.enqueueUserProfile(profile));
  }

  @override
  Future<UserProfile?> getUserProfile() => _delegate.getUserProfile();

  @override
  Future<bool> isProfileComplete() => _delegate.isProfileComplete();

  @override
  Future<ThemeMode> getThemeMode() => _delegate.getThemeMode();

  @override
  Future<void> setThemeMode(ThemeMode mode) => _delegate.setThemeMode(mode);

  @override
  Future<String?> getLanguageCode() => _delegate.getLanguageCode();

  @override
  Future<void> setLanguageCode(String? code) => _delegate.setLanguageCode(code);

  @override
  Future<void> clearAllData() => _delegate.clearAllData();

  MealInfo _ensureClientId(MealInfo mealInfo) {
    if (mealInfo.hasClientId()) return mealInfo;
    final clientId = SyncService.instance.generateClientId();
    final copy = mealInfo.deepCopy();
    copy.clientId = clientId;
    return copy;
  }

  Future<void> _syncProfile() async {
    final profile = await _delegate.getUserProfile();
    if (profile != null) {
      await SyncService.instance.enqueueUserProfile(profile);
    }
  }
}
