import 'dart:async';

import 'package:calorify/core/ai_summary/ai_summary_models.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';

class AiSummaryAttemptContext {
  const AiSummaryAttemptContext({
    required this.now,
    required this.timezone,
    required this.locale,
  });

  final DateTime now;
  final String timezone;
  final String locale;

  String get localDate => _date(now);
  DateTime get startOfToday => DateTime(now.year, now.month, now.day);
  DateTime get startOfWindow => DateTime(now.year, now.month, now.day - 7);

  bool sameAs(AiSummaryAttemptContext other) =>
      localDate == other.localDate &&
      timezone == other.timezone &&
      locale == other.locale;
}

typedef AiSummaryContextLoader = Future<AiSummaryAttemptContext> Function();

class AiSummaryCoordinator {
  AiSummaryCoordinator({
    required DatabaseInterface database,
    required AiSummaryGenerator generator,
    AiSummaryContextLoader? contextLoader,
  }) : _database = database,
       _generator = generator,
       _contextLoader = contextLoader ?? _defaultContext;

  final DatabaseInterface _database;
  final AiSummaryGenerator _generator;
  final AiSummaryContextLoader _contextLoader;
  Future<void>? _running;
  DateTime? _retryAfter;

  Future<void> catchUp() =>
      _running ??= _catchUp().whenComplete(() {
        _running = null;
      });

  Future<void> _catchUp() async {
    try {
      if (_retryAfter?.isAfter(DateTime.now()) ?? false) return;
      await _attempt(await _contextLoader(), canRebuild: true);
    } on Object {
      _retryAfter = DateTime.now().add(const Duration(minutes: 15));
    }
  }

  Future<void> _attempt(
    AiSummaryAttemptContext context, {
    required bool canRebuild,
  }) async {
    if (await _database.getLocalAiSummary(context.localDate) != null) return;
    final meals = await _database.getMealsBetween(
      context.startOfWindow,
      context.startOfToday,
    );
    if (meals.length > 100 || !_eligible(meals, context.startOfToday)) return;
    final profile = await _database.getUserProfile();
    final snapshot = _snapshot(context, meals, profile);
    final current = await _contextLoader();
    if (!context.sameAs(current)) {
      if (canRebuild) await _attempt(current, canRebuild: false);
      return;
    }
    try {
      final result = await _generator.generate(snapshot);
      await _database.saveLocalAiSummary(
        LocalAiSummary(
          summaryLocalDate: context.localDate,
          response: result.response,
          resolvedLocale: result.resolvedLocale,
        ),
      );
      _retryAfter = null;
    } on AiSummaryGeneratorUnavailable {
      return;
    } on AiSummaryRetryException catch (error) {
      if (error.dateChanged && canRebuild) {
        await _attempt(await _contextLoader(), canRebuild: false);
        return;
      }
      _retryAfter = DateTime.now().add(
        error.retryAfter ?? const Duration(minutes: 15),
      );
    } on Object {
      _retryAfter = DateTime.now().add(const Duration(minutes: 15));
    }
  }

  static AiSummarySnapshot _snapshot(
    AiSummaryAttemptContext context,
    List<LoggedMeal> meals,
    UserProfile? profile,
  ) {
    final snapshotMeals =
        meals.map((logged) {
          final meal = logged.meal;
          if (!logged.hasCreatedAt() ||
              !meal.hasMacros() ||
              meal.type == MealType.UNKNOWN ||
              meal.name.trim().isEmpty) {
            throw const FormatException('Invalid saved meal for AI summary');
          }
          final macros = meal.macros;
          final nutrients = [
            macros.calories,
            macros.protein,
            macros.carbs,
            macros.fat,
            macros.fiber,
          ];
          if (nutrients.any((value) => value < 0)) {
            throw const FormatException('Invalid saved meal nutrients');
          }
          return AiSummaryMealSnapshot(
            loggedAt: DateTime.parse(logged.createdAt),
            name: meal.name.trim(),
            mealType: meal.type.name,
            calories: macros.calories,
            protein: macros.protein,
            carbs: macros.carbs,
            fat: macros.fat,
            fiber: macros.fiber,
          );
        }).toList();
    final contextValues = <String, Object>{};
    if (profile != null) {
      if (profile.hasWeightGoal()) {
        contextValues['weightGoal'] = profile.weightGoal.name;
      }
      if (profile.hasActivityLevel()) {
        contextValues['activityLevel'] = profile.activityLevel.name;
      }
      if (profile.hasDailyCalorieGoal()) {
        contextValues['dailyCalorieGoal'] = profile.dailyCalorieGoal;
      }
    }
    return AiSummarySnapshot(
      summaryLocalDate: context.localDate,
      timezone: context.timezone,
      locale: context.locale,
      meals: snapshotMeals,
      context: contextValues,
    );
  }

  static bool _eligible(List<LoggedMeal> meals, DateTime today) {
    var yesterday = 0;
    var lastFour = 0;
    for (final meal in meals) {
      if (!meal.hasCreatedAt()) continue;
      final loggedAt = DateTime.parse(meal.createdAt).toLocal();
      final day = DateTime(loggedAt.year, loggedAt.month, loggedAt.day);
      final difference =
          DateTime.utc(
            today.year,
            today.month,
            today.day,
          ).difference(DateTime.utc(day.year, day.month, day.day)).inDays;
      if (difference == 1) yesterday++;
      if (difference >= 1 && difference <= 4) lastFour++;
    }
    return yesterday >= 2 || lastFour >= 3;
  }

  static Future<AiSummaryAttemptContext> _defaultContext() async {
    final zone = await FlutterTimezone.getLocalTimezone();
    return AiSummaryAttemptContext(
      now: DateTime.now(),
      timezone: zone.identifier,
      locale: LocaleSettings.currentLocale.flutterLocale.toLanguageTag(),
    );
  }
}

String _date(DateTime value) =>
    '${value.year.toString().padLeft(4, '0')}-'
    '${value.month.toString().padLeft(2, '0')}-'
    '${value.day.toString().padLeft(2, '0')}';
