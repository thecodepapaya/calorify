import 'dart:convert';
import 'dart:io';

import 'package:path_provider/path_provider.dart';

class MealReminderSettings {
  const MealReminderSettings({
    required this.breakfastEnabled,
    required this.lunchEnabled,
    required this.dinnerEnabled,
    required this.snackEnabled,
    required this.breakfastMinutes,
    required this.lunchMinutes,
    required this.dinnerMinutes,
    required this.snackMinutes,
  });

  static const defaults = MealReminderSettings(
    breakfastEnabled: true,
    lunchEnabled: true,
    dinnerEnabled: true,
    snackEnabled: false,
    breakfastMinutes: 8 * 60,
    lunchMinutes: 12 * 60,
    dinnerMinutes: 18 * 60,
    snackMinutes: 15 * 60,
  );

  final bool breakfastEnabled;
  final bool lunchEnabled;
  final bool dinnerEnabled;
  final bool snackEnabled;
  final int breakfastMinutes;
  final int lunchMinutes;
  final int dinnerMinutes;
  final int snackMinutes;

  Map<String, Object> toJson() => {
    'breakfastEnabled': breakfastEnabled,
    'lunchEnabled': lunchEnabled,
    'dinnerEnabled': dinnerEnabled,
    'snackEnabled': snackEnabled,
    'breakfastMinutes': breakfastMinutes,
    'lunchMinutes': lunchMinutes,
    'dinnerMinutes': dinnerMinutes,
    'snackMinutes': snackMinutes,
  };

  static MealReminderSettings? fromJson(Map<String, dynamic> json) {
    final breakfastMinutes = json['breakfastMinutes'];
    final lunchMinutes = json['lunchMinutes'];
    final dinnerMinutes = json['dinnerMinutes'];
    final snackMinutes = json['snackMinutes'];
    if (breakfastMinutes is! int ||
        lunchMinutes is! int ||
        dinnerMinutes is! int ||
        snackMinutes is! int ||
        ![
          breakfastMinutes,
          lunchMinutes,
          dinnerMinutes,
          snackMinutes,
        ].every((minutes) => minutes >= 0 && minutes < 24 * 60)) {
      return null;
    }

    return MealReminderSettings(
      breakfastEnabled: json['breakfastEnabled'] as bool? ?? true,
      lunchEnabled: json['lunchEnabled'] as bool? ?? true,
      dinnerEnabled: json['dinnerEnabled'] as bool? ?? true,
      snackEnabled: json['snackEnabled'] as bool? ?? false,
      breakfastMinutes: breakfastMinutes,
      lunchMinutes: lunchMinutes,
      dinnerMinutes: dinnerMinutes,
      snackMinutes: snackMinutes,
    );
  }
}

abstract class MealReminderSettingsStore {
  Future<MealReminderSettings?> load();

  Future<void> save(MealReminderSettings settings);

  Future<void> clear();
}

class FileMealReminderSettingsStore implements MealReminderSettingsStore {
  static const _fileName = 'meal_reminder_settings.json';

  Future<File> _file() async {
    final directory = await getApplicationSupportDirectory();
    return File('${directory.path}/$_fileName');
  }

  @override
  Future<MealReminderSettings?> load() async {
    try {
      final file = await _file();
      if (!await file.exists()) return null;
      final decoded = jsonDecode(await file.readAsString());
      if (decoded is! Map) return null;
      return MealReminderSettings.fromJson(Map<String, dynamic>.from(decoded));
    } on Object {
      return null;
    }
  }

  @override
  Future<void> save(MealReminderSettings settings) async {
    final file = await _file();
    await file.parent.create(recursive: true);
    final temporary = File('${file.path}.tmp');
    await temporary.writeAsString(jsonEncode(settings.toJson()), flush: true);
    await temporary.rename(file.path);
  }

  @override
  Future<void> clear() async {
    final file = await _file();
    if (await file.exists()) await file.delete();
  }
}
