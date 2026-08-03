import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/mappers/user_profile_mapper.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('serializes a Drift birthday with an explicit UTC offset', () {
    final localBirthday = DateTime(2001, 8, 2);
    final row = UserProfileTableData(
      id: 1,
      dateOfBirth: localBirthday,
      heightUnit: 'metric',
      weightUnit: 'metric',
      createdAt: DateTime(2026, 8, 3),
      updatedAt: DateTime(2026, 8, 3),
    );

    final profile = UserProfileMapper.fromDrift(row);

    expect(profile.dateOfBirth, localBirthday.toUtc().toIso8601String());
    expect(profile.dateOfBirth, endsWith('Z'));
  });
}
