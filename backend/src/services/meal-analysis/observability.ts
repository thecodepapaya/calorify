import config from '../../config.js';
import { query } from '../infrastructure/database.js';

interface UserProfileRow {
  height: string | number | null;
  weight: string | number | null;
  target_weight: string | number | null;
  gender: string | null;
  date_of_birth: Date | string | null;
  weight_goal: string | null;
  activity_level: string | null;
  height_unit: string | null;
  weight_unit: string | null;
  daily_calorie_goal: number | null;
  created_at: Date | string;
  updated_at: Date | string;
}

interface AnalysisOverviewRow {
  analysis_count: string | number;
  completed_count: string | number;
  logged_meal_count: string | number;
  latest_activity_at: Date | string | null;
}

interface AnalysisRow {
  analysis_id: string;
  parent_analysis_id: string | null;
  source: string;
  locale: string;
  country_code: string | null;
  time_zone: string | null;
  selected_meal_type: string | null;
  selected_meal_type_source: string | null;
  decomposition_data: unknown;
  uncertainty_data: unknown;
  result_data: unknown;
  clarification_answers: unknown;
  logged_at: Date | string | null;
  logged_meal_name: string | null;
  logged_calories: number | null;
  logged_protein: number | null;
  logged_carbs: number | null;
  logged_fat: number | null;
  logged_fiber: number | null;
  logged_meal_type: string | null;
  logged_quantity: string | null;
  created_at: Date | string;
  updated_at: Date | string;
}

interface SummaryRow {
  summary: string | null;
  summary_local_date: Date | string | null;
  status: string;
  request_snapshot: unknown;
  requested_locale: string | null;
  locale: string;
  stats_snapshot: unknown;
  requested_at: Date | string | null;
  generated_at: Date | string | null;
  provider: string | null;
  model: string | null;
  provider_request_id: string | null;
  attempt_count: number;
  last_error_code: string | null;
  processing_started_at: Date | string | null;
}

interface FeedbackRow {
  analysis_id: string;
  signal: string;
  issues: string[];
  other_text: string | null;
  created_at: Date | string;
}

export interface UserObservabilityOptions {
  limit?: number;
}

function iso(value: Date | string | null): string | null {
  if (value == null) return null;
  return (value instanceof Date ? value : new Date(value)).toISOString();
}

function calendarDate(value: Date | string | null): string | null {
  if (value == null) return null;
  if (typeof value === 'string' && /^\d{4}-\d{2}-\d{2}$/.test(value)) return value;
  return iso(value)?.slice(0, 10) ?? null;
}

function numberValue(value: string | number | null): number | null {
  if (value == null) return null;
  const parsed = Number(value);
  return Number.isFinite(parsed) ? parsed : null;
}

/**
 * Builds a read-only, user-scoped diagnostic snapshot. Authentication material,
 * uploaded-image URLs, and raw request payloads are deliberately excluded.
 */
export async function inspectUser(
  userId: string,
  options: UserObservabilityOptions = {}
) {
  const normalizedUserId = userId.trim();
  if (!normalizedUserId) throw new Error('userId must not be empty');
  const limit = Math.max(1, Math.min(100, options.limit ?? 10));

  const { rows: profiles } = await query<UserProfileRow>(
    `SELECT height, weight, target_weight, gender, date_of_birth, weight_goal,
            activity_level, height_unit, weight_unit, daily_calorie_goal,
            created_at, updated_at
       FROM user_profile
      WHERE user_id = $1
      LIMIT 1`,
    [normalizedUserId]
  );

  const { rows: overviewRows } = await query<AnalysisOverviewRow>(
    `SELECT COUNT(*) AS analysis_count,
            COUNT(*) FILTER (WHERE result_data IS NOT NULL) AS completed_count,
            COUNT(*) FILTER (WHERE logged_at IS NOT NULL) AS logged_meal_count,
            MAX(updated_at) AS latest_activity_at
       FROM meal_analysis_session
      WHERE user_id = $1`,
    [normalizedUserId]
  );

  const { rows: analyses } = await query<AnalysisRow>(
    `SELECT analysis_id, parent_analysis_id, source, locale, country_code, time_zone,
            selected_meal_type, selected_meal_type_source,
            decomposition_data, uncertainty_data, result_data,
            clarification_answers, logged_at, logged_meal_name,
            logged_calories, logged_protein, logged_carbs, logged_fat,
            logged_fiber, logged_meal_type, logged_quantity,
            created_at, updated_at
       FROM meal_analysis_session
      WHERE user_id = $1
      ORDER BY created_at DESC
      LIMIT $2`,
    [normalizedUserId, limit]
  );

  const { rows: summaries } = await query<SummaryRow>(
    `SELECT summary, summary_local_date, status, request_snapshot,
            requested_locale, locale, stats_snapshot, requested_at, generated_at,
            provider, model, provider_request_id, attempt_count, last_error_code,
            processing_started_at
       FROM ai_summaries
      WHERE user_id = $1
      ORDER BY COALESCE(requested_at, generated_at) DESC
      LIMIT $2`,
    [normalizedUserId, limit]
  );

  const { rows: feedback } = await query<FeedbackRow>(
    `SELECT feedback.analysis_id, feedback.signal, feedback.issues,
            feedback.other_text, feedback.created_at
       FROM meal_analysis_feedback AS feedback
       JOIN meal_analysis_session AS session
         ON session.analysis_id = feedback.analysis_id
      WHERE feedback.user_id = $1
         OR (feedback.user_id IS NULL AND session.user_id = $1)
      ORDER BY feedback.created_at DESC
      LIMIT $2`,
    [normalizedUserId, limit]
  );

  const locale = analyses[0]?.locale ?? summaries[0]?.locale ?? 'en';
  const profile = profiles[0];
  const overview = overviewRows[0];
  const sources = [
    profile ? 'profile' : null,
    Number(overview?.analysis_count ?? 0) > 0 ? 'meal_analysis' : null,
    summaries.length > 0 ? 'ai_summary' : null,
    feedback.length > 0 ? 'feedback' : null,
  ].filter((source): source is string => source != null);

  return {
    generatedAt: new Date().toISOString(),
    user: {
      userId: normalizedUserId,
      exists: sources.length > 0,
      sources,
      locale,
      profile: profile
        ? {
            height: numberValue(profile.height),
            weight: numberValue(profile.weight),
            targetWeight: numberValue(profile.target_weight),
            gender: profile.gender,
            dateOfBirth: calendarDate(profile.date_of_birth),
            weightGoal: profile.weight_goal,
            activityLevel: profile.activity_level,
            heightUnit: profile.height_unit,
            weightUnit: profile.weight_unit,
            dailyCalorieGoal: profile.daily_calorie_goal,
            createdAt: iso(profile.created_at),
            updatedAt: iso(profile.updated_at),
          }
        : null,
    },
    aiSummary: {
      model: config.OPENROUTER_AI_SUMMARY_MODEL,
      windowDays: 7,
      latest: summaries[0]
        ? {
            summary: summaries[0].summary,
            locale: summaries[0].locale,
            status: summaries[0].status,
            statistics: summaries[0].stats_snapshot,
            generatedAt: iso(summaries[0].generated_at),
          }
        : null,
      history: summaries.map((row) => ({
        summaryLocalDate: calendarDate(row.summary_local_date),
        status: row.status,
        requestSnapshot: row.request_snapshot,
        result: row.summary ? { summary: row.summary, statistics: row.stats_snapshot } : null,
        requestedLocale: row.requested_locale,
        resolvedLocale: row.locale,
        requestedAt: iso(row.requested_at),
        generatedAt: iso(row.generated_at),
        provider: row.provider,
        model: row.model,
        providerRequestId: row.provider_request_id,
        attemptCount: row.attempt_count,
        lastErrorCode: row.last_error_code,
        processingStartedAt: iso(row.processing_started_at),
      })),
    },
    mealAnalysis: {
      totals: {
        analyses: Number(overview?.analysis_count ?? 0),
        completed: Number(overview?.completed_count ?? 0),
        loggedMeals: Number(overview?.logged_meal_count ?? 0),
        latestActivityAt: iso(overview?.latest_activity_at ?? null),
      },
      recent: analyses.map((row) => ({
        analysisId: row.analysis_id,
        parentAnalysisId: row.parent_analysis_id,
        source: row.source,
        locale: row.locale,
        countryCode: row.country_code,
        selectedMealType: row.selected_meal_type,
        selectedMealTypeSource: row.selected_meal_type_source,
        decomposition: row.decomposition_data,
        uncertainty: row.uncertainty_data,
        result: row.result_data,
        clarificationAnswers: row.clarification_answers,
        loggedMeal: row.logged_at
          ? {
              loggedAt: iso(row.logged_at),
              name: row.logged_meal_name,
              type: row.logged_meal_type,
              quantity: row.logged_quantity,
              macros: {
                calories: row.logged_calories,
                protein: row.logged_protein,
                carbs: row.logged_carbs,
                fat: row.logged_fat,
                fiber: row.logged_fiber,
              },
            }
          : null,
        createdAt: iso(row.created_at),
        updatedAt: iso(row.updated_at),
      })),
    },
    feedback: feedback.map((row) => ({
      analysisId: row.analysis_id,
      signal: row.signal,
      issues: row.issues,
      otherText: row.other_text,
      createdAt: iso(row.created_at),
    })),
  };
}

export type UserObservabilityReport = Awaited<ReturnType<typeof inspectUser>>;
