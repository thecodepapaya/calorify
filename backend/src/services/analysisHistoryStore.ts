import { query } from './database.js';
import type { MealAnalysisSource } from './mealAnalysisStore.js';

export const ANALYSIS_HISTORY_PAGE_SIZE = 10;

export interface AnalysisTraceLike {
  startedAt: number;
  steps: Array<{
    category: string;
    name: string;
    durationMs: number;
    startedAtOffsetMs?: number;
    meta?: Record<string, unknown>;
  }>;
  artifacts?: Array<{
    name: string;
    capturedAtOffsetMs: number;
    data: unknown;
  }>;
  llmAttempts: Array<{
    operation?: string;
    provider: string;
    model: string;
    outcome: string;
    durationMs: number;
    errorKind?: string;
  }>;
  llmCallCount: number;
  usdaLookupCount: number;
  dbWriteCount: number;
}

export interface AnalysisStreamEventObservation {
  step: string;
  elapsedMs: number;
}

export interface AnalysisObservationWrite {
  analysisId: string;
  requestId: string;
  action: string;
  streamFormat: 'ndjson' | 'sse';
  eventSequence: AnalysisStreamEventObservation[];
  trace: AnalysisTraceLike;
  lastStep?: string;
  hadError: boolean;
  completedAt: number;
}

export interface AnalysisObservation {
  id: string;
  requestId: string;
  action: string;
  streamFormat: 'ndjson' | 'sse';
  eventSequence: AnalysisStreamEventObservation[];
  traceSummary: Record<string, unknown>;
  lastStep?: string;
  hadError: boolean;
  startedAt: string;
  completedAt: string;
}

export interface AnalysisLoggedMeal {
  loggedAt: string;
  name?: string;
  mealType?: string;
  quantity?: string;
  macros: {
    calories?: number;
    protein?: number;
    carbs?: number;
    fat?: number;
    fiber?: number;
  };
}

export interface AnalysisHistoryEntry {
  analysisId: string;
  parentAnalysisId?: string;
  userId?: string;
  source: MealAnalysisSource;
  locale: string;
  countryCode?: string;
  timeZone?: string;
  stage?: string;
  requestPayload: unknown;
  decompositionData?: unknown;
  ingredientsData?: unknown;
  uncertaintyData?: unknown;
  mealTypeQuestionData?: unknown;
  selectedMealType?: string;
  selectedMealTypeSource?: string;
  clarificationAnswers?: unknown;
  pendingClarificationAnswers?: unknown;
  resultData?: unknown;
  lastResponseStep?: string;
  lastResponseData?: unknown;
  observations?: AnalysisObservation[];
  clarificationHistory?: unknown[];
  mealTypeHistory?: unknown[];
  feedbackHistory?: unknown[];
  loggedMeal?: AnalysisLoggedMeal;
  createdAt: string;
  updatedAt: string;
}

export interface AnalysisHistoryPage {
  entries: AnalysisHistoryEntry[];
  page: number;
  pageSize: number;
  totalEntries: number;
  totalPages: number;
  source?: MealAnalysisSource;
}

interface AnalysisHistoryRow {
  analysis_id: string;
  parent_analysis_id: string | null;
  user_id: string | null;
  source: MealAnalysisSource;
  locale: string;
  country_code: string | null;
  time_zone: string | null;
  stage: string | null;
  request_payload: unknown;
  decomposition_data: unknown;
  ingredients_data: unknown;
  uncertainty_data: unknown;
  meal_type_question_data: unknown;
  selected_meal_type: string | null;
  selected_meal_type_source: string | null;
  clarification_answers: unknown;
  pending_clarification_answers: unknown;
  result_data: unknown;
  last_response_step: string | null;
  last_response_data: unknown;
  observations: unknown;
  clarification_history: unknown;
  meal_type_history: unknown;
  feedback_history: unknown;
  logged_at: string | null;
  logged_meal_name: string | null;
  logged_meal_type: string | null;
  logged_quantity: string | null;
  logged_calories: number | null;
  logged_protein: number | null;
  logged_carbs: number | null;
  logged_fat: number | null;
  logged_fiber: number | null;
  created_at: string;
  updated_at: string;
}

function optionalJson(value: unknown): unknown | undefined {
  if (value == null) return undefined;
  if (typeof value === 'string') return JSON.parse(value) as unknown;
  return value;
}

function mapHistoryRow(row: AnalysisHistoryRow): AnalysisHistoryEntry {
  const observations = optionalJson(row.observations);
  const clarificationHistory = optionalJson(row.clarification_history);
  const mealTypeHistory = optionalJson(row.meal_type_history);
  const feedbackHistory = optionalJson(row.feedback_history);
  return {
    analysisId: row.analysis_id,
    parentAnalysisId: row.parent_analysis_id ?? undefined,
    userId: row.user_id ?? undefined,
    source: row.source,
    locale: row.locale,
    countryCode: row.country_code ?? undefined,
    timeZone: row.time_zone ?? undefined,
    stage: row.stage ?? undefined,
    requestPayload: optionalJson(row.request_payload),
    decompositionData: optionalJson(row.decomposition_data),
    ingredientsData: optionalJson(row.ingredients_data),
    uncertaintyData: optionalJson(row.uncertainty_data),
    mealTypeQuestionData: optionalJson(row.meal_type_question_data),
    selectedMealType: row.selected_meal_type ?? undefined,
    selectedMealTypeSource: row.selected_meal_type_source ?? undefined,
    clarificationAnswers: optionalJson(row.clarification_answers),
    pendingClarificationAnswers: optionalJson(row.pending_clarification_answers),
    resultData: optionalJson(row.result_data),
    lastResponseStep: row.last_response_step ?? undefined,
    lastResponseData: optionalJson(row.last_response_data),
    observations: Array.isArray(observations) ? observations as AnalysisObservation[] : [],
    clarificationHistory: Array.isArray(clarificationHistory) ? clarificationHistory : [],
    mealTypeHistory: Array.isArray(mealTypeHistory) ? mealTypeHistory : [],
    feedbackHistory: Array.isArray(feedbackHistory) ? feedbackHistory : [],
    loggedMeal: row.logged_at ? {
      loggedAt: row.logged_at,
      name: row.logged_meal_name ?? undefined,
      mealType: row.logged_meal_type ?? undefined,
      quantity: row.logged_quantity ?? undefined,
      macros: {
        calories: row.logged_calories ?? undefined,
        protein: row.logged_protein ?? undefined,
        carbs: row.logged_carbs ?? undefined,
        fat: row.logged_fat ?? undefined,
        fiber: row.logged_fiber ?? undefined,
      },
    } : undefined,
    createdAt: row.created_at,
    updatedAt: row.updated_at,
  };
}

export async function listAnalysisHistory(
  requestedPage: number,
  source?: MealAnalysisSource
): Promise<AnalysisHistoryPage> {
  const page = Number.isSafeInteger(requestedPage) && requestedPage > 0
    ? requestedPage
    : 1;
  const filter = source ?? null;
  const offset = (page - 1) * ANALYSIS_HISTORY_PAGE_SIZE;
  const [countResult, rowsResult] = await Promise.all([
    query<{ total: string }>(
      `SELECT COUNT(*)::text AS total
         FROM meal_analysis_session
        WHERE ($1::text IS NULL OR source = $1)`,
      [filter]
    ),
    query<AnalysisHistoryRow>(
      `SELECT analysis_id, parent_analysis_id, user_id, source, locale,
              country_code, time_zone, stage, request_payload,
              decomposition_data, ingredients_data, uncertainty_data,
              meal_type_question_data, selected_meal_type,
              selected_meal_type_source, clarification_answers,
              pending_clarification_answers, result_data, last_response_step,
              last_response_data, logged_at, logged_meal_name,
              logged_meal_type, logged_quantity, logged_calories,
              logged_protein, logged_carbs, logged_fat, logged_fiber,
              COALESCE((
                SELECT jsonb_agg(jsonb_build_object(
                  'id', observation.id::text,
                  'requestId', observation.request_id,
                  'action', observation.action,
                  'streamFormat', observation.stream_format,
                  'eventSequence', observation.event_sequence,
                  'traceSummary', observation.trace_summary,
                  'lastStep', observation.last_step,
                  'hadError', observation.had_error,
                  'startedAt', observation.started_at,
                  'completedAt', observation.completed_at
                ) ORDER BY observation.started_at ASC, observation.id ASC)
                FROM meal_analysis_observation AS observation
                WHERE observation.analysis_id = meal_analysis_session.analysis_id
              ), '[]'::jsonb) AS observations,
              COALESCE((
                SELECT jsonb_agg(jsonb_build_object(
                  'answers', audit.answers_payload,
                  'createdAt', audit.created_at
                ) ORDER BY audit.created_at ASC, audit.id ASC)
                FROM meal_analysis_clarification AS audit
                WHERE audit.analysis_id = meal_analysis_session.analysis_id
              ), '[]'::jsonb) AS clarification_history,
              COALESCE((
                SELECT jsonb_agg(jsonb_build_object(
                  'mealType', audit.selected_meal_type,
                  'source', audit.source,
                  'createdAt', audit.created_at
                ) ORDER BY audit.created_at ASC, audit.id ASC)
                FROM meal_analysis_meal_type AS audit
                WHERE audit.analysis_id = meal_analysis_session.analysis_id
              ), '[]'::jsonb) AS meal_type_history,
              COALESCE((
                SELECT jsonb_agg(jsonb_build_object(
                  'signal', audit.signal,
                  'issues', audit.issues,
                  'otherText', audit.other_text,
                  'createdAt', audit.created_at
                ) ORDER BY audit.created_at ASC, audit.id ASC)
                FROM meal_analysis_feedback AS audit
                WHERE audit.analysis_id = meal_analysis_session.analysis_id
              ), '[]'::jsonb) AS feedback_history,
              created_at, updated_at
         FROM meal_analysis_session
        WHERE ($1::text IS NULL OR source = $1)
        ORDER BY created_at DESC, analysis_id DESC
        LIMIT $2 OFFSET $3`,
      [filter, ANALYSIS_HISTORY_PAGE_SIZE, offset]
    ),
  ]);
  const totalEntries = Number.parseInt(countResult.rows[0]?.total ?? '0', 10);
  return {
    entries: rowsResult.rows.map(mapHistoryRow),
    page,
    pageSize: ANALYSIS_HISTORY_PAGE_SIZE,
    totalEntries,
    totalPages: Math.ceil(totalEntries / ANALYSIS_HISTORY_PAGE_SIZE),
    source,
  };
}

export async function recordAnalysisLastResponse(
  analysisId: string,
  step: string,
  data: unknown
): Promise<void> {
  await query(
    `UPDATE meal_analysis_session
        SET last_response_step = $2,
            last_response_data = $3::jsonb
      WHERE analysis_id = $1`,
    [analysisId, step, JSON.stringify(data)]
  );
}

const SAFE_TRACE_META_KEYS = new Set([
  'stage',
  'source',
  'ingredientIndex',
  'ingredientCount',
  'unmatchedCount',
  'answerCount',
  'expectedStage',
  'model',
  'ok',
  'errorKind',
]);

function safeTraceMeta(meta: Record<string, unknown> | undefined): Record<string, unknown> {
  if (!meta) return {};
  return Object.fromEntries(
    Object.entries(meta).filter(([key, value]) =>
      SAFE_TRACE_META_KEYS.has(key) &&
      (typeof value === 'string' || typeof value === 'number' || typeof value === 'boolean')
    )
  );
}

const SAFE_ARTIFACT_NAMES = new Set([
  'decomposition_model_output',
  'nutrition_match',
  'llm_nutrition_fallback',
  'presentation_input',
  'presentation_output',
]);
const SENSITIVE_ARTIFACT_KEY = /(?:authorization|api.?key|secret|token|password|prompt|messages|image.?url|download.?url)/i;

function safeArtifactValue(value: unknown, depth = 0): unknown {
  if (depth > 8) return '[maximum depth]';
  if (value == null || typeof value === 'number' || typeof value === 'boolean') return value;
  if (typeof value === 'string') return value.length > 2_000 ? `${value.slice(0, 2_000)}…` : value;
  if (Array.isArray(value)) return value.slice(0, 100).map((item) => safeArtifactValue(item, depth + 1));
  if (typeof value !== 'object') return String(value);
  return Object.fromEntries(
    Object.entries(value as Record<string, unknown>)
      .filter(([key]) => !SENSITIVE_ARTIFACT_KEY.test(key))
      .map(([key, item]) => [key, safeArtifactValue(item, depth + 1)])
  );
}

export function buildSafeTraceSummary(
  trace: AnalysisTraceLike,
  completedAt: number
): Record<string, unknown> {
  return {
    totalDurationMs: Math.max(0, completedAt - trace.startedAt),
    llmCallCount: trace.llmCallCount,
    llmAttemptCount: trace.llmAttempts.length,
    llmFailedAttemptCount: trace.llmAttempts.filter((attempt) => attempt.outcome === 'error').length,
    usdaLookupCount: trace.usdaLookupCount,
    dbWriteCount: trace.dbWriteCount,
    steps: trace.steps.map((step) => ({
      category: step.category,
      name: step.name,
      durationMs: step.durationMs,
      startedAtOffsetMs: step.startedAtOffsetMs ?? 0,
      meta: safeTraceMeta(step.meta),
    })),
    llmAttempts: trace.llmAttempts.map((attempt) => ({
      operation: attempt.operation,
      provider: attempt.provider,
      model: attempt.model,
      outcome: attempt.outcome,
      durationMs: attempt.durationMs,
      errorKind: attempt.errorKind,
    })),
    artifacts: (trace.artifacts ?? [])
      .filter((artifact) => SAFE_ARTIFACT_NAMES.has(artifact.name))
      .map((artifact) => ({
        name: artifact.name,
        capturedAtOffsetMs: artifact.capturedAtOffsetMs,
        data: safeArtifactValue(artifact.data),
      })),
  };
}

export async function recordAnalysisObservation(
  observation: AnalysisObservationWrite
): Promise<void> {
  await query(
    `INSERT INTO meal_analysis_observation (
        analysis_id, request_id, action, stream_format, event_sequence,
        trace_summary, last_step, had_error, started_at, completed_at
      ) VALUES ($1, $2, $3, $4, $5::jsonb, $6::jsonb, $7, $8, $9, $10)`,
    [
      observation.analysisId,
      observation.requestId,
      observation.action,
      observation.streamFormat,
      JSON.stringify(observation.eventSequence),
      JSON.stringify(buildSafeTraceSummary(observation.trace, observation.completedAt)),
      observation.lastStep ?? null,
      observation.hadError,
      new Date(observation.trace.startedAt).toISOString(),
      new Date(observation.completedAt).toISOString(),
    ]
  );
}
