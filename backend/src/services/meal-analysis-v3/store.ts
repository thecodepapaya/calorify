import { query } from '../infrastructure/database.js';

export interface StoredMealAnalysisV3Session {
  userId: string;
  analysisId: string;
  input: unknown;
  digest: string;
  result?: unknown;
  nutritionAnswers?: unknown;
  mealTypeAnswer?: string;
}

interface SessionRow {
  user_id: string;
  analysis_id: string;
  input_data: unknown;
  input_digest: string;
  result_data: unknown | null;
  nutrition_answers: unknown | null;
  meal_type_answer: string | null;
}

export async function loadMealAnalysisV3Session(
  userId: string,
  analysisId: string
): Promise<StoredMealAnalysisV3Session | undefined> {
  const result = await query<SessionRow>(
    `SELECT user_id, analysis_id, input_data, input_digest, result_data,
            nutrition_answers, meal_type_answer
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
       nutrition_answers, meal_type_answer, updated_at
     ) VALUES ($1, $2, $3::jsonb, $4, $5::jsonb, $6::jsonb, $7, NOW())
     ON CONFLICT (user_id, analysis_id) DO UPDATE SET
       input_data = EXCLUDED.input_data,
       input_digest = EXCLUDED.input_digest,
       result_data = EXCLUDED.result_data,
       nutrition_answers = EXCLUDED.nutrition_answers,
       meal_type_answer = EXCLUDED.meal_type_answer,
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
