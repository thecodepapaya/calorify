/**
 * Nutrition Engine V2 — resumable macro pipeline with streamed events,
 * clarification continuation, meal-type follow-up, full-result enrichment,
 * image analysis, and feedback-driven reanalysis.
 */

import OpenAI from 'openai';
import { randomUUID } from 'node:crypto';
import config from '../config.js';
import { getFoodAnalysisSystemPrompt } from './foodAnalysisSystemPrompt.js';
import { canonicalizeWithUsda } from './usdaLookup.js';
import { calcMacrosFromUsdaRow } from './usdaLookupUtils.js';
import {
  getMealAnalysisSession,
  recordMealAnalysisClarification,
  recordMealAnalysisMealType,
  type MealTypeSource,
  upsertMealAnalysisSession,
} from './mealAnalysisStore.js';

interface LLMIngredient {
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
}

interface LLMDecomposition {
  meal_name: string;
  ingredients: LLMIngredient[];
  confidence: number;
}

interface CanonicalMatch {
  foodId: string;
  canonicalName: string;
  score: number;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'llm_fallback' | 'unmatched';
}

export interface Macros {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

interface ResolvedIngredient {
  rawName: string;
  match: CanonicalMatch;
  grams: number;
  minGrams: number;
  maxGrams: number;
  macros: Macros;
  minMacros: Macros;
  maxMacros: Macros;
  source: 'db' | 'llm_fallback';
}

interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface AnalysisLogger {
  info: (obj: Record<string, unknown>, msg?: string) => void;
  warn: (obj: Record<string, unknown>, msg?: string) => void;
  error: (obj: Record<string, unknown>, msg?: string) => void;
}

type TraceStepCategory = 'llm' | 'usda' | 'pipeline' | 'db';

interface TraceStep {
  category: TraceStepCategory;
  name: string;
  durationMs: number;
  meta?: Record<string, unknown>;
}

interface AnalysisTrace {
  startedAt: number;
  steps: TraceStep[];
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
  'food_identification',
  'portion_size',
  'calorie_distribution',
  'macros_wrong',
  'missing_items',
  'extra_items',
  'other',
] as const;

export type MealFeedbackIssue = (typeof FEEDBACK_ISSUES)[number];
export const MEAL_TYPES = ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'] as const;
export type MealTypeValue = (typeof MEAL_TYPES)[number] | 'UNKNOWN';
export type HealthScoreValue = 'HEALTHY' | 'NEUTRAL' | 'UNHEALTHY';

export interface DecomposedIngredientDTO {
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
}

export interface ResolvedIngredientDTO {
  raw_name: string;
  canonical_name: string;
  match_type: string;
  grams: number;
  macros: Macros;
  source: 'db' | 'llm_fallback';
}

export interface ClarificationOptionDTO {
  label: string;
  grams: number;
  calorie_delta: number;
}

export interface ClarificationDTO {
  ingredient_name: string;
  question: string;
  options: ClarificationOptionDTO[];
  default_option_index: number;
}

export interface ClarificationAnswerDTO {
  ingredient_name: string;
  selected_option_index: number;
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

export interface PipelineEventBase {
  analysis_id: string;
}

export type PipelineEvent =
  | {
      step: 'decomposition';
      data: PipelineEventBase & {
        meal_name: string;
        confidence: number;
        ingredients: DecomposedIngredientDTO[];
      };
    }
  | {
      step: 'ingredients';
      data: PipelineEventBase & { ingredients: ResolvedIngredientDTO[] };
    }
  | {
      step: 'uncertainty';
      data: PipelineEventBase & {
        variance_percent: number;
        needs_clarification: boolean;
        calorie_band: { min: number; max: number };
        clarifications: ClarificationDTO[];
      };
    }
  | {
      step: 'meal_type_question';
      data: PipelineEventBase & MealTypeQuestionDTO;
    }
  | {
      step: 'result';
      data: PipelineEventBase & {
        meal_name: string;
        quantity: string;
        meal_type: MealTypeValue;
        meal_type_source: MealTypeSource;
        tip: string;
        health: MealHealthDTO | null;
        macros: Macros;
        calorie_confidence: string;
        calorie_band: { min: number; max: number };
        ingredients: ResolvedIngredientDTO[];
      };
    }
  | {
      step: 'error';
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

const DECOMPOSITION_MODEL = 'gpt-4.1-nano';

const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal description into individual atomic ingredients with gram estimates.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into atomic ingredients.
3. For each ingredient provide: raw_name, canonical_hint, grams_estimated, min_grams, max_grams, notes.
4. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices.
6. confidence: 0-1 reflecting how confident you are overall.

Portion references: 1 chapati/roti ≈ 30g whole wheat flour + 3g oil/ghee; 1 cup cooked rice ≈ 185g; 1 cup cooked dal ≈ 210g; 1 tbsp oil/ghee ≈ 14g; 1 medium egg ≈ 50g; 1 cup milk ≈ 245g; 1 medium banana ≈ 120g; 1 slice bread ≈ 30g`;

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
        },
        required: ['raw_name', 'canonical_hint', 'grams_estimated', 'min_grams', 'max_grams', 'notes'] as const,
        additionalProperties: false,
      },
    },
    confidence: { type: 'number' as const },
  },
  required: ['meal_name', 'ingredients', 'confidence'] as const,
  additionalProperties: false,
};

const FALLBACK_SYSTEM_PROMPT = `You are a nutritional database. For each ingredient provided, return its macronutrient values per 100 grams. Use values consistent with USDA FoodData Central where possible.`;

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

function generateClarifications(resolved: ResolvedIngredient[]): ClarificationDTO[] {
  const clarifications: ClarificationDTO[] = [];
  for (const ingredient of resolved) {
    const calorieSpread = ingredient.maxMacros.calories - ingredient.minMacros.calories;
    if (calorieSpread < 50) continue;
    clarifications.push({
      ingredient_name: ingredient.rawName,
      question: `How much ${ingredient.rawName}?`,
      options: [
        {
          label: `Small (~${ingredient.minGrams}g)`,
          grams: ingredient.minGrams,
          calorie_delta: ingredient.minMacros.calories - ingredient.macros.calories,
        },
        {
          label: `Medium (~${ingredient.grams}g)`,
          grams: ingredient.grams,
          calorie_delta: 0,
        },
        {
          label: `Large (~${ingredient.maxGrams}g)`,
          grams: ingredient.maxGrams,
          calorie_delta: ingredient.maxMacros.calories - ingredient.macros.calories,
        },
      ],
      default_option_index: 1,
    });
  }
  return clarifications;
}

function varianceToCalorieConfidence(variancePercent: number): string {
  if (variancePercent <= 0.15) return 'HIGH';
  if (variancePercent <= 0.3) return 'MEDIUM';
  return 'LOW';
}

function toDecompositionDto(decomposition: LLMDecomposition): DecomposedIngredientDTO[] {
  return decomposition.ingredients.map((ingredient) => ({
    raw_name: ingredient.raw_name,
    canonical_hint: ingredient.canonical_hint,
    grams_estimated: ingredient.grams_estimated,
    min_grams: ingredient.min_grams,
    max_grams: ingredient.max_grams,
    notes: ingredient.notes,
  }));
}

function toResolvedIngredientDto(resolved: ResolvedIngredient[]): ResolvedIngredientDTO[] {
  return resolved.map((ingredient) => ({
    raw_name: ingredient.rawName,
    canonical_name: ingredient.match.canonicalName,
    match_type: ingredient.match.matchType,
    grams: ingredient.grams,
    macros: ingredient.macros,
    source: ingredient.source,
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

function createAnalysisTrace(): AnalysisTrace {
  return {
    startedAt: Date.now(),
    steps: [],
    llmCallCount: 0,
    usdaLookupCount: 0,
    dbWriteCount: 0,
  };
}

function traceSummary(trace: AnalysisTrace | undefined): Record<string, unknown> | undefined {
  if (!trace) return undefined;
  return {
    totalDurationMs: Date.now() - trace.startedAt,
    llmCallCount: trace.llmCallCount,
    usdaLookupCount: trace.usdaLookupCount,
    dbWriteCount: trace.dbWriteCount,
    steps: trace.steps,
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
    if (trace) {
      trace.steps.push({ category, name, durationMs, meta });
      if (category === 'llm') trace.llmCallCount += 1;
      if (category === 'usda') trace.usdaLookupCount += 1;
      if (category === 'db') trace.dbWriteCount += 1;
    }
    return result;
  } catch (error) {
    const durationMs = Date.now() - startedAt;
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
  llmFallbackCount: number;
  unmatchedCount: number;
  matchTypes: Record<string, number>;
} {
  const summary = {
    total: resolved.length,
    dbCount: 0,
    llmFallbackCount: 0,
    unmatchedCount: 0,
    matchTypes: {} as Record<string, number>,
  };

  for (const ingredient of resolved) {
    if (ingredient.source === 'db') summary.dbCount += 1;
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
  return { step: 'error', data: { analysis_id: analysisId, message } };
}

function getOpenAiClient(): OpenAI {
  const apiKey = config.OPENAI_API_KEY;
  if (!apiKey) throw new Error('OPENAI_API_KEY is not set');
  return new OpenAI({ apiKey });
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
  client: OpenAI,
  input: string,
  correctionContext?: string
): Promise<LLMDecomposition> {
  const userContent = correctionContext ? `${input}\n\n${correctionContext}` : input;
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      { role: 'user', content: userContent },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_completion_tokens: 1200,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function decomposeFromImage(
  client: OpenAI,
  imageUrl: string,
  correctionContext?: string
): Promise<LLMDecomposition> {
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
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
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function estimateMacrosViaLLM(client: OpenAI, names: string[]): Promise<Map<string, LLMFallbackEntry>> {
  if (names.length === 0) return new Map();
  const prompt = names.map((name, index) => `${index + 1}. ${name}`).join('\n');
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
      { role: 'user', content: `Provide per-100g macros for:\n${prompt}` },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'macro_fallback', schema: FALLBACK_SCHEMA, strict: true },
    },
    max_completion_tokens: 800,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM fallback response');
  const parsed = JSON.parse(raw) as { ingredients: LLMFallbackEntry[] };
  const result = new Map<string, LLMFallbackEntry>();
  for (const entry of parsed.ingredients) result.set(normalize(entry.name), entry);
  for (let i = 0; i < names.length && i < parsed.ingredients.length; i++) {
    result.set(normalize(names[i]), parsed.ingredients[i]);
  }
  return result;
}

async function resolveIngredients(
  client: OpenAI,
  decomposition: LLMDecomposition,
  logger?: AnalysisLogger,
  analysisId?: string,
  trace?: AnalysisTrace
): Promise<ResolvedIngredient[]> {
  const resolved: ResolvedIngredient[] = [];
  const unmatched: { index: number; ingredient: LLMIngredient }[] = [];

  for (const ingredient of decomposition.ingredients) {
    const usdaMatch = await traceAsync(
      trace,
      'usda',
      'canonicalize_with_usda',
      {
        analysisId,
        ingredient: ingredient.raw_name,
        canonicalHint: ingredient.canonical_hint,
      },
      () => canonicalizeWithUsda(ingredient.canonical_hint)
    );
    const match: CanonicalMatch = usdaMatch.row
      ? {
          foodId: String(usdaMatch.row.fdc_id),
          canonicalName: usdaMatch.row.description,
          score: usdaMatch.score,
          matchType: usdaMatch.matchType,
        }
      : {
          foodId: '',
          canonicalName: ingredient.canonical_hint,
          score: 0,
          matchType: 'unmatched',
        };
    const macros = usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.grams_estimated)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    const minMacros = usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.min_grams)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    const maxMacros = usdaMatch.row
      ? calcMacrosFromUsdaRow(usdaMatch.row, ingredient.max_grams)
      : { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    if (match.matchType === 'unmatched') unmatched.push({ index: resolved.length, ingredient });
    resolved.push({
      rawName: ingredient.raw_name,
      match,
      grams: ingredient.grams_estimated,
      minGrams: ingredient.min_grams,
      maxGrams: ingredient.max_grams,
      macros,
      minMacros,
      maxMacros,
      source: match.matchType === 'unmatched' ? 'llm_fallback' : 'db',
    });
  }

  if (unmatched.length > 0) {
    const unmatchedHints = unmatched.map((item) => item.ingredient.canonical_hint);
    try {
      const fallbackMap = await traceAsync(
        trace,
        'llm',
        'estimate_macros_fallback',
        {
          analysisId,
          model: DECOMPOSITION_MODEL,
          unmatchedCount: unmatched.length,
          unmatchedHints,
        },
        () => estimateMacrosViaLLM(client, unmatchedHints)
      );
      for (const { index, ingredient } of unmatched) {
        const entry = fallbackMap.get(normalize(ingredient.canonical_hint));
        if (!entry) continue;
        const current = resolved[index];
        current.macros = calcMacrosFromPer100g(entry, ingredient.grams_estimated);
        current.minMacros = calcMacrosFromPer100g(entry, ingredient.min_grams);
        current.maxMacros = calcMacrosFromPer100g(entry, ingredient.max_grams);
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

function applyClarificationAnswers(
  resolved: ResolvedIngredient[],
  clarifications: ClarificationDTO[],
  answers: ClarificationAnswerDTO[]
): ResolvedIngredient[] {
  const clarificationMap = new Map(
    clarifications.map((clarification) => [normalize(clarification.ingredient_name), clarification])
  );
  const answerMap = new Map(
    answers.map((answer) => [normalize(answer.ingredient_name), answer.selected_option_index])
  );

  return resolved.map((ingredient) => {
    const clarification = clarificationMap.get(normalize(ingredient.rawName));
    const selectedOptionIndex = answerMap.get(normalize(ingredient.rawName));
    if (!clarification || selectedOptionIndex == null) return ingredient;
    const option =
      clarification.options[selectedOptionIndex] ??
      clarification.options[clarification.default_option_index] ??
      clarification.options[0];
    if (!option) return ingredient;
    return recalculateIngredient(ingredient, option.grams);
  });
}

async function enrichPresentationFromText(
  client: OpenAI,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  correctionContext: string
): Promise<PresentationResult> {
  const textDescription = String(context.requestPayload.textDescription ?? '');
  const userPrompt = [
    `Original meal description: ${textDescription}`,
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
    model: DECOMPOSITION_MODEL,
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
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty presentation response');
  return JSON.parse(raw) as PresentationResult;
}

async function enrichPresentationFromImage(
  client: OpenAI,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  correctionContext: string
): Promise<PresentationResult> {
  const imageUrl = String(context.requestPayload.imageUrl ?? '');
  const prompt = [
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
    model: DECOMPOSITION_MODEL,
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
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty presentation response');
  return JSON.parse(raw) as PresentationResult;
}

async function enrichPresentation(
  client: OpenAI,
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  totalMacros: Macros
): Promise<PresentationResult> {
  const correctionContext = buildCorrectionContext(context.feedbackIssues, context.otherText);
  const explicitMealType = !context.selectedMealType && context.source === 'text'
    ? detectExplicitMealTypeFromText(String(context.requestPayload.textDescription ?? ''))
    : undefined;

  const enriched =
    context.source === 'image'
      ? await enrichPresentationFromImage(client, context, resolved, totalMacros, correctionContext)
      : await enrichPresentationFromText(client, context, resolved, totalMacros, correctionContext);

  if (context.selectedMealType) {
    return {
      ...enriched,
      meal_type: context.selectedMealType,
      meal_type_confident: true,
    };
  }

  if (explicitMealType) {
    return {
      ...enriched,
      meal_type: explicitMealType,
      meal_type_confident: true,
    };
  }

  return enriched;
}

async function persistSessionSnapshot(
  context: PipelineRunContext,
  payload: {
    decompositionData?: unknown;
    ingredientsData?: unknown;
    uncertaintyData?: unknown;
    mealTypeQuestionData?: unknown;
    resultData?: unknown;
    clarificationAnswers?: ClarificationAnswerDTO[];
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
  client: OpenAI,
  decomposition: LLMDecomposition,
  context: PipelineRunContext,
  clarificationAnswers?: ClarificationAnswerDTO[],
  emitDecomposition: boolean = true,
  persistClarificationAnswers: boolean = true
): AsyncGenerator<PipelineEvent> {
  const startedAt = Date.now();
  const logger = context.logger;
  const trace = context.trace;

  const decompositionEvent: PipelineEvent = {
    step: 'decomposition',
    data: {
      analysis_id: context.analysisId,
      meal_name: decomposition.meal_name,
      confidence: decomposition.confidence,
      ingredients: toDecompositionDto(decomposition),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'decomposition' },
    () => persistSessionSnapshot(context, { decompositionData: decompositionEvent.data })
  );
  if (emitDecomposition) yield decompositionEvent;

  logAnalysis(logger, 'info', 'decomposition_complete', {
    analysisId: context.analysisId,
    source: context.source,
    ingredientCount: decomposition.ingredients.length,
    confidence: decomposition.confidence,
    durationMs: Date.now() - startedAt,
  });

  const resolveStartedAt = Date.now();
  let resolved = await traceAsync(
    trace,
    'pipeline',
    'resolve_ingredients',
    { analysisId: context.analysisId, source: context.source, ingredientCount: decomposition.ingredients.length },
    () => resolveIngredients(client, decomposition, logger, context.analysisId, trace)
  );
  let sourceSummary = summarizeResolvedSources(resolved);
  const ingredientsEvent: PipelineEvent = {
    step: 'ingredients',
    data: {
      analysis_id: context.analysisId,
      ingredients: toResolvedIngredientDto(resolved),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'ingredients' },
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
  let clarifications = uncertainty.needsClarification ? generateClarifications(resolved) : [];

  if (clarificationAnswers && clarificationAnswers.length > 0) {
    resolved = applyClarificationAnswers(resolved, clarifications, clarificationAnswers);
    sourceSummary = summarizeResolvedSources(resolved);
    uncertainty = analyzeUncertainty(resolved);
    clarifications = [];
    if (persistClarificationAnswers) {
      await traceAsync(
        trace,
        'db',
        'record_meal_analysis_clarification',
        { analysisId: context.analysisId, answerCount: clarificationAnswers.length },
        () => recordMealAnalysisClarification(context.analysisId, clarificationAnswers)
      );
    }
  }

  const uncertaintyEvent: PipelineEvent = {
    step: 'uncertainty',
    data: {
      analysis_id: context.analysisId,
      variance_percent: uncertainty.variancePercent,
      needs_clarification: clarifications.length > 0,
      calorie_band: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      clarifications,
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'uncertainty' },
    () =>
      persistSessionSnapshot(context, {
        decompositionData: decompositionEvent.data,
        ingredientsData: { analysis_id: context.analysisId, ingredients: toResolvedIngredientDto(resolved) },
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

  if (clarifications.length > 0 && (!clarificationAnswers || clarificationAnswers.length === 0)) {
    logAnalysis(logger, 'info', 'clarification_requested', {
      analysisId: context.analysisId,
      source: context.source,
      totalDurationMs: Date.now() - startedAt,
      clarificationCount: clarifications.length,
      sourceSummary,
    });
    return;
  }

  const totalMacros = sumMacros(resolved.map((ingredient) => ingredient.macros));
  const presentation = await traceAsync(
    trace,
    'llm',
    'enrich_presentation',
    {
      analysisId: context.analysisId,
      source: context.source,
      model: DECOMPOSITION_MODEL,
      ingredientCount: resolved.length,
    },
    () => enrichPresentation(client, context, resolved, totalMacros)
  );

  if (!context.selectedMealType && (!presentation.meal_type_confident || presentation.meal_type === 'UNKNOWN')) {
    const mealTypeQuestionEvent: PipelineEvent = {
      step: 'meal_type_question',
      data: {
        analysis_id: context.analysisId,
        question: 'Which meal is this?',
        options: [...MEAL_TYPES],
        inferred_meal_type:
          presentation.meal_type !== 'UNKNOWN' ? presentation.meal_type : undefined,
      },
    };
    await traceAsync(
      trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'meal_type_question' },
      () =>
        persistSessionSnapshot(context, {
          decompositionData: decompositionEvent.data,
          ingredientsData: { analysis_id: context.analysisId, ingredients: toResolvedIngredientDto(resolved) },
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
        presentation.meal_type !== 'UNKNOWN' ? presentation.meal_type : undefined,
      sourceSummary,
    });
    return;
  }

  const finalMealType: MealTypeValue = context.selectedMealType ?? presentation.meal_type;
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
    step: 'result',
    data: {
      analysis_id: context.analysisId,
      meal_name: presentation.meal_name,
      quantity: presentation.quantity,
      meal_type: finalMealType,
      meal_type_source: mealTypeSource,
      tip: presentation.tip,
      health: presentation.health,
      macros: totalMacros,
      calorie_confidence: varianceToCalorieConfidence(uncertainty.variancePercent),
      calorie_band: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      ingredients: toResolvedIngredientDto(resolved),
    },
  };
  await traceAsync(
    trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'result' },
    () =>
      persistSessionSnapshot(context, {
        decompositionData: decompositionEvent.data,
        ingredientsData: { analysis_id: context.analysisId, ingredients: toResolvedIngredientDto(resolved) },
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
    traceSummary: traceSummary(trace),
  });
}

function sessionToDecomposition(session: Awaited<ReturnType<typeof getMealAnalysisSession>>): LLMDecomposition | undefined {
  const decompositionData = session?.decompositionData as
    | (PipelineEventBase & {
        meal_name: string;
        confidence: number;
        ingredients: DecomposedIngredientDTO[];
      })
    | undefined;
  if (!decompositionData) return undefined;
  return {
    meal_name: decompositionData.meal_name,
    confidence: decompositionData.confidence,
    ingredients: decompositionData.ingredients.map((ingredient) => ({
      raw_name: ingredient.raw_name,
      canonical_hint: ingredient.canonical_hint,
      grams_estimated: ingredient.grams_estimated,
      min_grams: ingredient.min_grams,
      max_grams: ingredient.max_grams,
      notes: ingredient.notes,
    })),
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
    const client = getOpenAiClient();
    const decomposition = await traceAsync(
      trace,
      'llm',
      'decompose_text',
      {
        analysisId,
        model: DECOMPOSITION_MODEL,
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
      traceSummary: traceSummary(trace),
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
    const client = getOpenAiClient();
    const decomposition = await traceAsync(
      trace,
      'llm',
      'decompose_image',
      {
        analysisId,
        model: DECOMPOSITION_MODEL,
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
      traceSummary: traceSummary(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Image analysis failed');
  }
}

export async function* continueMealAnalysis(
  analysisId: string,
  answers: ClarificationAnswerDTO[],
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

    const client = getOpenAiClient();
    yield* runPipelineFromDecomposition(client, decomposition, context, answers, false);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'clarification_resume_failed', {
      analysisId,
      message: error instanceof Error ? error.message : 'Clarification failed',
      traceSummary: traceSummary(trace),
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

    const client = getOpenAiClient();
    yield* runPipelineFromDecomposition(
      client,
      decomposition,
      context,
      session.clarificationAnswers as ClarificationAnswerDTO[] | undefined,
      false,
      false
    );
  } catch (error) {
    logAnalysis(options.logger, 'error', 'meal_type_resume_failed', {
      analysisId,
      selectedMealType,
      message: error instanceof Error ? error.message : 'Meal type continuation failed',
      traceSummary: traceSummary(trace),
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
      traceSummary: traceSummary(trace),
    });
    yield buildErrorEvent(analysisId, error instanceof Error ? error.message : 'Reanalysis failed');
  }
}
