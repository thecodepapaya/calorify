import 'dart:convert';
import 'dart:io';

import 'package:calorify/core/services/local_nutrition_calculator.dart';
import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

Map<String, num> _macros(PipelineMacros value) => {
  'calories': value.calories,
  'protein': value.protein,
  'carbs': value.carbs,
  'fat': value.fat,
  'fiber': value.fiber,
};

void main() {
  test('shared golden matches backend rounding and uncertainty', () async {
    final fixture =
        jsonDecode(
              await File(
                '../test_fixtures/local_nutrition_calculator_golden.json',
              ).readAsString(),
            )
            as Map<String, dynamic>;
    final ingredientsJson = fixture['ingredients'] as List<dynamic>;
    final resolutions = <LocalNutritionResolvedIngredient>[];
    for (final value in ingredientsJson.cast<Map<String, dynamic>>()) {
      final per100g = (value['per100g'] as Map).cast<String, dynamic>();
      final expected = (value['expected'] as Map).cast<String, dynamic>();
      final nutrients = PipelineMacros(
        calories: (per100g['calories'] as num).toDouble(),
        protein: (per100g['protein'] as num).toDouble(),
        carbs: (per100g['carbs'] as num).toDouble(),
        fat: (per100g['fat'] as num).toDouble(),
        fiber: (per100g['fiber'] as num).toDouble(),
      );
      final proposal = IngredientProposalItemV2(
        rowId: value['id'] as String,
        rawName: value['id'] as String,
        isFoodReason: 'The item belongs to the meal.',
        isFoodConfidence: 1,
        usdaLookup: UsdaLookupProposalV2(
          proposedCanonicalName: value['id'] as String,
        ),
        portion: PortionProposalV2(
          kind: PortionKind.BULK,
          gramsEstimated: (value['grams'] as num).toDouble(),
          minGrams: (value['minGrams'] as num).toDouble(),
          maxGrams: (value['maxGrams'] as num).toDouble(),
        ),
      );
      resolutions.add(
        LocalNutritionResolvedIngredient(
          proposal: proposal,
          canonicalName: value['id'] as String,
          matchType: 'golden',
          fdcId: value['id'] as String,
          datasetVersion: 'golden-v1',
          nutrientsPer100g: nutrients,
          origin: NutritionOrigin.NUTRITION_ORIGIN_BUNDLED_USDA,
        ),
      );
      expect(
        _macros(
          const LocalNutritionCalculator().scale(
            nutrients,
            proposal.portion.gramsEstimated,
          ),
        ),
        expected,
      );
    }

    final pack = LocalNutritionPack(
      schemaVersion: 1,
      packVersion: 'golden-pack',
      datasetVersion: 'golden-v1',
      calculationVersion: localNutritionCalculationVersion,
      records: const [],
    );
    final calculation = const LocalNutritionCalculator().calculate(
      LocalNutritionResolvedMeal(
        pack: InstalledLocalNutritionPack(pack: pack, byteSize: 1),
        ingredients: resolutions,
      ),
    );

    expect(_macros(calculation.macros), fixture['expectedTotal']);
    expect(_macros(calculation.minMacros), fixture['expectedMinTotal']);
    expect(_macros(calculation.maxMacros), fixture['expectedMaxTotal']);
    expect(calculation.variancePercent, fixture['expectedVariancePercent']);
    expect(calculation.calorieConfidence.name, fixture['expectedConfidence']);
  });
}
