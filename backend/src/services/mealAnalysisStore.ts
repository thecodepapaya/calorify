import { randomUUID } from 'node:crypto';
import config from '../config.js';
import { query, withTransaction } from './database.js';
import {
  parseMealAnalysisStage,
  type MealAnalysisStage,
} from './mealAnalysisStage.js';

export type MealAnalysisSource = 'text' | 'image';
export type FeedbackSignal = 'UP' | 'DOWN';
export type MealTypeSource = 'model' | 'user';
export type MealAnalysisInteractionStage = 'APPLYING_CLARIFICATION' | 'PRESENTING';

export interface MealAnalysisInteractionLease {
  stage: MealAnalysisInteractionStage;
  token: string;
}

export interface MealAnalysisSessionRecord {
  analysisId: string;
  parentAnalysisId?: string;
  userId?: string;
  source: MealAnalysisSource;
  locale: string;
  countryCode?: string;
  timeZone?: string;
  requestPayload: unknown;
  /** Missing only on legacy rows created before durable stages were added. */
  stage?: MealAnalysisStage;
  decompositionData?: unknown;
  ingredientsData?: unknown;
  uncertaintyData?: unknown;
  mealTypeQuestionData?: unknown;
  selectedMealType?: string;
  selectedMealTypeSource?: MealTypeSource;
  resultData?: unknown;
  clarificationAnswers?: unknown;
  /** Submitted answers durably retained while APPLYING_CLARIFICATION is leased. */
  pendingClarificationAnswers?: unknown;
  createdAt?: string;
  updatedAt?: string;
}

export interface MealAnalysisSessionWriteRecord extends MealAnalysisSessionRecord {
  stage: MealAnalysisStage;
}

export type MealAnalysisSessionStart =
  | { status: 'created' }
  | { status: 'existing' }
  | { status: 'conflict' };

export interface MealAnalysisFeedbackRecord {
  analysisId: string;
  userId?: string;
  signal: FeedbackSignal;
  issues?: string[];
  otherText?: string;
  payload?: unknown;
}

function parseJson<T>(value: unknown): T | undefined {
  if (value == null) return undefined;
  if (typeof value !== 'string') return value as T;
  return JSON.parse(value) as T;
}

function stringifyOptionalJson(value: unknown): string | null {
  return value === undefined ? null : JSON.stringify(value);
}

function assertDatabaseConfigured(): void {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is required for V2 meal analysis persistence');
  }
}

function sessionWriteParams(record: MealAnalysisSessionWriteRecord): unknown[] {
  return [
    record.analysisId,
    record.parentAnalysisId ?? null,
    record.userId ?? null,
    record.source,
    record.locale,
    record.countryCode ?? null,
    record.timeZone ?? null,
    JSON.stringify(record.requestPayload ?? null),
    stringifyOptionalJson(record.decompositionData),
    stringifyOptionalJson(record.ingredientsData),
    stringifyOptionalJson(record.uncertaintyData),
    stringifyOptionalJson(record.mealTypeQuestionData),
    record.selectedMealType ?? null,
    record.selectedMealTypeSource ?? null,
    stringifyOptionalJson(record.resultData),
    stringifyOptionalJson(record.clarificationAnswers),
    record.stage,
    stringifyOptionalJson(record.pendingClarificationAnswers),
  ];
}

/**
 * Inserts the client-chosen analysis ID before any external work. Reusing an
 * ID is idempotent only for the same owner, source, parent, request payload and
 * analysis context.
 */
export async function createMealAnalysisSession(
  record: Omit<MealAnalysisSessionWriteRecord, 'stage'>
): Promise<MealAnalysisSessionStart> {
  assertDatabaseConfigured();
  const requestPayload = JSON.stringify(record.requestPayload ?? null);

  return withTransaction(async (client) => {
    const inserted = await client.query<{ inserted: boolean }>(
      `INSERT INTO meal_analysis_session (
          analysis_id, parent_analysis_id, user_id, source, locale,
          country_code, time_zone, request_payload, selected_meal_type,
          selected_meal_type_source, stage
        ) VALUES ($1, $2, $3, $4, $5, $6, $7, $8::jsonb, $9, $10,
          'PENDING_DECOMPOSITION')
        ON CONFLICT (analysis_id) DO NOTHING
        RETURNING TRUE AS inserted`,
      [
        record.analysisId,
        record.parentAnalysisId ?? null,
        record.userId ?? null,
        record.source,
        record.locale,
        record.countryCode ?? null,
        record.timeZone ?? null,
        requestPayload,
        record.selectedMealType ?? null,
        record.selectedMealTypeSource ?? null,
      ]
    );

    const identity = await client.query<{ identity_matches: boolean }>(
      `SELECT (
          user_id IS NOT DISTINCT FROM $2
          AND parent_analysis_id IS NOT DISTINCT FROM $3
          AND source = $4
          AND (request_payload - 'execution') = ($5::jsonb - 'execution')
        ) AS identity_matches
         FROM meal_analysis_session
        WHERE analysis_id = $1
        FOR UPDATE`,
      [
        record.analysisId,
        record.userId ?? null,
        record.parentAnalysisId ?? null,
        record.source,
        requestPayload,
      ]
    );
    if (identity.rows[0]?.identity_matches !== true) {
      return { status: 'conflict' };
    }

    return inserted.rows[0]?.inserted === true
      ? { status: 'created' }
      : { status: 'existing' };
  });
}

export async function upsertMealAnalysisSession(
  record: MealAnalysisSessionWriteRecord
): Promise<boolean> {
  assertDatabaseConfigured();

  const result = await query<{ persisted: boolean }>(
    `INSERT INTO meal_analysis_session (
        analysis_id,
        parent_analysis_id,
        user_id,
        source,
        locale,
        country_code,
        time_zone,
        request_payload,
        decomposition_data,
        ingredients_data,
        uncertainty_data,
        meal_type_question_data,
        selected_meal_type,
        selected_meal_type_source,
        result_data,
        clarification_answers,
        stage,
        pending_clarification_answers,
        stage_lease_token
      ) VALUES (
        $1, $2, $3, $4, $5, $6, $7, $8::jsonb, $9::jsonb, $10::jsonb, $11::jsonb, $12::jsonb, $13, $14, $15::jsonb, $16::jsonb, $17, $18::jsonb, NULL
      )
      ON CONFLICT (analysis_id) DO UPDATE SET
        parent_analysis_id = EXCLUDED.parent_analysis_id,
        user_id = COALESCE(EXCLUDED.user_id, meal_analysis_session.user_id),
        source = EXCLUDED.source,
        locale = EXCLUDED.locale,
        country_code = EXCLUDED.country_code,
        time_zone = COALESCE(EXCLUDED.time_zone, meal_analysis_session.time_zone),
        request_payload = EXCLUDED.request_payload,
        decomposition_data = COALESCE(EXCLUDED.decomposition_data, meal_analysis_session.decomposition_data),
        ingredients_data = COALESCE(EXCLUDED.ingredients_data, meal_analysis_session.ingredients_data),
        uncertainty_data = COALESCE(EXCLUDED.uncertainty_data, meal_analysis_session.uncertainty_data),
        meal_type_question_data = COALESCE(EXCLUDED.meal_type_question_data, meal_analysis_session.meal_type_question_data),
        selected_meal_type = COALESCE(EXCLUDED.selected_meal_type, meal_analysis_session.selected_meal_type),
        selected_meal_type_source = COALESCE(EXCLUDED.selected_meal_type_source, meal_analysis_session.selected_meal_type_source),
        result_data = COALESCE(EXCLUDED.result_data, meal_analysis_session.result_data),
        clarification_answers = COALESCE(EXCLUDED.clarification_answers, meal_analysis_session.clarification_answers),
        pending_clarification_answers = COALESCE(EXCLUDED.pending_clarification_answers, meal_analysis_session.pending_clarification_answers),
        stage = EXCLUDED.stage,
        stage_lease_token = NULL,
        updated_at = CURRENT_TIMESTAMP
      WHERE (
          meal_analysis_session.result_data IS NULL
          OR meal_analysis_session.result_data = 'null'::jsonb
          OR EXCLUDED.stage = 'COMPLETED'
        )
        AND (
          meal_analysis_session.stage IS NULL
          OR meal_analysis_session.stage NOT IN (
            'APPLYING_CLARIFICATION',
            'PRESENTING',
            'COMPLETED'
          )
        )
        AND (
          CASE meal_analysis_session.stage
            WHEN 'PENDING_DECOMPOSITION' THEN 0
            WHEN 'DECOMPOSING' THEN 0
            WHEN 'DECOMPOSED' THEN 1
            WHEN 'RESOLVING_INGREDIENTS' THEN 1
            WHEN 'INGREDIENTS_RESOLVED' THEN 2
            WHEN 'FINALIZING_ANALYSIS' THEN 2
            ELSE 3
          END
          <=
          CASE EXCLUDED.stage
            WHEN 'PENDING_DECOMPOSITION' THEN 0
            WHEN 'DECOMPOSING' THEN 0
            WHEN 'DECOMPOSED' THEN 1
            WHEN 'RESOLVING_INGREDIENTS' THEN 1
            WHEN 'INGREDIENTS_RESOLVED' THEN 2
            WHEN 'FINALIZING_ANALYSIS' THEN 2
            ELSE 3
          END
        )
      RETURNING TRUE AS persisted`,
    sessionWriteParams(record)
  );
  return result.rows[0]?.persisted === true;
}

/**
 * Advances an interactive stage only for the request that still owns it.
 */
export async function advanceMealAnalysisSession(
  record: MealAnalysisSessionWriteRecord,
  lease: MealAnalysisInteractionLease
): Promise<boolean> {
  assertDatabaseConfigured();

  const result = await query<{ persisted: boolean }>(
    `UPDATE meal_analysis_session
        SET parent_analysis_id = $2,
            user_id = COALESCE($3, user_id),
            source = $4,
            locale = $5,
            country_code = $6,
            time_zone = COALESCE($7, time_zone),
            request_payload = $8::jsonb,
            decomposition_data = COALESCE($9::jsonb, decomposition_data),
            ingredients_data = COALESCE($10::jsonb, ingredients_data),
            uncertainty_data = COALESCE($11::jsonb, uncertainty_data),
            meal_type_question_data = COALESCE($12::jsonb, meal_type_question_data),
            selected_meal_type = COALESCE($13, selected_meal_type),
            selected_meal_type_source = COALESCE($14, selected_meal_type_source),
            result_data = COALESCE($15::jsonb, result_data),
            clarification_answers = COALESCE($16::jsonb, clarification_answers),
            stage = $17,
            pending_clarification_answers = NULL,
            stage_lease_token = NULL,
            updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1
        AND stage = $19
        AND stage_lease_token = $20::uuid
        AND (
          result_data IS NULL
          OR result_data = 'null'::jsonb
          OR $17 = 'COMPLETED'
        )
      RETURNING TRUE AS persisted`,
    [...sessionWriteParams(record), lease.stage, lease.token]
  );
  return result.rows[0]?.persisted === true;
}

export async function getMealAnalysisSession(
  analysisId: string
): Promise<MealAnalysisSessionRecord | undefined> {
  assertDatabaseConfigured();

  const { rows } = await query<{
    analysis_id: string;
    parent_analysis_id: string | null;
    user_id: string | null;
    source: MealAnalysisSource;
    locale: string;
    country_code: string | null;
    time_zone: string | null;
    request_payload: unknown;
    decomposition_data: unknown;
    ingredients_data: unknown;
    uncertainty_data: unknown;
    meal_type_question_data: unknown;
    selected_meal_type: string | null;
    selected_meal_type_source: MealTypeSource | null;
    result_data: unknown;
    clarification_answers: unknown;
    pending_clarification_answers: unknown;
    stage: string | null;
    created_at: string;
    updated_at: string;
  }>(
    `SELECT
        analysis_id,
        parent_analysis_id,
        user_id,
        source,
        locale,
        country_code,
        time_zone,
        request_payload,
        decomposition_data,
        ingredients_data,
        uncertainty_data,
        meal_type_question_data,
        selected_meal_type,
        selected_meal_type_source,
        result_data,
        clarification_answers,
        pending_clarification_answers,
        stage,
        created_at,
        updated_at
      FROM meal_analysis_session
      WHERE analysis_id = $1
      LIMIT 1`,
    [analysisId]
  );

  const row = rows[0];
  if (!row) {
    return undefined;
  }

  return {
    analysisId: row.analysis_id,
    parentAnalysisId: row.parent_analysis_id ?? undefined,
    userId: row.user_id ?? undefined,
    source: row.source,
    locale: row.locale,
    countryCode: row.country_code ?? undefined,
    timeZone: row.time_zone ?? undefined,
    requestPayload: parseJson(row.request_payload),
    decompositionData: parseJson(row.decomposition_data),
    ingredientsData: parseJson(row.ingredients_data),
    uncertaintyData: parseJson(row.uncertainty_data),
    mealTypeQuestionData: parseJson(row.meal_type_question_data),
    selectedMealType: row.selected_meal_type ?? undefined,
    selectedMealTypeSource: row.selected_meal_type_source ?? undefined,
    resultData: parseJson(row.result_data),
    clarificationAnswers: parseJson(row.clarification_answers),
    pendingClarificationAnswers: parseJson(row.pending_clarification_answers),
    stage: parseMealAnalysisStage(row.stage),
    createdAt: row.created_at,
    updatedAt: row.updated_at,
  };
}

export async function claimMealAnalysisPresentation(
  analysisId: string,
  expectedStage: 'AWAITING_MEAL_TYPE' | 'READY_FOR_PRESENTATION',
  selectedMealType: string,
  selectedMealTypeSource: MealTypeSource,
  allowLegacyMissingStage: boolean = false
): Promise<MealAnalysisInteractionLease | undefined> {
  assertDatabaseConfigured();
  const token = randomUUID();
  const result = await query<{ claimed: boolean }>(
    `UPDATE meal_analysis_session
        SET stage = 'PRESENTING',
            selected_meal_type = $3,
            selected_meal_type_source = $4,
            stage_lease_token = $6::uuid,
            updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1
        AND (result_data IS NULL OR result_data = 'null'::jsonb)
        AND (
          stage = $2
          OR ($5 = TRUE AND stage IS NULL)
          OR (
            stage = 'PRESENTING'
            AND updated_at < CURRENT_TIMESTAMP - INTERVAL '5 minutes'
          )
        )
      RETURNING TRUE AS claimed`,
    [
      analysisId,
      expectedStage,
      selectedMealType,
      selectedMealTypeSource,
      allowLegacyMissingStage,
      token,
    ]
  );
  return result.rows[0]?.claimed === true
    ? { stage: 'PRESENTING', token }
    : undefined;
}

export async function claimMealAnalysisClarification(
  analysisId: string,
  pendingAnswers?: unknown,
  allowLegacyMissingStage: boolean = false
): Promise<MealAnalysisInteractionLease | undefined> {
  assertDatabaseConfigured();
  const token = randomUUID();
  const result = await query<{ claimed: boolean }>(
    `UPDATE meal_analysis_session
        SET stage = 'APPLYING_CLARIFICATION',
            pending_clarification_answers = COALESCE($2::jsonb, pending_clarification_answers),
            stage_lease_token = $4::uuid,
            updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1
        AND (result_data IS NULL OR result_data = 'null'::jsonb)
        AND (
          stage = 'AWAITING_CLARIFICATION'
          OR ($3 = TRUE AND stage IS NULL)
          OR (
            stage = 'APPLYING_CLARIFICATION'
            AND updated_at < CURRENT_TIMESTAMP - INTERVAL '5 minutes'
          )
        )
      RETURNING TRUE AS claimed`,
    [analysisId, stringifyOptionalJson(pendingAnswers), allowLegacyMissingStage, token]
  );
  return result.rows[0]?.claimed === true
    ? { stage: 'APPLYING_CLARIFICATION', token }
    : undefined;
}

export async function releaseMealAnalysisClarification(
  analysisId: string,
  token: string
): Promise<void> {
  assertDatabaseConfigured();
  await query(
    `UPDATE meal_analysis_session
        SET stage = 'AWAITING_CLARIFICATION',
            stage_lease_token = NULL,
            updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1
        AND stage = 'APPLYING_CLARIFICATION'
        AND stage_lease_token = $2::uuid
        AND (result_data IS NULL OR result_data = 'null'::jsonb)`,
    [analysisId, token]
  );
}

export async function releaseMealAnalysisPresentation(
  analysisId: string,
  resumeStage: 'AWAITING_MEAL_TYPE' | 'READY_FOR_PRESENTATION',
  token: string
): Promise<void> {
  assertDatabaseConfigured();
  await query(
    `UPDATE meal_analysis_session
        SET stage = $2,
            stage_lease_token = NULL,
            updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1
        AND stage = 'PRESENTING'
        AND stage_lease_token = $3::uuid
        AND (result_data IS NULL OR result_data = 'null'::jsonb)`,
    [analysisId, resumeStage, token]
  );
}

export async function isMealAnalysisSessionOwnedByUser(
  analysisId: string,
  userId: string
): Promise<boolean> {
  assertDatabaseConfigured();

  const { rows } = await query<{ owned: boolean }>(
    `SELECT TRUE AS owned
       FROM meal_analysis_session
      WHERE analysis_id = $1
        AND user_id = $2
      LIMIT 1`,
    [analysisId, userId]
  );
  return rows.length > 0;
}

export async function recordMealAnalysisClarification(
  analysisId: string,
  answers: unknown
): Promise<void> {
  assertDatabaseConfigured();

  const answersJson = JSON.stringify(answers);
  // The fenced stage snapshot is the sole canonical session writer. This is an
  // append-only audit record so a delayed audit cannot overwrite a newer round.
  await query(
    `INSERT INTO meal_analysis_clarification (analysis_id, answers_payload)
      VALUES ($1, $2::jsonb)`,
    [analysisId, answersJson]
  );
}

export async function recordMealAnalysisMealType(
  analysisId: string,
  selectedMealType: string,
  source: MealTypeSource
): Promise<void> {
  assertDatabaseConfigured();

  // COMPLETED already contains the canonical selection under its presentation
  // lease. Keep this writer append-only to avoid touching session state later.
  await query(
    `INSERT INTO meal_analysis_meal_type (
        analysis_id,
        selected_meal_type,
        source
      ) VALUES ($1, $2, $3)`,
    [analysisId, selectedMealType, source]
  );
}

export async function recordMealAnalysisFeedback(
  feedback: MealAnalysisFeedbackRecord
): Promise<void> {
  assertDatabaseConfigured();

  await query(
    `INSERT INTO meal_analysis_feedback (
        analysis_id,
        user_id,
        signal,
        issues,
        other_text,
        payload
      ) VALUES ($1, $2, $3, $4::text[], $5, $6::jsonb)`,
    [
      feedback.analysisId,
      feedback.userId ?? null,
      feedback.signal,
      feedback.issues ?? [],
      feedback.otherText ?? null,
      JSON.stringify(feedback.payload ?? null),
    ]
  );
}

export interface MealLogConfirmationRecord {
  analysisId: string;
  loggedAt: string;
  mealName: string;
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
  mealType: string;
  quantity: string;
  timeZone?: string;
}

export async function confirmMealAnalysisLogged(
  record: MealLogConfirmationRecord
): Promise<void> {
  assertDatabaseConfigured();

  await query(
    `UPDATE meal_analysis_session
        SET logged_at        = $2,
            logged_meal_name = $3,
            logged_calories  = $4,
            logged_protein   = $5,
            logged_carbs     = $6,
            logged_fat       = $7,
            logged_fiber     = $8,
            logged_meal_type = $9,
            logged_quantity  = $10,
            time_zone        = COALESCE($11, time_zone),
            updated_at       = CURRENT_TIMESTAMP
      WHERE analysis_id = $1`,
    [
      record.analysisId,
      record.loggedAt,
      record.mealName,
      record.calories,
      record.protein,
      record.carbs,
      record.fat,
      record.fiber,
      record.mealType,
      record.quantity,
      record.timeZone ?? null,
    ]
  );
}
