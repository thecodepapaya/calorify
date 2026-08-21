/**
 * Internal domain model shared by the V2 meal-analysis orchestrator and its
 * durable snapshot codec. Keeping these types independent prevents either
 * module from importing the other.
 */

export const MEAL_TYPES = ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'] as const;
export type MealTypeValue = (typeof MEAL_TYPES)[number] | 'UNKNOWN';

export type PortionKindValue = 'COUNT' | 'BULK' | 'PINCH' | 'COUNT_QUESTION';

export interface Macros {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

export interface NormalizedIngredient {
  rowId: string;
  rawName: string;
  canonicalHint: string;
  gramsEstimated: number;
  minGrams: number;
  maxGrams: number;
  notes: string;
  portionKind: PortionKindValue;
  count: number | null;
  perUnitGrams: number | null;
  perUnitMinGrams: number | null;
  perUnitMaxGrams: number | null;
  sizeSpecifiedByUser: boolean;
}

export interface NormalizedDecomposition {
  mealName: string;
  ingredients: NormalizedIngredient[];
  confidence: number;
  inferredMealType: MealTypeValue;
  mealTypeConfident: boolean;
}

export interface CanonicalMatch {
  foodId: string;
  canonicalName: string;
  score: number;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'deterministic' | 'llm_fallback' | 'unmatched';
}

export interface ResolvedIngredient {
  rowId: string;
  rawName: string;
  canonicalHint: string;
  match: CanonicalMatch;
  grams: number;
  minGrams: number;
  maxGrams: number;
  macros: Macros;
  minMacros: Macros;
  maxMacros: Macros;
  source: 'db' | 'deterministic' | 'llm_fallback';
  portionKind: PortionKindValue;
  count: number | null;
  perUnitGrams: number | null;
  perUnitMinGrams: number | null;
  perUnitMaxGrams: number | null;
  sizeSpecifiedByUser: boolean;
}

export interface UncertaintyReport {
  variancePercent: number;
  needsClarification: boolean;
  minTotal: Macros;
  maxTotal: Macros;
}

export function roundGram(value: number): number {
  return +value.toFixed(1);
}

export function scaleMacros(
  macros: Macros,
  currentGrams: number,
  nextGrams: number
): Macros {
  if (currentGrams <= 0) return macros;
  const ratio = nextGrams / currentGrams;
  return {
    calories: Math.round(macros.calories * ratio),
    protein: +(macros.protein * ratio).toFixed(1),
    carbs: +(macros.carbs * ratio).toFixed(1),
    fat: +(macros.fat * ratio).toFixed(1),
    fiber: +(macros.fiber * ratio).toFixed(1),
  };
}

export function sumMacros(items: Macros[]): Macros {
  const total: Macros = {
    calories: 0,
    protein: 0,
    carbs: 0,
    fat: 0,
    fiber: 0,
  };
  for (const item of items) {
    total.calories += item.calories;
    total.protein += item.protein;
    total.carbs += item.carbs;
    total.fat += item.fat;
    total.fiber += item.fiber;
  }
  total.protein = +total.protein.toFixed(1);
  total.carbs = +total.carbs.toFixed(1);
  total.fat = +total.fat.toFixed(1);
  total.fiber = +total.fiber.toFixed(1);
  return total;
}

export function analyzeUncertainty(
  resolved: ResolvedIngredient[]
): UncertaintyReport {
  const minTotal = sumMacros(resolved.map((ingredient) => ingredient.minMacros));
  const maxTotal = sumMacros(resolved.map((ingredient) => ingredient.maxMacros));
  const midTotal = sumMacros(resolved.map((ingredient) => ingredient.macros));
  const averageCalories = midTotal.calories || 1;
  const variancePercent = +(
    (maxTotal.calories - minTotal.calories) /
    averageCalories
  ).toFixed(3);
  return {
    variancePercent,
    needsClarification: variancePercent > 0.15,
    minTotal,
    maxTotal,
  };
}
