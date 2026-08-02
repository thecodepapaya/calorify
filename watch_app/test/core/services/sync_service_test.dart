import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:calorify_watch/core/services/watch_auth_session.dart';
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

  test('transient phone failures stay queued for retry', () {
    expect(shouldRetryWatchResponse(null), isTrue);
    expect(shouldRetryWatchResponse({'error': 'Network unavailable'}), isTrue);
    expect(shouldRetryWatchResponse({'error': 'Request timed out'}), isTrue);
    expect(shouldRetryWatchResponse({'error': 'No connected phone'}), isTrue);
  });

  test('successful and permanent server responses are not retried', () {
    expect(shouldRetryWatchResponse({'success': true}), isFalse);
    expect(
      shouldRetryWatchResponse({'success': false, 'error': 'Invalid meal'}),
      isFalse,
    );
  });

  test('fresh watch auth does not make a second phone round-trip', () {
    final freshSession = WatchAuthSnapshot(
      userId: 'user',
      authToken: 'token',
      syncedAt: DateTime.now(),
      isAnonymous: false,
    );

    expect(
      shouldRefreshWatchAuthSession(freshSession, refreshIfNeeded: true),
      isFalse,
    );
  });

  test('missing or stale watch auth is refreshed when requested', () {
    final staleSession = WatchAuthSnapshot(
      userId: 'user',
      authToken: 'token',
      syncedAt: DateTime.now().subtract(const Duration(hours: 2)),
      isAnonymous: false,
    );

    expect(shouldRefreshWatchAuthSession(null, refreshIfNeeded: true), isTrue);
    expect(
      shouldRefreshWatchAuthSession(staleSession, refreshIfNeeded: true),
      isTrue,
    );
  });
}
