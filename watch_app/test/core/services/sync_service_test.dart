import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('watch meal operation id is stable across retries', () {
    final meal = LoggedMeal(
      clientId: -4,
      createdAt: '2026-07-29T10:15:30.000Z',
      meal: Meal(name: 'Dal and rice'),
    );

    expect(watchMealOperationId(meal), 'watch:-4:2026-07-29T10:15:30.000Z');
    final restoredMeal = LoggedMeal.fromBuffer(meal.writeToBuffer());
    expect(watchMealOperationId(meal), watchMealOperationId(restoredMeal));
  });
}
