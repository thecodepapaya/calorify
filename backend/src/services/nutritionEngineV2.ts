/**
 * Nutrition Engine V2 — resumable macro pipeline with streamed events,
 * clarification continuation, meal-type follow-up, full-result enrichment,
 * image analysis, and feedback-driven reanalysis.
 */

import { randomUUID } from 'node:crypto';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';
import { getFoodAnalysisSystemPrompt } from './foodAnalysisSystemPrompt.js';
import {
  createMealAnalysisLlmClient,
  type MealAnalysisLlmClient,
  type MealAnalysisLlmAttempt,
} from './mealAnalysisLlm.js';
import { canonicalizeWithUsda } from './usdaLookup.js';
import { extractExplicitQuantityAnchors } from './explicitQuantityParser.js';
import { dishTemplateGramBounds, missingDishTemplateComponents } from './dishTemplates.js';
import { assessUsdaNutritionQuality, calcMacrosFromUsdaRow } from './usdaLookupUtils.js';
import {
  getMealAnalysisSession,
  recordMealAnalysisClarification,
  recordMealAnalysisMealType,
  type MealTypeSource,
  upsertMealAnalysisSession,
} from './mealAnalysisStore.js';
import {
  mealAnalysisTraceStepSeconds,
  mealAnalysisClarificationSkipsTotal,
  mealAnalysisDecompositionIssuesTotal,
} from './metrics.js';
import type { MealClarificationAnswer } from '../protos/calorify/http_api.js';
import { PortionKind } from '../protos/calorify/meal_analysis_pipeline.js';
import {
  lookupTemplate,
  synthesizeFallbackTemplate,
  type PortionTemplate,
} from './portionTemplates.js';
import {
  localizeOptionLabel,
  localizeFallbackOptionLabel,
  localizeOptionDetail,
  localizeSizeQuestion,
  localizeCountQuestion,
  localizeCountOptionLabel,
} from './portionLabels.js';

type PortionKindValue = 'COUNT' | 'BULK' | 'PINCH' | 'COUNT_QUESTION';

interface LLMIngredient {
  row_id?: string;
  rowId?: string;
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
  portion_kind?: PortionKindValue;
  count?: number | null;
  per_unit_grams?: number | null;
  per_unit_min_grams?: number | null;
  per_unit_max_grams?: number | null;
  size_specified_by_user?: boolean;
}

interface LLMDecomposition {
  meal_name: string;
  ingredients: LLMIngredient[];
  confidence: number;
  inferred_meal_type: MealTypeValue;
  meal_type_confident: boolean;
}

/**
 * Decomposition after wire-layer normalization: row IDs assigned, count×per_unit math
 * enforced as the single source of truth for grams totals, sanity clamps applied.
 */
interface NormalizedIngredient {
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

interface NormalizedDecomposition {
  mealName: string;
  ingredients: NormalizedIngredient[];
  confidence: number;
  inferredMealType: MealTypeValue;
  mealTypeConfident: boolean;
}

interface CanonicalMatch {
  foodId: string;
  canonicalName: string;
  score: number;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'deterministic' | 'llm_fallback' | 'unmatched';
}

export interface Macros {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

interface ResolvedIngredient {
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

interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

const FALLBACK_NUTRITION_CACHE_LIMIT = 500;
const FALLBACK_NUTRITION_CACHE_VERSION = 'v1';
const fallbackNutritionCache = new Map<string, LLMFallbackEntry>();

function fallbackCacheKey(name: string): string {
  return `${FALLBACK_NUTRITION_CACHE_VERSION}:${normalize(name)}`;
}

function cacheFallbackEntry(name: string, entry: LLMFallbackEntry): void {
  const key = fallbackCacheKey(name);
  fallbackNutritionCache.delete(key);
  fallbackNutritionCache.set(key, entry);
  while (fallbackNutritionCache.size > FALLBACK_NUTRITION_CACHE_LIMIT) {
    const oldest = fallbackNutritionCache.keys().next().value as string | undefined;
    if (oldest == null) break;
    fallbackNutritionCache.delete(oldest);
  }
}

export function clearFallbackNutritionCache(): void {
  fallbackNutritionCache.clear();
}

export function isPlausibleFallbackEntry(entry: LLMFallbackEntry): boolean {
  if (entry.kcal_per_100g > 950) return false;
  return assessUsdaNutritionQuality(entry).score >= 0.55;
}

export interface AnalysisLogger {
  info: (obj: Record<string, unknown>, msg?: string) => void;
  warn: (obj: Record<string, unknown>, msg?: string) => void;
  error: (obj: Record<string, unknown>, msg?: string) => void;
}

export type TraceStepCategory = 'llm' | 'usda' | 'pipeline' | 'db';

export interface TraceStep {
  category: TraceStepCategory;
  name: string;
  durationMs: number;
  meta?: Record<string, unknown>;
}

export interface AnalysisTrace {
  startedAt: number;
  steps: TraceStep[];
  llmAttempts: MealAnalysisLlmAttempt[];
  llmCallCount: number;
  usdaLookupCount: number;
  dbWriteCount: number;
}

interface UncertaintyReport {
  variancePercent: number;
  needsClarification: boolean;
  minTotal: Macros;
  maxTotal: Macros;
}

export const FEEDBACK_ISSUES = [
  'FOOD_IDENTIFICATION',
  'PORTION_SIZE',
  'CALORIE_DISTRIBUTION',
  'MACROS_WRONG',
  'MISSING_ITEMS',
  'EXTRA_ITEMS',
  'OTHER',
] as const;

export type MealFeedbackIssue = (typeof FEEDBACK_ISSUES)[number];
export const MEAL_TYPES = ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'] as const;
export type MealTypeValue = (typeof MEAL_TYPES)[number] | 'UNKNOWN';
export type HealthScoreValue = 'HEALTHY' | 'NEUTRAL' | 'UNHEALTHY';

export interface PipelineDecomposedIngredient {
  rowId: string;
  rawName: string;
  canonicalHint: string;
  gramsEstimated: number;
  minGrams: number;
  maxGrams: number;
  notes: string;
  portionKind: PortionKindValue;
  count?: number;
  perUnitGrams?: number;
  perUnitMinGrams?: number;
  perUnitMaxGrams?: number;
  sizeSpecifiedByUser: boolean;
}

export interface PipelineResolvedIngredient {
  rowId: string;
  rawName: string;
  canonicalName: string;
  matchType: string;
  grams: number;
  macros: Macros;
  source: 'db' | 'deterministic' | 'llm_fallback';
  portionKind: PortionKindValue;
  count?: number;
  perUnitGrams?: number;
}

export interface ClarificationOptionDTO {
  option_id: string;
  label: string;
  detail?: string;
  grams: number;
  calorie_delta: number;
}

export interface ClarificationDTO {
  clarification_id: string;
  row_id: string;
  ingredient_name: string;
  portion_kind: PortionKindValue;
  question: string;
  options: ClarificationOptionDTO[];
  default_option_id: string;
}

export interface MealTypeQuestionDTO {
  question: string;
  options: MealTypeValue[];
  inferred_meal_type?: MealTypeValue;
}

export interface MealHealthDTO {
  health_score: HealthScoreValue;
  health_score_reason: string;
}

interface PresentationResult {
  meal_name: string;
  quantity: string;
  meal_type: MealTypeValue;
  meal_type_confident: boolean;
  tip: string;
  health: MealHealthDTO | null;
}

export interface PipelineClarificationOptionWire {
  optionId: string;
  label: string;
  detail?: string;
  grams: number;
  calorieDelta: number;
}

export interface PipelineClarificationWire {
  clarificationId: string;
  rowId: string;
  ingredientName: string;
  portionKind: PortionKindValue;
  question: string;
  options: PipelineClarificationOptionWire[];
  defaultOptionId: string;
}

export interface PipelineEventBase {
  analysisId: string;
}

export type PipelineEvent =
  | {
      step: 'STARTED';
      data: PipelineEventBase;
    }
  | {
      step: 'DECOMPOSITION';
      data: PipelineEventBase & {
        mealName: string;
        confidence: number;
        ingredients: PipelineDecomposedIngredient[];
        inferredMealType: MealTypeValue;
        mealTypeConfident: boolean;
      };
    }
  | {
      step: 'INGREDIENTS';
      data: PipelineEventBase & { mealName: string; ingredients: PipelineResolvedIngredient[] };
    }
  | {
      step: 'UNCERTAINTY';
      data: PipelineEventBase & {
        variancePercent: number;
        mealName: string;
        needsClarification: boolean;
        calorieBand: { min: number; max: number };
        clarifications: PipelineClarificationWire[];
      };
    }
  | {
      step: 'MEAL_TYPE_QUESTION';
      data: PipelineEventBase & {
        mealName: string;
        question: string;
        options: MealTypeValue[];
        inferredMealType?: MealTypeValue;
      };
    }
  | {
      step: 'RESULT';
      data: PipelineEventBase & {
        mealName: string;
        quantity: string;
        mealType: MealTypeValue;
        mealTypeSource: MealTypeSource;
        tip: string;
        health: { healthScore: HealthScoreValue; healthScoreReason: string } | null;
        macros: Macros;
        calorieConfidence: string;
        confidenceReasons: string[];
        calorieBand: { min: number; max: number };
        ingredients: PipelineResolvedIngredient[];
      };
    }
  | {
      step: 'ERROR';
      data: PipelineEventBase & { message: string };
    };

export interface AnalysisRequestOptions {
  analysisId?: string;
  parentAnalysisId?: string;
  userId?: string;
  locale?: string;
  countryCode?: string;
  feedbackIssues?: MealFeedbackIssue[];
  otherText?: string;
  selectedMealType?: MealTypeValue;
  selectedMealTypeSource?: MealTypeSource;
  logger?: AnalysisLogger;
  trace?: AnalysisTrace;
}

interface PipelineRunContext {
  analysisId: string;
  source: 'text' | 'image';
  requestPayload: Record<string, unknown>;
  parentAnalysisId?: string;
  userId?: string;
  locale: string;
  countryCode?: string;
  selectedMealType?: MealTypeValue;
  selectedMealTypeSource?: MealTypeSource;
  feedbackIssues?: MealFeedbackIssue[];
  otherText?: string;
  logger?: AnalysisLogger;
  trace?: AnalysisTrace;
}

const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal description into individual atomic ingredients with gram and portion estimates. Inputs may be in any language; handle all world cuisines.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into atomic ingredients, but preserve the user's named dish context in raw_name or notes.
3. For each ingredient provide: raw_name, canonical_hint, grams_estimated, min_grams, max_grams, notes, portion_kind, count, per_unit_grams, per_unit_min_grams, per_unit_max_grams, size_specified_by_user.
4. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices.
6. confidence: 0-1 reflecting how confident you are overall.
7. inferred_meal_type: one of BREAKFAST, LUNCH, DINNER, SNACK, or UNKNOWN.
   - Use UNKNOWN when the description/image does not clearly imply a single meal context.
   - Strong signals: explicit keywords ("breakfast", "lunch", "dinner"), classic dishes with fixed meal context (pancakes/cereal → BREAKFAST; ramen/curry-rice → LUNCH/DINNER), tiny portions/sweets → SNACK.
8. meal_type_confident: true ONLY when the meal_name or visible context strongly implies a single meal type. When in doubt, set false so the user is asked.
9. Set portion_kind to COUNT for foods that come in discrete units (roti, chapati, bread slice, egg, idli, dosa, samosa, banana, piece). Set BULK for spoon/cup/bowl foods (rice, dal, sabzi, curry, sauces, milk, oil). Set PINCH for trace amounts (salt, spices, garnishes).
10. For COUNT, emit count when the user's words imply it. Fractional counts are allowed (0.5 = half). Also emit per_unit_grams, per_unit_min_grams, and per_unit_max_grams. The server will recompute total grams as count × per_unit.
11. If the user states the size of a unit ("4 large rotis"), set size_specified_by_user=true and collapse per_unit_min_grams/per_unit_grams/per_unit_max_grams to that one size.
12. If the user mentions different sizes within the same food ("2 small + 2 large rotis"), emit separate ingredient rows instead of averaging.
13. canonical_hint MUST be a simple, single English food-database lookup term for one atomic ingredient, regardless of the input language. Preserve preparation state whenever it changes nutrition: use "lentils mature seeds cooked boiled without salt" for cooked dal, "rice white cooked" for cooked rice, and explicit "raw" or "dry" terms when the user means uncooked food. NEVER use slugs, paths, underscores, role labels, or compound alternatives with "or", "and", commas, or parentheses. When a dish admits multiple proteins, pick the single most traditional one. One lookup term per row.
14. Preserve defining components of named dishes. Masala dosa includes its potato filling; idli-sambar includes both idli and sambar. Do not silently reduce a named dish to only its wrapper, base, or garnish.
14. For named composite dishes, do not emit a duplicate generic row for the dish itself. "paneer sabzi" is one dish context; emit its likely atomic ingredients under that context rather than adding a separate "sabzi" or "vegetable curry" row.
15. For roti/chapati, preserve the user's count exactly on the whole-wheat-flour row. Add separate small rows for salt and oil/ghee/butter when appropriate; do not replace roti with synthetic raw-ingredient labels.

Portion references: 1 chapati/roti ≈ 30g whole wheat flour + 0-3g ghee/oil + a pinch of salt; 1 cup cooked rice ≈ 185g; 1 cup cooked dal ≈ 210g; 1 tbsp oil/ghee ≈ 14g; 1 medium egg ≈ 50g; 1 cup milk ≈ 245g; 1 medium banana ≈ 120g; 1 slice bread ≈ 30g; 1 cup noodles cooked ≈ 160g; 1 tbsp soy sauce ≈ 15g; 1 medium tortilla ≈ 30g.

Example — "2 rotis with paneer sabzi" → meal_name "Roti with paneer sabzi", inferred_meal_type UNKNOWN:
- raw_name "roti (whole wheat flour)", canonical_hint "whole wheat flour", portion_kind COUNT, count 2, per_unit_grams 30, grams_estimated 60, min_grams 50, max_grams 70.
- raw_name "roti (ghee)", canonical_hint "ghee", portion_kind BULK, grams_estimated 3, min_grams 0, max_grams 6.
- raw_name "roti (salt)", canonical_hint "salt", portion_kind PINCH, grams_estimated 1, min_grams 0, max_grams 2.
- raw_name "paneer sabzi (paneer)", canonical_hint "paneer", portion_kind BULK, grams_estimated 80, min_grams 60, max_grams 100.
- raw_name "paneer sabzi (onion)", canonical_hint "onion", portion_kind BULK, grams_estimated 40, min_grams 30, max_grams 60.
- raw_name "paneer sabzi (tomato)", canonical_hint "tomato", portion_kind BULK, grams_estimated 50, min_grams 30, max_grams 70.
- raw_name "paneer sabzi (oil)", canonical_hint "vegetable oil", portion_kind BULK, grams_estimated 10, min_grams 5, max_grams 15.
- raw_name "paneer sabzi (spices)", canonical_hint "curry powder", portion_kind PINCH, grams_estimated 2, min_grams 1, max_grams 3.`;

const DECOMPOSITION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const },
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          raw_name: { type: 'string' as const },
          canonical_hint: { type: 'string' as const },
          grams_estimated: { type: 'number' as const },
          min_grams: { type: 'number' as const },
          max_grams: { type: 'number' as const },
          notes: { type: 'string' as const },
          portion_kind: {
            type: 'string' as const,
            enum: ['COUNT', 'BULK', 'PINCH'],
          },
          count: { anyOf: [{ type: 'number' as const }, { type: 'null' as const }] },
          per_unit_grams: { anyOf: [{ type: 'number' as const }, { type: 'null' as const }] },
          per_unit_min_grams: { anyOf: [{ type: 'number' as const }, { type: 'null' as const }] },
          per_unit_max_grams: { anyOf: [{ type: 'number' as const }, { type: 'null' as const }] },
          size_specified_by_user: { type: 'boolean' as const },
        },
        required: [
          'raw_name',
          'canonical_hint',
          'grams_estimated',
          'min_grams',
          'max_grams',
          'notes',
          'portion_kind',
          'count',
          'per_unit_grams',
          'per_unit_min_grams',
          'per_unit_max_grams',
          'size_specified_by_user',
        ] as const,
        additionalProperties: false,
      },
    },
    confidence: { type: 'number' as const },
    inferred_meal_type: {
      type: 'string' as const,
      enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
    },
    meal_type_confident: { type: 'boolean' as const },
  },
  required: ['meal_name', 'ingredients', 'confidence', 'inferred_meal_type', 'meal_type_confident'] as const,
  additionalProperties: false,
};

const FALLBACK_SYSTEM_PROMPT = `You are a nutritional database. For each ingredient provided, return its macronutrient values per 100 grams. Use values consistent with USDA FoodData Central where possible.

Preparation state is mandatory: never return dry/raw values for an ingredient labeled cooked or boiled. In particular, cooked dal/lentils are roughly 110-130 kcal per 100g, not the 330-370 kcal typical of dry lentils.`;

const FALLBACK_SCHEMA = {
  type: 'object' as const,
  properties: {
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          name: { type: 'string' as const },
          kcal_per_100g: { type: 'number' as const },
          protein_per_100g: { type: 'number' as const },
          carbs_per_100g: { type: 'number' as const },
          fat_per_100g: { type: 'number' as const },
          fiber_per_100g: { type: 'number' as const },
        },
        required: ['name', 'kcal_per_100g', 'protein_per_100g', 'carbs_per_100g', 'fat_per_100g', 'fiber_per_100g'] as const,
        additionalProperties: false,
      },
    },
  },
  required: ['ingredients'] as const,
  additionalProperties: false,
};

const PRESENTATION_SYSTEM_PROMPT = `You turn a grounded meal analysis into a user-facing meal summary.

RULES:
1. Keep all user-facing text in the requested locale.
2. Return a short meal_name, a natural quantity string, a short helpful tip, meal_type, meal_type_confident, and optional health summary.
3. Use UNKNOWN for meal_type when the evidence is not strong enough.
4. Set meal_type_confident=false when the user should be asked explicitly.
5. Do not invent macros; use the provided numeric summary as context only.
6. quantity should be a short serving description such as "1 bowl", "2 slices", or "1 serving".
7. health_score should be one of HEALTHY, NEUTRAL, UNHEALTHY when health is present.`;

const PRESENTATION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const },
    quantity: { type: 'string' as const },
    meal_type: {
      type: 'string' as const,
      enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'],
    },
    meal_type_confident: { type: 'boolean' as const },
    tip: { type: 'string' as const },
    health: {
      anyOf: [
        {
          type: 'object' as const,
          properties: {
            health_score: {
              type: 'string' as const,
              enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'],
            },
            health_score_reason: { type: 'string' as const },
          },
          required: ['health_score', 'health_score_reason'] as const,
          additionalProperties: false,
        },
        { type: 'null' as const },
      ],
    },
  },
  required: ['meal_name', 'quantity', 'meal_type', 'meal_type_confident', 'tip', 'health'] as const,
  additionalProperties: false,
};

function normalize(name: string): string {
  return name.toLowerCase().replace(/[^a-z0-9\s]/g, '').replace(/\s+/g, ' ').trim();
}

function calcMacrosFromPer100g(per100g: LLMFallbackEntry, grams: number): Macros {
  const ratio = grams / 100;
  return {
    calories: Math.round(per100g.kcal_per_100g * ratio),
    protein: +(per100g.protein_per_100g * ratio).toFixed(1),
    carbs: +(per100g.carbs_per_100g * ratio).toFixed(1),
    fat: +(per100g.fat_per_100g * ratio).toFixed(1),
    fiber: +(per100g.fiber_per_100g * ratio).toFixed(1),
  };
}

function scaleMacros(macros: Macros, currentGrams: number, nextGrams: number): Macros {
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

function sumMacros(items: Macros[]): Macros {
  const total: Macros = { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
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

function asPortionKind(value: unknown): PortionKindValue {
  if (value === PortionKind.COUNT) return 'COUNT';
  if (value === PortionKind.PINCH) return 'PINCH';
  if (value === PortionKind.COUNT_QUESTION) return 'COUNT_QUESTION';
  return 'BULK';
}

function toWirePortionKind(value: PortionKindValue): PortionKind {
  switch (value) {
    case 'COUNT':
      return PortionKind.COUNT;
    case 'PINCH':
      return PortionKind.PINCH;
    case 'COUNT_QUESTION':
      return PortionKind.COUNT_QUESTION;
    case 'BULK':
      return PortionKind.BULK;
  }
}

function finiteNumber(value: unknown, fallback: number): number {
  const next = Number(value);
  return Number.isFinite(next) ? next : fallback;
}

function finiteOptionalNumber(value: unknown): number | null {
  if (value == null) return null;
  const next = Number(value);
  return Number.isFinite(next) ? next : null;
}

function cleanMealName(value: string): string {
  return value.trim();
}

function roundGram(value: number): number {
  return +value.toFixed(1);
}

function orderedBand(min: number, mid: number, max: number): { min: number; mid: number; max: number } {
  const values = [min, mid, max].map((v) => Math.max(0, roundGram(v))).sort((a, b) => a - b);
  return { min: values[0]!, mid: values[1]!, max: values[2]! };
}

const COOKED_DAL_USDA_HINT = 'lentils mature seeds cooked boiled without salt';
const PREPARATION_STATES = ['cooked', 'boiled', 'steamed', 'fried', 'roasted', 'raw', 'dry'] as const;

function refineCanonicalHint(rawName: string, hint: string, notes: string, sourceText: string): string {
  const normalizedHint = normalize(hint);
  const context = normalize(`${rawName} ${notes}`);
  const normalizedRawName = normalize(rawName);

  // Preserve the food identity stated by the user/model's display name when a
  // generated lookup hint drifts to a different food or an ambiguous generic
  // database row. Preparation can vary, but banana must not become a dried or
  // sweetened generic "BANANA" row and chickpea must not become split pea.
  if (/\bbananas?\b/.test(normalizedRawName) &&
      !/\b(?:dried|chips?|flour|bread|pudding)\b/.test(context)) {
    return 'bananas raw';
  }
  if (/\b(?:chickpeas?|garbanzo)\b/.test(normalizedRawName) &&
      /\b(?:cooked|boiled)\b/.test(context)) {
    return 'chickpeas garbanzo beans bengal gram mature seeds cooked boiled without salt';
  }

  // A dry/raw qualifier attached directly to the weighed food is stronger
  // than a later cooking instruction. Nutrition must describe the measured
  // state (for example 100 g dry oats cooked with water, not 100 g oatmeal).
  const normalizedSource = normalize(sourceText);
  if (/\b(?:oat|oats)\b/.test(normalizedRawName) &&
      (/\b(?:dry|raw|uncooked)\b/.test(normalizedRawName) ||
       /\b(?:dry|raw|uncooked)\b.{0,24}\b(?:oat|oats)\b|\b(?:oat|oats)\b.{0,24}\b(?:dry|raw|uncooked)\b/.test(normalizedSource))) {
    return 'oats';
  }

  if (/\b(?:bread|toast)\b/.test(context) && /\bwhole wheat flour\b/.test(normalizedHint)) {
    return 'bread whole wheat';
  }
  if (/\bpizza (?:crust|dough)\b|\b(?:crust|dough) for pizza\b/.test(normalizedRawName)) {
    return 'pizza crust';
  }

  // Named composite sides have reviewed database rows. Keep their identity
  // instead of allowing a decomposition hint to turn the entire serving into
  // one dense constituent (for example sambar -> lentils or chutney -> coconut).
  if (/\bsambar\b/.test(normalizedRawName)) return 'sambar vegetable stew';
  if (/\bcoconut chutney\b/.test(normalizedRawName)) return 'coconut chutney';

  // Represent dosa batter and its filling as separate atomic rows. This keeps
  // lookup stable when the LLM calls the batter rice; the bounded template
  // adds a filling only when decomposition omitted it.
  if (/\bdosa\b/.test(normalizedRawName) &&
      /\b(?:dosa|batter|rice|urad|lentil|tortilla)\b/.test(normalizedHint)) {
    return 'dosa plain';
  }

  if (/\b(?:dal|daal)\b/.test(context) && /^(?:dal|daal|lentil|lentils|pulse|pulses)$/.test(normalizedHint)) {
    return COOKED_DAL_USDA_HINT;
  }

  const preparation = PREPARATION_STATES.find((state) => new RegExp(`\\b${state}\\b`).test(context));
  const hintHasPreparation = PREPARATION_STATES.some((state) => new RegExp(`\\b${state}\\b`).test(normalizedHint));
  return preparation && !hintHasPreparation ? `${hint} ${preparation}`.trim() : hint;
}

function explicitTemplateGrams(
  sourceText: string,
  rawName: string,
  canonicalHint: string,
  notes: string,
  template: PortionTemplate
): number | undefined {
  const optionForSize = (size: string): number | undefined => {
    const preferredIds = size === 'small'
      ? ['small', 'thin', template.defaultOptionId]
      : size === 'medium'
        ? ['medium', 'regular', template.defaultOptionId]
        : size === 'large'
          ? ['large', 'thick', template.defaultOptionId]
          : ['regular', template.defaultOptionId];
    for (const optionId of preferredIds) {
      const option = template.options.find((candidate) => candidate.optionId === optionId);
      if (option) return option.perUnitGrams;
    }
    return undefined;
  };
  const noteSize = normalize(notes).match(/\b(small|medium|regular|large)\b/)?.[1];
  if (noteSize) return optionForSize(noteSize);

  const sourceTokens = normalize(sourceText).split(' ').filter(Boolean);
  const identityTokens = new Set(
    normalize(`${rawName} ${canonicalHint}`)
      .split(' ')
      .filter((token) => token.length > 2)
      .map((token) => token.replace(/s$/, ''))
  );
  const sizeTokens = new Set(['small', 'medium', 'regular', 'large']);
  for (let index = 0; index < sourceTokens.length; index += 1) {
    const size = sourceTokens[index]!;
    if (!sizeTokens.has(size)) continue;
    const nearbyIdentity = sourceTokens
      .slice(index + 1, index + 5)
      .map((token) => token.replace(/s$/, ''))
      .some((token) => identityTokens.has(token));
    if (!nearbyIdentity) continue;
    return optionForSize(size);
  }
  return undefined;
}

function normalizeDecomposition(
  decomposition: LLMDecomposition,
  logger?: AnalysisLogger,
  analysisId?: string,
  sourceText: string = ''
): NormalizedDecomposition {
  const ingredients = decomposition.ingredients.map((ingredient) => {
    const rawName = String(ingredient.raw_name ?? '').trim();
    const notes = String(ingredient.notes ?? '');
    const canonicalHint = refineCanonicalHint(
      rawName,
      String(ingredient.canonical_hint ?? rawName).trim(),
      notes,
      sourceText
    );
    const gramsEstimated = finiteNumber(ingredient.grams_estimated, 0);
    const minGrams = finiteNumber(ingredient.min_grams, gramsEstimated);
    const maxGrams = finiteNumber(ingredient.max_grams, gramsEstimated);
    const rowId = String(ingredient.rowId ?? ingredient.row_id ?? randomUUID());
    const portionKind = asPortionKind(ingredient.portion_kind);
    const count = finiteOptionalNumber(ingredient.count);
    const sizeSpecifiedByUser = Boolean(ingredient.size_specified_by_user);

    if (portionKind === 'COUNT' && count != null && count > 0) {
      const portionTemplate = lookupTemplate(canonicalHint, rawName);
      const explicitPerUnitGrams = sizeSpecifiedByUser && portionTemplate
        ? explicitTemplateGrams(sourceText, rawName, canonicalHint, notes, portionTemplate)
        : undefined;
      const perUnitGrams = explicitPerUnitGrams ??
        finiteOptionalNumber(ingredient.per_unit_grams) ?? gramsEstimated / count;
      const collapsedPerUnitMin = sizeSpecifiedByUser
        ? perUnitGrams
        : finiteOptionalNumber(ingredient.per_unit_min_grams) ?? minGrams / count;
      const collapsedPerUnitMax = sizeSpecifiedByUser
        ? perUnitGrams
        : finiteOptionalNumber(ingredient.per_unit_max_grams) ?? maxGrams / count;
      const perUnitBand = orderedBand(collapsedPerUnitMin, perUnitGrams, collapsedPerUnitMax);
      const totalMax = count * perUnitBand.max;

      if (count > 20 || totalMax > 2000) {
        mealAnalysisDecompositionIssuesTotal.labels({ issue: 'implausible_count' }).inc();
        logAnalysis(logger, 'warn', 'decomposition_implausible_count', {
          analysisId,
          rowId,
          rawName,
          count,
          perUnitMaxGrams: perUnitBand.max,
          totalMax,
        });
        const bulkBand = orderedBand(minGrams, gramsEstimated, Math.min(maxGrams, 2000));
        return {
          rowId,
          rawName,
          canonicalHint,
          gramsEstimated: bulkBand.mid,
          minGrams: bulkBand.min,
          maxGrams: bulkBand.max,
          notes,
          portionKind: 'BULK' as PortionKindValue,
          count: null,
          perUnitGrams: null,
          perUnitMinGrams: null,
          perUnitMaxGrams: null,
          sizeSpecifiedByUser: false,
        };
      }

      return {
        rowId,
        rawName,
        canonicalHint,
        gramsEstimated: roundGram(count * perUnitBand.mid),
        minGrams: roundGram(count * perUnitBand.min),
        maxGrams: roundGram(count * perUnitBand.max),
        notes,
        portionKind,
        count,
        perUnitGrams: perUnitBand.mid,
        perUnitMinGrams: perUnitBand.min,
        perUnitMaxGrams: perUnitBand.max,
        sizeSpecifiedByUser,
      };
    }

    const band = orderedBand(minGrams, gramsEstimated, maxGrams);
    return {
      rowId,
      rawName,
      canonicalHint,
      gramsEstimated: band.mid,
      minGrams: band.min,
      maxGrams: band.max,
      notes,
      portionKind,
      count: null,
      perUnitGrams: finiteOptionalNumber(ingredient.per_unit_grams),
      perUnitMinGrams: finiteOptionalNumber(ingredient.per_unit_min_grams),
      perUnitMaxGrams: finiteOptionalNumber(ingredient.per_unit_max_grams),
      sizeSpecifiedByUser,
    };
  });

  // A plain roti description does not imply a tablespoon of oil. Bound an
  // LLM-inferred cooking-fat row to the documented 0-3 g per roti unless the
  // user explicitly states a fat; explicit quantity anchors below remain
  // authoritative and are never capped.
  const normalizedSource = normalize(sourceText);
  if (/\b(?:roti|rotis|chapati|chapatis)\b/.test(normalizedSource) &&
      !/\b(?:oil|ghee|butter)\b/.test(normalizedSource)) {
    const rotiCount = ingredients.reduce((total, ingredient) => {
      const identity = normalize(`${ingredient.rawName} ${ingredient.canonicalHint} ${ingredient.notes}`);
      if (ingredient.portionKind !== 'COUNT' ||
          !/\b(?:roti|chapati|whole wheat flour)\b/.test(identity)) return total;
      return total + (ingredient.count ?? 0);
    }, 0);
    const inferredFatCap = rotiCount * 3;
    if (inferredFatCap > 0) {
      for (const ingredient of ingredients) {
        const identity = normalize(`${ingredient.rawName} ${ingredient.canonicalHint}`);
        if (!/\b(?:oil|ghee|butter)\b/.test(identity)) continue;
        ingredient.gramsEstimated = Math.min(ingredient.gramsEstimated, inferredFatCap);
        ingredient.minGrams = Math.min(ingredient.minGrams, inferredFatCap);
        ingredient.maxGrams = Math.min(ingredient.maxGrams, inferredFatCap);
      }
    }
  }

  const assignedRows = new Set<string>();
  for (const anchor of extractExplicitQuantityAnchors(sourceText)) {
    const anchorTokens = normalizedIdentityTokens(anchor.foodText);
    let best: (typeof ingredients)[number] | undefined;
    let bestOverlap = 0;
    for (const ingredient of ingredients) {
      if (assignedRows.has(ingredient.rowId)) continue;
      const ingredientTokens = normalizedIdentityTokens(`${ingredient.rawName} ${ingredient.canonicalHint}`);
      let overlap = 0;
      for (const token of anchorTokens) if (ingredientTokens.has(token)) overlap += 1;
      if (overlap > bestOverlap) {
        best = ingredient;
        bestOverlap = overlap;
      }
    }
    if (!best || bestOverlap === 0) continue;
    best.gramsEstimated = anchor.grams;
    best.minGrams = anchor.grams;
    best.maxGrams = anchor.grams;
    best.sizeSpecifiedByUser = true;
    if (best.portionKind === 'COUNT' && best.count != null && best.count > 0) {
      const perUnit = roundGram(anchor.grams / best.count);
      best.perUnitGrams = perUnit;
      best.perUnitMinGrams = perUnit;
      best.perUnitMaxGrams = perUnit;
    }
    assignedRows.add(best.rowId);
  }

  const ingredientCorpus = ingredients
    .map((ingredient) => normalize(`${ingredient.rawName} ${ingredient.canonicalHint}`))
    .join(' ');
  for (const component of missingDishTemplateComponents(sourceText, ingredientCorpus)) {
    ingredients.push({
      rowId: randomUUID(),
      ...component,
      portionKind: 'BULK',
      count: null,
      perUnitGrams: null,
      perUnitMinGrams: null,
      perUnitMaxGrams: null,
      sizeSpecifiedByUser: false,
    });
  }

  for (const ingredient of ingredients) {
    const bounds = dishTemplateGramBounds(
      sourceText,
      normalize(`${ingredient.rawName} ${ingredient.canonicalHint}`)
    );
    if (bounds == null) continue;
    ingredient.gramsEstimated = Math.max(bounds.minGrams, Math.min(ingredient.gramsEstimated, bounds.maxGrams));
    ingredient.minGrams = Math.max(bounds.minGrams, Math.min(ingredient.minGrams, bounds.maxGrams));
    ingredient.maxGrams = Math.max(bounds.minGrams, Math.min(ingredient.maxGrams, bounds.maxGrams));
  }

  return {
    mealName: cleanMealName(decomposition.meal_name ?? ''),
    ingredients,
    confidence: finiteNumber(decomposition.confidence, 0),
    inferredMealType: decomposition.inferred_meal_type ?? 'UNKNOWN',
    mealTypeConfident: Boolean(decomposition.meal_type_confident),
  };
}

const IDENTITY_TOKEN_STOP_WORDS = new Set([
  'a', 'an', 'and', 'cooked', 'fresh', 'grilled', 'of', 'raw', 'the', 'with',
]);

function normalizedIdentityTokens(value: string): Set<string> {
  const normalized = normalize(value)
    .split(' ')
    .map((token) => token.endsWith('ies') ? `${token.slice(0, -3)}y` : token.replace(/s$/, ''))
    .filter((token) => token.length > 1 && !IDENTITY_TOKEN_STOP_WORDS.has(token));
  return new Set(normalized);
}

function maybeLogDroppedCounts(
  input: string,
  decomposition: NormalizedDecomposition,
  logger?: AnalysisLogger,
  analysisId?: string
): void {
  if (!/\b\d+(?:\.\d+)?\b/.test(input)) return;
  const normalizedInput = normalize(input);
  const countMissing = decomposition.ingredients.some((ingredient) => {
    if (ingredient.portionKind !== 'COUNT' || ingredient.count != null) return false;
    const foodToken = normalize(ingredient.rawName).split(' ')[0];
    return foodToken.length > 0 && normalizedInput.includes(foodToken);
  });
  if (!countMissing) return;
  mealAnalysisDecompositionIssuesTotal.labels({ issue: 'count_dropped' }).inc();
  logAnalysis(logger, 'warn', 'decomposition_count_dropped', {
    analysisId,
    source: 'text',
  });
}

function analyzeUncertainty(resolved: ResolvedIngredient[]): UncertaintyReport {
  const minTotal = sumMacros(resolved.map((r) => r.minMacros));
  const maxTotal = sumMacros(resolved.map((r) => r.maxMacros));
  const midTotal = sumMacros(resolved.map((r) => r.macros));
  const avg = midTotal.calories || 1;
  const variancePercent = +((maxTotal.calories - minTotal.calories) / avg).toFixed(3);
  return {
    variancePercent,
    needsClarification: variancePercent > 0.15,
    minTotal,
    maxTotal,
  };
}

function buildCountQuestion(ingredient: ResolvedIngredient, locale: string): ClarificationDTO {
  const perUnitGrams = ingredient.perUnitGrams ?? (ingredient.grams || 35);
  const optionCounts = [
    { optionId: '1', count: 1 },
    { optionId: '2', count: 2 },
    { optionId: '3', count: 3 },
    { optionId: '4', count: 4 },
    { optionId: '5', count: 5 },
    { optionId: '6plus', count: 7 },
  ];
  return {
    clarification_id: `clr_${ingredient.rowId}_count`,
    row_id: ingredient.rowId,
    ingredient_name: ingredient.rawName,
    portion_kind: 'COUNT_QUESTION',
    question: localizeCountQuestion(ingredient.rawName, locale),
    options: optionCounts.map((option) => {
      const grams = roundGram(option.count * perUnitGrams);
      return {
        option_id: option.optionId,
        label: localizeCountOptionLabel(option.optionId, locale),
        grams,
        calorie_delta: scaleMacros(ingredient.macros, ingredient.grams, grams).calories - ingredient.macros.calories,
      };
    }),
    default_option_id: '2',
  };
}

function buildSizeQuestion(
  ingredient: ResolvedIngredient,
  template: PortionTemplate,
  locale: string,
  isFallback: boolean
): ClarificationDTO {
  const count = ingredient.portionKind === 'COUNT' ? ingredient.count ?? 1 : 1;
  const wirePortionKind = toWirePortionKind(ingredient.portionKind);

  return {
    clarification_id: `clr_${ingredient.rowId}`,
    row_id: ingredient.rowId,
    ingredient_name: ingredient.rawName,
    portion_kind: ingredient.portionKind,
    question: localizeSizeQuestion(
      ingredient.rawName,
      ingredient.portionKind === 'COUNT' ? count : null,
      wirePortionKind,
      locale,
    ),
    options: template.options.map((option) => {
      const grams = roundGram((ingredient.portionKind === 'COUNT' ? count : 1) * option.perUnitGrams);
      return {
        option_id: option.optionId,
        label: isFallback
          ? localizeFallbackOptionLabel(option.optionId, wirePortionKind, locale)
          : localizeOptionLabel(template.templateKey, option.optionId, locale),
        detail: localizeOptionDetail(option.perUnitGrams, wirePortionKind, locale),
        grams,
        calorie_delta: scaleMacros(ingredient.macros, ingredient.grams, grams).calories - ingredient.macros.calories,
      };
    }),
    default_option_id: template.defaultOptionId,
  };
}

function generateClarifications(resolved: ResolvedIngredient[], locale: string): ClarificationDTO[] {
  // Pure: produces clarifications without side effects. Metric recording lives
  // in `recordClarificationOutcomes` so it runs once per analysis (the apply
  // loop calls this function repeatedly and would inflate counters otherwise).
  const clarifications: ClarificationDTO[] = [];
  const mealCalories = sumMacros(resolved.map((r) => r.macros)).calories;
  const calorieThreshold = Math.max(50, mealCalories * 0.05);
  for (const ingredient of resolved) {
    if (ingredient.portionKind === 'PINCH') continue;
    if (ingredient.sizeSpecifiedByUser) continue;
    const calorieSpread = ingredient.maxMacros.calories - ingredient.minMacros.calories;
    if (calorieSpread < calorieThreshold) continue;
    if (ingredient.portionKind === 'COUNT' && ingredient.count == null) {
      clarifications.push(buildCountQuestion(ingredient, locale));
      continue;
    }

    const candidateTemplate = lookupTemplate(ingredient.canonicalHint, ingredient.rawName);
    const candidateDefault = candidateTemplate?.options.find(
      (option) => option.optionId === candidateTemplate.defaultOptionId
    );
    // Curated templates describe ordinary serving sizes. An inferred trace
    // amount (notably cooking oil/ghee) must retain its decomposition-time gram
    // band instead of being inflated to a full tablespoon by the default.
    const staticTemplate = candidateDefault &&
      candidateDefault.perUnitGrams <= Math.max(ingredient.maxGrams * 1.5, 2)
      ? candidateTemplate
      : undefined;
    const template =
      staticTemplate ??
      synthesizeFallbackTemplate(
        toWirePortionKind(ingredient.portionKind),
        ingredient.portionKind === 'COUNT' ? ingredient.perUnitGrams ?? ingredient.grams : ingredient.grams,
        ingredient.portionKind === 'COUNT' ? ingredient.perUnitMinGrams ?? ingredient.minGrams : ingredient.minGrams,
        ingredient.portionKind === 'COUNT' ? ingredient.perUnitMaxGrams ?? ingredient.maxGrams : ingredient.maxGrams
      );
    clarifications.push(buildSizeQuestion(ingredient, template, locale, !staticTemplate));
  }
  return clarifications;
}

/**
 * Counts each ingredient's outcome from the FINAL resolved state — exactly
 * once per analysis. Must be called after the apply loop has terminated,
 * not during it, so iterative regen does not double-count.
 *
 * `wasClarified` is the set of ingredients that ever appeared in any
 * generated clarification during the run (even if they were later collapsed
 * by an answer). Tracking this here distinguishes "calorie spread collapsed
 * because we asked the user" from "calorie spread was always below threshold".
 */
function recordClarificationOutcomes(
  resolved: ResolvedIngredient[],
  pendingClarifications: ClarificationDTO[],
  wasClarifiedRowIds: Set<string>
): void {
  const mealCalories = sumMacros(resolved.map((r) => r.macros)).calories;
  const calorieThreshold = Math.max(50, mealCalories * 0.05);
  const pendingRowIds = new Set(pendingClarifications.map((c) => c.row_id));
  for (const ingredient of resolved) {
    if (ingredient.portionKind === 'PINCH') {
      mealAnalysisClarificationSkipsTotal.labels({ reason: 'pinch' }).inc();
      continue;
    }
    if (ingredient.sizeSpecifiedByUser) {
      mealAnalysisClarificationSkipsTotal.labels({ reason: 'size_specified' }).inc();
      continue;
    }
    if (wasClarifiedRowIds.has(ingredient.rowId) || pendingRowIds.has(ingredient.rowId)) {
      const hadTemplate = lookupTemplate(ingredient.canonicalHint, ingredient.rawName) != null;
      mealAnalysisClarificationSkipsTotal
        .labels({ reason: hadTemplate ? 'clarified_with_template' : 'no_template_fallback_used' })
        .inc();
      continue;
    }
    const calorieSpread = ingredient.maxMacros.calories - ingredient.minMacros.calories;
    if (calorieSpread < calorieThreshold) {
      mealAnalysisClarificationSkipsTotal.labels({ reason: 'sub_threshold' }).inc();
    }
  }
}

function varianceToCalorieConfidence(variancePercent: number): string {
  if (variancePercent <= 0.15) return 'HIGH';
  if (variancePercent <= 0.3) return 'MEDIUM';
  return 'LOW';
}

function clarificationsToWire(clarifications: ClarificationDTO[]): PipelineClarificationWire[] {
  return clarifications.map((c) => ({
    clarificationId: c.clarification_id,
    rowId: c.row_id,
    ingredientName: c.ingredient_name,
    portionKind: c.portion_kind,
    question: c.question,
    options: c.options.map((o) => ({
      optionId: o.option_id,
      label: o.label,
      detail: o.detail,
      grams: o.grams,
      calorieDelta: o.calorie_delta,
    })),
    defaultOptionId: c.default_option_id,
  }));
}

function toDecompositionWire(decomposition: NormalizedDecomposition): PipelineDecomposedIngredient[] {
  return decomposition.ingredients.map((ingredient) => ({
    rowId: ingredient.rowId,
    rawName: ingredient.rawName,
    canonicalHint: ingredient.canonicalHint,
    gramsEstimated: ingredient.gramsEstimated,
    minGrams: ingredient.minGrams,
    maxGrams: ingredient.maxGrams,
    notes: ingredient.notes,
    portionKind: ingredient.portionKind,
    count: ingredient.count ?? undefined,
    perUnitGrams: ingredient.perUnitGrams ?? undefined,
    perUnitMinGrams: ingredient.perUnitMinGrams ?? undefined,
    perUnitMaxGrams: ingredient.perUnitMaxGrams ?? undefined,
    sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
  }));
}

function toResolvedIngredientWire(resolved: ResolvedIngredient[]): PipelineResolvedIngredient[] {
  return resolved.map((ingredient) => ({
    rowId: ingredient.rowId,
    rawName: ingredient.rawName,
    canonicalName: ingredient.match.canonicalName,
    matchType: ingredient.match.matchType,
    grams: ingredient.grams,
    macros: ingredient.macros,
    source: ingredient.source,
    portionKind: ingredient.portionKind,
    count: ingredient.count ?? undefined,
    perUnitGrams: ingredient.perUnitGrams ?? undefined,
  }));
}

function logAnalysis(
  logger: AnalysisLogger | undefined,
  level: 'info' | 'warn' | 'error',
  event: string,
  data: Record<string, unknown>
): void {
  if (!logger) return;
  logger[level](
    {
      type: 'meal_analysis_v2',
      event,
      ...data,
    },
    event
  );
}

export function createAnalysisTrace(): AnalysisTrace {
  return {
    startedAt: Date.now(),
    steps: [],
    llmAttempts: [],
    llmCallCount: 0,
    usdaLookupCount: 0,
    dbWriteCount: 0,
  };
}

export function summarizeAnalysisTrace(trace: AnalysisTrace | undefined): Record<string, unknown> | undefined {
  if (!trace) return undefined;
  return {
    totalDurationMs: Date.now() - trace.startedAt,
    llmCallCount: trace.llmCallCount,
    llmAttemptCount: trace.llmAttempts.length,
    llmFailedAttemptCount: trace.llmAttempts.filter((attempt) => attempt.outcome === 'error').length,
    usdaLookupCount: trace.usdaLookupCount,
    dbWriteCount: trace.dbWriteCount,
    steps: trace.steps,
    llmAttempts: trace.llmAttempts,
  };
}

async function traceAsync<T>(
  trace: AnalysisTrace | undefined,
  category: TraceStepCategory,
  name: string,
  meta: Record<string, unknown>,
  fn: () => Promise<T>
): Promise<T> {
  const startedAt = Date.now();
  try {
    const result = await fn();
    const durationMs = Date.now() - startedAt;
    mealAnalysisTraceStepSeconds.labels(category, name).observe(durationMs / 1000);
    if (trace) {
      trace.steps.push({ category, name, durationMs, meta });
      if (category === 'llm') trace.llmCallCount += 1;
      if (category === 'usda') trace.usdaLookupCount += 1;
      if (category === 'db') trace.dbWriteCount += 1;
    }
    return result;
  } catch (error) {
    const durationMs = Date.now() - startedAt;
    mealAnalysisTraceStepSeconds.labels(category, name).observe(durationMs / 1000);
    if (trace) {
      trace.steps.push({
        category,
        name,
        durationMs,
        meta: {
          ...meta,
          ok: false,
          error: error instanceof Error ? error.message : 'Unknown error',
        },
      });
      if (category === 'llm') trace.llmCallCount += 1;
      if (category === 'usda') trace.usdaLookupCount += 1;
      if (category === 'db') trace.dbWriteCount += 1;
    }
    throw error;
  }
}

function summarizeResolvedSources(resolved: ResolvedIngredient[]): {
  total: number;
  dbCount: number;
  deterministicCount: number;
  llmFallbackCount: number;
  unmatchedCount: number;
  matchTypes: Record<string, number>;
} {
  const summary = {
    total: resolved.length,
    dbCount: 0,
    deterministicCount: 0,
    llmFallbackCount: 0,
    unmatchedCount: 0,
    matchTypes: {} as Record<string, number>,
  };

  for (const ingredient of resolved) {
    if (ingredient.source === 'db') summary.dbCount += 1;
    if (ingredient.source === 'deterministic') summary.deterministicCount += 1;
    if (ingredient.source === 'llm_fallback') summary.llmFallbackCount += 1;
    if (ingredient.match.matchType === 'unmatched') summary.unmatchedCount += 1;
    summary.matchTypes[ingredient.match.matchType] =
      (summary.matchTypes[ingredient.match.matchType] ?? 0) + 1;
  }

  return summary;
}

function buildCorrectionContext(issues?: MealFeedbackIssue[], otherText?: string): string {
  if ((!issues || issues.length === 0) && !otherText) return '';
  return [
    'User feedback about the previous analysis:',
    issues && issues.length > 0 ? `- Issues: ${issues.join(', ')}` : '',
    otherText ? `- Additional note: ${otherText}` : '',
    'Use this to correct ingredient identification, quantity, and presentation.',
  ]
    .filter(Boolean)
    .join('\n');
}

function detectExplicitMealTypeFromText(input: string): MealTypeValue | undefined {
  const normalized = normalize(input);
  if (normalized.includes('breakfast')) return 'BREAKFAST';
  if (normalized.includes('lunch')) return 'LUNCH';
  if (normalized.includes('dinner') || normalized.includes('supper')) return 'DINNER';
  if (normalized.includes('snack')) return 'SNACK';
  return undefined;
}

function buildErrorEvent(analysisId: string, message: string): PipelineEvent {
  return { step: 'ERROR', data: { analysisId, message } };
}

function getMealAnalysisClient(trace?: AnalysisTrace): MealAnalysisLlmClient {
  return createMealAnalysisLlmClient({
    onAttempt: (attempt) => trace?.llmAttempts.push(attempt),
  });
}

function formatIngredientSummary(resolved: ResolvedIngredient[]): string {
  return resolved
    .map(
      (ingredient) =>
        `- ${ingredient.rawName}: ${ingredient.grams}g, ${ingredient.macros.calories} kcal, ${ingredient.macros.protein}g protein, ${ingredient.macros.carbs}g carbs, ${ingredient.macros.fat}g fat`
    )
    .join('\n');
}

async function decomposeFromText(
  client: MealAnalysisLlmClient,
  input: string,
  correctionContext?: string
): Promise<LLMDecomposition> {
  const userContent = correctionContext ? `${input}\n\n${correctionContext}` : input;
  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      { role: 'user', content: userContent },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_completion_tokens: 1200,
  }, { operation: 'decompose_text' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function decomposeFromImage(
  client: MealAnalysisLlmClient,
  imageUrl: string,
  correctionContext?: string
): Promise<LLMDecomposition> {
  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      {
        role: 'user',
        content: [
          {
            type: 'text',
            text: correctionContext
              ? `Analyze this meal image.\n\n${correctionContext}`
              : 'Analyze this meal image.',
          },
          { type: 'image_url', image_url: { url: imageUrl } },
        ],
      },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_completion_tokens: 1200,
  }, { operation: 'decompose_image' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function estimateMacrosViaLLM(client: MealAnalysisLlmClient, names: string[]): Promise<Map<string, LLMFallbackEntry>> {
  if (names.length === 0) return new Map();
  const result = new Map<string, LLMFallbackEntry>();
  const missingNames: string[] = [];
  for (const name of names) {
    const cached = fallbackNutritionCache.get(fallbackCacheKey(name));
    if (cached) result.set(normalize(name), cached);
    else missingNames.push(name);
  }
  if (missingNames.length === 0) return result;

  const prompt = missingNames.map((name, index) => `${index + 1}. ${name}`).join('\n');
  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
      { role: 'user', content: `Provide per-100g macros for:\n${prompt}` },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'macro_fallback', schema: FALLBACK_SCHEMA, strict: true },
    },
    max_completion_tokens: 800,
  }, { operation: 'estimate_macros_fallback' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM fallback response');
  const parsed = JSON.parse(raw) as { ingredients: LLMFallbackEntry[] };
  for (const entry of parsed.ingredients) {
    if (isPlausibleFallbackEntry(entry)) {
      result.set(normalize(entry.name), entry);
      cacheFallbackEntry(entry.name, entry);
    }
  }
  for (let i = 0; i < missingNames.length && i < parsed.ingredients.length; i++) {
    const entry = parsed.ingredients[i]!;
    if (isPlausibleFallbackEntry(entry)) {
      result.set(normalize(missingNames[i]!), entry);
      cacheFallbackEntry(missingNames[i]!, entry);
    }
  }
  return result;
}

async function resolveIngredients(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  logger?: AnalysisLogger,
  analysisId?: string,
  trace?: AnalysisTrace
): Promise<ResolvedIngredient[]> {
  const resolved: ResolvedIngredient[] = [];
  const unmatched: { index: number; ingredient: NormalizedIngredient }[] = [];

  // Water contributes no calories or macros. Treat this as a physical invariant
  // instead of trusting whichever generic/branded "water" row happens to rank
  // first in a USDA dataset release.
  const isPlainWater = (ingredient: NormalizedIngredient): boolean =>
    [ingredient.rawName, ingredient.canonicalHint].some((value) =>
      /^(?:plain |tap |drinking )?water$/.test(normalize(value))
    );

  // USDA lookups are independent — run them in parallel to collapse per-ingredient latency.
  const usdaMatches = await Promise.all(
    decomposition.ingredients.map((ingredient) =>
      isPlainWater(ingredient)
        ? Promise.resolve({ row: null, matchType: 'unmatched' as const, score: 0, confidenceMargin: 1 })
        : traceAsync(
        trace,
        'usda',
        'canonicalize_with_usda',
        {
          analysisId,
          ingredient: ingredient.rawName,
          canonicalHint: ingredient.canonicalHint,
        },
        () => canonicalizeWithUsda(ingredient.canonicalHint)
      )
    )
  );

  for (let i = 0; i < decomposition.ingredients.length; i++) {
    const ingredient = decomposition.ingredients[i]!;
    const usdaMatch = usdaMatches[i]!;
    const deterministicWater = isPlainWater(ingredient);
    const match: CanonicalMatch = deterministicWater
      ? {
          foodId: 'deterministic:water',
          canonicalName: 'Water',
          score: 1,
          matchType: 'deterministic',
        }
      : usdaMatch.row
      ? {
          foodId: String(usdaMatch.row.fdc_id),
          canonicalName: usdaMatch.row.description,
          score: usdaMatch.score,
          matchType: usdaMatch.matchType,
        }
      : {
          foodId: '',
          canonicalName: ingredient.canonicalHint,
          score: 0,
          matchType: 'unmatched',
        };
    const macros = deterministicWater
      ? { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 }
      : usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.gramsEstimated)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    const minMacros = deterministicWater
      ? { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 }
      : usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.minGrams)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    const maxMacros = deterministicWater
      ? { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 }
      : usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.maxGrams)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    if (match.matchType === 'unmatched') unmatched.push({ index: resolved.length, ingredient });
    resolved.push({
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      canonicalHint: ingredient.canonicalHint,
      match,
      grams: ingredient.gramsEstimated,
      minGrams: ingredient.minGrams,
      maxGrams: ingredient.maxGrams,
      macros,
      minMacros,
      maxMacros,
      source: deterministicWater
        ? 'deterministic'
        : match.matchType === 'unmatched'
          ? 'llm_fallback'
          : 'db',
      portionKind: ingredient.portionKind,
      count: ingredient.count,
      perUnitGrams: ingredient.perUnitGrams,
      perUnitMinGrams: ingredient.perUnitMinGrams,
      perUnitMaxGrams: ingredient.perUnitMaxGrams,
      sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
    });
  }

  if (unmatched.length > 0) {
    const unmatchedHints = unmatched.map((item) => item.ingredient.canonicalHint);
    try {
      const fallbackMap = await traceAsync(
        trace,
        'llm',
        'estimate_macros_fallback',
        {
          analysisId,
          model: OPENAI_MEAL_ANALYSIS_MODEL,
          unmatchedCount: unmatched.length,
          unmatchedHints,
        },
        () => estimateMacrosViaLLM(client, unmatchedHints)
      );
      for (const { index, ingredient } of unmatched) {
        const entry = fallbackMap.get(normalize(ingredient.canonicalHint));
        if (!entry) continue;
        const current = resolved[index];
        current.macros = calcMacrosFromPer100g(entry, ingredient.gramsEstimated);
        current.minMacros = calcMacrosFromPer100g(entry, ingredient.minGrams);
        current.maxMacros = calcMacrosFromPer100g(entry, ingredient.maxGrams);
        current.match = { ...current.match, matchType: 'llm_fallback' };
        current.source = 'llm_fallback';
      }
      logAnalysis(logger, 'warn', 'llm_macro_fallback_applied', {
        analysisId,
        unmatchedCount: unmatched.length,
        unmatchedHints,
      });
    } catch {
      // Keep unresolved items as zero macros.
      logAnalysis(logger, 'error', 'llm_macro_fallback_failed', {
        analysisId,
        unmatchedCount: unmatched.length,
        unmatchedHints,
      });
    }
  }

  return resolved;
}

function recalculateIngredient(ingredient: ResolvedIngredient, nextGrams: number): ResolvedIngredient {
  const nextMacros = scaleMacros(ingredient.macros, ingredient.grams, nextGrams);
  return {
    ...ingredient,
    grams: nextGrams,
    minGrams: nextGrams,
    maxGrams: nextGrams,
    macros: nextMacros,
    minMacros: nextMacros,
    maxMacros: nextMacros,
  };
}

function recalculateIngredientBand(
  ingredient: ResolvedIngredient,
  nextGrams: number,
  nextMinGrams: number,
  nextMaxGrams: number
): ResolvedIngredient {
  return {
    ...ingredient,
    grams: nextGrams,
    minGrams: nextMinGrams,
    maxGrams: nextMaxGrams,
    macros: scaleMacros(ingredient.macros, ingredient.grams, nextGrams),
    minMacros: scaleMacros(ingredient.macros, ingredient.grams, nextMinGrams),
    maxMacros: scaleMacros(ingredient.macros, ingredient.grams, nextMaxGrams),
  };
}

function selectedCountFromOption(option: ClarificationOptionDTO, ingredient: ResolvedIngredient): number | null {
  if (option.option_id === '6plus') return 7;
  const parsed = Number(option.option_id);
  if (Number.isFinite(parsed) && parsed > 0) return parsed;
  const perUnit = ingredient.perUnitGrams ?? 0;
  if (perUnit > 0) return option.grams / perUnit;
  return null;
}

/**
 * Merge two answer lists by clarification_id, with newer entries winning.
 * Used by `continueMealAnalysis` to combine the session's persisted answers
 * (e.g. from a prior count-question round) with the answers in the current
 * `/clarify` request, so the cumulative state survives multi-round flows.
 */
function mergeClarificationAnswers(
  prior: MealClarificationAnswer[],
  next: MealClarificationAnswer[]
): MealClarificationAnswer[] {
  const byId = new Map<string, MealClarificationAnswer>();
  for (const answer of prior) {
    if (answer.clarificationId) byId.set(answer.clarificationId, answer);
  }
  for (const answer of next) {
    if (answer.clarificationId) byId.set(answer.clarificationId, answer);
  }
  return Array.from(byId.values());
}

function applyClarificationAnswers(
  resolved: ResolvedIngredient[],
  clarifications: ClarificationDTO[],
  answers: MealClarificationAnswer[]
): ResolvedIngredient[] {
  const clarificationMap = new Map(clarifications.map((clarification) => [clarification.clarification_id, clarification]));
  const ingredientMap = new Map(resolved.map((ingredient) => [ingredient.rowId, ingredient]));

  for (const answer of answers) {
    const clarification = clarificationMap.get(answer.clarificationId);
    if (!clarification) continue;
    const option =
      clarification.options.find((candidate) => candidate.option_id === answer.selectedOptionId) ??
      clarification.options.find((candidate) => candidate.option_id === clarification.default_option_id) ??
      clarification.options[0];
    if (!option) continue;

    const ingredient = ingredientMap.get(clarification.row_id);
    if (!ingredient) continue;

    if (clarification.portion_kind === 'COUNT_QUESTION') {
      const count = selectedCountFromOption(option, ingredient);
      if (count == null) continue;
      const perUnitGrams = ingredient.perUnitGrams ?? roundGram(option.grams / count);
      const perUnitMinGrams = ingredient.perUnitMinGrams ?? perUnitGrams;
      const perUnitMaxGrams = ingredient.perUnitMaxGrams ?? perUnitGrams;
      const next = recalculateIngredientBand(
        ingredient,
        roundGram(count * perUnitGrams),
        roundGram(count * perUnitMinGrams),
        roundGram(count * perUnitMaxGrams)
      );
      ingredientMap.set(ingredient.rowId, {
        ...next,
        portionKind: 'COUNT',
        count,
        perUnitGrams,
        perUnitMinGrams,
        perUnitMaxGrams,
      });
      continue;
    }

    ingredientMap.set(ingredient.rowId, recalculateIngredient(ingredient, option.grams));
  }

  return resolved.map((ingredient) => ingredientMap.get(ingredient.rowId) ?? ingredient);
}

async function enrichPresentationFromText(
  client: MealAnalysisLlmClient,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  correctionContext: string,
  mealNameHint: string
): Promise<PresentationResult> {
  const textDescription = String(context.requestPayload.textDescription ?? '');
  const userPrompt = [
    `Original meal description: ${textDescription}`,
    mealNameHint
      ? `Canonical meal name hint: Use "${mealNameHint}" as the meal name unless the original evidence clearly supports a better, more specific title.`
      : '',
    correctionContext,
    `Total macros: ${totalMacros.calories} kcal, ${totalMacros.protein}g protein, ${totalMacros.carbs}g carbs, ${totalMacros.fat}g fat, ${totalMacros.fiber}g fiber`,
    `Ingredients:\n${formatIngredientSummary(resolved)}`,
    context.selectedMealType
      ? `The user explicitly selected meal type ${context.selectedMealType}. You must use that as meal_type and treat meal_type_confident as true.`
      : '',
  ]
    .filter(Boolean)
    .join('\n\n');

  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      {
        role: 'system',
        content: `${getFoodAnalysisSystemPrompt(context.locale, context.countryCode)}\n${PRESENTATION_SYSTEM_PROMPT}`,
      },
      { role: 'user', content: userPrompt },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_presentation', schema: PRESENTATION_SCHEMA, strict: true },
    },
    max_completion_tokens: 800,
  }, { operation: 'enrich_presentation' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty presentation response');
  return JSON.parse(raw) as PresentationResult;
}

async function enrichPresentationFromImage(
  client: MealAnalysisLlmClient,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  correctionContext: string,
  mealNameHint: string
): Promise<PresentationResult> {
  const imageUrl = String(context.requestPayload.imageUrl ?? '');
  const prompt = [
    mealNameHint
      ? `Canonical meal name hint: Use "${mealNameHint}" as the meal name unless the image clearly supports a better, more specific title.`
      : '',
    correctionContext,
    `Total macros: ${totalMacros.calories} kcal, ${totalMacros.protein}g protein, ${totalMacros.carbs}g carbs, ${totalMacros.fat}g fat, ${totalMacros.fiber}g fiber`,
    `Ingredients:\n${formatIngredientSummary(resolved)}`,
    context.selectedMealType
      ? `The user explicitly selected meal type ${context.selectedMealType}. You must use that as meal_type and treat meal_type_confident as true.`
      : '',
  ]
    .filter(Boolean)
    .join('\n\n');

  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      {
        role: 'system',
        content: `${getFoodAnalysisSystemPrompt(context.locale, context.countryCode)}\n${PRESENTATION_SYSTEM_PROMPT}`,
      },
      {
        role: 'user',
        content: [
          { type: 'text', text: `Build the final meal summary from this image and the grounded nutrition details.\n\n${prompt}` },
          { type: 'image_url', image_url: { url: imageUrl } },
        ],
      },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_presentation', schema: PRESENTATION_SCHEMA, strict: true },
    },
    max_completion_tokens: 800,
  }, { operation: 'enrich_presentation' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty presentation response');
  return JSON.parse(raw) as PresentationResult;
}

async function enrichPresentation(
  client: MealAnalysisLlmClient,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  mealNameHint: string
): Promise<PresentationResult> {
  // Invariant: meal type is always resolved by runPipelineFromDecomposition
  // (user pick → decomposition inference → text heuristic) before this is called.
  if (!context.selectedMealType) {
    throw new Error('enrichPresentation called without a resolved meal type');
  }

  const correctionContext = buildCorrectionContext(context.feedbackIssues, context.otherText);

  const enriched =
    context.source === 'image'
      ? await enrichPresentationFromImage(client, context, resolved, totalMacros, correctionContext, mealNameHint)
      : await enrichPresentationFromText(client, context, resolved, totalMacros, correctionContext, mealNameHint);

  return {
    ...enriched,
    meal_type: context.selectedMealType,
    meal_type_confident: true,
  };
}

async function persistSessionSnapshot(
  context: PipelineRunContext,
  payload: {
    decompositionData?: unknown;
    ingredientsData?: unknown;
    uncertaintyData?: unknown;
    mealTypeQuestionData?: unknown;
    resultData?: unknown;
    clarificationAnswers?: MealClarificationAnswer[];
  }
): Promise<void> {
  await upsertMealAnalysisSession({
    analysisId: context.analysisId,
    parentAnalysisId: context.parentAnalysisId,
    userId: context.userId,
    source: context.source,
    locale: context.locale,
    countryCode: context.countryCode,
    requestPayload: context.requestPayload,
    decompositionData: payload.decompositionData,
    ingredientsData: payload.ingredientsData,
    uncertaintyData: payload.uncertaintyData,
    mealTypeQuestionData: payload.mealTypeQuestionData,
    selectedMealType: context.selectedMealType,
    selectedMealTypeSource: context.selectedMealTypeSource,
    resultData: payload.resultData,
    clarificationAnswers: payload.clarificationAnswers,
  });
}

async function* runPipelineFromDecomposition(
  client: MealAnalysisLlmClient,
  decomposition: LLMDecomposition,
  context: PipelineRunContext,
  clarificationAnswers?: MealClarificationAnswer[],
  emitDecomposition: boolean = true,
  persistClarificationAnswers: boolean = true
): AsyncGenerator<PipelineEvent> {
  const startedAt = Date.now();
  const logger = context.logger;
  const trace = context.trace;
  const normalizedDecomposition = normalizeDecomposition(
    decomposition,
    logger,
    context.analysisId,
    context.source === 'text' ? String(context.requestPayload.textDescription ?? '') : ''
  );
  if (context.source === 'text') {
    maybeLogDroppedCounts(
      String(context.requestPayload.textDescription ?? ''),
      normalizedDecomposition,
      logger,
      context.analysisId
    );
  }

  const decompositionEvent: PipelineEvent = {
    step: 'DECOMPOSITION',
    data: {
      analysisId: context.analysisId,
      mealName: normalizedDecomposition.mealName,
      confidence: normalizedDecomposition.confidence,
      ingredients: toDecompositionWire(normalizedDecomposition),
      // Persisted so /clarify and /meal-type can reuse the decomposition-time
      // meal-type inference without re-running the presentation LLM.
      inferredMealType: normalizedDecomposition.inferredMealType,
      mealTypeConfident: normalizedDecomposition.mealTypeConfident,
    },
  };
  if (emitDecomposition) yield decompositionEvent;

  // Overlap first session write with USDA resolution so the client gets the
  // decomposition event earlier while we still await persistence before later stages.
  const persistDecompositionPromise = traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'DECOMPOSITION' },
    () => persistSessionSnapshot(context, { decompositionData: decompositionEvent.data })
  );

  logAnalysis(logger, 'info', 'decomposition_complete', {
    analysisId: context.analysisId,
    source: context.source,
    ingredientCount: normalizedDecomposition.ingredients.length,
    confidence: normalizedDecomposition.confidence,
    durationMs: Date.now() - startedAt,
  });

  const resolveStartedAt = Date.now();
  let resolved = await traceAsync(
    trace,
    'pipeline',
    'resolve_ingredients',
    { analysisId: context.analysisId, source: context.source, ingredientCount: normalizedDecomposition.ingredients.length },
    () => resolveIngredients(client, normalizedDecomposition, logger, context.analysisId, trace)
  );
  await persistDecompositionPromise;
  let sourceSummary = summarizeResolvedSources(resolved);
  const ingredientsEvent: PipelineEvent = {
    step: 'INGREDIENTS',
    data: {
      analysisId: context.analysisId,
      mealName: normalizedDecomposition.mealName,
      ingredients: toResolvedIngredientWire(resolved),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'INGREDIENTS' },
    () =>
      persistSessionSnapshot(context, {
        decompositionData: decompositionEvent.data,
        ingredientsData: ingredientsEvent.data,
        clarificationAnswers,
      })
  );
  yield ingredientsEvent;

  logAnalysis(
    logger,
    sourceSummary.llmFallbackCount > 0 ? 'warn' : 'info',
    'ingredients_resolved',
    {
      analysisId: context.analysisId,
      source: context.source,
      durationMs: Date.now() - resolveStartedAt,
      sourceSummary,
    }
  );

  let uncertainty = analyzeUncertainty(resolved);
  let clarifications = uncertainty.needsClarification ? generateClarifications(resolved, context.locale) : [];
  // Tracks every row that ever produced a clarification across iterations of
  // the apply loop, so post-pipeline metrics distinguish "asked the user" from
  // "below threshold from the start".
  const wasClarifiedRowIds = new Set<string>();
  for (const c of clarifications) wasClarifiedRowIds.add(c.row_id);

  if (clarificationAnswers && clarificationAnswers.length > 0) {
    // Iteratively apply answers: a COUNT_QUESTION answer transitions the row to
    // `count != null`, which then unlocks the size question on the next regen.
    // If the caller bundled both count and size answers in one request, both
    // get applied in successive iterations of this loop. The loop terminates
    // when no answer matches the current clarifications (either because all
    // answers have been applied or because the remaining clarifications are
    // ones the user hasn't answered yet).
    const remainingAnswers = new Map(
      clarificationAnswers.map((answer) => [answer.clarificationId, answer])
    );
    const matchedAnswerIds = new Set<string>();
    const MAX_APPLY_ITERATIONS = 4; // count → size → (future) any nested. Hard cap to prevent runaway.
    for (let i = 0; i < MAX_APPLY_ITERATIONS; i += 1) {
      const matched: MealClarificationAnswer[] = [];
      for (const clarification of clarifications) {
        const answer = remainingAnswers.get(clarification.clarification_id);
        if (answer) matched.push(answer);
      }
      if (matched.length === 0) break;
      resolved = applyClarificationAnswers(resolved, clarifications, matched);
      for (const answer of matched) {
        remainingAnswers.delete(answer.clarificationId);
        matchedAnswerIds.add(answer.clarificationId);
      }
      sourceSummary = summarizeResolvedSources(resolved);
      uncertainty = analyzeUncertainty(resolved);
      clarifications = uncertainty.needsClarification ? generateClarifications(resolved, context.locale) : [];
      for (const c of clarifications) wasClarifiedRowIds.add(c.row_id);
    }

    if (remainingAnswers.size > 0) {
      // Answers that didn't match any clarification — likely a stale clarification_id
      // from a client that was looking at an older version of the session. Logged so
      // we can quantify if/when it happens, but doesn't fail the pipeline.
      logAnalysis(logger, 'warn', 'clarification_answer_unmatched', {
        analysisId: context.analysisId,
        unmatchedCount: remainingAnswers.size,
        unmatchedIds: Array.from(remainingAnswers.keys()),
      });
    }

    if (persistClarificationAnswers && matchedAnswerIds.size > 0) {
      await traceAsync(
        trace,
        'db',
        'record_meal_analysis_clarification',
        { analysisId: context.analysisId, answerCount: matchedAnswerIds.size },
        () => recordMealAnalysisClarification(context.analysisId, clarificationAnswers)
      );
    }
  }

  // Record skip-reason counters once per analysis using the final state. Done
  // here rather than inside generateClarifications because the apply loop may
  // call generateClarifications multiple times.
  recordClarificationOutcomes(resolved, clarifications, wasClarifiedRowIds);

  const uncertaintyEvent: PipelineEvent = {
    step: 'UNCERTAINTY',
    data: {
      analysisId: context.analysisId,
      mealName: normalizedDecomposition.mealName,
      variancePercent: uncertainty.variancePercent,
      needsClarification: clarifications.length > 0,
      calorieBand: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      clarifications: clarificationsToWire(clarifications),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'UNCERTAINTY' },
    () =>
      persistSessionSnapshot(context, {
        decompositionData: decompositionEvent.data,
        ingredientsData: {
          analysisId: context.analysisId,
          mealName: normalizedDecomposition.mealName,
          ingredients: toResolvedIngredientWire(resolved),
        },
        uncertaintyData: uncertaintyEvent.data,
        clarificationAnswers,
      })
  );
  yield uncertaintyEvent;

  logAnalysis(logger, 'info', 'uncertainty_evaluated', {
    analysisId: context.analysisId,
    source: context.source,
    needsClarification: clarifications.length > 0,
    clarificationCount: clarifications.length,
    variancePercent: uncertainty.variancePercent,
  });

  if (clarifications.length > 0) {
    logAnalysis(logger, 'info', 'clarification_requested', {
      analysisId: context.analysisId,
      source: context.source,
      totalDurationMs: Date.now() - startedAt,
      clarificationCount: clarifications.length,
      sourceSummary,
    });
    return;
  }

  // Resolve meal-type BEFORE running the presentation LLM.
  // Priority: user selection > decomposition-time inference (if confident) > text heuristic.
  // If none applies, we emit meal_type_question here so presentation runs exactly once across
  // the whole clarify/meal-type flow (instead of twice: pre-question and post-question).
  const decompositionInferredMealType =
    normalizedDecomposition.mealTypeConfident && normalizedDecomposition.inferredMealType !== 'UNKNOWN'
      ? normalizedDecomposition.inferredMealType
      : undefined;
  const textHeuristicMealType =
    context.source === 'text'
      ? detectExplicitMealTypeFromText(String(context.requestPayload.textDescription ?? ''))
      : undefined;
  const preResolvedMealType: MealTypeValue | undefined =
    context.selectedMealType ?? decompositionInferredMealType ?? textHeuristicMealType;

  if (!preResolvedMealType) {
    const mealTypeQuestionEvent: PipelineEvent = {
      step: 'MEAL_TYPE_QUESTION',
      data: {
        analysisId: context.analysisId,
        mealName: normalizedDecomposition.mealName,
        question: 'Which meal is this?',
        options: [...MEAL_TYPES],
        inferredMealType:
          normalizedDecomposition.inferredMealType !== 'UNKNOWN' ? normalizedDecomposition.inferredMealType : undefined,
      },
    };
    await traceAsync(
      trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'MEAL_TYPE_QUESTION' },
      () =>
        persistSessionSnapshot(context, {
          decompositionData: decompositionEvent.data,
          ingredientsData: {
            analysisId: context.analysisId,
            mealName: normalizedDecomposition.mealName,
            ingredients: toResolvedIngredientWire(resolved),
          },
          uncertaintyData: uncertaintyEvent.data,
          mealTypeQuestionData: mealTypeQuestionEvent.data,
          clarificationAnswers,
        })
    );
    yield mealTypeQuestionEvent;
    logAnalysis(logger, 'info', 'meal_type_question_requested', {
      analysisId: context.analysisId,
      source: context.source,
      totalDurationMs: Date.now() - startedAt,
      inferredMealType:
        normalizedDecomposition.inferredMealType !== 'UNKNOWN' ? normalizedDecomposition.inferredMealType : undefined,
      sourceSummary,
    });
    return;
  }

  // Feed the resolved meal-type into the context so enrichPresentation treats it as user-chosen
  // (skips the presentation LLM's own meal_type inference branch).
  const presentationContext: PipelineRunContext = {
    ...context,
    selectedMealType: preResolvedMealType,
    selectedMealTypeSource: context.selectedMealTypeSource ?? (context.selectedMealType ? 'user' : 'model'),
  };

  const totalMacros = sumMacros(resolved.map((ingredient) => ingredient.macros));
  const presentation = await traceAsync(
    trace,
    'llm',
    'enrich_presentation',
    {
      analysisId: context.analysisId,
      source: context.source,
      model: OPENAI_MEAL_ANALYSIS_MODEL,
      ingredientCount: resolved.length,
    },
    () => enrichPresentation(client, presentationContext, resolved, totalMacros, normalizedDecomposition.mealName)
  );

  const finalMealType: MealTypeValue = preResolvedMealType;
  const mealTypeSource: MealTypeSource =
    context.selectedMealTypeSource ??
    (context.selectedMealType ? 'user' : 'model');

  await traceAsync(
    trace,
    'db',
    'record_meal_analysis_meal_type',
    { analysisId: context.analysisId, finalMealType, mealTypeSource },
    () => recordMealAnalysisMealType(context.analysisId, finalMealType, mealTypeSource)
  );

  const resultEvent: PipelineEvent = {
    step: 'RESULT',
    data: {
      analysisId: context.analysisId,
      mealName: presentation.meal_name,
      quantity: presentation.quantity,
      mealType: finalMealType,
      mealTypeSource: mealTypeSource,
      tip: presentation.tip,
      health: presentation.health
        ? {
            healthScore: presentation.health.health_score,
            healthScoreReason: presentation.health.health_score_reason,
          }
        : null,
      macros: totalMacros,
      calorieConfidence: resolved.some((ingredient) =>
        ingredient.source === 'llm_fallback' && ingredient.macros.calories === 0
      )
        ? 'LOW'
        : varianceToCalorieConfidence(uncertainty.variancePercent),
      confidenceReasons: [
        ...(resolved.some((ingredient) => ingredient.source === 'llm_fallback')
          ? ['llm_nutrition_fallback']
          : []),
        ...(resolved.some((ingredient) =>
          ingredient.source === 'llm_fallback' && ingredient.macros.calories === 0
        ) ? ['unresolved_nutrition'] : []),
        ...(uncertainty.variancePercent > 0.15 ? ['portion_uncertainty'] : []),
      ],
      calorieBand: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      ingredients: toResolvedIngredientWire(resolved),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'RESULT' },
    () =>
      persistSessionSnapshot(context, {
        decompositionData: decompositionEvent.data,
        ingredientsData: {
          analysisId: context.analysisId,
          mealName: normalizedDecomposition.mealName,
          ingredients: toResolvedIngredientWire(resolved),
        },
        uncertaintyData: uncertaintyEvent.data,
        resultData: resultEvent.data,
        clarificationAnswers,
      })
  );
  yield resultEvent;

  logAnalysis(logger, 'info', 'analysis_completed', {
    analysisId: context.analysisId,
    source: context.source,
    totalDurationMs: Date.now() - startedAt,
    mealType: finalMealType,
    mealTypeSource,
    calories: totalMacros.calories,
    sourceSummary,
    traceSummary: summarizeAnalysisTrace(trace),
  });
}

function sessionToDecomposition(session: Awaited<ReturnType<typeof getMealAnalysisSession>>): LLMDecomposition | undefined {
  const raw = session?.decompositionData as Record<string, unknown> | undefined;
  if (!raw || typeof raw !== 'object') return undefined;

  const mealName = raw.mealName ?? raw.meal_name;
  if (typeof mealName !== 'string') return undefined;

  const ingredientsRaw = raw.ingredients;
  if (!Array.isArray(ingredientsRaw)) return undefined;

  const ingredients = ingredientsRaw.map((item) => {
    const ing = item as Record<string, unknown>;
    return {
      row_id: typeof ing.rowId === 'string' ? ing.rowId : typeof ing.row_id === 'string' ? ing.row_id : undefined,
      raw_name: String(ing.rawName ?? ing.raw_name ?? ''),
      canonical_hint: String(ing.canonicalHint ?? ing.canonical_hint ?? ''),
      grams_estimated: Number(ing.gramsEstimated ?? ing.grams_estimated ?? 0),
      min_grams: Number(ing.minGrams ?? ing.min_grams ?? 0),
      max_grams: Number(ing.maxGrams ?? ing.max_grams ?? 0),
      notes: String(ing.notes ?? ''),
      portion_kind: asPortionKind(ing.portionKind ?? ing.portion_kind),
      count: finiteOptionalNumber(ing.count),
      per_unit_grams: finiteOptionalNumber(ing.perUnitGrams ?? ing.per_unit_grams),
      per_unit_min_grams: finiteOptionalNumber(ing.perUnitMinGrams ?? ing.per_unit_min_grams),
      per_unit_max_grams: finiteOptionalNumber(ing.perUnitMaxGrams ?? ing.per_unit_max_grams),
      size_specified_by_user: Boolean(ing.sizeSpecifiedByUser ?? ing.size_specified_by_user ?? false),
    };
  });

  return {
    meal_name: mealName,
    confidence: Number(raw.confidence ?? 0),
    ingredients,
    inferred_meal_type: (raw.inferredMealType ?? raw.inferred_meal_type ?? 'UNKNOWN') as MealTypeValue,
    meal_type_confident: Boolean(raw.mealTypeConfident ?? raw.meal_type_confident ?? false),
  };
}

export async function* analyzeTextMeal(
  input: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const analysisId = options.analysisId ?? randomUUID();
  const trace = options.trace ?? createAnalysisTrace();
  const context: PipelineRunContext = {
    analysisId,
    parentAnalysisId: options.parentAnalysisId,
    userId: options.userId,
    source: 'text',
    locale: options.locale ?? 'en',
    countryCode: options.countryCode,
    requestPayload: { textDescription: input },
    selectedMealType: options.selectedMealType,
    selectedMealTypeSource: options.selectedMealTypeSource,
    feedbackIssues: options.feedbackIssues,
    otherText: options.otherText,
    logger: options.logger,
    trace,
  };

  try {
    logAnalysis(options.logger, 'info', 'analysis_started', {
      analysisId,
      source: 'text',
      locale: context.locale,
      countryCode: context.countryCode,
      textLength: input.length,
      hasFeedbackContext: Boolean(options.feedbackIssues?.length || options.otherText),
    });
    yield { step: 'STARTED', data: { analysisId } };
    const client = getMealAnalysisClient(trace);
    const decomposition = await traceAsync(
      trace,
      'llm',
      'decompose_text',
      {
        analysisId,
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        source: 'text',
      },
      () =>
        decomposeFromText(
          client,
          input,
          buildCorrectionContext(options.feedbackIssues, options.otherText)
        )
    );
    yield* runPipelineFromDecomposition(client, decomposition, context);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'text',
      message: error instanceof Error ? error.message : 'Analysis failed',
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Analysis failed');
  }
}

export async function* analyzeImageMeal(
  imageUrl: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const analysisId = options.analysisId ?? randomUUID();
  const trace = options.trace ?? createAnalysisTrace();
  const context: PipelineRunContext = {
    analysisId,
    parentAnalysisId: options.parentAnalysisId,
    userId: options.userId,
    source: 'image',
    locale: options.locale ?? 'en',
    countryCode: options.countryCode,
    requestPayload: { imageUrl },
    selectedMealType: options.selectedMealType,
    selectedMealTypeSource: options.selectedMealTypeSource,
    feedbackIssues: options.feedbackIssues,
    otherText: options.otherText,
    logger: options.logger,
    trace,
  };

  try {
    logAnalysis(options.logger, 'info', 'analysis_started', {
      analysisId,
      source: 'image',
      locale: context.locale,
      countryCode: context.countryCode,
      imageUrlHost: (() => {
        try {
          return new URL(imageUrl).host;
        } catch {
          return 'invalid-url';
        }
      })(),
      hasFeedbackContext: Boolean(options.feedbackIssues?.length || options.otherText),
    });
    yield { step: 'STARTED', data: { analysisId } };
    const client = getMealAnalysisClient(trace);
    const decomposition = await traceAsync(
      trace,
      'llm',
      'decompose_image',
      {
        analysisId,
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        source: 'image',
      },
      () =>
        decomposeFromImage(
          client,
          imageUrl,
          buildCorrectionContext(options.feedbackIssues, options.otherText)
        )
    );
    yield* runPipelineFromDecomposition(client, decomposition, context);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'image',
      message: error instanceof Error ? error.message : 'Image analysis failed',
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Image analysis failed');
  }
}

export async function* continueMealAnalysis(
  analysisId: string,
  answers: MealClarificationAnswer[],
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  try {
    logAnalysis(options.logger, 'info', 'clarification_resume_started', {
      analysisId,
      answerCount: answers.length,
    });
    const session = await getMealAnalysisSession(analysisId);
    if (!session) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }
    if (options.userId && session.userId !== options.userId) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }
    const decomposition = sessionToDecomposition(session);
    if (!decomposition) {
      yield buildErrorEvent(analysisId, 'Analysis session is missing decomposition data');
      return;
    }

    const context: PipelineRunContext = {
      analysisId,
      parentAnalysisId: session.parentAnalysisId,
      userId: session.userId,
      source: session.source,
      locale: session.locale,
      countryCode: session.countryCode,
      requestPayload: (session.requestPayload as Record<string, unknown>) ?? {},
      selectedMealType: session.selectedMealType as MealTypeValue | undefined,
      selectedMealTypeSource: session.selectedMealTypeSource,
      logger: options.logger,
      trace,
    };

    // Merge prior persisted answers with incoming ones. Required for the
    // multi-round count → size flow: round 1 answers a COUNT_QUESTION, the
    // server emits a follow-up size question, and round 2 only carries the
    // size answer. Without merging, round 2 would re-run with count=null
    // and loop the user back to the count question.
    const priorAnswers = (session.clarificationAnswers as MealClarificationAnswer[] | undefined) ?? [];
    const mergedAnswers = mergeClarificationAnswers(priorAnswers, answers);

    const client = getMealAnalysisClient(trace);
    yield* runPipelineFromDecomposition(client, decomposition, context, mergedAnswers, false);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'clarification_resume_failed', {
      analysisId,
      message: error instanceof Error ? error.message : 'Clarification failed',
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Clarification failed');
  }
}

export async function* continueMealAnalysisWithMealType(
  analysisId: string,
  selectedMealType: MealTypeValue,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  try {
    logAnalysis(options.logger, 'info', 'meal_type_resume_started', {
      analysisId,
      selectedMealType,
    });
    const session = await getMealAnalysisSession(analysisId);
    if (!session) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }
    if (options.userId && session.userId !== options.userId) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }
    const decomposition = sessionToDecomposition(session);
    if (!decomposition) {
      yield buildErrorEvent(analysisId, 'Analysis session is missing decomposition data');
      return;
    }

    const context: PipelineRunContext = {
      analysisId,
      parentAnalysisId: session.parentAnalysisId,
      userId: session.userId,
      source: session.source,
      locale: session.locale,
      countryCode: session.countryCode,
      requestPayload: (session.requestPayload as Record<string, unknown>) ?? {},
      selectedMealType,
      selectedMealTypeSource: 'user',
      logger: options.logger,
      trace,
    };

    const client = getMealAnalysisClient(trace);
    yield* runPipelineFromDecomposition(
      client,
      decomposition,
      context,
      session.clarificationAnswers as MealClarificationAnswer[] | undefined,
      false,
      false
    );
  } catch (error) {
    logAnalysis(options.logger, 'error', 'meal_type_resume_failed', {
      analysisId,
      selectedMealType,
      message: error instanceof Error ? error.message : 'Meal type continuation failed',
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Meal type continuation failed');
  }
}

export async function* reanalyzeMeal(
  analysisId: string,
  issues: MealFeedbackIssue[],
  otherText?: string,
  userId?: string,
  requestOptions: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = requestOptions.trace ?? createAnalysisTrace();
  try {
    logAnalysis(requestOptions.logger, 'info', 'reanalyze_started', {
      analysisId,
      issues,
      issueCount: issues.length,
      hasOtherText: Boolean(otherText),
    });
    const session = await getMealAnalysisSession(analysisId);
    if (!session) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }
    if (userId && session.userId !== userId) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }

    const nextAnalysisId = randomUUID();
    const options: AnalysisRequestOptions = {
      analysisId: nextAnalysisId,
      parentAnalysisId: analysisId,
      userId: userId ?? session.userId,
      locale: session.locale,
      countryCode: session.countryCode,
      feedbackIssues: issues,
      otherText,
      selectedMealType:
        session.selectedMealTypeSource === 'user'
          ? (session.selectedMealType as MealTypeValue | undefined)
          : undefined,
      selectedMealTypeSource:
        session.selectedMealTypeSource === 'user' ? 'user' : undefined,
      logger: requestOptions.logger,
      trace,
    };

    const requestPayload = (session.requestPayload as Record<string, unknown>) ?? {};
    if (session.source === 'image') {
      const imageUrl = requestPayload.imageUrl;
      if (typeof imageUrl !== 'string' || imageUrl.trim() === '') {
        yield buildErrorEvent(nextAnalysisId, 'Image analysis session is missing imageUrl');
        return;
      }
      yield* analyzeImageMeal(imageUrl, options);
      return;
    }

    const textDescription = requestPayload.textDescription;
    if (typeof textDescription !== 'string' || textDescription.trim() === '') {
      yield buildErrorEvent(nextAnalysisId, 'Text analysis session is missing textDescription');
      return;
    }
    yield* analyzeTextMeal(textDescription, options);
  } catch (error) {
    logAnalysis(requestOptions.logger, 'error', 'reanalyze_failed', {
      analysisId,
      message: error instanceof Error ? error.message : 'Reanalysis failed',
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Reanalysis failed');
  }
}
