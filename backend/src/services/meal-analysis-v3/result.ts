import {
  validateCalculatedMeal,
  type CalculatedMeal,
} from './calculation.js';
import type {
  MacroEstimate,
  MacroEstimates,
  ResolvedInterpretation,
} from './domain.js';
import type { MealType, MealTypeOrigin } from './mealType.js';
import type { MealPresentation } from './presentation.js';

export interface PublicMacroPoints {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

export interface PublicMacroRanges {
  calories: { min: number; max: number };
  protein: { min: number; max: number };
  carbs: { min: number; max: number };
  fat: { min: number; max: number };
  fiber: { min: number; max: number };
}

export interface CompleteMealAnalysisResult {
  outcome: 'COMPLETE';
  mealName: string;
  servingSizeText: string;
  tip: string;
  mealType: { value: MealType; origin: MealTypeOrigin };
  macros: PublicMacroPoints;
  macroRanges: PublicMacroRanges;
  components: Array<{
    componentId: string;
    sourceName: string;
    displayName: string;
    portion: unknown;
    preparationCodes: string[];
    macros: PublicMacroPoints;
    macroRanges: PublicMacroRanges;
    selectedScenarioId: string;
    assumptions: unknown[];
    ingredients: Array<{
      leafId: string;
      displayName: string;
      canonicalIdentity: string;
      role: string;
      nutritionBasis: string;
      nutritionBasisGrams: number;
      reference: {
        source: string;
        sourceRecordId: string;
        datasetVersion: string;
      };
    }>;
  }>;
  receipt: {
    workflowVersion: 'meal-analysis-v3-hypothesis';
    calculationVersion: 'scenario-arithmetic-v1';
    questionPolicyVersion: 'material-impact-v1';
    datasetVersions: string[];
  };
}

function nearest(value: number, digits: number): number {
  const factor = 10 ** digits;
  return Math.round((value + Number.EPSILON) * factor) / factor;
}

function outwardMin(value: number, digits: number): number {
  const factor = 10 ** digits;
  return Math.floor((value + 1e-12) * factor) / factor;
}

function outwardMax(value: number, digits: number): number {
  const factor = 10 ** digits;
  return Math.ceil((value - 1e-12) * factor) / factor;
}

function point(estimates: MacroEstimates): PublicMacroPoints {
  return {
    calories: nearest(estimates.caloriesKcal.estimate, 0),
    protein: nearest(estimates.proteinGrams.estimate, 1),
    carbs: nearest(estimates.carbsGrams.estimate, 1),
    fat: nearest(estimates.fatGrams.estimate, 1),
    fiber: nearest(estimates.fiberGrams.estimate, 1),
  };
}

function range(estimate: MacroEstimate, digits: number): { min: number; max: number } {
  return {
    min: outwardMin(estimate.min, digits),
    max: outwardMax(estimate.max, digits),
  };
}

function ranges(estimates: MacroEstimates): PublicMacroRanges {
  return {
    calories: range(estimates.caloriesKcal, 0),
    protein: range(estimates.proteinGrams, 1),
    carbs: range(estimates.carbsGrams, 1),
    fat: range(estimates.fatGrams, 1),
    fiber: range(estimates.fiberGrams, 1),
  };
}

export function buildCompleteResult(
  interpretation: ResolvedInterpretation,
  calculation: CalculatedMeal,
  presentation: MealPresentation,
  mealType: { value: MealType; origin: MealTypeOrigin }
): CompleteMealAnalysisResult {
  validateCalculatedMeal(calculation);
  const components = interpretation.components.map((component) => {
    const calculated = calculation.components.find(({ componentId }) =>
      componentId === component.componentId
    );
    const selected = component.scenarios.find(({ scenarioId }) =>
      scenarioId === component.pointScenarioId
    );
    if (!calculated || !selected) {
      throw new Error(`Final component state is incomplete for ${component.componentId}`);
    }
    return {
      componentId: component.componentId,
      sourceName: component.sourceName,
      displayName: component.displayName,
      portion: component.portionConstraint,
      preparationCodes: selected.effectivePreparationCodes,
      macros: point(calculated.macros),
      macroRanges: ranges(calculated.macros),
      selectedScenarioId: selected.scenarioId,
      assumptions: selected.assumptions,
      ingredients: selected.ingredients.map((ingredient) => ({
        leafId: ingredient.leafId,
        displayName: ingredient.displayName,
        canonicalIdentity: ingredient.canonicalIdentity,
        role: ingredient.role,
        nutritionBasis: ingredient.nutritionBasis,
        nutritionBasisGrams: ingredient.nutritionBasisGrams,
        reference: {
          source: ingredient.nutritionReference.source,
          sourceRecordId: ingredient.nutritionReference.sourceRecordId,
          datasetVersion: ingredient.nutritionReference.datasetVersion,
        },
      })),
    };
  });
  const datasetVersions = [...new Set(interpretation.components.flatMap((component) =>
    component.scenarios.flatMap((scenario) =>
      scenario.ingredients.map(({ nutritionReference }) => nutritionReference.datasetVersion)
    )
  ))].sort();
  return {
    outcome: 'COMPLETE',
    mealName: presentation.mealName,
    servingSizeText: presentation.servingSizeText,
    tip: presentation.tip,
    mealType,
    macros: point(calculation.macros),
    macroRanges: ranges(calculation.macros),
    components,
    receipt: {
      workflowVersion: 'meal-analysis-v3-hypothesis',
      calculationVersion: 'scenario-arithmetic-v1',
      questionPolicyVersion: 'material-impact-v1',
      datasetVersions,
    },
  };
}

const FORBIDDEN_SERVING_TEXT =
  /\b(?:g|gram|grams|kg|kilogram|kilograms|ml|millilit(?:er|re)s?|oz|ounces?|lb|pounds?|kcal|calories?)\b/iu;

export function validateCompleteResult(result: CompleteMealAnalysisResult): void {
  if (result.mealName.trim() === '') throw new Error('Meal name is empty');
  if (result.servingSizeText.trim() === '' || FORBIDDEN_SERVING_TEXT.test(result.servingSizeText)) {
    throw new Error('Serving-size text exposes weight, volume, or calories');
  }
  for (const key of ['calories', 'protein', 'carbs', 'fat', 'fiber'] as const) {
    const value = result.macros[key];
    const interval = result.macroRanges[key];
    if (![value, interval.min, interval.max].every(Number.isFinite) ||
        interval.min > value || value > interval.max) {
      throw new Error(`Invalid public macro range for ${key}`);
    }
  }
  if (result.components.length === 0) throw new Error('Complete result has no components');
}
