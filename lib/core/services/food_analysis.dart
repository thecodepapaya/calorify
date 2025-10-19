import 'dart:convert';
import 'dart:developer';

import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FoodAnalysisService {
  FoodAnalysisService._();

  static final _instance = FoodAnalysisService._();
  static FoodAnalysisService get instance => _instance;

  static const _systemPrompt = """
    You are an expert food analysis AI. Given an image or a description of food,
    analyze the main food item(s). Be precise with nutrient estimations.
    """;

  late GenerativeModel _model;
  bool _isInitialized = false;

  /// Initialize the service with Firebase AI
  Future<void> initialize() async {
    if (_isInitialized) return;

    try {
      // Use Google AI backend for food analysis
      final googleAI = FirebaseAI.googleAI(auth: FirebaseAuth.instance);
      _model = googleAI.generativeModel(
        model: 'gemini-2.0-flash-lite-001',
        generationConfig: GenerationConfig(
          responseMimeType: 'application/json',
          responseSchema: _jsonSchema,
        ),
        systemInstruction: Content.system(_systemPrompt),
      );
      _isInitialized = true;
    } catch (e) {
      debugPrint('Failed to initialize Firebase AI: $e');
      rethrow;
    }
  }

  static final _jsonSchema = Schema.object(
    properties: {
      'meal_identified': Schema.boolean(
        description: 'A boolean to indicate if the meal was identified.',
      ),
      'calorie_confidence': Schema.number(
        description:
            'A value from 0-9 indicating the confidence '
            'of calorie estimation.',
      ),
      'tip': Schema.string(
        description:
            'A short interesting fact about the meal in questions or '
            'the benefit of eating this meal.',
      ),
      'meal_info': Schema.object(
        description:
            'Detailed information about the identified meal, or '
            'default/empty info if no meal was identified.',
        properties: {
          'meal_name': Schema.string(
            description:
                "A concise name for the meal, max 35 characters (e.g., "
                "'Chicken Salad', 'Apple Slices'). If no meal is identified, "
                "this could be an empty string.",
          ),
          'meal_quantity': Schema.string(
            description:
                "A descriptive quantity of the food (e.g., '1 bowl', "
                "'2 slices', '1 medium apple', '1 serving'). "
                "Must not exceed 30 characters in length.",
          ),
          'meal_type': Schema.enumString(
            enumValues: ['breakfast', 'lunch', 'dinner', 'snack', 'unknown'],
            description:
                "Meal type based on timestamp from file creation metadata."
                "If not available, fallback to request timestamp for estimation. "
                "Use 'unknown' if no specific meal "
                "type is identified.",
          ),
          'calories': Schema.number(
            description:
                "Estimated total calories as a number in kcal. Use 0 if no "
                "meal is identified.",
          ),
          'protein': Schema.number(
            description:
                "Estimated total protein in grams as a number. Use 0 if no "
                "meal is identified.",
          ),
          'carbs': Schema.number(
            description:
                "Estimated total carbs in grams as a number. Use 0 if no "
                "meal is identified.",
          ),
          'fat': Schema.number(
            description:
                "Estimated total fat in grams as a number. Use 0 if no "
                "meal is identified.",
          ),
          'fiber': Schema.number(
            description:
                "Estimated total fiber in grams as a number. Use 0 if no "
                "meal is identified.",
          ),
          'timestamp': Schema.string(
            description:
                "The timestamp when the meal was recorded, in ISO 8601 "
                "format (e.g., '2023-10-27T10:30:00.000Z'). "
                "This should always be present.",
          ),
        },
      ),
    },
  );

  Future<MealDetectionResult> analyzeFoodImage({
    required Uint8List imageBytes,
  }) async {
    if (!_isInitialized) {
      throw Exception(
        'FoodAnalysisService not initialized. Please ensure the app has completed initialization.',
      );
    }

    try {
      // Provide a prompt that contains text
      final prompt = [
        Content.text(
          'Estimate calories in this meal picture and respond in JSON',
        ),
        Content.inlineData('image/jpeg', imageBytes),
      ];

      // To generate text output, call generateContent with the text input
      final response = await _model.generateContent(prompt);
      log(response.text.toString());
      final result = MealDetectionResult.fromJson(
        jsonDecode(response.text as String),
      );
      return _dateSanitizedResult(result);
    } catch (e) {
      debugPrint('Error analyzing food image: $e');
      rethrow;
    }
  }

  Future<MealDetectionResult> analyzeFoodDescription({
    required String description,
  }) async {
    if (!_isInitialized) {
      throw Exception(
        'FoodAnalysisService not initialized. Please ensure the app has completed initialization.',
      );
    }

    try {
      // Provide a prompt that contains text
      final prompt = [Content.text('Meal: $description')];

      // To generate text output, call generateContent with the text input
      final response = await _model.generateContent(prompt);
      log(response.text.toString());
      final result = MealDetectionResult.fromJson(
        jsonDecode(response.text as String),
      );
      return _dateSanitizedResult(result);
    } catch (e) {
      debugPrint('Error analyzing food description: $e');
      rethrow;
    }
  }
}

MealDetectionResult _dateSanitizedResult(MealDetectionResult result) {
  final mealInfo = result.mealInfo.copyWith(timestamp: DateTime.now());
  return MealDetectionResult(
    mealIdentified: result.mealIdentified,
    calorieConfidence: result.calorieConfidence,
    tip: result.tip,
    mealInfo: mealInfo,
  );
}
