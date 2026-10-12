import 'dart:async';

import 'package:calorify/core/ai_summary/ai_summary_coordinator.dart';
import 'package:calorify/core/ai_summary/ai_summary_models.dart';
import 'package:calorify/core/db/database_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';

class _Database extends Mock implements DatabaseInterface {}

class _Generator implements AiSummaryGenerator {
  int calls = 0;
  AiSummarySnapshot? snapshot;
  Completer<void>? gate;

  @override
  Future<AiSummaryGenerationResult> generate(AiSummarySnapshot value) async {
    calls++;
    snapshot = value;
    await gate?.future;
    return AiSummaryGenerationResult(
      response: AiMealSummaryResponse(
        summary: 'Summary',
        generatedAt: '2026-08-25T10:00:00Z',
        mealCount: value.meals.length,
        macroBalanceScore: 75,
        trend: AiMealSummaryTrend.UNSPECIFIED,
      ),
      resolvedLocale: value.locale,
    );
  }
}

LoggedMeal _meal(String at, {String name = 'Dal'}) => LoggedMeal(
  clientId: 99,
  createdAt: at,
  metadata: MealMetadata(imageUrl: 'private-image'),
  meal: Meal(
    name: name,
    quantity: 'secret quantity',
    type: MealType.LUNCH,
    macros: MealMacro(calories: 400, protein: 20, carbs: 50, fat: 10, fiber: 8),
  ),
);

void main() {
  late _Database database;
  late _Generator generator;
  final context = AiSummaryAttemptContext(
    now: DateTime(2026, 8, 25, 9),
    timezone: 'Asia/Kolkata',
    locale: 'hi',
  );

  setUpAll(() {
    registerFallbackValue(
      LocalAiSummary(
        summaryLocalDate: 'fallback',
        resolvedLocale: 'en',
        response: AiMealSummaryResponse(mealCount: 0, macroBalanceScore: 0),
      ),
    );
  });

  setUp(() {
    database = _Database();
    generator = _Generator();
    when(() => database.getLocalAiSummary(any())).thenAnswer((_) async => null);
    when(() => database.getUserProfile()).thenAnswer((_) async => null);
    when(() => database.saveLocalAiSummary(any())).thenAnswer((_) async {});
  });

  test(
    'eligible saved meals generate once, cache locally, and upload only allowlisted fields',
    () async {
      final meals = [
        _meal('2026-08-24T08:00:00+05:30'),
        _meal('2026-08-24T13:00:00+05:30'),
      ];
      when(
        () => database.getMealsBetween(any(), any()),
      ).thenAnswer((_) async => meals);
      generator.gate = Completer<void>();
      final coordinator = AiSummaryCoordinator(
        database: database,
        generator: generator,
        contextLoader: () async => context,
      );

      final first = coordinator.catchUp();
      final second = coordinator.catchUp();
      await Future<void>.delayed(Duration.zero);
      expect(generator.calls, 1);
      generator.gate!.complete();
      await Future.wait([first, second]);

      final json = generator.snapshot!.toJson();
      expect(json['locale'], 'hi');
      expect((json['meals'] as List).first, isNot(contains('clientId')));
      expect((json['meals'] as List).first, isNot(contains('imageUrl')));
      expect((json['meals'] as List).first, isNot(contains('quantity')));
      final saved =
          verify(
                () => database.saveLocalAiSummary(captureAny()),
              ).captured.single
              as LocalAiSummary;
      expect(saved.summaryLocalDate, '2026-08-25');
    },
  );

  test('ineligible and oversized windows never call the generator', () async {
    when(
      () => database.getMealsBetween(any(), any()),
    ).thenAnswer((_) async => [_meal('2026-08-24T08:00:00+05:30')]);
    final coordinator = AiSummaryCoordinator(
      database: database,
      generator: generator,
      contextLoader: () async => context,
    );
    await coordinator.catchUp();
    expect(generator.calls, 0);

    when(() => database.getMealsBetween(any(), any())).thenAnswer(
      (_) async =>
          List.generate(101, (_) => _meal('2026-08-24T08:00:00+05:30')),
    );
    await coordinator.catchUp();
    expect(generator.calls, 0);
  });
}
