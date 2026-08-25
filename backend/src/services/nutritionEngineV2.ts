/**
 * Nutrition Engine V2 — resumable macro pipeline with streamed events,
 * clarification continuation, meal-type follow-up, full-result enrichment,
 * image analysis, and feedback-driven reanalysis.
 */

import { randomUUID } from 'node:crypto';
import { query } from './database.js';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';
import { safeErrorKind, safeErrorMetadata } from '../utils/safeError.js';
import { getFoodAnalysisSystemPrompt } from './foodAnalysisSystemPrompt.js';
import {
  createMealAnalysisLlmClient,
  type MealAnalysisLlmClient,
  type MealAnalysisLlmAttempt,
} from './mealAnalysisLlm.js';
import { canonicalizeUsdaProposal } from './usdaLookup.js';
import { extractExplicitQuantityAnchors } from './explicitQuantityParser.js';
import { dishTemplateGramBounds, missingDishTemplateComponents } from './dishTemplates.js';
import { assessUsdaNutritionQuality, calcMacrosFromUsdaRow } from './usdaLookupUtils.js';
import {
  advanceMealAnalysisSession,
  claimMealAnalysisAutomaticStage,
  claimMealAnalysisClarification,
  claimMealAnalysisPresentation,
  createMealAnalysisSession,
  getMealAnalysisSession,
  recordMealAnalysisClarification,
  recordMealAnalysisMealType,
  releaseMealAnalysisClarification,
  releaseMealAnalysisAutomaticStage,
  releaseMealAnalysisPresentation,
  type MealAnalysisAutomaticStage,
  type MealAnalysisStageLease,
  type MealAnalysisSessionRecord,
  type MealTypeSource,
  upsertMealAnalysisSession,
} from './mealAnalysisStore.js';
import {
  InvalidMealAnalysisSnapshotError,
  resolveMealAnalysisStage,
  type MealAnalysisStage,
} from './mealAnalysisStage.js';
import {
  mealAnalysisTraceStepSeconds,
  mealAnalysisClarificationSkipsTotal,
  mealAnalysisDecompositionIssuesTotal,
} from './metrics.js';
import type { MealClarificationAnswer } from '../protos/calorify/http_api.js';
import {
  AnalysisModality,
  AnalysisAttemptStatus,
  CalculationOrigin,
  InterpretationOrigin,
  MealAnalysisFallbackReason,
  NutritionOrigin,
  PortionKind,
  type MealAnalysisReceipt,
} from '../protos/calorify/meal_analysis_pipeline.js';
import {
  lookupTemplate,
  synthesizeFallbackTemplate,
  type PortionTemplate,
} from './portionTemplates.js';
import { buildOracleDownloadUrl } from './oracleObjectStorage.js';
import {
  MEAL_TYPES,
  analyzeUncertainty,
  roundGram,
  scaleMacros,
  sumMacros,
  type CanonicalMatch,
  type Macros,
  type MealTypeValue,
  type NormalizedDecomposition,
  type NormalizedIngredient,
  type PortionKindValue,
  type ResolvedIngredient,
  type UncertaintyReport,
} from './mealAnalysisDomain.js';
import {
  clarificationAnswersFromSession,
  pendingClarificationAnswersFromSession,
  sessionToNormalizedDecomposition,
  sessionToResolvedIngredients,
  sessionUsdaDatasetVersion,
  snapshotMacros,
  snapshotMealType,
  snapshotNumber,
  snapshotRecord,
  snapshotString,
  toResolvedIngredientsSnapshot,
  validatePersistedUncertaintySnapshot,
} from './mealAnalysisSnapshot.js';
import {
  DECOMPOSITION_SCHEMA,
  DECOMPOSITION_SYSTEM_PROMPT,
  FALLBACK_SCHEMA,
  FALLBACK_SYSTEM_PROMPT,
  PRESENTATION_SCHEMA,
  PRESENTATION_SYSTEM_PROMPT,
} from './mealAnalysisPrompts.js';
import {
  parseGeneratedDecompositionOutput,
  type GeneratedDecompositionOutputV2,
} from './mealDecompositionSchema.js';

export { MEAL_TYPES } from './mealAnalysisDomain.js';
export type { Macros, MealTypeValue } from './mealAnalysisDomain.js';

export interface IngredientProposalItem {
  rowId: string;
  rawName: string;
  isFoodReason: string;
  isFoodConfidence: number;
  usdaLookup: {
    proposedCanonicalName: string;
    aliases: string[];
    preparationStates: string[];
  };
  portion: {
    kind: PortionKind;
    gramsEstimated: number;
    minGrams: number;
    maxGrams: number;
    count?: number;
    perUnitGrams?: number;
    perUnitMinGrams?: number;
    perUnitMaxGrams?: number;
    sizeSpecifiedByUser: boolean;
  };
}

export interface IngredientProposal {
  schemaVersion: number;
  proposalId: string;
  modality: AnalysisModality;
  mealName: string;
  outcome: 'DECOMPOSITION_OUTCOME_FOOD' | 'DECOMPOSITION_OUTCOME_NO_FOOD';
  outcomeReason: string;
  outcomeConfidence: number;
  inferredMealType: MealTypeValue;
  mealTypeReason: string;
  mealTypeConfident: boolean;
  items: IngredientProposalItem[];
  interpretationOrigin: InterpretationOrigin;
  modelName?: string;
  modelVersion?: string;
}

type LLMDecomposition = GeneratedDecompositionOutputV2;

interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface LLMFallbackResponseEntry extends LLMFallbackEntry {
  request_id: string;
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
  startedAtOffsetMs: number;
  meta?: Record<string, unknown>;
}

export interface AnalysisTraceArtifact {
  name: 'decomposition_model_output' | 'nutrition_match' |
    'llm_nutrition_fallback' | 'presentation_input' | 'presentation_output';
  capturedAtOffsetMs: number;
  data: unknown;
}

export interface AnalysisTrace {
  startedAt: number;
  steps: TraceStep[];
  artifacts: AnalysisTraceArtifact[];
  llmAttempts: MealAnalysisLlmAttempt[];
  llmCallCount: number;
  usdaLookupCount: number;
  dbWriteCount: number;
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
export type HealthScoreValue = 'HEALTHY' | 'NEUTRAL' | 'UNHEALTHY';

export interface PipelineDecomposedIngredient {
  rowId: string;
  rawName: string;
  gramsEstimated: number;
  minGrams: number;
  maxGrams: number;
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
  grams: number;
  macros: Macros;
  portionKind: PortionKindValue;
  count?: number;
  perUnitGrams?: number;
}

export interface ClarificationOptionDTO {
  option_id: string;
  grams: number;
  calorie_delta: number;
}

export interface ClarificationDTO {
  clarification_id: string;
  row_id: string;
  ingredient_name: string;
  portion_kind: PortionKindValue;
  options: ClarificationOptionDTO[];
  default_option_id: string;
}

export interface MealTypeQuestionDTO {
  options: MealTypeValue[];
  inferred_meal_type?: MealTypeValue;
}

export interface MealHealthDTO {
  health_score: HealthScoreValue;
  health_score_reason: string;
}

interface PresentationResult {
  quantity: string;
  tip: string;
  health: MealHealthDTO | null;
}

export interface PresentationUserContext {
  age_years: number | null;
  gender: 'MALE' | 'FEMALE' | 'OTHER' | null;
  current_weight_kg: number | null;
  target_weight_kg: number | null;
  bmi: number | null;
  weight_goal: 'LOSE_WEIGHT' | 'MAINTAIN_WEIGHT' | 'GAIN_WEIGHT' | null;
  activity_level: 'SEDENTARY' | 'LIGHTLY_ACTIVE' | 'MODERATELY_ACTIVE' | 'VERY_ACTIVE' | 'EXTREMELY_ACTIVE' | null;
  daily_calorie_goal_kcal: number | null;
}

export interface PresentationUserProfileRow {
  height: number | string | null;
  weight: number | string | null;
  target_weight: number | string | null;
  gender: string | null;
  date_of_birth: Date | string | null;
  weight_goal: string | null;
  activity_level: string | null;
  height_unit: string | null;
  weight_unit: string | null;
  daily_calorie_goal: number | null;
}

export interface PipelineClarificationOptionWire {
  optionId: string;
  grams: number;
  calorieDelta: number;
}

export interface PipelineClarificationWire {
  clarificationId: string;
  rowId: string;
  ingredientName: string;
  portionKind: PortionKindValue;
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
        interpretationOrigin: InterpretationOrigin;
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
        receipt: MealAnalysisReceipt;
      };
    }
  | {
      step: 'NO_FOOD';
      data: PipelineEventBase & { outcomeReason: string; outcomeConfidence: number };
    }
  | {
      step: 'ERROR';
      data: PipelineEventBase & { message: string; retryable?: boolean };
    };

export interface AnalysisRequestOptions {
  analysisId?: string;
  parentAnalysisId?: string;
  userId?: string;
  locale?: string;
  countryCode?: string;
  timeZone?: string;
  feedbackIssues?: MealFeedbackIssue[];
  otherText?: string;
  selectedMealType?: MealTypeValue;
  selectedMealTypeSource?: MealTypeSource;
  logger?: AnalysisLogger;
  trace?: AnalysisTrace;
  /** Persisted object identity; the bearer download URL remains transient. */
  imageObjectKey?: string;
  localAttempted?: boolean;
  localAttemptId?: string;
  localAttemptStartedAtEpochMs?: number;
  localAttemptCompletedAtEpochMs?: number;
  fallbackReason?: MealAnalysisFallbackReason;
}

interface PipelineRunContext {
  analysisId: string;
  source: 'text' | 'image';
  requestPayload: Record<string, unknown>;
  imageUrl?: string;
  parentAnalysisId?: string;
  userId?: string;
  locale: string;
  countryCode?: string;
  timeZone?: string;
  selectedMealType?: MealTypeValue;
  selectedMealTypeSource?: MealTypeSource;
  feedbackIssues?: MealFeedbackIssue[];
  otherText?: string;
  logger?: AnalysisLogger;
  trace?: AnalysisTrace;
  interpretationOrigin: InterpretationOrigin;
  localAttempted: boolean;
  localAttemptId?: string;
  localAttemptStartedAtEpochMs?: number;
  localAttemptCompletedAtEpochMs?: number;
  fallbackReason: MealAnalysisFallbackReason;
  attemptId: string;
  attemptStartedAt: number;
  acceptedProposal?: IngredientProposal;
}

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

function proposalToDecomposition(proposal: IngredientProposal): LLMDecomposition {
  if (proposal.schemaVersion !== INGREDIENT_PROPOSAL_SCHEMA_VERSION) {
    throw new Error('Unsupported ingredient proposal version');
  }
  if (
    proposal.interpretationOrigin !==
    InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
  ) {
    throw new Error('Proposal must identify local interpretation origin');
  }
  if (
    proposal.modality !== AnalysisModality.ANALYSIS_MODALITY_TEXT &&
    proposal.modality !== AnalysisModality.ANALYSIS_MODALITY_IMAGE
  ) {
    throw new Error('Proposal modality is invalid');
  }
  const mealName = proposal.mealName.trim();
  const rowIds = new Set<string>();
  const items = proposal.items.map((ingredient) => {
    const rowId = ingredient.rowId.trim();
    const rawName = ingredient.rawName.trim();
    if (!rowId || rowIds.has(rowId)) throw new Error('Proposal row IDs must be unique');
    rowIds.add(rowId);
    return {
      raw_name: rawName,
      is_food: true as const,
      is_food_reason: ingredient.isFoodReason,
      is_food_confidence: ingredient.isFoodConfidence,
      usda_lookup: {
        proposed_canonical_name: ingredient.usdaLookup.proposedCanonicalName,
        aliases: ingredient.usdaLookup.aliases,
        preparation_states: ingredient.usdaLookup.preparationStates,
      },
      portion: {
        kind: asPortionKind(ingredient.portion.kind) as 'COUNT' | 'BULK' | 'PINCH',
        grams_estimated: ingredient.portion.gramsEstimated,
        min_grams: ingredient.portion.minGrams,
        max_grams: ingredient.portion.maxGrams,
        count: ingredient.portion.count ?? null,
        per_unit_grams: ingredient.portion.perUnitGrams ?? null,
        per_unit_min_grams: ingredient.portion.perUnitMinGrams ?? null,
        per_unit_max_grams: ingredient.portion.perUnitMaxGrams ?? null,
        size_specified_by_user: ingredient.portion.sizeSpecifiedByUser,
      },
    };
  });
  return parseGeneratedDecompositionOutput({
    outcome: proposal.outcome === 'DECOMPOSITION_OUTCOME_NO_FOOD' ? 'NO_FOOD' : 'FOOD',
    outcome_reason: proposal.outcomeReason,
    outcome_confidence: proposal.outcomeConfidence,
    meal_name: proposal.outcome === 'DECOMPOSITION_OUTCOME_NO_FOOD' ? null : mealName,
    items,
    inferred_meal_type: proposal.inferredMealType as MealTypeValue,
    meal_type_reason: proposal.mealTypeReason,
    meal_type_confident: proposal.mealTypeConfident,
  });
}

function cleanMealName(value: string): string {
  return value.trim();
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
  const ingredients = decomposition.items.filter((item) => item.is_food).map((ingredient) => {
    const rawName = String(ingredient.raw_name ?? '').trim();
    const notes = '';
    const canonicalHint = refineCanonicalHint(
      rawName,
      ingredient.usda_lookup.proposed_canonical_name,
      notes,
      sourceText
    );
    const gramsEstimated = ingredient.portion.grams_estimated;
    const minGrams = ingredient.portion.min_grams;
    const maxGrams = ingredient.portion.max_grams;
    const rowId = randomUUID();
    const portionKind = ingredient.portion.kind;
    const count = ingredient.portion.count;
    const sizeSpecifiedByUser = ingredient.portion.size_specified_by_user;

    if (portionKind === 'COUNT' && count != null && count > 0) {
      const portionTemplate = lookupTemplate(canonicalHint, rawName);
      const explicitPerUnitGrams = sizeSpecifiedByUser && portionTemplate
        ? explicitTemplateGrams(sourceText, rawName, canonicalHint, notes, portionTemplate)
        : undefined;
      const perUnitGrams = explicitPerUnitGrams ??
        ingredient.portion.per_unit_grams ?? gramsEstimated / count;
      const collapsedPerUnitMin = sizeSpecifiedByUser
        ? perUnitGrams
        : ingredient.portion.per_unit_min_grams ?? minGrams / count;
      const collapsedPerUnitMax = sizeSpecifiedByUser
        ? perUnitGrams
        : ingredient.portion.per_unit_max_grams ?? maxGrams / count;
      const perUnitBand = orderedBand(collapsedPerUnitMin, perUnitGrams, collapsedPerUnitMax);
      const totalMax = count * perUnitBand.max;

      if (count > 20 || totalMax > 2000) {
        mealAnalysisDecompositionIssuesTotal.labels({ issue: 'implausible_count' }).inc();
        logAnalysis(logger, 'warn', 'decomposition_implausible_count', {
          analysisId,
          rowId,
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
          lookupAliases: ingredient.usda_lookup.aliases,
          preparationStates: ingredient.usda_lookup.preparation_states,
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
        lookupAliases: ingredient.usda_lookup.aliases,
        preparationStates: ingredient.usda_lookup.preparation_states,
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
      perUnitGrams: ingredient.portion.per_unit_grams,
      perUnitMinGrams: ingredient.portion.per_unit_min_grams,
      perUnitMaxGrams: ingredient.portion.per_unit_max_grams,
      sizeSpecifiedByUser,
      lookupAliases: ingredient.usda_lookup.aliases,
      preparationStates: ingredient.usda_lookup.preparation_states,
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
      lookupAliases: [],
      preparationStates: [],
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
    confidence: decomposition.outcome_confidence,
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

function buildCountQuestion(ingredient: ResolvedIngredient, _locale: string): ClarificationDTO {
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
    options: optionCounts.map((option) => {
      const grams = roundGram(option.count * perUnitGrams);
      return {
        option_id: option.optionId,
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
  _locale: string,
  _isFallback: boolean
): ClarificationDTO {
  const count = ingredient.portionKind === 'COUNT' ? ingredient.count ?? 1 : 1;

  return {
    clarification_id: `clr_${ingredient.rowId}`,
    row_id: ingredient.rowId,
    ingredient_name: ingredient.rawName,
    portion_kind: ingredient.portionKind,
    options: template.options.map((option) => {
      const grams = roundGram((ingredient.portionKind === 'COUNT' ? count : 1) * option.perUnitGrams);
      return {
        option_id: option.optionId,
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
    options: c.options.map((o) => ({
      optionId: o.option_id,
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
    gramsEstimated: ingredient.gramsEstimated,
    minGrams: ingredient.minGrams,
    maxGrams: ingredient.maxGrams,
    portionKind: ingredient.portionKind,
    count: ingredient.count ?? undefined,
    perUnitGrams: ingredient.perUnitGrams ?? undefined,
    perUnitMinGrams: ingredient.perUnitMinGrams ?? undefined,
    perUnitMaxGrams: ingredient.perUnitMaxGrams ?? undefined,
    sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
  }));
}

const INGREDIENT_PROPOSAL_SCHEMA_VERSION = 2;
const ANALYSIS_RECEIPT_SCHEMA_VERSION = 1;
const CALCULATION_VERSION = 'nutrition-engine-v2';

function proposalForDecomposition(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition
): IngredientProposal {
  if (context.acceptedProposal) return context.acceptedProposal;
  return {
    schemaVersion: INGREDIENT_PROPOSAL_SCHEMA_VERSION,
    proposalId: `${context.analysisId}:proposal-v2`,
    modality: context.source === 'image'
      ? AnalysisModality.ANALYSIS_MODALITY_IMAGE
      : AnalysisModality.ANALYSIS_MODALITY_TEXT,
    mealName: decomposition.mealName,
    outcome: 'DECOMPOSITION_OUTCOME_FOOD',
    outcomeReason: 'At least one item belongs to the analyzed meal.',
    outcomeConfidence: decomposition.confidence,
    inferredMealType: decomposition.inferredMealType,
    mealTypeReason: 'Inferred from the meal and supplied local context.',
    mealTypeConfident: decomposition.mealTypeConfident,
    items: decomposition.ingredients.map((ingredient) => ({
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      isFoodReason: 'The item belongs to the analyzed meal.',
      isFoodConfidence: decomposition.confidence,
      usdaLookup: {
        proposedCanonicalName: ingredient.canonicalHint,
        aliases: ingredient.lookupAliases,
        preparationStates: ingredient.preparationStates,
      },
      portion: {
        kind: toWirePortionKind(ingredient.portionKind),
        gramsEstimated: ingredient.gramsEstimated,
        minGrams: ingredient.minGrams,
        maxGrams: ingredient.maxGrams,
        count: ingredient.count ?? undefined,
        perUnitGrams: ingredient.perUnitGrams ?? undefined,
        perUnitMinGrams: ingredient.perUnitMinGrams ?? undefined,
        perUnitMaxGrams: ingredient.perUnitMaxGrams ?? undefined,
        sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
      },
    })),
    interpretationOrigin: context.interpretationOrigin,
    modelName: context.interpretationOrigin === InterpretationOrigin.INTERPRETATION_ORIGIN_CLOUD_MODEL
      ? OPENAI_MEAL_ANALYSIS_MODEL
      : undefined,
    modelVersion: undefined,
  };
}

function nutritionOriginForIngredient(ingredient: ResolvedIngredient): NutritionOrigin {
  if (ingredient.source === 'db') return NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA;
  if (ingredient.source === 'deterministic') {
    return NutritionOrigin.NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT;
  }
  return ingredient.macros.calories === 0
    ? NutritionOrigin.NUTRITION_ORIGIN_UNRESOLVED
    : NutritionOrigin.NUTRITION_ORIGIN_LLM_FALLBACK;
}

function aggregateNutritionOrigin(resolved: ResolvedIngredient[]): NutritionOrigin {
  const origins = new Set(resolved.map(nutritionOriginForIngredient));
  if (origins.has(NutritionOrigin.NUTRITION_ORIGIN_UNRESOLVED)) {
    return NutritionOrigin.NUTRITION_ORIGIN_UNRESOLVED;
  }
  if (origins.has(NutritionOrigin.NUTRITION_ORIGIN_LLM_FALLBACK)) {
    return NutritionOrigin.NUTRITION_ORIGIN_LLM_FALLBACK;
  }
  if (origins.has(NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA)) {
    return NutritionOrigin.NUTRITION_ORIGIN_REMOTE_USDA;
  }
  return NutritionOrigin.NUTRITION_ORIGIN_DETERMINISTIC_CONSTANT;
}

function buildAnalysisReceipt(
  context: PipelineRunContext,
  resolved: ResolvedIngredient[],
  persistedUsdaDatasetVersion?: string
): MealAnalysisReceipt {
  const completedAt = Date.now();
  const attempts = [];
  if (context.localAttempted && context.localAttemptId) {
    attempts.push({
      attemptId: context.localAttemptId,
      executorOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
      startedAtEpochMs: context.localAttemptStartedAtEpochMs ?? 0,
      completedAtEpochMs:
        context.localAttemptCompletedAtEpochMs ?? context.attemptStartedAt,
      status: context.interpretationOrigin ===
        InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
        ? AnalysisAttemptStatus.ANALYSIS_ATTEMPT_STATUS_ACCEPTED
        : AnalysisAttemptStatus.ANALYSIS_ATTEMPT_STATUS_FAILED,
      fallbackReason: context.interpretationOrigin ===
        InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
        ? MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE
        : context.fallbackReason,
    });
  }
  if (
    context.interpretationOrigin ===
    InterpretationOrigin.INTERPRETATION_ORIGIN_CLOUD_MODEL
  ) {
    attempts.push({
      attemptId: context.attemptId,
      executorOrigin: context.interpretationOrigin,
      startedAtEpochMs: context.attemptStartedAt,
      completedAtEpochMs: completedAt,
      status: AnalysisAttemptStatus.ANALYSIS_ATTEMPT_STATUS_ACCEPTED,
      fallbackReason: MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    });
  }
  const datasetVersions = new Set(
    resolved
      .map((ingredient) => ingredient.nutritionReference?.datasetVersion)
      .filter((value): value is string => Boolean(value))
  );
  return {
    schemaVersion: ANALYSIS_RECEIPT_SCHEMA_VERSION,
    proposalSchemaVersion: INGREDIENT_PROPOSAL_SCHEMA_VERSION,
    localAttempted: context.localAttempted,
    interpretationOrigin: context.interpretationOrigin,
    nutritionOrigin: aggregateNutritionOrigin(resolved),
    calculationOrigin: CalculationOrigin.CALCULATION_ORIGIN_SERVER_DETERMINISTIC,
    usdaDatasetVersion: datasetVersions.size === 1
      ? datasetVersions.values().next().value
      : persistedUsdaDatasetVersion,
    calculationVersion: CALCULATION_VERSION,
    attempts,
    fallbackReason: context.fallbackReason,
  };
}

function toResolvedIngredientWire(
  _context: PipelineRunContext,
  resolved: ResolvedIngredient[]
): PipelineResolvedIngredient[] {
  return resolved.map((ingredient) => ({
    rowId: ingredient.rowId,
    rawName: ingredient.rawName,
    grams: ingredient.grams,
    macros: ingredient.macros,
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
    artifacts: [],
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
      trace.steps.push({
        category,
        name,
        durationMs,
        startedAtOffsetMs: Math.max(0, startedAt - trace.startedAt),
        meta,
      });
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
        startedAtOffsetMs: Math.max(0, startedAt - trace.startedAt),
        meta: {
          ...meta,
          ok: false,
          errorKind: mealAnalysisErrorKind(error, `${category}_step_failed`),
        },
      });
      if (category === 'llm') trace.llmCallCount += 1;
      if (category === 'usda') trace.usdaLookupCount += 1;
      if (category === 'db') trace.dbWriteCount += 1;
    }
    throw error;
  }
}

function recordTraceArtifact(
  trace: AnalysisTrace | undefined,
  name: AnalysisTraceArtifact['name'],
  data: unknown
): void {
  if (!trace) return;
  trace.artifacts.push({
    name,
    capturedAtOffsetMs: Math.max(0, Date.now() - trace.startedAt),
    data,
  });
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

function buildErrorEvent(
  analysisId: string,
  message: string,
  retryable: boolean = false
): PipelineEvent {
  return { step: 'ERROR', data: { analysisId, message, retryable } };
}

const SAFE_PUBLIC_ANALYSIS_ERRORS = new Set([
  'Analysis ID is unavailable',
  'Analysis session not found',
  'Image analysis session is missing an image object key',
]);

const SAFE_PUBLIC_SNAPSHOT_ERRORS = new Set([
  'Invalid meal analysis snapshot: A concrete meal type is required to continue analysis',
]);

function publicMealAnalysisError(error: unknown, fallback: string): string {
  if (error instanceof MealAnalysisInteractionBusyError) {
    return 'Analysis is still in progress; retry resume';
  }
  if (error instanceof InvalidMealAnalysisSnapshotError) {
    if (SAFE_PUBLIC_SNAPSHOT_ERRORS.has(error.message)) return error.message;
    return 'Analysis session cannot continue from its current state';
  }
  if (error instanceof Error && SAFE_PUBLIC_ANALYSIS_ERRORS.has(error.message)) {
    return error.message;
  }
  return fallback;
}

function isRetryableMealAnalysisError(error: unknown): boolean {
  if (error instanceof MealAnalysisInteractionBusyError) return true;
  if (error instanceof InvalidMealAnalysisSnapshotError) return false;
  if (error instanceof Error && SAFE_PUBLIC_ANALYSIS_ERRORS.has(error.message)) {
    return false;
  }
  // Durable checkpoints make unexpected database, provider, and worker
  // failures safe to resume. The phone caps automatic resume attempts.
  return true;
}

function mealAnalysisErrorKind(error: unknown, fallback: string): string {
  if (error instanceof MealAnalysisInteractionBusyError) return 'stage_busy';
  if (error instanceof InvalidMealAnalysisSnapshotError) return 'invalid_snapshot';
  return safeErrorKind(error, fallback);
}

function imageDownloadUrlFromSessionPayload(payload: unknown): string | undefined {
  if (!payload || typeof payload !== 'object') return undefined;
  const requestPayload = payload as Record<string, unknown>;
  if (
    typeof requestPayload.imageObjectKey === 'string' &&
    requestPayload.imageObjectKey.trim() !== ''
  ) {
    return buildOracleDownloadUrl(requestPayload.imageObjectKey);
  }
  return undefined;
}

function feedbackContextFromSessionPayload(payload: Record<string, unknown>): {
  feedbackIssues?: MealFeedbackIssue[];
  otherText?: string;
} {
  const feedbackIssues = Array.isArray(payload.feedbackIssues)
    ? payload.feedbackIssues.filter(
      (value): value is MealFeedbackIssue =>
        typeof value === 'string' && (FEEDBACK_ISSUES as readonly string[]).includes(value)
    )
    : undefined;
  return {
    feedbackIssues: feedbackIssues && feedbackIssues.length > 0
      ? feedbackIssues
      : undefined,
    otherText: typeof payload.otherText === 'string' && payload.otherText.trim() !== ''
      ? payload.otherText
      : undefined,
  };
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
  inputContext: string,
  correctionContext?: string
): Promise<LLMDecomposition> {
  const userContent = [inputContext, input, correctionContext].filter(Boolean).join('\n\n');
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
  return parseGeneratedDecompositionOutput(JSON.parse(raw));
}

async function decomposeFromImage(
  client: MealAnalysisLlmClient,
  imageUrl: string,
  inputContext: string,
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
            text: [inputContext, 'Analyze this meal image.', correctionContext]
              .filter(Boolean).join('\n\n'),
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
  return parseGeneratedDecompositionOutput(JSON.parse(raw));
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

  const requests = missingNames.map((name, index) => ({
    requestId: `ingredient_${index + 1}`,
    name,
  }));
  const prompt = requests
    .map(({ requestId, name }) => `${requestId}: ${name}`)
    .join('\n');
  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
      {
        role: 'user',
        content:
          `Provide per-100g macros for the following request IDs. ` +
          `Echo each request_id and ingredient name exactly:\n${prompt}`,
      },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'macro_fallback', schema: FALLBACK_SCHEMA, strict: true },
    },
    max_completion_tokens: 800,
  }, { operation: 'estimate_macros_fallback' });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM fallback response');
  const parsed = JSON.parse(raw) as { ingredients: LLMFallbackResponseEntry[] };
  const expectedById = new Map(requests.map(({ requestId, name }) => [requestId, name]));
  const matchedIds = new Set<string>();
  for (const entry of parsed.ingredients) {
    const expectedName = expectedById.get(entry.request_id);
    if (
      !expectedName ||
      matchedIds.has(entry.request_id) ||
      normalize(entry.name) !== normalize(expectedName) ||
      !isPlausibleFallbackEntry(entry)
    ) {
      continue;
    }
    matchedIds.add(entry.request_id);
    result.set(normalize(expectedName), entry);
    cacheFallbackEntry(expectedName, entry);
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
    decomposition.ingredients.map((ingredient, ingredientIndex) =>
      isPlainWater(ingredient)
        ? Promise.resolve({ row: null, matchType: 'unmatched' as const, score: 0, confidenceMargin: 1 })
        : traceAsync(
        trace,
        'usda',
        'canonicalize_with_usda',
        {
          analysisId,
          ingredientIndex,
        },
        () => canonicalizeUsdaProposal(
          ingredient.canonicalHint,
          ingredient.lookupAliases,
          ingredient.preparationStates
        )
      )
    )
  );

  for (let i = 0; i < decomposition.ingredients.length; i++) {
    const ingredient = decomposition.ingredients[i]!;
    const usdaMatch = usdaMatches[i]!;
    const deterministicWater = isPlainWater(ingredient);
    recordTraceArtifact(trace, 'nutrition_match', {
      ingredientIndex: i,
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      canonicalHint: ingredient.canonicalHint,
      lookupAliases: ingredient.lookupAliases,
      preparationStates: ingredient.preparationStates,
      matchType: deterministicWater ? 'deterministic' : usdaMatch.matchType,
      score: deterministicWater ? 1 : usdaMatch.score,
      confidenceMargin: usdaMatch.confidenceMargin,
      selected: deterministicWater ? {
        id: 'deterministic:water',
        description: 'Water',
        source: 'physical_invariant',
        per100g: { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 },
      } : usdaMatch.row ? {
        fdcId: String(usdaMatch.row.fdc_id),
        description: usdaMatch.row.description,
        normalizedName: usdaMatch.row.normalized_name,
        dataType: usdaMatch.row.data_type,
        datasetVersion: usdaMatch.row.dataset_version,
        per100g: {
          calories: usdaMatch.row.kcal_per_100g,
          protein: usdaMatch.row.protein_per_100g,
          carbs: usdaMatch.row.carbs_per_100g,
          fat: usdaMatch.row.fat_per_100g,
          fiber: usdaMatch.row.fiber_per_100g,
        },
      } : null,
    });
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
      nutritionReference: usdaMatch.row
        ? {
            fdcId: String(usdaMatch.row.fdc_id),
            datasetVersion: usdaMatch.row.dataset_version,
            per100g: {
              calories: usdaMatch.row.kcal_per_100g,
              protein: usdaMatch.row.protein_per_100g,
              carbs: usdaMatch.row.carbs_per_100g,
              fat: usdaMatch.row.fat_per_100g,
              fiber: usdaMatch.row.fiber_per_100g,
            },
          }
        : undefined,
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
        },
        () => estimateMacrosViaLLM(client, unmatchedHints)
      );
      for (const { index, ingredient } of unmatched) {
        const entry = fallbackMap.get(normalize(ingredient.canonicalHint));
        recordTraceArtifact(trace, 'llm_nutrition_fallback', {
          ingredientIndex: index,
          rowId: ingredient.rowId,
          canonicalHint: ingredient.canonicalHint,
          outcome: entry ? 'matched' : 'unresolved',
          per100g: entry ? {
            calories: entry.kcal_per_100g,
            protein: entry.protein_per_100g,
            carbs: entry.carbs_per_100g,
            fat: entry.fat_per_100g,
            fiber: entry.fiber_per_100g,
          } : null,
        });
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
      });
    } catch {
      // Keep unresolved items as zero macros.
      logAnalysis(logger, 'error', 'llm_macro_fallback_failed', {
        analysisId,
        unmatchedCount: unmatched.length,
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
    const option = clarification.options.find(
      (candidate) => candidate.option_id === answer.selectedOptionId
    );
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
  mealNameHint: string,
  userContext: PresentationUserContext | null
): Promise<PresentationResult> {
  const textDescription = String(context.requestPayload.textDescription ?? '');
  const userPrompt = [
    `Original meal description: ${textDescription}`,
    mealNameHint ? `Persisted meal name: ${mealNameHint}` : '',
    correctionContext,
    `Total macros: ${totalMacros.calories} kcal, ${totalMacros.protein}g protein, ${totalMacros.carbs}g carbs, ${totalMacros.fat}g fat, ${totalMacros.fiber}g fiber`,
    `Ingredients:\n${formatIngredientSummary(resolved)}`,
    context.selectedMealType ? `Final meal type: ${context.selectedMealType}` : '',
    userContext ? `User context: ${JSON.stringify(userContext)}` : '',
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

async function loadPresentationUserContext(
  userId: string | undefined
): Promise<PresentationUserContext | null> {
  if (!userId) return null;
  const { rows } = await query<PresentationUserProfileRow>(
    `SELECT height, weight, target_weight, gender, date_of_birth, weight_goal,
             activity_level, height_unit, weight_unit, daily_calorie_goal
        FROM user_profile WHERE user_id = $1 LIMIT 1`, [userId]);
  const profile = rows[0];
  return profile ? normalizePresentationUserContext(profile) : null;
}

export function normalizePresentationUserContext(
  profile: PresentationUserProfileRow,
  nowEpochMs: number = Date.now()
): PresentationUserContext {
  const finite = (value: unknown): number | null => {
    const parsed = Number(value);
    return Number.isFinite(parsed) && parsed > 0 ? parsed : null;
  };
  const height = finite(profile.height);
  const weight = finite(profile.weight);
  const targetWeight = finite(profile.target_weight);
  const heightCm = height == null ? null : profile.height_unit === 'IMPERIAL' ? height * 2.54 : height;
  const weightKg = weight == null ? null : profile.weight_unit === 'IMPERIAL' ? weight * 0.45359237 : weight;
  const targetWeightKg = targetWeight == null ? null : profile.weight_unit === 'IMPERIAL'
    ? targetWeight * 0.45359237
    : targetWeight;
  const birthDate = profile.date_of_birth == null ? null : new Date(profile.date_of_birth);
  const age = birthDate && !Number.isNaN(birthDate.getTime())
    ? Math.max(0, Math.floor((nowEpochMs - birthDate.getTime()) / 31_556_952_000))
    : null;
  const bmi = heightCm && weightKg ? +(weightKg / ((heightCm / 100) ** 2)).toFixed(1) : null;
  const oneOf = <T extends string>(value: string | null, allowed: readonly T[]): T | null =>
    value != null && (allowed as readonly string[]).includes(value) ? value as T : null;
  return {
    age_years: age,
    gender: oneOf(profile.gender, ['MALE', 'FEMALE', 'OTHER'] as const),
    current_weight_kg: weightKg == null ? null : +weightKg.toFixed(1),
    target_weight_kg: targetWeightKg == null ? null : +targetWeightKg.toFixed(1),
    bmi,
    weight_goal: oneOf(profile.weight_goal, ['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT'] as const),
    activity_level: oneOf(profile.activity_level, ['SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE'] as const),
    daily_calorie_goal_kcal: finite(profile.daily_calorie_goal),
  };
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
  const userContext = await loadPresentationUserContext(context.userId);
  recordTraceArtifact(context.trace, 'presentation_input', {
    originalDescription: String(context.requestPayload.textDescription ?? ''),
    mealName: mealNameHint,
    selectedMealType: context.selectedMealType,
    selectedMealTypeSource: context.selectedMealTypeSource,
    totalMacros,
    ingredients: resolved.map((ingredient) => ({
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      canonicalName: ingredient.match.canonicalName,
      grams: ingredient.grams,
      macros: ingredient.macros,
      nutritionSource: ingredient.source,
    })),
    feedbackIssues: context.feedbackIssues ?? [],
    feedbackNote: context.otherText ?? null,
    userContext,
  });
  const presentation = await enrichPresentationFromText(
    client,
    context,
    resolved,
    totalMacros,
    correctionContext,
    mealNameHint,
    userContext
  );
  recordTraceArtifact(context.trace, 'presentation_output', presentation);
  return presentation;
}

async function persistSessionSnapshot(
  context: PipelineRunContext,
  payload: {
    stage: MealAnalysisStage;
    decompositionData?: unknown;
    ingredientsData?: unknown;
    uncertaintyData?: unknown;
    mealTypeQuestionData?: unknown;
    resultData?: unknown;
    clarificationAnswers?: MealClarificationAnswer[];
    interactionLease?: MealAnalysisStageLease;
  }
): Promise<void> {
  const record = {
    analysisId: context.analysisId,
    parentAnalysisId: context.parentAnalysisId,
    userId: context.userId,
    source: context.source,
    locale: context.locale,
    countryCode: context.countryCode,
    timeZone: context.timeZone,
    requestPayload: context.requestPayload,
    stage: payload.stage,
    decompositionData: payload.decompositionData,
    ingredientsData: payload.ingredientsData,
    uncertaintyData: payload.uncertaintyData,
    mealTypeQuestionData: payload.mealTypeQuestionData,
    selectedMealType: context.selectedMealType,
    selectedMealTypeSource: context.selectedMealTypeSource,
    resultData: payload.resultData,
    clarificationAnswers: payload.clarificationAnswers,
  };
  const persisted = payload.interactionLease
    ? await advanceMealAnalysisSession(record, payload.interactionLease)
    : await upsertMealAnalysisSession(record);
  if (!persisted) {
    throw new Error(`Meal analysis stage transition to ${payload.stage} was rejected`);
  }
}

type ResultPipelineEvent = Extract<PipelineEvent, { step: 'RESULT' }>;
type PresentationResumeStage = 'AWAITING_MEAL_TYPE' | 'READY_FOR_PRESENTATION';

interface PostResolutionOptions {
  incomingAnswers?: MealClarificationAnswer[];
  accumulatedAnswers?: MealClarificationAnswer[];
  emitUpdatedIngredients?: boolean;
  interactionLease?: MealAnalysisStageLease;
  usdaDatasetVersion?: string;
}

async function recordClarificationAudit(
  context: PipelineRunContext,
  acceptedAnswerCount: number,
  clarificationAnswers: MealClarificationAnswer[]
): Promise<void> {
  if (acceptedAnswerCount === 0) return;
  try {
    await traceAsync(
      context.trace,
      'db',
      'record_meal_analysis_clarification',
      { analysisId: context.analysisId, answerCount: acceptedAnswerCount },
      () => recordMealAnalysisClarification(context.analysisId, clarificationAnswers)
    );
  } catch (error) {
    // The stage snapshot already contains the accepted cumulative answers.
    // Audit history must not roll back a valid resumable transition.
    logAnalysis(context.logger, 'error', 'clarification_audit_persist_failed', {
      analysisId: context.analysisId,
      ...safeErrorMetadata(error, 'clarification_audit_persist_failed'),
    });
  }
}

function buildDecompositionEvent(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition
): Extract<PipelineEvent, { step: 'DECOMPOSITION' }> {
  return {
    step: 'DECOMPOSITION',
    data: {
      analysisId: context.analysisId,
      mealName: decomposition.mealName,
      confidence: decomposition.confidence,
      ingredients: toDecompositionWire(decomposition),
      inferredMealType: decomposition.inferredMealType,
      mealTypeConfident: decomposition.mealTypeConfident,
      interpretationOrigin: context.interpretationOrigin,
    },
  };
}

function decompositionSnapshot(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition
): Record<string, unknown> {
  return {
    ...buildDecompositionEvent(context, decomposition).data,
    proposal: proposalForDecomposition(context, decomposition),
    ingredients: decomposition.ingredients.map((ingredient) => ({
      ...toDecompositionWire({ ...decomposition, ingredients: [ingredient] })[0],
      canonicalHint: ingredient.canonicalHint,
      lookupAliases: ingredient.lookupAliases,
      preparationStates: ingredient.preparationStates,
    })),
  };
}

function buildUncertaintyEvent(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition,
  uncertainty: UncertaintyReport,
  clarifications: ClarificationDTO[]
): Extract<PipelineEvent, { step: 'UNCERTAINTY' }> {
  return {
    step: 'UNCERTAINTY',
    data: {
      analysisId: context.analysisId,
      mealName: decomposition.mealName,
      variancePercent: uncertainty.variancePercent,
      needsClarification: clarifications.length > 0,
      calorieBand: {
        min: uncertainty.minTotal.calories,
        max: uncertainty.maxTotal.calories,
      },
      clarifications: clarificationsToWire(clarifications),
    },
  };
}

function buildIngredientsEvent(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition,
  resolved: ResolvedIngredient[]
): Extract<PipelineEvent, { step: 'INGREDIENTS' }> {
  return {
    step: 'INGREDIENTS',
    data: {
      analysisId: context.analysisId,
      mealName: decomposition.mealName,
      ingredients: toResolvedIngredientWire(context, resolved),
    },
  };
}

function buildMealTypeQuestionEvent(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition
): Extract<PipelineEvent, { step: 'MEAL_TYPE_QUESTION' }> {
  return {
    step: 'MEAL_TYPE_QUESTION',
    data: {
      analysisId: context.analysisId,
      mealName: decomposition.mealName,
      options: [...MEAL_TYPES],
      inferredMealType: decomposition.inferredMealType !== 'UNKNOWN'
        ? decomposition.inferredMealType
        : undefined,
    },
  };
}

class MealAnalysisInteractionBusyError extends Error {
  constructor(readonly stage: MealAnalysisStage) {
    super(`Meal analysis stage ${stage} is already in progress`);
    this.name = 'MealAnalysisInteractionBusyError';
  }
}

async function claimAutomaticStage(
  context: PipelineRunContext,
  stage: MealAnalysisAutomaticStage
): Promise<MealAnalysisStageLease> {
  const lease = await traceAsync(
    context.trace,
    'db',
    'claim_automatic_stage',
    { analysisId: context.analysisId, stage },
    () => claimMealAnalysisAutomaticStage(context.analysisId, stage)
  );
  if (!lease) throw new MealAnalysisInteractionBusyError(stage);
  return lease;
}

async function releaseAutomaticStage(
  context: PipelineRunContext,
  lease: MealAnalysisStageLease
): Promise<void> {
  try {
    await releaseMealAnalysisAutomaticStage(context.analysisId, lease);
  } catch (error) {
    // The completed checkpoint is authoritative. A failed best-effort release
    // must not replace a successful result with a trailing ERROR event.
    logAnalysis(context.logger, 'error', 'automatic_stage_release_failed', {
      analysisId: context.analysisId,
      stage: lease.stage,
      ...safeErrorMetadata(error, 'automatic_stage_release_failed'),
    });
  }
}

async function* runPresentationStage(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  resolved: ResolvedIngredient[],
  uncertainty: UncertaintyReport,
  uncertaintyEvent: Extract<PipelineEvent, { step: 'UNCERTAINTY' }>,
  context: PipelineRunContext,
  expectedStage: PresentationResumeStage,
  clarificationAnswers: MealClarificationAnswer[] | undefined,
  allowLegacyMissingStage: boolean = false,
  preclaimedLease?: MealAnalysisStageLease,
  usdaDatasetVersion?: string
): AsyncGenerator<PipelineEvent> {
  const finalMealType = context.selectedMealType;
  const mealTypeSource = context.selectedMealTypeSource;
  if (!finalMealType || finalMealType === 'UNKNOWN' || !mealTypeSource) {
    throw new Error('Presentation stage requires a resolved meal type');
  }

  const presentationLease = preclaimedLease ?? await traceAsync(
      context.trace,
      'db',
      'claim_presentation_stage',
      { analysisId: context.analysisId, expectedStage },
      () => claimMealAnalysisPresentation(
        context.analysisId,
        expectedStage,
        finalMealType,
        mealTypeSource,
        allowLegacyMissingStage
      )
    );

  if (!presentationLease) {
    const latest = await getMealAnalysisSession(context.analysisId);
    const completed = latest ? sessionToResultEvent(latest) : undefined;
    if (completed) {
      yield completed;
      return;
    }
    throw new MealAnalysisInteractionBusyError('PRESENTING');
  }

  try {
    const totalMacros = sumMacros(resolved.map((ingredient) => ingredient.macros));
    const presentation = await traceAsync(
      context.trace,
      'llm',
      'enrich_presentation',
      {
        analysisId: context.analysisId,
        source: context.source,
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        ingredientCount: resolved.length,
      },
      () => enrichPresentation(
        client,
        context,
        resolved,
        totalMacros,
        decomposition.mealName
      )
    );

    const resultEvent: ResultPipelineEvent = {
      step: 'RESULT',
      data: {
        analysisId: context.analysisId,
        mealName: decomposition.mealName,
        quantity: presentation.quantity,
        mealType: finalMealType,
        mealTypeSource,
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
        calorieBand: {
          min: uncertainty.minTotal.calories,
          max: uncertainty.maxTotal.calories,
        },
        ingredients: toResolvedIngredientWire(context, resolved),
        receipt: buildAnalysisReceipt(context, resolved, usdaDatasetVersion),
      },
    };

    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'COMPLETED' },
      () => persistSessionSnapshot(context, {
        stage: 'COMPLETED',
        decompositionData: decompositionSnapshot(context, decomposition),
        ingredientsData: toResolvedIngredientsSnapshot(
          context.analysisId,
          decomposition.mealName,
          resolved
        ),
        uncertaintyData: uncertaintyEvent.data,
        resultData: resultEvent.data,
        clarificationAnswers,
        interactionLease: presentationLease,
      })
    );

    // The completed session is authoritative. A failure to append the audit
    // row must not cause another presentation call on retry.
    try {
      await traceAsync(
        context.trace,
        'db',
        'record_meal_analysis_meal_type',
        { analysisId: context.analysisId, finalMealType, mealTypeSource },
        () => recordMealAnalysisMealType(
          context.analysisId,
          finalMealType,
          mealTypeSource
        )
      );
    } catch (error) {
      logAnalysis(context.logger, 'error', 'meal_type_audit_persist_failed', {
        analysisId: context.analysisId,
        ...safeErrorMetadata(error, 'meal_type_audit_persist_failed'),
      });
    }

    yield resultEvent;
  } catch (error) {
    try {
      await releaseMealAnalysisPresentation(
        context.analysisId,
        expectedStage,
        presentationLease.token
      );
    } catch (releaseError) {
      logAnalysis(context.logger, 'error', 'presentation_stage_release_failed', {
        analysisId: context.analysisId,
        ...safeErrorMetadata(releaseError, 'presentation_stage_release_failed'),
      });
    }
    throw error;
  }
}

async function* runPostResolutionPipeline(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  initialResolved: ResolvedIngredient[],
  context: PipelineRunContext,
  options: PostResolutionOptions = {}
): AsyncGenerator<PipelineEvent> {
  const startedAt = Date.now();
  let resolved = initialResolved;
  let uncertainty = analyzeUncertainty(resolved);
  let clarifications = uncertainty.needsClarification
    ? generateClarifications(resolved, context.locale)
    : [];
  const wasClarifiedRowIds = new Set(clarifications.map((item) => item.row_id));
  const remainingAnswers = new Map(
    (options.incomingAnswers ?? []).map((answer) => [answer.clarificationId, answer])
  );
  const acceptedAnswers: MealClarificationAnswer[] = [];
  const MAX_APPLY_ITERATIONS = 4;

  for (let i = 0; i < MAX_APPLY_ITERATIONS; i += 1) {
    const matched: MealClarificationAnswer[] = [];
    for (const clarification of clarifications) {
      const answer = remainingAnswers.get(clarification.clarification_id);
      if (
        answer &&
        clarification.options.some((option) => option.option_id === answer.selectedOptionId)
      ) {
        matched.push(answer);
      }
    }
    if (matched.length === 0) break;

    resolved = applyClarificationAnswers(resolved, clarifications, matched);
    for (const answer of matched) {
      remainingAnswers.delete(answer.clarificationId);
      acceptedAnswers.push(answer);
    }
    uncertainty = analyzeUncertainty(resolved);
    clarifications = uncertainty.needsClarification
      ? generateClarifications(resolved, context.locale)
      : [];
    for (const clarification of clarifications) {
      wasClarifiedRowIds.add(clarification.row_id);
    }
  }

  if (remainingAnswers.size > 0) {
    logAnalysis(context.logger, 'warn', 'clarification_answer_unmatched', {
      analysisId: context.analysisId,
      unmatchedCount: remainingAnswers.size,
    });
  }

  const clarificationAnswers = mergeClarificationAnswers(
    options.accumulatedAnswers ?? [],
    acceptedAnswers
  );
  const updatedIngredientsEvent: Extract<PipelineEvent, { step: 'INGREDIENTS' }> | undefined =
    options.emitUpdatedIngredients
      ? {
      step: 'INGREDIENTS',
      data: {
        analysisId: context.analysisId,
        mealName: decomposition.mealName,
        ingredients: toResolvedIngredientWire(context, resolved),
      },
    }
      : undefined;

  recordClarificationOutcomes(resolved, clarifications, wasClarifiedRowIds);
  const uncertaintyEvent = buildUncertaintyEvent(
    context,
    decomposition,
    uncertainty,
    clarifications
  );
  const ingredientsData = toResolvedIngredientsSnapshot(
    context.analysisId,
    decomposition.mealName,
    resolved
  );
  const decompositionData = decompositionSnapshot(context, decomposition);

  if (clarifications.length > 0) {
    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'AWAITING_CLARIFICATION' },
      () => persistSessionSnapshot(context, {
        stage: 'AWAITING_CLARIFICATION',
        decompositionData,
        ingredientsData,
        uncertaintyData: uncertaintyEvent.data,
        clarificationAnswers: clarificationAnswers.length > 0
          ? clarificationAnswers
          : undefined,
        interactionLease: options.interactionLease,
      })
    );
    await recordClarificationAudit(
      context,
      acceptedAnswers.length,
      clarificationAnswers
    );
    if (updatedIngredientsEvent) yield updatedIngredientsEvent;
    yield uncertaintyEvent;
    logAnalysis(context.logger, 'info', 'clarification_requested', {
      analysisId: context.analysisId,
      source: context.source,
      totalDurationMs: Date.now() - startedAt,
      clarificationCount: clarifications.length,
      sourceSummary: summarizeResolvedSources(resolved),
    });
    return;
  }

  const decompositionInferredMealType =
    decomposition.mealTypeConfident && decomposition.inferredMealType !== 'UNKNOWN'
      ? decomposition.inferredMealType
      : undefined;
  const textHeuristicMealType = context.source === 'text'
    ? detectExplicitMealTypeFromText(String(context.requestPayload.textDescription ?? ''))
    : undefined;
  const finalMealType =
    context.selectedMealType ?? decompositionInferredMealType ?? textHeuristicMealType;

  if (!finalMealType || finalMealType === 'UNKNOWN') {
    const mealTypeQuestionEvent = buildMealTypeQuestionEvent(context, decomposition);
    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'AWAITING_MEAL_TYPE' },
      () => persistSessionSnapshot(context, {
        stage: 'AWAITING_MEAL_TYPE',
        decompositionData,
        ingredientsData,
        uncertaintyData: uncertaintyEvent.data,
        mealTypeQuestionData: mealTypeQuestionEvent.data,
        clarificationAnswers: clarificationAnswers.length > 0
          ? clarificationAnswers
          : undefined,
        interactionLease: options.interactionLease,
      })
    );
    await recordClarificationAudit(
      context,
      acceptedAnswers.length,
      clarificationAnswers
    );
    if (updatedIngredientsEvent) yield updatedIngredientsEvent;
    yield uncertaintyEvent;
    yield mealTypeQuestionEvent;
    return;
  }

  const presentationContext: PipelineRunContext = {
    ...context,
    selectedMealType: finalMealType,
    selectedMealTypeSource: context.selectedMealTypeSource ??
      (context.selectedMealType ? 'user' : 'model'),
  };
  await traceAsync(
    context.trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'READY_FOR_PRESENTATION' },
    () => persistSessionSnapshot(presentationContext, {
      stage: 'READY_FOR_PRESENTATION',
      decompositionData,
      ingredientsData,
      uncertaintyData: uncertaintyEvent.data,
      clarificationAnswers: clarificationAnswers.length > 0
        ? clarificationAnswers
        : undefined,
      interactionLease: options.interactionLease,
    })
  );
  await recordClarificationAudit(
    context,
    acceptedAnswers.length,
    clarificationAnswers
  );
  if (updatedIngredientsEvent) yield updatedIngredientsEvent;
  yield uncertaintyEvent;
  yield* runPresentationStage(
    client,
    decomposition,
    resolved,
    uncertainty,
    uncertaintyEvent,
    presentationContext,
    'READY_FOR_PRESENTATION',
    clarificationAnswers.length > 0 ? clarificationAnswers : undefined,
    false,
    undefined,
    options.usdaDatasetVersion
  );
}

async function resolveAndPersistIngredientsStage(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  context: PipelineRunContext
): Promise<ResolvedIngredient[]> {
  const lease = await claimAutomaticStage(context, 'RESOLVING_INGREDIENTS');
  try {
    const resolved = await traceAsync(
      context.trace,
      'pipeline',
      'resolve_ingredients',
      {
        analysisId: context.analysisId,
        source: context.source,
        ingredientCount: decomposition.ingredients.length,
      },
      () => resolveIngredients(
        client,
        decomposition,
        context.logger,
        context.analysisId,
        context.trace
      )
    );
    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'INGREDIENTS_RESOLVED' },
      () => persistSessionSnapshot(context, {
        stage: 'INGREDIENTS_RESOLVED',
        decompositionData: decompositionSnapshot(context, decomposition),
        ingredientsData: toResolvedIngredientsSnapshot(
          context.analysisId,
          decomposition.mealName,
          resolved
        ),
        interactionLease: lease,
      })
    );
    return resolved;
  } finally {
    await releaseAutomaticStage(context, lease);
  }
}

async function* runFinalizationStage(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  resolved: ResolvedIngredient[],
  context: PipelineRunContext
): AsyncGenerator<PipelineEvent> {
  const lease = await claimAutomaticStage(context, 'FINALIZING_ANALYSIS');
  try {
    yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
      interactionLease: lease,
    });
  } finally {
    await releaseAutomaticStage(context, lease);
  }
}

async function* runPipelineFromDecomposition(
  client: MealAnalysisLlmClient,
  decomposition: LLMDecomposition,
  context: PipelineRunContext,
  decompositionLease: MealAnalysisStageLease
): AsyncGenerator<PipelineEvent> {
  const startedAt = Date.now();
  if (decomposition.outcome === 'NO_FOOD') {
    const resultData = {
      result_kind: 'NO_FOOD',
      analysis_id: context.analysisId,
      outcome_reason: decomposition.outcome_reason,
      outcome_confidence: decomposition.outcome_confidence,
    } as const;
    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'NO_FOOD_DETECTED' },
      () => persistSessionSnapshot(context, {
        stage: 'NO_FOOD_DETECTED',
        resultData,
        interactionLease: decompositionLease,
      })
    );
    yield {
      step: 'NO_FOOD',
      data: {
        analysisId: context.analysisId,
        outcomeReason: decomposition.outcome_reason,
        outcomeConfidence: decomposition.outcome_confidence,
      },
    };
    return;
  }
  const normalizedDecomposition = normalizeDecomposition(
    decomposition,
    context.logger,
    context.analysisId,
    context.source === 'text' ? String(context.requestPayload.textDescription ?? '') : ''
  );
  if (context.source === 'text') {
    maybeLogDroppedCounts(
      String(context.requestPayload.textDescription ?? ''),
      normalizedDecomposition,
      context.logger,
      context.analysisId
    );
  }

  const decompositionEvent = buildDecompositionEvent(context, normalizedDecomposition);
  // A DECOMPOSITION event is a resumability promise. Make its snapshot durable
  // before exposing the event so an early-closing consumer cannot leave a
  // phantom analysis ID.
  await traceAsync(
    context.trace,
    'db',
    'persist_session_snapshot',
    { analysisId: context.analysisId, stage: 'DECOMPOSED' },
    () => persistSessionSnapshot(context, {
      stage: 'DECOMPOSED',
      decompositionData: decompositionSnapshot(context, normalizedDecomposition),
      interactionLease: decompositionLease,
    })
  );
  yield decompositionEvent;

  logAnalysis(context.logger, 'info', 'decomposition_complete', {
    analysisId: context.analysisId,
    source: context.source,
    ingredientCount: normalizedDecomposition.ingredients.length,
    confidence: normalizedDecomposition.confidence,
    durationMs: Date.now() - startedAt,
  });

  const resolveStartedAt = Date.now();
  const resolved = await resolveAndPersistIngredientsStage(
    client,
    normalizedDecomposition,
    context
  );
  const ingredientsEvent = buildIngredientsEvent(
    context,
    normalizedDecomposition,
    resolved
  );
  yield ingredientsEvent;

  logAnalysis(
    context.logger,
    summarizeResolvedSources(resolved).llmFallbackCount > 0 ? 'warn' : 'info',
    'ingredients_resolved',
    {
      analysisId: context.analysisId,
      source: context.source,
      durationMs: Date.now() - resolveStartedAt,
      sourceSummary: summarizeResolvedSources(resolved),
    }
  );

  yield* runFinalizationStage(
    client,
    normalizedDecomposition,
    resolved,
    context
  );
}

function validatePersistedUncertainty(
  session: MealAnalysisSessionRecord,
  resolved: ResolvedIngredient[],
  locale: string
): UncertaintyReport {
  const calculated = analyzeUncertainty(resolved);
  const clarifications = calculated.needsClarification
    ? generateClarifications(resolved, locale)
    : [];
  return validatePersistedUncertaintySnapshot(
    session,
    calculated,
    clarifications.map((item) => item.clarification_id)
  );
}

function sessionToResultEvent(
  session: MealAnalysisSessionRecord
): ResultPipelineEvent | undefined {
  if (session.resultData == null) return undefined;
  const stage = resolveMealAnalysisStage(session);
  if (stage !== 'COMPLETED') return undefined;
  const decomposition = sessionToNormalizedDecomposition(session);
  const resolved = sessionToResolvedIngredients(session, decomposition);
  validatePersistedUncertainty(session, resolved, session.locale);
  const raw = snapshotRecord(session.resultData, 'result data');
  if (raw.analysisId !== session.analysisId) {
    throw new InvalidMealAnalysisSnapshotError('result analysisId does not match the row');
  }
  const mealType = snapshotMealType(raw.mealType, 'result mealType');
  if (mealType === 'UNKNOWN') {
    throw new InvalidMealAnalysisSnapshotError('completed result has UNKNOWN meal type');
  }
  if (raw.mealTypeSource !== 'model' && raw.mealTypeSource !== 'user') {
    throw new InvalidMealAnalysisSnapshotError('result mealTypeSource is invalid');
  }
  if (!Array.isArray(raw.ingredients) || !Array.isArray(raw.confidenceReasons)) {
    throw new InvalidMealAnalysisSnapshotError('result collections are invalid');
  }
  // The result was produced from the already validated resolved snapshot. The
  // shape checks here make idempotent replay safe without broad schema casts.
  snapshotString(raw.mealName, 'result mealName', true);
  snapshotString(raw.quantity, 'result quantity', true);
  snapshotString(raw.tip, 'result tip', true);
  snapshotString(raw.calorieConfidence, 'result calorieConfidence');
  const resultMacros = snapshotMacros(raw.macros, 'result macros');
  const calculatedMacros = sumMacros(resolved.map((ingredient) => ingredient.macros));
  if (JSON.stringify(resultMacros) !== JSON.stringify(calculatedMacros)) {
    throw new InvalidMealAnalysisSnapshotError(
      'result macros disagree with the resolved ingredient snapshot'
    );
  }
  const resultRowIds = raw.ingredients.map((value, index) => {
    const ingredient = snapshotRecord(value, `result ingredient ${index}`);
    return snapshotString(ingredient.rowId, `result ingredient ${index}.rowId`);
  });
  if (
    resultRowIds.length !== resolved.length ||
    resultRowIds.some((rowId, index) => rowId !== resolved[index]?.rowId)
  ) {
    throw new InvalidMealAnalysisSnapshotError(
      'result ingredient identities disagree with the resolved snapshot'
    );
  }
  const band = snapshotRecord(raw.calorieBand, 'result calorieBand');
  snapshotNumber(band.min, 'result calorieBand.min');
  snapshotNumber(band.max, 'result calorieBand.max');
  return {
    step: 'RESULT',
    data: raw as unknown as ResultPipelineEvent['data'],
  };
}

function contextFromSession(
  session: MealAnalysisSessionRecord,
  options: AnalysisRequestOptions,
  trace: AnalysisTrace,
  selectedMealType?: MealTypeValue,
  selectedMealTypeSource?: MealTypeSource
): PipelineRunContext {
  const requestPayload = snapshotRecord(session.requestPayload, 'request payload');
  const feedbackContext = feedbackContextFromSessionPayload(requestPayload);
  const execution = requestPayload.execution && typeof requestPayload.execution === 'object'
    ? requestPayload.execution as Record<string, unknown>
    : {};
  const acceptedProposal = requestPayload.proposal && typeof requestPayload.proposal === 'object'
    ? requestPayload.proposal as IngredientProposal
    : undefined;
  const persistedMealType = session.selectedMealType == null
    ? undefined
    : snapshotMealType(session.selectedMealType, 'selected meal type');
  return {
    analysisId: session.analysisId,
    parentAnalysisId: session.parentAnalysisId,
    userId: session.userId,
    source: session.source,
    locale: session.locale,
    countryCode: session.countryCode,
    timeZone: session.timeZone,
    requestPayload,
    imageUrl: session.source === 'image'
      ? imageDownloadUrlFromSessionPayload(requestPayload)
      : undefined,
    selectedMealType: selectedMealType ?? persistedMealType,
    selectedMealTypeSource:
      selectedMealTypeSource ?? session.selectedMealTypeSource,
    ...feedbackContext,
    logger: options.logger,
    trace,
    interpretationOrigin: acceptedProposal
      ? InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
      : InterpretationOrigin.INTERPRETATION_ORIGIN_CLOUD_MODEL,
    localAttempted: execution.localAttempted === true || Boolean(acceptedProposal),
    localAttemptId: typeof execution.localAttemptId === 'string'
      ? execution.localAttemptId
      : undefined,
    localAttemptStartedAtEpochMs:
      typeof execution.localAttemptStartedAtEpochMs === 'number'
        ? execution.localAttemptStartedAtEpochMs
        : undefined,
    localAttemptCompletedAtEpochMs:
      typeof execution.localAttemptCompletedAtEpochMs === 'number'
        ? execution.localAttemptCompletedAtEpochMs
        : undefined,
    fallbackReason: typeof execution.fallbackReason === 'string'
      ? execution.fallbackReason as MealAnalysisFallbackReason
      : MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    attemptId: typeof execution.attemptId === 'string'
      ? execution.attemptId
      : randomUUID(),
    attemptStartedAt: typeof execution.attemptStartedAt === 'number'
      ? execution.attemptStartedAt
      : Date.now(),
    acceptedProposal,
  };
}

function decompositionClaimRecord(context: PipelineRunContext) {
  return {
    analysisId: context.analysisId,
    parentAnalysisId: context.parentAnalysisId,
    userId: context.userId,
    source: context.source,
    locale: context.locale,
    countryCode: context.countryCode,
    timeZone: context.timeZone,
    requestPayload: context.requestPayload,
    selectedMealType: context.selectedMealType,
    selectedMealTypeSource: context.selectedMealTypeSource,
  };
}

/**
 * Keep dispatch identity immutable inside request_payload. Some corresponding
 * session columns legitimately change later (for example, user meal-type
 * selection and log time zone), so comparing those mutable columns would make
 * a completed same-ID retry look like a collision.
 */
function durableAnalysisContext(
  options: AnalysisRequestOptions,
  locale: string
): Record<string, string | null> {
  return {
    locale,
    countryCode: options.countryCode ?? null,
    timeZone: options.timeZone ?? null,
    analysisLocalDatetime: new Date().toISOString(),
    selectedMealType: options.selectedMealType ?? null,
    selectedMealTypeSource: options.selectedMealTypeSource ?? null,
  };
}

function decompositionInputContext(context: PipelineRunContext): string {
  const analysisContext = context.requestPayload.analysisContext;
  const persisted = analysisContext && typeof analysisContext === 'object'
    ? analysisContext as Record<string, unknown>
    : {};
  return `Analysis context (application supplied): ${JSON.stringify({
    source: context.source.toUpperCase(),
    analysis_local_datetime: persisted.analysisLocalDatetime,
    time_zone: context.timeZone ?? null,
    locale: context.locale,
    country_code: context.countryCode ?? null,
  })}`;
}

function executionContext(
  options: AnalysisRequestOptions,
  attemptId: string,
  attemptStartedAt: number
): Record<string, unknown> {
  return {
    attemptId,
    attemptStartedAt,
    localAttempted: options.localAttempted ?? false,
    localAttemptId: options.localAttemptId ?? null,
    localAttemptStartedAtEpochMs: options.localAttemptStartedAtEpochMs ?? null,
    localAttemptCompletedAtEpochMs: options.localAttemptCompletedAtEpochMs ?? null,
    fallbackReason: options.fallbackReason ??
      MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
  };
}

async function decomposeFromContext(
  client: MealAnalysisLlmClient,
  context: PipelineRunContext
): Promise<LLMDecomposition> {
  const correctionContext = buildCorrectionContext(
    context.feedbackIssues,
    context.otherText
  );
  if (context.source === 'text') {
    const input = String(context.requestPayload.textDescription ?? '');
    if (input.trim() === '') {
      throw new InvalidMealAnalysisSnapshotError(
        'text request is missing textDescription'
      );
    }
    const decomposition = await traceAsync(
      context.trace,
      'llm',
      'decompose_text',
      {
        analysisId: context.analysisId,
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        source: 'text',
      },
      () => decomposeFromText(client, input, decompositionInputContext(context), correctionContext)
    );
    recordTraceArtifact(context.trace, 'decomposition_model_output', decomposition);
    return decomposition;
  }

  if (!context.imageUrl) {
    throw new InvalidMealAnalysisSnapshotError(
      'image request is missing an image object key'
    );
  }
  const decomposition = await traceAsync(
    context.trace,
    'llm',
    'decompose_image',
    {
      analysisId: context.analysisId,
      model: OPENAI_MEAL_ANALYSIS_MODEL,
      source: 'image',
    },
    () => decomposeFromImage(client, context.imageUrl!, decompositionInputContext(context), correctionContext)
  );
  recordTraceArtifact(context.trace, 'decomposition_model_output', decomposition);
  return decomposition;
}

async function* runDecomposition(
  context: PipelineRunContext
): AsyncGenerator<PipelineEvent> {
  // The ID and request are durable before STARTED.
  yield { step: 'STARTED', data: { analysisId: context.analysisId } };
  const lease = await claimAutomaticStage(context, 'DECOMPOSING');
  try {
    const client = getMealAnalysisClient(context.trace);
    const decomposition = await decomposeFromContext(client, context);
    yield* runPipelineFromDecomposition(
      client,
      decomposition,
      context,
      lease
    );
  } finally {
    await releaseAutomaticStage(context, lease);
  }
}

export async function* analyzeTextMeal(
  input: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const analysisId = options.analysisId ?? randomUUID();
  const trace = options.trace ?? createAnalysisTrace();
  const attemptId = randomUUID();
  const attemptStartedAt = Date.now();
  const context: PipelineRunContext = {
    analysisId,
    parentAnalysisId: options.parentAnalysisId,
    userId: options.userId,
    source: 'text',
    locale: options.locale ?? 'en',
    countryCode: options.countryCode,
    timeZone: options.timeZone,
    requestPayload: {
      textDescription: input,
      analysisContext: durableAnalysisContext(options, options.locale ?? 'en'),
      execution: executionContext(options, attemptId, attemptStartedAt),
      ...(options.feedbackIssues?.length ? { feedbackIssues: options.feedbackIssues } : {}),
      ...(options.otherText ? { otherText: options.otherText } : {}),
    },
    selectedMealType: options.selectedMealType,
    selectedMealTypeSource: options.selectedMealTypeSource,
    feedbackIssues: options.feedbackIssues,
    otherText: options.otherText,
    logger: options.logger,
    trace,
    interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_CLOUD_MODEL,
    localAttempted: options.localAttempted ?? false,
    localAttemptId: options.localAttemptId,
    localAttemptStartedAtEpochMs: options.localAttemptStartedAtEpochMs,
    localAttemptCompletedAtEpochMs: options.localAttemptCompletedAtEpochMs,
    fallbackReason: options.fallbackReason ??
      MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    attemptId,
    attemptStartedAt,
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
    const dispatch = await createMealAnalysisSession(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    yield* runDecomposition(context);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'text',
      errorKind: mealAnalysisErrorKind(error, 'analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Meal analysis failed'),
      isRetryableMealAnalysisError(error)
    );
  }
}

export async function* analyzeIngredientProposal(
  proposal: IngredientProposal,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const analysisId = options.analysisId ?? randomUUID();
  const trace = options.trace ?? createAnalysisTrace();
  const attemptId = options.localAttemptId ?? randomUUID();
  const attemptStartedAt = Date.now();
  const decomposition = proposalToDecomposition(proposal);
  const source = proposal.modality === AnalysisModality.ANALYSIS_MODALITY_IMAGE
    ? 'image' as const
    : 'text' as const;
  const localOptions: AnalysisRequestOptions = {
    ...options,
    localAttempted: true,
    localAttemptId: attemptId,
    localAttemptStartedAtEpochMs: options.localAttemptStartedAtEpochMs,
    localAttemptCompletedAtEpochMs: options.localAttemptCompletedAtEpochMs,
    fallbackReason:
      options.fallbackReason ??
      MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
  };
  const context: PipelineRunContext = {
    analysisId,
    parentAnalysisId: options.parentAnalysisId,
    userId: options.userId,
    source,
    locale: options.locale ?? 'en',
    countryCode: options.countryCode,
    timeZone: options.timeZone,
    requestPayload: {
      proposal,
      analysisContext: durableAnalysisContext(options, options.locale ?? 'en'),
      execution: executionContext(localOptions, attemptId, attemptStartedAt),
    },
    selectedMealType: options.selectedMealType,
    selectedMealTypeSource: options.selectedMealTypeSource,
    logger: options.logger,
    trace,
    interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO,
    localAttempted: true,
    localAttemptId: attemptId,
    localAttemptStartedAtEpochMs: options.localAttemptStartedAtEpochMs,
    localAttemptCompletedAtEpochMs: options.localAttemptCompletedAtEpochMs,
    fallbackReason:
      options.fallbackReason ??
      MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    attemptId,
    attemptStartedAt,
    acceptedProposal: proposal,
  };
  try {
    const dispatch = await createMealAnalysisSession(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    yield { step: 'STARTED', data: { analysisId } };
    const lease = await claimAutomaticStage(context, 'DECOMPOSING');
    try {
      const client = getMealAnalysisClient(trace);
      yield* runPipelineFromDecomposition(
        client,
        decomposition,
        context,
        lease
      );
    } finally {
      await releaseAutomaticStage(context, lease);
    }
  } catch (error) {
    logAnalysis(options.logger, 'error', 'local_proposal_analysis_failed', {
      analysisId,
      source,
      errorKind: mealAnalysisErrorKind(error, 'local_proposal_analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Meal proposal analysis failed'),
      isRetryableMealAnalysisError(error)
    );
  }
}

export async function* analyzeImageMeal(
  imageUrl: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const analysisId = options.analysisId ?? randomUUID();
  const trace = options.trace ?? createAnalysisTrace();
  const attemptId = randomUUID();
  const attemptStartedAt = Date.now();
  const context: PipelineRunContext = {
    analysisId,
    parentAnalysisId: options.parentAnalysisId,
    userId: options.userId,
    source: 'image',
    locale: options.locale ?? 'en',
    countryCode: options.countryCode,
    timeZone: options.timeZone,
    requestPayload: {
      ...(options.imageObjectKey ? { imageObjectKey: options.imageObjectKey } : {}),
      analysisContext: durableAnalysisContext(options, options.locale ?? 'en'),
      execution: executionContext(options, attemptId, attemptStartedAt),
      ...(options.feedbackIssues?.length ? { feedbackIssues: options.feedbackIssues } : {}),
      ...(options.otherText ? { otherText: options.otherText } : {}),
    },
    imageUrl,
    selectedMealType: options.selectedMealType,
    selectedMealTypeSource: options.selectedMealTypeSource,
    feedbackIssues: options.feedbackIssues,
    otherText: options.otherText,
    logger: options.logger,
    trace,
    interpretationOrigin: InterpretationOrigin.INTERPRETATION_ORIGIN_CLOUD_MODEL,
    localAttempted: options.localAttempted ?? false,
    localAttemptId: options.localAttemptId,
    fallbackReason: options.fallbackReason ??
      MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
    attemptId,
    attemptStartedAt,
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
    const dispatch = await createMealAnalysisSession(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    yield* runDecomposition(context);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'image',
      errorKind: mealAnalysisErrorKind(error, 'image_analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Image analysis failed'),
      isRetryableMealAnalysisError(error)
    );
  }
}

/**
 * Continue from the last durable snapshot after a stream disconnect or worker
 * restart. Automatic work restarts from its last completed checkpoint.
 */
export async function* resumeMealAnalysis(
  analysisId: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  try {
    const session = await getMealAnalysisSession(analysisId);
    if (!session || (options.userId && session.userId !== options.userId)) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }

    const stage = resolveMealAnalysisStage(session);
    if (stage === 'NO_FOOD_DETECTED') {
      const result = snapshotRecord(session.resultData, 'no-food result data');
      if (result.result_kind !== 'NO_FOOD') {
        throw new InvalidMealAnalysisSnapshotError('NO_FOOD_DETECTED has no valid result');
      }
      yield {
        step: 'NO_FOOD',
        data: {
          analysisId,
          outcomeReason: snapshotString(result.outcome_reason, 'no-food outcome reason'),
          outcomeConfidence: snapshotNumber(result.outcome_confidence, 'no-food outcome confidence'),
        },
      };
      return;
    }
    if (stage === 'COMPLETED') {
      const result = sessionToResultEvent(session);
      if (!result) {
        throw new InvalidMealAnalysisSnapshotError('COMPLETED has no valid result');
      }
      yield result;
      return;
    }

    if (stage === 'PENDING_DECOMPOSITION' || stage === 'DECOMPOSING') {
      yield* runDecomposition(contextFromSession(session, options, trace));
      return;
    }

    const decomposition = sessionToNormalizedDecomposition(session);
    const selectedMealType = session.selectedMealType == null
      ? undefined
      : snapshotMealType(session.selectedMealType, 'selected meal type');
    const context = contextFromSession(
      session,
      options,
      trace,
      selectedMealType,
      session.selectedMealTypeSource ?? (selectedMealType ? 'model' : undefined)
    );
    const client = getMealAnalysisClient(trace);

    if (stage === 'DECOMPOSED' || stage === 'RESOLVING_INGREDIENTS') {
      yield buildDecompositionEvent(context, decomposition);
      const resolved = await resolveAndPersistIngredientsStage(
        client,
        decomposition,
        context
      );
      yield buildIngredientsEvent(context, decomposition, resolved);
      yield* runFinalizationStage(client, decomposition, resolved, context);
      return;
    }

    const resolved = sessionToResolvedIngredients(session, decomposition);
    if (stage === 'INGREDIENTS_RESOLVED' || stage === 'FINALIZING_ANALYSIS') {
      yield buildDecompositionEvent(context, decomposition);
      yield buildIngredientsEvent(context, decomposition, resolved);
      yield* runFinalizationStage(client, decomposition, resolved, context);
      return;
    }

    const uncertainty = validatePersistedUncertainty(
      session,
      resolved,
      context.locale
    );
    const clarifications = uncertainty.needsClarification
      ? generateClarifications(resolved, context.locale)
      : [];
    const uncertaintyEvent = buildUncertaintyEvent(
      context,
      decomposition,
      uncertainty,
      clarifications
    );

    const pendingClarificationAnswers = pendingClarificationAnswersFromSession(session);
    if (
      stage === 'APPLYING_CLARIFICATION' ||
      (stage === 'AWAITING_CLARIFICATION' && pendingClarificationAnswers.length > 0)
    ) {
      const interactionLease = await claimMealAnalysisClarification(
        analysisId,
        undefined,
        session.stage == null
      );
      if (!interactionLease) {
        throw new MealAnalysisInteractionBusyError('APPLYING_CLARIFICATION');
      }
      try {
        yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
          incomingAnswers: pendingClarificationAnswers,
          accumulatedAnswers: clarificationAnswersFromSession(session),
          interactionLease,
          usdaDatasetVersion: sessionUsdaDatasetVersion(session),
        });
        return;
      } finally {
        await releaseMealAnalysisClarification(analysisId, interactionLease.token);
      }
    }

    yield buildDecompositionEvent(context, decomposition);
    yield buildIngredientsEvent(context, decomposition, resolved);
    yield uncertaintyEvent;

    if (stage === 'AWAITING_CLARIFICATION') {
      return;
    }
    if (stage === 'AWAITING_MEAL_TYPE') {
      yield buildMealTypeQuestionEvent(context, decomposition);
      return;
    }
    if (stage !== 'READY_FOR_PRESENTATION' && stage !== 'PRESENTING') {
      throw new InvalidMealAnalysisSnapshotError(`cannot resume stage ${stage}`);
    }

    const finalMealType = context.selectedMealType;
    const mealTypeSource = context.selectedMealTypeSource;
    if (!finalMealType || finalMealType === 'UNKNOWN' || !mealTypeSource) {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} is missing its selected meal type`
      );
    }
    const presentationLease = await claimMealAnalysisPresentation(
      analysisId,
      'READY_FOR_PRESENTATION',
      finalMealType,
      mealTypeSource,
      session.stage == null
    );
    if (!presentationLease) {
      const latest = await getMealAnalysisSession(analysisId);
      const completed = latest ? sessionToResultEvent(latest) : undefined;
      if (completed) {
        yield completed;
        return;
      }
      throw new MealAnalysisInteractionBusyError('PRESENTING');
    }

    yield* runPresentationStage(
      client,
      decomposition,
      resolved,
      uncertainty,
      uncertaintyEvent,
      context,
      'READY_FOR_PRESENTATION',
      clarificationAnswersFromSession(session),
      session.stage == null,
      presentationLease,
      sessionUsdaDatasetVersion(session)
    );
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_resume_failed', {
      analysisId,
      errorKind: mealAnalysisErrorKind(error, 'analysis_resume_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Analysis resume failed'),
      isRetryableMealAnalysisError(error)
    );
  }
}

export async function* continueMealAnalysis(
  analysisId: string,
  answers: MealClarificationAnswer[],
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  let clarificationLease: MealAnalysisStageLease | undefined;
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

    const stage = resolveMealAnalysisStage(session);
    if (stage === 'COMPLETED') {
      const result = sessionToResultEvent(session);
      if (!result) {
        throw new InvalidMealAnalysisSnapshotError('COMPLETED has no valid result');
      }
      yield result;
      return;
    }
    if (stage === 'DECOMPOSED' || stage === 'AWAITING_MEAL_TYPE') {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} cannot accept clarification answers`
      );
    }

    const decomposition = sessionToNormalizedDecomposition(session);
    const resolved = sessionToResolvedIngredients(session, decomposition);
    const selectedMealType = session.selectedMealType == null
      ? undefined
      : snapshotMealType(session.selectedMealType, 'selected meal type');
    const context = contextFromSession(
      session,
      options,
      trace,
      selectedMealType,
      session.selectedMealTypeSource ?? (selectedMealType ? 'model' : undefined)
    );
    const priorAnswers = clarificationAnswersFromSession(session);
    const client = getMealAnalysisClient(trace);

    if (stage === 'READY_FOR_PRESENTATION' || stage === 'PRESENTING') {
      if (answers.length > 0) {
        throw new InvalidMealAnalysisSnapshotError(
          `${stage} cannot accept additional clarification answers`
        );
      }
      const uncertainty = validatePersistedUncertainty(
        session,
        resolved,
        context.locale
      );
      const uncertaintyEvent = buildUncertaintyEvent(
        context,
        decomposition,
        uncertainty,
        []
      );
      yield* runPresentationStage(
        client,
        decomposition,
        resolved,
        uncertainty,
        uncertaintyEvent,
        context,
        'READY_FOR_PRESENTATION',
        priorAnswers.length > 0 ? priorAnswers : undefined,
        session.stage == null,
        undefined,
        sessionUsdaDatasetVersion(session)
      );
      return;
    }

    if (stage === 'INGREDIENTS_RESOLVED') {
      if (answers.length > 0) {
        throw new InvalidMealAnalysisSnapshotError(
          'INGREDIENTS_RESOLVED has no persisted clarification to answer'
        );
      }
      yield* runFinalizationStage(client, decomposition, resolved, context);
      return;
    }

    validatePersistedUncertainty(session, resolved, context.locale);
    clarificationLease = await claimMealAnalysisClarification(
      analysisId,
      answers,
      session.stage == null
    );
    if (!clarificationLease) {
      const latest = await getMealAnalysisSession(analysisId);
      const result = latest ? sessionToResultEvent(latest) : undefined;
      if (result) {
        yield result;
        return;
      }
      throw new MealAnalysisInteractionBusyError('APPLYING_CLARIFICATION');
    }
    yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
      incomingAnswers: answers,
      accumulatedAnswers: priorAnswers,
      emitUpdatedIngredients: true,
      interactionLease: clarificationLease,
      usdaDatasetVersion: sessionUsdaDatasetVersion(session),
    });
  } catch (error) {
    logAnalysis(options.logger, 'error', 'clarification_resume_failed', {
      analysisId,
      errorKind: mealAnalysisErrorKind(error, 'clarification_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Clarification failed'),
      isRetryableMealAnalysisError(error)
    );
  } finally {
    if (clarificationLease) {
      try {
        await releaseMealAnalysisClarification(
          analysisId,
          clarificationLease.token
        );
      } catch (error) {
        logAnalysis(options.logger, 'error', 'clarification_stage_release_failed', {
          analysisId,
          ...safeErrorMetadata(error, 'clarification_stage_release_failed'),
        });
      }
    }
  }
}

export async function* continueMealAnalysisWithMealType(
  analysisId: string,
  selectedMealType: MealTypeValue,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  try {
    if (selectedMealType === 'UNKNOWN') {
      throw new InvalidMealAnalysisSnapshotError(
        'A concrete meal type is required to continue analysis'
      );
    }
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

    const stage = resolveMealAnalysisStage(session);
    if (stage === 'COMPLETED') {
      const result = sessionToResultEvent(session);
      if (!result) {
        throw new InvalidMealAnalysisSnapshotError('COMPLETED has no valid result');
      }
      yield result;
      return;
    }
    if (stage !== 'AWAITING_MEAL_TYPE' && stage !== 'PRESENTING') {
      throw new InvalidMealAnalysisSnapshotError(
        `${stage} is not awaiting a meal type`
      );
    }

    const decomposition = sessionToNormalizedDecomposition(session);
    const resolved = sessionToResolvedIngredients(session, decomposition);
    const uncertainty = validatePersistedUncertainty(session, resolved, session.locale);
    const context = contextFromSession(
      session,
      options,
      trace,
      selectedMealType,
      'user'
    );
    const uncertaintyEvent = buildUncertaintyEvent(
      context,
      decomposition,
      uncertainty,
      []
    );
    const client = getMealAnalysisClient(trace);
    yield* runPresentationStage(
      client,
      decomposition,
      resolved,
      uncertainty,
      uncertaintyEvent,
      context,
      'AWAITING_MEAL_TYPE',
      clarificationAnswersFromSession(session),
      session.stage == null,
      undefined,
      sessionUsdaDatasetVersion(session)
    );
  } catch (error) {
    logAnalysis(options.logger, 'error', 'meal_type_resume_failed', {
      analysisId,
      selectedMealType,
      errorKind: mealAnalysisErrorKind(error, 'meal_type_continuation_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Meal type continuation failed'),
      isRetryableMealAnalysisError(error)
    );
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

    const nextAnalysisId = requestOptions.analysisId ?? randomUUID();
    const options: AnalysisRequestOptions = {
      analysisId: nextAnalysisId,
      parentAnalysisId: analysisId,
      userId: userId ?? session.userId,
      locale: session.locale,
      countryCode: session.countryCode,
      timeZone: session.timeZone,
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
      let imageUrl: string | undefined;
      let imageObjectKey: string | undefined;
      if (typeof requestPayload.imageObjectKey === 'string') {
        imageObjectKey = requestPayload.imageObjectKey;
        imageUrl = buildOracleDownloadUrl(imageObjectKey);
      }
      if (!imageUrl || !imageObjectKey) {
        yield buildErrorEvent(nextAnalysisId, 'Image analysis session is missing an image object key');
        return;
      }
      yield* analyzeImageMeal(imageUrl, { ...options, imageObjectKey });
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
      errorKind: mealAnalysisErrorKind(error, 'reanalysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Reanalysis failed'),
      isRetryableMealAnalysisError(error)
    );
  }
}
