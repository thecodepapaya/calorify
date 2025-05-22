import 'dart:convert';
import 'dart:developer';
import 'dart:typed_data';

import 'package:calorify/core/models/meal_model.dart';
import 'package:firebase_vertexai/firebase_vertexai.dart';

class FoodAnalysisService {
  static const _ = """
    You are an expert food analysis AI. Given the following image of food, provide a JSON response with the following structure:
    {
      "foodIdentified" : "boolean which indicates if good was identified with confidence",
      "mealName": "A concise name for the meal, max 30 characters (e.g., 'Chicken Salad', 'Apple Slices').",
      "totalCalories": <estimated total calories as a number in kcal>,
      "totalCarbs": <estimated total carbohydrates in grams as a number>,
      "totalFat": <estimated total fat in grams as a number>,
      "totalFiber": <estimated total fiber in grams as a number>,
      "totalProtein": <estimated total protein in grams as a number>,
      "quantity": "A descriptive quantity of the food (e.g., '1 bowl', '2 slices', '1 medium apple', '1 serving').",
      "mealType": "An Enum of breakfast, lunch, dinner, snacks, other",
    }
    Analyze the main food item(s) visible. Be precise with nutrient estimations. Only return the valid JSON object described.
    """;

  final _model = FirebaseVertexAI.instance.generativeModel(
    model: 'gemini-2.0-flash-lite-001',
    generationConfig: GenerationConfig(
      responseMimeType: 'application/json',
      responseSchema: _jsonSchema,
    ),
    systemInstruction: Content.system(_),
  );

  FoodAnalysisService();

  // Future<String> _encodeImageToBase64(File imageFile) async {
  //   List<int> imageBytes = await imageFile.readAsBytes();
  //   return base64Encode(imageBytes);
  // }

  static final _jsonSchema = Schema.object(
    properties: {
      'meal_identified': Schema.boolean(
        description: 'A boolean to indicate if the meal was identified',
      ),
      'meal_name': Schema.string(
        description:
            "A concise name for the meal, max 35 "
            "characters (e.g., 'Chicken Salad', 'Apple Slices').",
      ),
      'meal_quantity': Schema.string(
        description:
            "A descriptive quantity of the food "
            "(e.g., '1 bowl', '2 slices', '1 medium apple', '1 serving').",
      ),
      'meal_type': Schema.enumString(
        enumValues: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
      ),
      'calories': Schema.number(
        description:
            "Estimated total calories "
            "as a number in kcal",
      ),
      'calorie_confidence': Schema.number(
        description:
            'A percentage value from 0-9 indicating the '
            'confidence of calorie estimation',
      ),
      'protein': Schema.number(
        description: "estimated total protein in grams as a number",
      ),
      'carbs': Schema.number(
        description: "estimated total carbs in grams as a number",
      ),
      'fat': Schema.number(
        description: "estimated total fat in grams as a number",
      ),
      'fiber': Schema.number(
        description: "estimated total fiber in grams as a number",
      ),
      'tip': Schema.string(
        description:
            'A short interesting fact about the meal in questions or the '
            'benefit of eating this meal.',
      ),
    },
  );

  Future<MealInfo> analyzeFoodImage({required Uint8List imageBytes}) async {
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
    return MealInfo.fromJson(jsonDecode(response.text as String));
  }
}
