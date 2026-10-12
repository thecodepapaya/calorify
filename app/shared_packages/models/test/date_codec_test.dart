import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('civil dates round-trip without a timezone shift', () {
    final encoded = dateTimeToIso8601Date(DateTime(2001, 8, 2, 23, 45));
    final decoded = iso8601DateToDateTime(encoded);

    expect(encoded, '2001-08-02');
    expect(decoded, DateTime(2001, 8, 2));
    expect(
      iso8601DateToDateTime('2001-08-02T00:00:00.000Z'),
      DateTime(2001, 8, 2),
    );
    expect(iso8601DateToDateTime('2001-02-30'), isNull);
  });

  test('offset-less persisted instants are interpreted as UTC', () {
    final decoded = iso8601StringToDateTime('2026-08-21T10:15:00');

    expect(decoded, DateTime.utc(2026, 8, 21, 10, 15));
    expect(decoded?.isUtc, isTrue);
  });

  test('meaningful zero-valued enums retain field presence', () {
    final absentHealth = MealHealth.fromBuffer(MealHealth().writeToBuffer());
    final explicitHealthy = MealHealth.fromBuffer(
      MealHealth(healthScore: HealthScore.HEALTHY).writeToBuffer(),
    );
    expect(absentHealth.hasHealthScore(), isFalse);
    expect(explicitHealthy.hasHealthScore(), isTrue);
    expect(explicitHealthy.healthScore, HealthScore.HEALTHY);
    expect(UserProfile().hasGender(), isFalse);
    expect(UserProfile(gender: Gender.MALE).hasGender(), isTrue);
    final absentPriority = Banner.fromBuffer(Banner().writeToBuffer());
    final explicitLow = Banner.fromBuffer(
      Banner(priority: BannerPriority.LOW).writeToBuffer(),
    );
    expect(absentPriority.hasPriority(), isFalse);
    expect(explicitLow.hasPriority(), isTrue);
    expect(explicitLow.priority, BannerPriority.LOW);
  });
}
