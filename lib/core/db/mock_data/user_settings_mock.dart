/// Mock data generator for UserSettings with different calorie goal scenarios
class UserSettingsMock {
  // Common calorie goal ranges based on different user profiles
  static const int _sedentaryWoman = 1600;
  static const int _sedentaryMan = 2000;
  static const int _moderatelyActiveWoman = 2000;
  static const int _moderatelyActiveMan = 2400;
  static const int _veryActiveWoman = 2400;
  static const int _veryActiveMan = 2800;
  static const int _weightLossWoman = 1200;
  static const int _weightLossMan = 1500;
  static const int _weightGainWoman = 2200;
  static const int _weightGainMan = 2800;

  /// Generates a single user settings entry with a specific calorie goal
  static Map<String, dynamic> generateSingle({int? dailyCalorieGoal}) {
    return {
      'id': 1, // Always use ID 1 for user settings
      'dailyCalorieGoal': dailyCalorieGoal ?? _getRandomCalorieGoal(),
    };
  }

  /// Generates user settings for different user profiles
  static Map<String, dynamic> generateForProfile(UserProfile profile) {
    return {'id': 1, 'dailyCalorieGoal': _getCalorieGoalForProfile(profile)};
  }

  /// Generates a variety of user settings for testing different scenarios
  static List<Map<String, dynamic>> generateVariety({int count = 5}) {
    final settings = <Map<String, dynamic>>[];

    for (int i = 0; i < count; i++) {
      settings.add(generateSingle());
    }

    return settings;
  }

  /// Generates user settings for different activity levels
  static List<Map<String, dynamic>> generateForActivityLevels() {
    return [
      generateForProfile(UserProfile.sedentaryWoman),
      generateForProfile(UserProfile.sedentaryMan),
      generateForProfile(UserProfile.moderatelyActiveWoman),
      generateForProfile(UserProfile.moderatelyActiveMan),
      generateForProfile(UserProfile.veryActiveWoman),
      generateForProfile(UserProfile.veryActiveMan),
    ];
  }

  /// Generates user settings for different weight goals
  static List<Map<String, dynamic>> generateForWeightGoals() {
    return [
      generateForProfile(UserProfile.weightLossWoman),
      generateForProfile(UserProfile.weightLossMan),
      generateForProfile(UserProfile.weightGainWoman),
      generateForProfile(UserProfile.weightGainMan),
      generateForProfile(UserProfile.maintenanceWoman),
      generateForProfile(UserProfile.maintenanceMan),
    ];
  }

  /// Generates realistic user settings for testing
  static Map<String, dynamic> generateRealistic() {
    final profiles = UserProfile.values;
    final randomProfile =
        profiles[DateTime.now().millisecondsSinceEpoch % profiles.length];
    return generateForProfile(randomProfile);
  }

  static int _getRandomCalorieGoal() {
    final goals = [
      _sedentaryWoman,
      _sedentaryMan,
      _moderatelyActiveWoman,
      _moderatelyActiveMan,
      _veryActiveWoman,
      _veryActiveMan,
      _weightLossWoman,
      _weightLossMan,
      _weightGainWoman,
      _weightGainMan,
    ];
    return goals[DateTime.now().millisecondsSinceEpoch % goals.length];
  }

  static int _getCalorieGoalForProfile(UserProfile profile) {
    return switch (profile) {
      UserProfile.sedentaryWoman => _sedentaryWoman,
      UserProfile.sedentaryMan => _sedentaryMan,
      UserProfile.moderatelyActiveWoman => _moderatelyActiveWoman,
      UserProfile.moderatelyActiveMan => _moderatelyActiveMan,
      UserProfile.veryActiveWoman => _veryActiveWoman,
      UserProfile.veryActiveMan => _veryActiveMan,
      UserProfile.weightLossWoman => _weightLossWoman,
      UserProfile.weightLossMan => _weightLossMan,
      UserProfile.weightGainWoman => _weightGainWoman,
      UserProfile.weightGainMan => _weightGainMan,
      UserProfile.maintenanceWoman => _moderatelyActiveWoman,
      UserProfile.maintenanceMan => _moderatelyActiveMan,
    };
  }
}

/// User profile types for generating realistic calorie goals
enum UserProfile {
  sedentaryWoman,
  sedentaryMan,
  moderatelyActiveWoman,
  moderatelyActiveMan,
  veryActiveWoman,
  veryActiveMan,
  weightLossWoman,
  weightLossMan,
  weightGainWoman,
  weightGainMan,
  maintenanceWoman,
  maintenanceMan,
}
