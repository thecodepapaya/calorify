import { query } from '../infrastructure/database.js';

export interface StoredMealAnalysisV3Session {
  userId: string;
  analysisId: string;
  input: unknown;
  digest: string;
  result?: unknown;
  failure?: unknown;
  nutritionAnswers?: unknown;
  mealTypeAnswer?: string;
}

export const ANALYSIS_HISTORY_PAGE_SIZE = 10;

export interface MealAnalysisV3HistoryEntry extends StoredMealAnalysisV3Session {
  feedbackSignal?: 'UP' | 'DOWN';
  feedbackAt?: string;
  loggedAt?: string;
  loggedMeal?: unknown;
  deletedAt?: string;
  createdAt: string;
  updatedAt: string;
}

export interface MealAnalysisV3HistoryPage {
  entries: MealAnalysisV3HistoryEntry[];
  page: number;
  pageSize: number;
  totalEntries: number;
  totalPages: number;
  source?: 'TEXT' | 'IMAGE';
}

interface SessionRow {
  user_id: string;
  analysis_id: string;
  input_data: unknown;
  input_digest: string;
  result_data: unknown | null;
  failure_data: unknown | null;
  nutrition_answers: unknown | null;
  meal_type_answer: string | null;
}

interface HistoryRow extends SessionRow {
  feedback_signal: 'UP' | 'DOWN' | null;
  feedback_at: string | null;
  logged_at: string | null;
  logged_meal: unknown | null;
  deleted_at: string | null;
  created_at: string;
  updated_at: string;
}

function asOptionalJson(value: unknown): unknown | undefined {
  if (value == null) return undefined;
  return typeof value === 'string' ? JSON.parse(value) as unknown : value;
}

function mapHistoryRow(row: HistoryRow): MealAnalysisV3HistoryEntry {
  return {
    userId: row.user_id,
    analysisId: row.analysis_id,
    input: asOptionalJson(row.input_data) ?? {},
    digest: row.input_digest,
    ...(row.result_data == null ? {} : { result: asOptionalJson(row.result_data) }),
    ...(row.failure_data == null ? {} : { failure: asOptionalJson(row.failure_data) }),
    ...(row.nutrition_answers == null ? {} : { nutritionAnswers: asOptionalJson(row.nutrition_answers) }),
    ...(row.meal_type_answer == null ? {} : { mealTypeAnswer: row.meal_type_answer }),
    ...(row.feedback_signal == null ? {} : { feedbackSignal: row.feedback_signal }),
    ...(row.feedback_at == null ? {} : { feedbackAt: row.feedback_at }),
    ...(row.logged_at == null ? {} : { loggedAt: row.logged_at }),
    ...(row.logged_meal == null ? {} : { loggedMeal: asOptionalJson(row.logged_meal) }),
    ...(row.deleted_at == null ? {} : { deletedAt: row.deleted_at }),
    createdAt: row.created_at,
    updatedAt: row.updated_at,
  };
}

/** Lists durable V3 sessions for the operator-only observability page. */
export async function listMealAnalysisV3History(
  requestedPage: number,
  source?: 'TEXT' | 'IMAGE'
): Promise<MealAnalysisV3HistoryPage> {
  const page = Number.isSafeInteger(requestedPage) && requestedPage > 0 ? requestedPage : 1;
  const offset = (page - 1) * ANALYSIS_HISTORY_PAGE_SIZE;
  const [countResult, rowsResult] = await Promise.all([
    query<{ total: string }>(
      `SELECT COUNT(*)::text AS total FROM meal_analysis_v3_session
        WHERE ($1::text IS NULL OR input_data ->> 'kind' = $1)`,
      [source ?? null]
    ),
    query<HistoryRow>(
      `SELECT user_id, analysis_id, input_data, input_digest, result_data,
              failure_data, nutrition_answers, meal_type_answer, feedback_signal,
              feedback_at, logged_at, logged_meal, deleted_at, created_at,
              updated_at
         FROM meal_analysis_v3_session
        WHERE ($1::text IS NULL OR input_data ->> 'kind' = $1)
        ORDER BY updated_at DESC, analysis_id DESC
        LIMIT $2 OFFSET $3`,
      [source ?? null, ANALYSIS_HISTORY_PAGE_SIZE, offset]
    ),
  ]);
  const totalEntries = Number.parseInt(countResult.rows[0]?.total ?? '0', 10);
  return {
    entries: rowsResult.rows.map(mapHistoryRow), page, pageSize: ANALYSIS_HISTORY_PAGE_SIZE,
    totalEntries, totalPages: Math.ceil(totalEntries / ANALYSIS_HISTORY_PAGE_SIZE), source,
  };
}

export async function loadMealAnalysisV3Session(
  userId: string,
  analysisId: string
): Promise<StoredMealAnalysisV3Session | undefined> {
  const result = await query<SessionRow>(
    `SELECT user_id, analysis_id, input_data, input_digest, result_data,
            failure_data, nutrition_answers, meal_type_answer
       FROM meal_analysis_v3_session
      WHERE user_id = $1 AND analysis_id = $2`,
    [userId, analysisId]
  );
  const row = result.rows[0];
  if (!row) return undefined;
  return {
    userId: row.user_id,
    analysisId: row.analysis_id,
    input: row.input_data,
    digest: row.input_digest,
    ...(row.result_data == null ? {} : { result: row.result_data }),
    ...(row.failure_data == null ? {} : { failure: asOptionalJson(row.failure_data) }),
    ...(row.nutrition_answers == null ? {} : { nutritionAnswers: row.nutrition_answers }),
    ...(row.meal_type_answer == null ? {} : { mealTypeAnswer: row.meal_type_answer }),
  };
}

export async function saveMealAnalysisV3Session(
  session: StoredMealAnalysisV3Session
): Promise<boolean> {
  const result = await query(
    `INSERT INTO meal_analysis_v3_session (
       user_id, analysis_id, input_data, input_digest, result_data,
       nutrition_answers, meal_type_answer, failure_data, updated_at
     ) VALUES ($1, $2, $3::jsonb, $4, $5::jsonb, $6::jsonb, $7, $8::jsonb, NOW())
     ON CONFLICT (user_id, analysis_id) DO UPDATE SET
       input_data = EXCLUDED.input_data,
       input_digest = EXCLUDED.input_digest,
       result_data = EXCLUDED.result_data,
       nutrition_answers = EXCLUDED.nutrition_answers,
       meal_type_answer = EXCLUDED.meal_type_answer,
       failure_data = EXCLUDED.failure_data,
       updated_at = NOW()
     WHERE meal_analysis_v3_session.input_digest = EXCLUDED.input_digest`,
    [
      session.userId,
      session.analysisId,
      JSON.stringify(session.input),
      session.digest,
      session.result === undefined ? null : JSON.stringify(session.result),
      session.nutritionAnswers === undefined
        ? null
        : JSON.stringify(session.nutritionAnswers),
      session.mealTypeAnswer ?? null,
      session.failure === undefined ? null : JSON.stringify(session.failure),
    ]
  );
  return result.rowCount === 1;
}

export async function recordMealAnalysisV3Feedback(
  userId: string,
  analysisId: string,
  signal: 'UP' | 'DOWN'
): Promise<boolean> {
  const result = await query(
    `UPDATE meal_analysis_v3_session
        SET feedback_signal = $3, feedback_at = NOW(), updated_at = NOW()
      WHERE user_id = $1 AND analysis_id = $2
        AND result_data ->> 'outcome' = 'COMPLETE'`,
    [userId, analysisId, signal]
  );
  return result.rowCount === 1;
}

export async function recordMealAnalysisV3Log(
  userId: string,
  analysisId: string,
  input: { deleted?: boolean; loggedAt?: string; meal?: unknown }
): Promise<boolean> {
  const result = await query(
    `UPDATE meal_analysis_v3_session
        SET logged_at = CASE WHEN $3 THEN NULL ELSE $4::timestamptz END,
            logged_meal = CASE WHEN $3 THEN NULL ELSE $5::jsonb END,
            deleted_at = CASE WHEN $3 THEN NOW() ELSE NULL END,
            updated_at = NOW()
      WHERE user_id = $1 AND analysis_id = $2
        AND result_data ->> 'outcome' = 'COMPLETE'`,
    [
      userId,
      analysisId,
      input.deleted === true,
      input.loggedAt ?? null,
      input.meal === undefined ? null : JSON.stringify(input.meal),
    ]
  );
  return result.rowCount === 1;
}
