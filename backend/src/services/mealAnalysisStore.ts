import config from '../config.js';
import { query } from './database.js';

export type MealAnalysisSource = 'text' | 'image';
export type FeedbackSignal = 'up' | 'down';
export type MealTypeSource = 'model' | 'user';

export interface MealAnalysisSessionRecord {
  analysisId: string;
  parentAnalysisId?: string;
  userId?: string;
  source: MealAnalysisSource;
  locale: string;
  countryCode?: string;
  requestPayload: unknown;
  decompositionData?: unknown;
  ingredientsData?: unknown;
  uncertaintyData?: unknown;
  mealTypeQuestionData?: unknown;
  selectedMealType?: string;
  selectedMealTypeSource?: MealTypeSource;
  resultData?: unknown;
  clarificationAnswers?: unknown;
  createdAt?: string;
  updatedAt?: string;
}

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

function assertDatabaseConfigured(): void {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is required for V2 meal analysis persistence');
  }
}

export async function upsertMealAnalysisSession(
  record: MealAnalysisSessionRecord
): Promise<void> {
  assertDatabaseConfigured();

  await query(
    `INSERT INTO meal_analysis_session (
        analysis_id,
        parent_analysis_id,
        user_id,
        source,
        locale,
        country_code,
        request_payload,
        decomposition_data,
        ingredients_data,
        uncertainty_data,
        meal_type_question_data,
        selected_meal_type,
        selected_meal_type_source,
        result_data,
        clarification_answers
      ) VALUES (
        $1, $2, $3, $4, $5, $6, $7::jsonb, $8::jsonb, $9::jsonb, $10::jsonb, $11::jsonb, $12, $13, $14::jsonb, $15::jsonb
      )
      ON CONFLICT (analysis_id) DO UPDATE SET
        parent_analysis_id = EXCLUDED.parent_analysis_id,
        user_id = COALESCE(EXCLUDED.user_id, meal_analysis_session.user_id),
        source = EXCLUDED.source,
        locale = EXCLUDED.locale,
        country_code = EXCLUDED.country_code,
        request_payload = EXCLUDED.request_payload,
        decomposition_data = COALESCE(EXCLUDED.decomposition_data, meal_analysis_session.decomposition_data),
        ingredients_data = COALESCE(EXCLUDED.ingredients_data, meal_analysis_session.ingredients_data),
        uncertainty_data = COALESCE(EXCLUDED.uncertainty_data, meal_analysis_session.uncertainty_data),
        meal_type_question_data = COALESCE(EXCLUDED.meal_type_question_data, meal_analysis_session.meal_type_question_data),
        selected_meal_type = COALESCE(EXCLUDED.selected_meal_type, meal_analysis_session.selected_meal_type),
        selected_meal_type_source = COALESCE(EXCLUDED.selected_meal_type_source, meal_analysis_session.selected_meal_type_source),
        result_data = COALESCE(EXCLUDED.result_data, meal_analysis_session.result_data),
        clarification_answers = COALESCE(EXCLUDED.clarification_answers, meal_analysis_session.clarification_answers),
        updated_at = CURRENT_TIMESTAMP`,
    [
      record.analysisId,
      record.parentAnalysisId ?? null,
      record.userId ?? null,
      record.source,
      record.locale,
      record.countryCode ?? null,
      JSON.stringify(record.requestPayload ?? null),
      JSON.stringify(record.decompositionData ?? null),
      JSON.stringify(record.ingredientsData ?? null),
      JSON.stringify(record.uncertaintyData ?? null),
      JSON.stringify(record.mealTypeQuestionData ?? null),
      record.selectedMealType ?? null,
      record.selectedMealTypeSource ?? null,
      JSON.stringify(record.resultData ?? null),
      JSON.stringify(record.clarificationAnswers ?? null),
    ]
  );
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
    request_payload: unknown;
    decomposition_data: unknown;
    ingredients_data: unknown;
    uncertainty_data: unknown;
    meal_type_question_data: unknown;
    selected_meal_type: string | null;
    selected_meal_type_source: MealTypeSource | null;
    result_data: unknown;
    clarification_answers: unknown;
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
        request_payload,
        decomposition_data,
        ingredients_data,
        uncertainty_data,
        meal_type_question_data,
        selected_meal_type,
        selected_meal_type_source,
        result_data,
        clarification_answers,
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
    requestPayload: parseJson(row.request_payload),
    decompositionData: parseJson(row.decomposition_data),
    ingredientsData: parseJson(row.ingredients_data),
    uncertaintyData: parseJson(row.uncertainty_data),
    mealTypeQuestionData: parseJson(row.meal_type_question_data),
    selectedMealType: row.selected_meal_type ?? undefined,
    selectedMealTypeSource: row.selected_meal_type_source ?? undefined,
    resultData: parseJson(row.result_data),
    clarificationAnswers: parseJson(row.clarification_answers),
    createdAt: row.created_at,
    updatedAt: row.updated_at,
  };
}

export async function recordMealAnalysisClarification(
  analysisId: string,
  answers: unknown
): Promise<void> {
  assertDatabaseConfigured();

  await query(
    `INSERT INTO meal_analysis_clarification (analysis_id, answers_payload)
      VALUES ($1, $2::jsonb)`,
    [analysisId, JSON.stringify(answers)]
  );

  await query(
    `UPDATE meal_analysis_session
      SET clarification_answers = $2::jsonb,
          updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1`,
    [analysisId, JSON.stringify(answers)]
  );
}

export async function recordMealAnalysisMealType(
  analysisId: string,
  selectedMealType: string,
  source: MealTypeSource
): Promise<void> {
  assertDatabaseConfigured();

  await query(
    `INSERT INTO meal_analysis_meal_type (
        analysis_id,
        selected_meal_type,
        source
      ) VALUES ($1, $2, $3)`,
    [analysisId, selectedMealType, source]
  );

  await query(
    `UPDATE meal_analysis_session
      SET selected_meal_type = $2,
          selected_meal_type_source = $3,
          updated_at = CURRENT_TIMESTAMP
      WHERE analysis_id = $1`,
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
    ]
  );
}
