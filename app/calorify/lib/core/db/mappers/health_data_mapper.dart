import 'package:calorify/core/db/app_database.dart';
import 'package:drift/drift.dart';
import 'package:models/models.dart';

class HealthDataMapper {
  static HealthData fromDrift(HealthDataTableData data) {
    final healthData = HealthData();

    if (data.height != null) {
      healthData.height = Height(
        value: data.height!,
        unit: data.heightUnit == 'FT' ? HeightUnit.FT : HeightUnit.CM,
      );
    }

    if (data.weight != null) {
      healthData.weight = Weight(
        value: data.weight!,
        unit: data.weightUnit == 'LB' ? WeightUnit.LB : WeightUnit.KG,
      );
    }

    if (data.targetWeight != null) {
      healthData.targetWeight = Weight(
        value: data.targetWeight!,
        unit: data.weightUnit == 'LB' ? WeightUnit.LB : WeightUnit.KG,
      );
    }

    if (data.gender != null) {
      switch (data.gender) {
        case 'MALE':
          healthData.gender = Gender.MALE;
          break;
        case 'FEMALE':
          healthData.gender = Gender.FEMALE;
          break;
        default:
          healthData.gender = Gender.OTHER;
          break;
      }
    }

    if (data.dateOfBirth != null) {
      healthData.dateOfBirth = dateTimeToIso8601Date(data.dateOfBirth!);
    }

    if (data.weightGoal != null) {
      switch (data.weightGoal) {
        case 'LOSE_WEIGHT':
          healthData.weightGoal = WeightGoal.LOSE_WEIGHT;
          break;
        case 'GAIN_WEIGHT':
          healthData.weightGoal = WeightGoal.GAIN_WEIGHT;
          break;
        default:
          healthData.weightGoal = WeightGoal.MAINTAIN_WEIGHT;
          break;
      }
    }

    if (data.activityLevel != null) {
      switch (data.activityLevel) {
        case 'LIGHTLY_ACTIVE':
          healthData.activityLevel = ActivityLevel.LIGHTLY_ACTIVE;
          break;
        case 'MODERATELY_ACTIVE':
          healthData.activityLevel = ActivityLevel.MODERATELY_ACTIVE;
          break;
        case 'VERY_ACTIVE':
          healthData.activityLevel = ActivityLevel.VERY_ACTIVE;
          break;
        case 'EXTREMELY_ACTIVE':
          healthData.activityLevel = ActivityLevel.EXTREMELY_ACTIVE;
          break;
        default:
          healthData.activityLevel = ActivityLevel.SEDENTARY;
          break;
      }
    }

    final macros = Macros();
    if (data.dailyCalorieGoal != null) {
      macros.calorie = Measurement(value: data.dailyCalorieGoal!);
    }
    if (data.dailyCarbGoal != null) {
      macros.carb = Measurement(value: data.dailyCarbGoal!);
    }
    if (data.dailyProteinGoal != null) {
      macros.protein = Measurement(value: data.dailyProteinGoal!);
    }
    if (data.dailyFatGoal != null) {
      macros.fat = Measurement(value: data.dailyFatGoal!);
    }
    if (data.dailyFiberGoal != null) {
      macros.fiber = Measurement(value: data.dailyFiberGoal!);
    }
    healthData.dailyMacroGoal = macros;

    return healthData;
  }

  static HealthDataTableCompanion toDrift(HealthData data) {
    DateTime? dob;
    if (data.hasDateOfBirth() && data.dateOfBirth.isNotEmpty) {
      final parsed = DateTime.tryParse(data.dateOfBirth);
      if (parsed != null) {
        dob = DateTime.utc(parsed.year, parsed.month, parsed.day);
      }
    }

    return HealthDataTableCompanion(
      height: Value(data.hasHeight() ? data.height.value : null),
      heightUnit: Value(
        data.hasHeight() && data.height.unit == HeightUnit.FT ? 'FT' : 'CM',
      ),
      weight: Value(data.hasWeight() ? data.weight.value : null),
      targetWeight: Value(
        data.hasTargetWeight() ? data.targetWeight.value : null,
      ),
      weightUnit: Value(
        data.hasWeight() && data.weight.unit == WeightUnit.LB ? 'LB' : 'KG',
      ),
      gender: Value(data.hasGender() ? data.gender.name : null),
      dateOfBirth: Value(dob),
      weightGoal: Value(data.hasWeightGoal() ? data.weightGoal.name : null),
      activityLevel: Value(
        data.hasActivityLevel() ? data.activityLevel.name : null,
      ),
      dailyCalorieGoal: Value(
        data.hasDailyMacroGoal() && data.dailyMacroGoal.hasCalorie()
            ? data.dailyMacroGoal.calorie.value
            : null,
      ),
      dailyCarbGoal: Value(
        data.hasDailyMacroGoal() && data.dailyMacroGoal.hasCarb()
            ? data.dailyMacroGoal.carb.value
            : null,
      ),
      dailyProteinGoal: Value(
        data.hasDailyMacroGoal() && data.dailyMacroGoal.hasProtein()
            ? data.dailyMacroGoal.protein.value
            : null,
      ),
      dailyFatGoal: Value(
        data.hasDailyMacroGoal() && data.dailyMacroGoal.hasFat()
            ? data.dailyMacroGoal.fat.value
            : null,
      ),
      dailyFiberGoal: Value(
        data.hasDailyMacroGoal() && data.dailyMacroGoal.hasFiber()
            ? data.dailyMacroGoal.fiber.value
            : null,
      ),
    );
  }
}

