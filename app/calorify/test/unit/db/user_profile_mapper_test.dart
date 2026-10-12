import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/mappers/user_profile_mapper.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

void main() {
  test('serializes a Drift birthday as a timezone-free calendar date', () {
    final localBirthday = DateTime(2001, 8, 2);
    final row = UserProfileTableData(
      id: 1,
      dateOfBirth: localBirthday,
      heightUnit: 'metric',
      weightUnit: 'metric',
      createdAt: DateTime(2026, 8, 3),
      updatedAt: DateTime(2026, 8, 3),
      needsRemoteSync: false,
      remoteSyncRevision: null,
    );

    final profile = UserProfileMapper.fromDrift(row);

    expect(profile.dateOfBirth, '2001-08-02');
  });

  test('stores a calendar birthday at canonical UTC midnight', () {
    final companion = UserProfileMapper.toDrift(
      UserProfile(dateOfBirth: '2001-08-02'),
    );

    expect(companion.dateOfBirth.value, DateTime.utc(2001, 8, 2));
  });

  test('writes explicit nulls when optional profile values are cleared', () {
    final companion = UserProfileMapper.toDrift(UserProfile());

    expect(companion.height.present, isTrue);
    expect(companion.height.value, isNull);
    expect(companion.targetWeight.present, isTrue);
    expect(companion.targetWeight.value, isNull);
    expect(companion.dateOfBirth.present, isTrue);
    expect(companion.dateOfBirth.value, isNull);
    expect(companion.dailyCalorieGoal.present, isTrue);
    expect(companion.dailyCalorieGoal.value, isNull);
  });

  test('does not replace an invalid birthday with today', () {
    final companion = UserProfileMapper.toDrift(
      UserProfile(dateOfBirth: 'not-a-calendar-date'),
    );

    expect(companion.dateOfBirth.present, isTrue);
    expect(companion.dateOfBirth.value, isNull);
  });
}
