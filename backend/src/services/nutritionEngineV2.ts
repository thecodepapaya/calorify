/**
 * Nutrition Engine V2 — resumable macro pipeline with streamed events,
 * clarification continuation, meal-type follow-up, full-result enrichment,
 * image analysis, and feedback-driven reanalysis.
 */

import { randomUUID } from 'node:crypto';
import { setTimeout as delay } from 'node:timers/promises';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';
import { safeErrorKind, safeErrorMetadata } from '../utils/safeError.js';
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
  advanceMealAnalysisSession,
  claimMealAnalysisClarification,
  claimMealAnalysisDecomposition,
  claimMealAnalysisFinalization,
  claimMealAnalysisIngredientResolution,
  claimMealAnalysisPresentation,
  getMealAnalysisSession,
  recordMealAnalysisClarification,
  recordMealAnalysisMealType,
  releaseMealAnalysisClarification,
  releaseMealAnalysisDecomposition,
  releaseMealAnalysisFinalization,
  releaseMealAnalysisIngredientResolution,
  releaseMealAnalysisPresentation,
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
  IngredientFieldOrigin,
  InterpretationOrigin,
  MealAnalysisFallbackReason,
  NutritionOrigin,
  PortionKind,
  type IngredientFieldProvenance,
  type IngredientProposalV1,
  type MealAnalysisReceipt,
} from '../protos/calorify/meal_analysis_pipeline.js';
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

export { MEAL_TYPES } from './mealAnalysisDomain.js';
export type { Macros, MealTypeValue } from './mealAnalysisDomain.js';

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
  nutritionOrigin: NutritionOrigin;
  fdcId?: string;
  usdaDatasetVersion?: string;
  nutrientsPer100g?: Macros;
  fieldProvenance: IngredientFieldProvenance[];
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
        interpretationOrigin: InterpretationOrigin;
        proposal: IngredientProposalV1;
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
        receipt: MealAnalysisReceipt;
      };
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
  acceptedProposal?: IngredientProposalV1;
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

function proposalToDecomposition(proposal: IngredientProposalV1): LLMDecomposition {
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
  if (!mealName || mealName.length > 200) {
    throw new Error('Proposal meal name is invalid');
  }
  if (
    !Number.isFinite(proposal.confidence) ||
    proposal.confidence < 0 ||
    proposal.confidence > 1
  ) {
    throw new Error('Proposal confidence is invalid');
  }
  if (proposal.ingredients.length === 0 || proposal.ingredients.length > 30) {
    throw new Error('Proposal ingredient count is invalid');
  }
  const rowIds = new Set<string>();
  const ingredients = proposal.ingredients.map((ingredient) => {
    const rowId = ingredient.rowId.trim();
    const rawName = ingredient.rawName.trim();
    const canonicalHint = ingredient.canonicalHint.trim();
    if (
      !rowId || rowIds.has(rowId) || rowId.length > 128 ||
      !rawName || rawName.length > 200 ||
      !canonicalHint || canonicalHint.length > 200
    ) {
      throw new Error('Proposal ingredient identity is invalid');
    }
    rowIds.add(rowId);
    const gramValues = [
      ingredient.minGrams,
      ingredient.gramsEstimated,
      ingredient.maxGrams,
    ];
    if (
      gramValues.some((value) => !Number.isFinite(value) || value <= 0 || value > 5000) ||
      ingredient.minGrams > ingredient.gramsEstimated ||
      ingredient.gramsEstimated > ingredient.maxGrams
    ) {
      throw new Error('Proposal ingredient portion is invalid');
    }
    const portionKind = asPortionKind(ingredient.portionKind);
    if (
      ingredient.portionKind === PortionKind.PORTION_KIND_UNSPECIFIED ||
      ingredient.portionKind === PortionKind.UNRECOGNIZED
    ) {
      throw new Error('Proposal ingredient portion kind is invalid');
    }
    if (
      ingredient.confidence < 0 ||
      ingredient.confidence > 1 ||
      !Number.isFinite(ingredient.confidence)
    ) {
      throw new Error('Proposal ingredient confidence is invalid');
    }
    const provenanceFields = new Set(
      ingredient.fieldProvenance.map((provenance) => provenance.fieldName)
    );
    if (!provenanceFields.has('identity') || !provenanceFields.has('portion')) {
      throw new Error('Proposal ingredient provenance is incomplete');
    }
    const count = ingredient.count;
    if (
      portionKind === 'COUNT' &&
      (count == null || !Number.isFinite(count) || count <= 0 || count > 20)
    ) {
      throw new Error('Count proposal requires a plausible count');
    }
    if (portionKind === 'COUNT') {
      const perUnitValues = [
        ingredient.perUnitMinGrams,
        ingredient.perUnitGrams,
        ingredient.perUnitMaxGrams,
      ];
      if (
        perUnitValues.some(
          (value) => value == null || !Number.isFinite(value) || value <= 0 || value > 2000
        ) ||
        ingredient.perUnitMinGrams! > ingredient.perUnitGrams! ||
        ingredient.perUnitGrams! > ingredient.perUnitMaxGrams! ||
        Math.abs(ingredient.gramsEstimated - count! * ingredient.perUnitGrams!) >
          Math.abs(count! * ingredient.perUnitGrams!) * 0.1 + 0.5
      ) {
        throw new Error('Count proposal per-unit values are invalid');
      }
    } else if (
      ingredient.count != null ||
      ingredient.perUnitGrams != null ||
      ingredient.perUnitMinGrams != null ||
      ingredient.perUnitMaxGrams != null
    ) {
      throw new Error('Non-count proposal contains count values');
    }
    const preparation = ingredient.preparation.trim();
    const notes = ingredient.notes.trim();
    return {
      row_id: rowId,
      raw_name: rawName,
      canonical_hint: canonicalHint,
      grams_estimated: ingredient.gramsEstimated,
      min_grams: ingredient.minGrams,
      max_grams: ingredient.maxGrams,
      notes: [preparation, notes].filter(Boolean).join('; '),
      portion_kind: portionKind,
      count: ingredient.count,
      per_unit_grams: ingredient.perUnitGrams,
      per_unit_min_grams: ingredient.perUnitMinGrams,
      per_unit_max_grams: ingredient.perUnitMaxGrams,
      size_specified_by_user: ingredient.sizeSpecifiedByUser,
    } satisfies LLMIngredient;
  });
  if (!MEAL_TYPES.includes(proposal.inferredMealType as (typeof MEAL_TYPES)[number]) &&
      proposal.inferredMealType !== 'UNKNOWN') {
    throw new Error('Proposal meal type is invalid');
  }
  return {
    meal_name: mealName,
    ingredients,
    confidence: proposal.confidence,
    inferred_meal_type: proposal.inferredMealType as MealTypeValue,
    meal_type_confident: proposal.mealTypeConfident,
  };
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

const INGREDIENT_PROPOSAL_SCHEMA_VERSION = 1;
const ANALYSIS_RECEIPT_SCHEMA_VERSION = 1;
const CALCULATION_VERSION = 'nutrition-engine-v2';

function proposalForDecomposition(
  context: PipelineRunContext,
  decomposition: NormalizedDecomposition
): IngredientProposalV1 {
  if (context.acceptedProposal) return context.acceptedProposal;
  const fieldOrigin = context.interpretationOrigin === InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
    ? IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL
    : IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL;
  return {
    schemaVersion: INGREDIENT_PROPOSAL_SCHEMA_VERSION,
    proposalId: `${context.analysisId}:proposal-v1`,
    modality: context.source === 'image'
      ? AnalysisModality.ANALYSIS_MODALITY_IMAGE
      : AnalysisModality.ANALYSIS_MODALITY_TEXT,
    mealName: decomposition.mealName,
    inferredMealType: decomposition.inferredMealType,
    mealTypeConfident: decomposition.mealTypeConfident,
    confidence: decomposition.confidence,
    ingredients: decomposition.ingredients.map((ingredient) => ({
      rowId: ingredient.rowId,
      rawName: ingredient.rawName,
      canonicalHint: ingredient.canonicalHint,
      preparation: '',
      gramsEstimated: ingredient.gramsEstimated,
      minGrams: ingredient.minGrams,
      maxGrams: ingredient.maxGrams,
      notes: ingredient.notes,
      portionKind: toWirePortionKind(ingredient.portionKind),
      count: ingredient.count ?? undefined,
      perUnitGrams: ingredient.perUnitGrams ?? undefined,
      perUnitMinGrams: ingredient.perUnitMinGrams ?? undefined,
      perUnitMaxGrams: ingredient.perUnitMaxGrams ?? undefined,
      sizeSpecifiedByUser: ingredient.sizeSpecifiedByUser,
      confidence: decomposition.confidence,
      fieldProvenance: [
        { fieldName: 'identity', origin: fieldOrigin },
        { fieldName: 'portion', origin: fieldOrigin },
      ],
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
  resolved: ResolvedIngredient[]
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
      : undefined,
    calculationVersion: CALCULATION_VERSION,
    attempts,
    fallbackReason: context.fallbackReason,
  };
}

function toResolvedIngredientWire(
  context: PipelineRunContext,
  resolved: ResolvedIngredient[]
): PipelineResolvedIngredient[] {
  const proposalByRowId = new Map(
    context.acceptedProposal?.ingredients.map((ingredient) => [
      ingredient.rowId,
      ingredient,
    ]) ?? []
  );
  const defaultFieldOrigin = context.interpretationOrigin ===
      InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
    ? IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_LOCAL_MODEL
    : IngredientFieldOrigin.INGREDIENT_FIELD_ORIGIN_CLOUD_MODEL;
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
    nutritionOrigin: nutritionOriginForIngredient(ingredient),
    fdcId: ingredient.nutritionReference?.fdcId,
    usdaDatasetVersion: ingredient.nutritionReference?.datasetVersion,
    nutrientsPer100g: ingredient.nutritionReference?.per100g,
    fieldProvenance: proposalByRowId.get(ingredient.rowId)?.fieldProvenance ?? [
      { fieldName: 'identity', origin: defaultFieldOrigin },
      { fieldName: 'portion', origin: defaultFieldOrigin },
    ],
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
  if (error instanceof MealAnalysisStageBusyError) {
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

function mealAnalysisErrorKind(error: unknown, fallback: string): string {
  if (error instanceof MealAnalysisStageBusyError) return 'stage_busy';
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
  const imageUrl = context.imageUrl;
  if (!imageUrl) throw new Error('Image analysis session is missing an image object key');
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
    stage: MealAnalysisStage;
    decompositionData?: unknown;
    ingredientsData?: unknown;
    uncertaintyData?: unknown;
    mealTypeQuestionData?: unknown;
    resultData?: unknown;
    clarificationAnswers?: MealClarificationAnswer[];
    stageLease?: MealAnalysisStageLease;
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
  const persisted = payload.stageLease
    ? await advanceMealAnalysisSession(record, payload.stageLease)
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
  stageLease?: MealAnalysisStageLease;
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
      proposal: proposalForDecomposition(context, decomposition),
    },
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
      question: 'Which meal is this?',
      options: [...MEAL_TYPES],
      inferredMealType: decomposition.inferredMealType !== 'UNKNOWN'
        ? decomposition.inferredMealType
        : undefined,
    },
  };
}

const RESUME_WAIT_TIMEOUT_MS = 30_000;
const RESUME_POLL_INTERVAL_MS = 500;

class MealAnalysisStageBusyError extends Error {
  constructor(readonly stage: MealAnalysisStage) {
    super(`Meal analysis stage ${stage} is already in progress`);
    this.name = 'MealAnalysisStageBusyError';
  }
}

async function waitForMealAnalysisStageChange(
  analysisId: string,
  blockedStage: MealAnalysisStage
): Promise<MealAnalysisSessionRecord> {
  const deadline = Date.now() + RESUME_WAIT_TIMEOUT_MS;
  while (Date.now() < deadline) {
    await delay(RESUME_POLL_INTERVAL_MS);
    const latest = await getMealAnalysisSession(analysisId);
    if (!latest) {
      throw new Error('Analysis session not found');
    }
    if (resolveMealAnalysisStage(latest) !== blockedStage) {
      return latest;
    }
  }
  throw new MealAnalysisStageBusyError(blockedStage);
}

async function waitAfterBusyStage(
  analysisId: string,
  busyStage: MealAnalysisStage
): Promise<MealAnalysisSessionRecord> {
  const latest = await getMealAnalysisSession(analysisId);
  if (!latest) {
    throw new Error('Analysis session not found');
  }
  return resolveMealAnalysisStage(latest) === busyStage
    ? waitForMealAnalysisStageChange(analysisId, busyStage)
    : latest;
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
  preclaimedLease?: MealAnalysisStageLease
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
    throw new Error('Analysis presentation is already in progress or its stage changed');
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
        mealName: presentation.meal_name,
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
        receipt: buildAnalysisReceipt(context, resolved),
      },
    };

    await traceAsync(
      context.trace,
      'db',
      'persist_session_snapshot',
      { analysisId: context.analysisId, stage: 'COMPLETED' },
      () => persistSessionSnapshot(context, {
        stage: 'COMPLETED',
        decompositionData: buildDecompositionEvent(context, decomposition).data,
        ingredientsData: toResolvedIngredientsSnapshot(
          context.analysisId,
          decomposition.mealName,
          resolved
        ),
        uncertaintyData: uncertaintyEvent.data,
        resultData: resultEvent.data,
        clarificationAnswers,
        stageLease: presentationLease,
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
  const decompositionData = buildDecompositionEvent(context, decomposition).data;

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
        stageLease: options.stageLease,
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
        stageLease: options.stageLease,
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
      stageLease: options.stageLease,
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
    clarificationAnswers.length > 0 ? clarificationAnswers : undefined
  );
}

async function resolveAndPersistIngredientsStage(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  context: PipelineRunContext,
  allowLegacyMissingStage: boolean = false
): Promise<ResolvedIngredient[]> {
  const stageLease = await traceAsync(
    context.trace,
    'db',
    'claim_ingredient_resolution_stage',
    { analysisId: context.analysisId },
    () => claimMealAnalysisIngredientResolution(
      context.analysisId,
      allowLegacyMissingStage
    )
  );
  if (!stageLease) {
    throw new MealAnalysisStageBusyError('RESOLVING_INGREDIENTS');
  }

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
        decompositionData: buildDecompositionEvent(context, decomposition).data,
        ingredientsData: toResolvedIngredientsSnapshot(
          context.analysisId,
          decomposition.mealName,
          resolved
        ),
        stageLease,
      })
    );
    return resolved;
  } catch (error) {
    try {
      await releaseMealAnalysisIngredientResolution(
        context.analysisId,
        stageLease.token
      );
    } catch (releaseError) {
      logAnalysis(context.logger, 'error', 'ingredient_resolution_stage_release_failed', {
        analysisId: context.analysisId,
        ...safeErrorMetadata(releaseError, 'ingredient_resolution_stage_release_failed'),
      });
    }
    throw error;
  }
}

async function* runFinalizationStage(
  client: MealAnalysisLlmClient,
  decomposition: NormalizedDecomposition,
  resolved: ResolvedIngredient[],
  context: PipelineRunContext,
  allowLegacyMissingStage: boolean = false
): AsyncGenerator<PipelineEvent> {
  const stageLease = await traceAsync(
    context.trace,
    'db',
    'claim_finalization_stage',
    { analysisId: context.analysisId },
    () => claimMealAnalysisFinalization(
      context.analysisId,
      allowLegacyMissingStage
    )
  );
  if (!stageLease) {
    throw new MealAnalysisStageBusyError('FINALIZING_ANALYSIS');
  }

  try {
    yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
      stageLease,
    });
  } finally {
    try {
      await releaseMealAnalysisFinalization(context.analysisId, stageLease.token);
    } catch (error) {
      logAnalysis(context.logger, 'error', 'finalization_stage_release_failed', {
        analysisId: context.analysisId,
        ...safeErrorMetadata(error, 'finalization_stage_release_failed'),
      });
    }
  }
}

async function* runPipelineFromDecomposition(
  client: MealAnalysisLlmClient,
  decomposition: LLMDecomposition,
  context: PipelineRunContext,
  decompositionLease: MealAnalysisStageLease
): AsyncGenerator<PipelineEvent> {
  const startedAt = Date.now();
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
      decompositionData: decompositionEvent.data,
      stageLease: decompositionLease,
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
    ? requestPayload.proposal as IngredientProposalV1
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
    selectedMealType: options.selectedMealType ?? null,
    selectedMealTypeSource: options.selectedMealTypeSource ?? null,
  };
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
    return traceAsync(
      context.trace,
      'llm',
      'decompose_text',
      {
        analysisId: context.analysisId,
        model: OPENAI_MEAL_ANALYSIS_MODEL,
        source: 'text',
      },
      () => decomposeFromText(client, input, correctionContext)
    );
  }

  if (!context.imageUrl) {
    throw new InvalidMealAnalysisSnapshotError(
      'image request is missing an image object key'
    );
  }
  return traceAsync(
    context.trace,
    'llm',
    'decompose_image',
    {
      analysisId: context.analysisId,
      model: OPENAI_MEAL_ANALYSIS_MODEL,
      source: 'image',
    },
    () => decomposeFromImage(client, context.imageUrl!, correctionContext)
  );
}

async function* runClaimedDecomposition(
  context: PipelineRunContext,
  lease: MealAnalysisStageLease
): AsyncGenerator<PipelineEvent> {
  // The ID, request and fenced DECOMPOSING stage are durable before STARTED.
  yield { step: 'STARTED', data: { analysisId: context.analysisId } };
  const client = getMealAnalysisClient(context.trace);
  const decomposition = await decomposeFromContext(client, context);
  yield* runPipelineFromDecomposition(client, decomposition, context, lease);
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
  let decompositionLease: MealAnalysisStageLease | undefined;

  try {
    logAnalysis(options.logger, 'info', 'analysis_started', {
      analysisId,
      source: 'text',
      locale: context.locale,
      countryCode: context.countryCode,
      textLength: input.length,
      hasFeedbackContext: Boolean(options.feedbackIssues?.length || options.otherText),
    });
    const dispatch = await claimMealAnalysisDecomposition(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    decompositionLease = dispatch.lease;
    yield* runClaimedDecomposition(context, decompositionLease);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'text',
      errorKind: mealAnalysisErrorKind(error, 'analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Meal analysis failed')
    );
  } finally {
    if (decompositionLease) {
      try {
        await releaseMealAnalysisDecomposition(analysisId, decompositionLease.token);
      } catch (error) {
        logAnalysis(options.logger, 'error', 'decomposition_stage_release_failed', {
          analysisId,
          ...safeErrorMetadata(error, 'decomposition_stage_release_failed'),
        });
      }
    }
  }
}

export async function* analyzeIngredientProposal(
  proposal: IngredientProposalV1,
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
  let decompositionLease: MealAnalysisStageLease | undefined;

  try {
    const dispatch = await claimMealAnalysisDecomposition(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    decompositionLease = dispatch.lease;
    yield { step: 'STARTED', data: { analysisId } };
    const client = getMealAnalysisClient(trace);
    yield* runPipelineFromDecomposition(
      client,
      decomposition,
      context,
      decompositionLease
    );
  } catch (error) {
    logAnalysis(options.logger, 'error', 'local_proposal_analysis_failed', {
      analysisId,
      source,
      errorKind: mealAnalysisErrorKind(error, 'local_proposal_analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Meal proposal analysis failed')
    );
  } finally {
    if (decompositionLease) {
      try {
        await releaseMealAnalysisDecomposition(analysisId, decompositionLease.token);
      } catch (error) {
        logAnalysis(options.logger, 'error', 'decomposition_stage_release_failed', {
          analysisId,
          ...safeErrorMetadata(error, 'decomposition_stage_release_failed'),
        });
      }
    }
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
  let decompositionLease: MealAnalysisStageLease | undefined;

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
    const dispatch = await claimMealAnalysisDecomposition(
      decompositionClaimRecord(context)
    );
    if (dispatch.status === 'conflict') {
      throw new Error('Analysis ID is unavailable');
    }
    if (dispatch.status === 'existing') {
      yield* resumeMealAnalysis(analysisId, { ...options, trace });
      return;
    }
    decompositionLease = dispatch.lease;
    yield* runClaimedDecomposition(context, decompositionLease);
  } catch (error) {
    logAnalysis(options.logger, 'error', 'analysis_failed', {
      analysisId,
      source: 'image',
      errorKind: mealAnalysisErrorKind(error, 'image_analysis_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Image analysis failed')
    );
  } finally {
    if (decompositionLease) {
      try {
        await releaseMealAnalysisDecomposition(analysisId, decompositionLease.token);
      } catch (error) {
        logAnalysis(options.logger, 'error', 'decomposition_stage_release_failed', {
          analysisId,
          ...safeErrorMetadata(error, 'decomposition_stage_release_failed'),
        });
      }
    }
  }
}

/**
 * Continue from the last durable snapshot after a stream disconnect or worker
 * restart. In-flight claims are polled for a bounded interval; stale claims are
 * recovered by the same compare-and-set transitions used by the original run.
 */
export async function* resumeMealAnalysis(
  analysisId: string,
  options: AnalysisRequestOptions = {}
): AsyncGenerator<PipelineEvent> {
  const trace = options.trace ?? createAnalysisTrace();
  try {
    let session = await getMealAnalysisSession(analysisId);
    if (!session || (options.userId && session.userId !== options.userId)) {
      yield buildErrorEvent(analysisId, 'Analysis session not found');
      return;
    }

    while (true) {
      const stage = resolveMealAnalysisStage(session);
      if (stage === 'COMPLETED') {
        const result = sessionToResultEvent(session);
        if (!result) {
          throw new InvalidMealAnalysisSnapshotError('COMPLETED has no valid result');
        }
        yield result;
        return;
      }

      if (stage === 'PENDING_DECOMPOSITION' || stage === 'DECOMPOSING') {
        const context = contextFromSession(session, options, trace);
        const dispatch = await claimMealAnalysisDecomposition(
          decompositionClaimRecord(context)
        );
        if (dispatch.status === 'conflict') {
          throw new Error('Analysis session not found');
        }
        if (dispatch.status === 'existing') {
          session = await waitAfterBusyStage(analysisId, 'DECOMPOSING');
          continue;
        }
        try {
          yield* runClaimedDecomposition(context, dispatch.lease);
          return;
        } finally {
          await releaseMealAnalysisDecomposition(
            analysisId,
            dispatch.lease.token
          );
        }
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
        try {
          const resolved = await resolveAndPersistIngredientsStage(
            client,
            decomposition,
            context,
            session.stage == null
          );
          yield buildIngredientsEvent(context, decomposition, resolved);
          try {
            yield* runFinalizationStage(client, decomposition, resolved, context);
            return;
          } catch (error) {
            if (!(error instanceof MealAnalysisStageBusyError)) throw error;
            session = await waitAfterBusyStage(analysisId, error.stage);
            continue;
          }
        } catch (error) {
          if (!(error instanceof MealAnalysisStageBusyError)) throw error;
          session = await waitAfterBusyStage(analysisId, error.stage);
          continue;
        }
      }

      const resolved = sessionToResolvedIngredients(session, decomposition);
      if (stage === 'INGREDIENTS_RESOLVED' || stage === 'FINALIZING_ANALYSIS') {
        yield buildDecompositionEvent(context, decomposition);
        yield buildIngredientsEvent(context, decomposition, resolved);
        try {
          yield* runFinalizationStage(
            client,
            decomposition,
            resolved,
            context,
            session.stage == null
          );
          return;
        } catch (error) {
          if (!(error instanceof MealAnalysisStageBusyError)) throw error;
          session = await waitAfterBusyStage(analysisId, error.stage);
          continue;
        }
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
        const stageLease = await claimMealAnalysisClarification(
          analysisId,
          undefined,
          session.stage == null
        );
        if (!stageLease) {
          session = await waitForMealAnalysisStageChange(analysisId, stage);
          continue;
        }
        try {
          yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
            incomingAnswers: pendingClarificationAnswers,
            accumulatedAnswers: clarificationAnswersFromSession(session),
            stageLease,
          });
          return;
        } finally {
          await releaseMealAnalysisClarification(analysisId, stageLease.token);
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
        if (latest && resolveMealAnalysisStage(latest) === 'PRESENTING') {
          session = await waitForMealAnalysisStageChange(
            analysisId,
            'PRESENTING'
          );
          continue;
        }
        throw new Error('Analysis presentation stage changed while resuming');
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
        presentationLease
      );
      return;
    }
  } catch (error) {
    const retryable = error instanceof MealAnalysisStageBusyError;
    logAnalysis(options.logger, 'error', 'analysis_resume_failed', {
      analysisId,
      errorKind: mealAnalysisErrorKind(error, 'analysis_resume_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Analysis resume failed'),
      retryable
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
        session.stage == null
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
      throw new Error('Analysis clarification is already being applied or its stage changed');
    }
    yield* runPostResolutionPipeline(client, decomposition, resolved, context, {
      incomingAnswers: answers,
      accumulatedAnswers: priorAnswers,
      emitUpdatedIngredients: true,
      stageLease: clarificationLease,
    });
  } catch (error) {
    logAnalysis(options.logger, 'error', 'clarification_resume_failed', {
      analysisId,
      errorKind: mealAnalysisErrorKind(error, 'clarification_failed'),
      traceSummary: summarizeAnalysisTrace(trace),
    });
    yield buildErrorEvent(
      analysisId,
      publicMealAnalysisError(error, 'Clarification failed')
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
      session.stage == null
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
      publicMealAnalysisError(error, 'Meal type continuation failed')
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
      publicMealAnalysisError(error, 'Reanalysis failed')
    );
  }
}
