import 'dart:convert';
import 'dart:developer';

import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/services/performance_service.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FoodAnalysisService {
  FoodAnalysisService._();

  static final _instance = FoodAnalysisService._();
  static FoodAnalysisService get instance => _instance;

  /// Get the system prompt with language instruction
  static String _getSystemPrompt() {
    final currentLocale = LocaleSettings.currentLocale;
    final localeCode = currentLocale.languageCode;
    return '''
You are an expert food analysis AI. Given an image or a description of food,
analyze the main food item(s). Be precise with nutrient estimations.
Always respond in locale: $localeCode.
''';
  }

  late GenerativeModel _model;
  bool _isInitialized = false;

  /// Initialize the service with Firebase AI
  Future<void> initialize() async {
    if (_isInitialized) return;
    await _initializeModel();
  }

  /// Reinitialize the model (useful when locale changes)
  Future<void> reinitialize() async {
    _isInitialized = false;
    await _initializeModel();
  }

  /// Internal method to initialize the model
  Future<void> _initializeModel() async {
    try {
      // Use Google AI backend for food analysis
      final googleAI = FirebaseAI.googleAI(auth: FirebaseAuth.instance);
      _model = googleAI.generativeModel(
        model: 'gemini-2.0-flash-lite-001',
        generationConfig: GenerationConfig(
          responseMimeType: 'application/json',
          responseSchema: _jsonSchema,
        ),
        systemInstruction: Content.system(_getSystemPrompt()),
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
                'A concise name for the meal, max 35 characters (e.g., '
                "'Chicken Salad', 'Apple Slices'). If no meal is identified, "
                'this could be an empty string.',
          ),
          'meal_quantity': Schema.string(
            description:
                "A descriptive quantity of the food (e.g., '1 bowl', "
                "'2 slices', '1 medium apple', '1 serving'). "
                'Must not exceed 20 characters in length.',
          ),
          'meal_type': Schema.enumString(
            enumValues: ['breakfast', 'lunch', 'dinner', 'snack', 'unknown'],
            description:
                'Meal type based on timestamp from file creation metadata.'
                'If not available, fallback to request timestamp for estimation. '
                "Use 'unknown' if no specific meal "
                'type is identified.',
          ),
          'calories': Schema.number(
            description:
                'Estimated total calories as a number in kcal. Use 0 if no '
                'meal is identified.',
          ),
          'protein': Schema.number(
            description:
                'Estimated total protein in grams as a number. Use 0 if no '
                'meal is identified.',
          ),
          'carbs': Schema.number(
            description:
                'Estimated total carbs in grams as a number. Use 0 if no '
                'meal is identified.',
          ),
          'fat': Schema.number(
            description:
                'Estimated total fat in grams as a number. Use 0 if no '
                'meal is identified.',
          ),
          'fiber': Schema.number(
            description:
                'Estimated total fiber in grams as a number. Use 0 if no '
                'meal is identified.',
          ),
          'timestamp': Schema.string(
            description:
                'The timestamp when the meal was recorded, in ISO 8601 '
                "format (e.g., '2023-10-27T10:30:00.000Z'). "
                'This should always be present.',
          ),
          'health_score': Schema.object(
            description:
                'Information on how healthy the meal is, or default/empty '
                'if no meal was identified.',
            properties: {
              'score': Schema.enumString(
                enumValues: ['healthy', 'neutral', 'unhealthy', 'unknown'],
                description:
                    'A health score for the meal based on how well '
                    'balanced the nutritional values are.',
              ),
              'reason': Schema.string(
                description:
                    'A concise reasoning for the assigned health score, max '
                    '100 characters.',
              ),
            },
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
        'FoodAnalysisService not initialized. '
        'Please ensure the app has completed initialization.',
      );
    }

    try {
      // Provide a prompt that contains text with locale instruction
      final localeCode = LocaleSettings.currentLocale.languageCode;
      final prompt = [
        Content.text(
          'Estimate calories in this meal picture and respond in JSON. '
          'Must respond in locale: $localeCode',
        ),
        Content.inlineData('image/jpeg', imageBytes),
      ];

      // To generate text output, call generateContent with the text input
      final response = await Performance.trace<GenerateContentResponse>(
        TraceType.foodImageAnalysis,
        () async => await _model.generateContent(prompt),
      );
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
        'FoodAnalysisService not initialized. '
        'Please ensure the app has completed initialization.',
      );
    }

    try {
      // Provide a prompt that contains text with locale instruction
      final localeCode = LocaleSettings.currentLocale.languageCode;
      final prompt = [
        Content.text(
          'Meal: $description. '
          'Must respond in locale: $localeCode',
        ),
      ];

      // To generate text output, call generateContent with the text input
      final response = await Performance.trace<GenerateContentResponse>(
        TraceType.foodDescriptionAnalysis,
        () async => await _model.generateContent(prompt),
      );
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
