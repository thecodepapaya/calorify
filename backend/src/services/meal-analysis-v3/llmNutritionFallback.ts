import config from '../../config.js';
import {
  createMealAnalysisLlmClient,
  type MealAnalysisLlmClient,
} from '../meal-analysis/llm.js';
import { FALLBACK_SCHEMA, FALLBACK_SYSTEM_PROMPT } from '../meal-analysis/prompts.js';
import type { IngredientLeaf, MacroVector, ResolvedNutritionReference } from './domain.js';

export interface NutritionFallbackRequest {
  scenarioId: string;
  leaf: IngredientLeaf;
}

export interface NutritionFallback {
  resolve(requests: readonly NutritionFallbackRequest[]): Promise<ResolvedNutritionReference[]>;
}

interface FallbackEntry {
  request_id: string;
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export function createModelNutritionFallback(
  suppliedClient?: MealAnalysisLlmClient
): NutritionFallback {
  return {
    async resolve(requests) {
      if (requests.length === 0) return [];
      const expected = new Map(requests.map((request, index) => [
        `leaf_${index + 1}`,
        request,
      ]));
      const prompt = [...expected.entries()].map(([requestId, request]) =>
        `${requestId}: ${request.leaf.canonicalIdentity}; basis=${request.leaf.nutritionBasis}; ` +
        `preparation=${request.leaf.preparationCodes.join(',')}`
      ).join('\n');
      const client = suppliedClient ?? createMealAnalysisLlmClient({
        openRouterModel: config.OPENROUTER_MEAL_V3_MODEL,
      });
      const response = await client.chat.completions.create({
        model: config.OPENROUTER_MEAL_V3_MODEL,
        messages: [
          { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
          { role: 'user', content: `Provide one entry for every request ID. Echo request_id and name exactly.\n${prompt}` },
        ],
        response_format: {
          type: 'json_schema',
          json_schema: { name: 'v3_macro_fallback', schema: FALLBACK_SCHEMA, strict: true },
        },
        max_completion_tokens: 1_200,
      }, { operation: 'estimate_v3_nutrition_fallback' });
      const raw = response.choices[0]?.message?.content;
      if (!raw) throw new Error('Empty LLM nutrition fallback response');
      const entries = (JSON.parse(raw) as { ingredients?: unknown }).ingredients;
      if (!Array.isArray(entries)) throw new Error('Invalid LLM nutrition fallback response');

      const resolved: ResolvedNutritionReference[] = [];
      const matched = new Set<string>();
      for (const value of entries) {
        if (!isFallbackEntry(value)) continue;
        const request = expected.get(value.request_id);
        if (!request || matched.has(value.request_id) || value.name !== request.leaf.canonicalIdentity) continue;
        const per100g = macroVector(value);
        if (per100g === null) continue;
        matched.add(value.request_id);
        resolved.push({
          scenarioId: request.scenarioId,
          leafId: request.leaf.leafId,
          source: 'MODEL_INFERRED',
          sourceRecordId: `llm-v3:${value.request_id}`,
          datasetVersion: 'llm-nutrition-estimate-v1',
          verifiedZero: false,
          per100g,
        });
      }
      return resolved;
    },
  };
}

function isFallbackEntry(value: unknown): value is FallbackEntry {
  if (value === null || typeof value !== 'object') return false;
  const entry = value as Record<string, unknown>;
  return typeof entry.request_id === 'string' && typeof entry.name === 'string' &&
    ['kcal_per_100g', 'protein_per_100g', 'carbs_per_100g', 'fat_per_100g', 'fiber_per_100g']
      .every((key) => typeof entry[key] === 'number' && Number.isFinite(entry[key]));
}

function macroVector(entry: FallbackEntry): MacroVector | null {
  const vector: MacroVector = {
    caloriesKcal: entry.kcal_per_100g,
    proteinGrams: entry.protein_per_100g,
    carbsGrams: entry.carbs_per_100g,
    fatGrams: entry.fat_per_100g,
    fiberGrams: entry.fiber_per_100g,
  };
  const values = Object.values(vector);
  if (values.some((value) => value < 0) || vector.caloriesKcal > 950) return null;
  if ([vector.proteinGrams, vector.carbsGrams, vector.fatGrams, vector.fiberGrams]
    .some((value) => value > 100)) return null;
  return vector.proteinGrams + vector.carbsGrams + vector.fatGrams > 110 ? null : vector;
}
