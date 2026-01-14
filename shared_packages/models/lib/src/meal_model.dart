import 'package:models/src/health_score.dart';
import 'package:models/src/meal_type.dart';
import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meal_model.g.dart';

@immutable
@JsonSerializable()
class MealInfo {
  final int? id;
  @JsonKey(name: 'meal_name')
  final String mealName;
  @JsonKey(name: 'meal_quantity')
  final String mealQuantity;
  @JsonKey(name: 'meal_type')
  final MealType mealType;
  @JsonKey(name: 'calories')
  final int calories;
  @JsonKey(name: 'protein')
  final int protein;
  @JsonKey(name: 'carbs')
  final int carbs;
  @JsonKey(name: 'fat')
  final int fat;
  @JsonKey(name: 'fiber')
  final int fiber;
  @JsonKey(name: 'timestamp')
  final DateTime timestamp;
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @JsonKey(
    name: 'health_score',
    fromJson: _healthScoreFromJson,
    toJson: _healthScoreToJson,
  )
  final HealthScore? healthScore;
  @JsonKey(name: 'health_score_reason')
  final String? healthScoreReason;

  const MealInfo({
    this.id,
    required this.mealName,
    required this.mealQuantity,
    required this.mealType,
    required this.calories,
    required this.protein,
    required this.carbs,
    required this.fat,
    required this.fiber,
    required this.timestamp,
    this.imageUrl,
    this.healthScore,
    this.healthScoreReason,
  });

  factory MealInfo.fromJson(Map<String, dynamic> json) {
    // Handle nested health_score object from API: {score: 'healthy', reason: '...'}
    if (json['health_score'] is Map<String, dynamic>) {
      final healthScoreObj = json['health_score'] as Map<String, dynamic>;
      json = Map<String, dynamic>.from(json);
      json['health_score'] = healthScoreObj['score'];
      json['health_score_reason'] =
          healthScoreObj['reason'] ?? json['health_score_reason'];
    }
    return _$MealInfoFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MealInfoToJson(this);

  @override
  String toString() {
    return 'MealInfo(mealName: $mealName, '
        'mealQuantity: $mealQuantity, '
        'mealType: $mealType, '
        'calories: $calories, '
        'protein: $protein, '
        'carbs: $carbs, '
        'fat: $fat, '
        'fiber: $fiber, '
        'timestamp: $timestamp)';
  }

  MealInfo copyWith({
    int? id,
    String? mealName,
    String? mealQuantity,
    MealType? mealType,
    int? calories,
    int? protein,
    int? carbs,
    int? fat,
    int? fiber,
    DateTime? timestamp,
    String? imageUrl,
    HealthScore? healthScore,
    String? healthScoreReason,
    bool forceIdNull = false,
  }) {
    return MealInfo(
      id: forceIdNull ? null : id ?? this.id,
      mealName: mealName ?? this.mealName,
      mealQuantity: mealQuantity ?? this.mealQuantity,
      mealType: mealType ?? this.mealType,
      calories: calories ?? this.calories,
      protein: protein ?? this.protein,
      carbs: carbs ?? this.carbs,
      fat: fat ?? this.fat,
      fiber: fiber ?? this.fiber,
      timestamp: timestamp ?? this.timestamp,
      imageUrl: imageUrl ?? this.imageUrl,
      healthScore: healthScore ?? this.healthScore,
      healthScoreReason: healthScoreReason ?? this.healthScoreReason,
    );
  }

  /// Helper function to parse health_score from JSON
  /// Handles nested object format {score: 'healthy', reason: '...'} from API
  static HealthScore? _healthScoreFromJson(dynamic json) {
    if (json == null) return null;

    // Handle nested object format from API: {score: 'healthy', reason: '...'}
    if (json is Map<String, dynamic>) {
      final scoreValue = json['score'];
      if (scoreValue is String) {
        try {
          return HealthScore.values.byName(scoreValue);
        } catch (e) {
          return null;
        }
      }
      return null;
    }

    // Handle string format: 'healthy', 'neutral', 'unhealthy', 'unknown'
    if (json is String) {
      try {
        return HealthScore.values.byName(json);
      } catch (e) {
        return null;
      }
    }

    return null;
  }

  /// Helper function to serialize health_score to JSON
  static dynamic _healthScoreToJson(HealthScore? score) {
    if (score == null) return null;
    return score.name;
  }
}
