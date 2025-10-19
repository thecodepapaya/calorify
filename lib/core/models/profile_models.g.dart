// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) => UserProfile(
  height: (json['height'] as num?)?.toDouble(),
  weight: (json['weight'] as num?)?.toDouble(),
  gender: $enumDecodeNullable(_$GenderEnumMap, json['gender']),
  dateOfBirth:
      json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
  weightGoal: $enumDecodeNullable(_$WeightGoalEnumMap, json['weightGoal']),
  activityLevel: $enumDecodeNullable(
    _$ActivityLevelEnumMap,
    json['activityLevel'],
  ),
);

Map<String, dynamic> _$UserProfileToJson(UserProfile instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
      'gender': _$GenderEnumMap[instance.gender],
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'weightGoal': _$WeightGoalEnumMap[instance.weightGoal],
      'activityLevel': _$ActivityLevelEnumMap[instance.activityLevel],
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
  Gender.other: 'other',
};

const _$WeightGoalEnumMap = {
  WeightGoal.loseWeight: 'loseWeight',
  WeightGoal.maintainWeight: 'maintainWeight',
  WeightGoal.gainWeight: 'gainWeight',
};

const _$ActivityLevelEnumMap = {
  ActivityLevel.sedentary: 'sedentary',
  ActivityLevel.lightlyActive: 'lightlyActive',
  ActivityLevel.moderatelyActive: 'moderatelyActive',
  ActivityLevel.veryActive: 'veryActive',
  ActivityLevel.extremelyActive: 'extremelyActive',
};
