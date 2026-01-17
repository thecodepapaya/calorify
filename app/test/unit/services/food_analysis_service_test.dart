import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:firebase_ai/firebase_ai.dart';
import 'package:calorify/core/services/food_analysis.dart';
import '../../setup/all_tests.dart';

class MockGenerativeModelWrapper extends Mock implements GenerativeModelWrapper {}
class MockGenerateContentResponseWrapper extends Mock implements GenerateContentResponseWrapper {}

void main() {
  late FoodAnalysisService foodAnalysisService;
  late MockGenerativeModelWrapper mockModel;
  late MockGenerateContentResponseWrapper mockResponse;

  setUpAll(() {
    setupAllTests();
    registerFallbackValue(Content.text('test'));
  });

  setUp(() {
    mockModel = MockGenerativeModelWrapper();
    mockResponse = MockGenerateContentResponseWrapper();
    
    foodAnalysisService = FoodAnalysisService.test(model: mockModel);
    FoodAnalysisService.setMockInstance(foodAnalysisService);
  });

  group('FoodAnalysisService', () {
    final mockMealJson = {
      'meal_identified': true,
      'calorie_confidence': 8,
      'tip': 'Apples are great!',
      'meal_info': {
        'meal_name': 'Apple',
        'meal_quantity': '1 medium',
        'meal_type': 'snack',
        'calories': 95,
        'protein': 0.5,
        'carbs': 25,
        'fat': 0.3,
        'fiber': 4.4,
        'timestamp': '2023-10-27T10:30:00.000Z',
        'health_score': {
          'score': 'healthy',
          'reason': 'High in fiber'
        }
      }
    };

    test('analyzeFoodDescription returns correct result', () async {
      when(() => mockModel.generateContent(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.text).thenReturn(jsonEncode(mockMealJson));

      final result = await foodAnalysisService.analyzeFoodDescription(description: 'an apple');

      expect(result.mealIdentified, true);
      expect(result.mealInfo.mealName, 'Apple');
      expect(result.mealInfo.calories, 95);
      verify(() => mockModel.generateContent(any())).called(1);
    });

    test('analyzeFoodImage returns correct result', () async {
      when(() => mockModel.generateContent(any())).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.text).thenReturn(jsonEncode(mockMealJson));

      final result = await foodAnalysisService.analyzeFoodImage(imageBytes: Uint8List(0));

      expect(result.mealIdentified, true);
      expect(result.mealInfo.mealName, 'Apple');
      verify(() => mockModel.generateContent(any())).called(1);
    });
  });
}
