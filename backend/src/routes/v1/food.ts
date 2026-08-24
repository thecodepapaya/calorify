import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { query } from '../../services/database.js';
import {
  getMealAnalysisTipsForLocale,
  MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX,
  pickRandomTips,
} from '../../services/mealAnalysisTips.js';
import type { AiMealSummaryResponse, MealAnalysisTipsResponse } from '../../protos/calorify/http_api.js';
import { AiMealSummaryTrend } from '../../protos/calorify/ai_meal_summary_trend.js';
import {
  computeAiSummaryStats,
  type AiSummaryMealRow,
  type AiSummaryStats,
} from '../../services/aiSummaryStats.js';
import { safeErrorMetadata } from '../../utils/safeError.js';
// Manually maintained OpenAPI helpers for the legacy proto-shaped HTTP API.
// Route and integration tests enforce the runtime contract.
import {
  getAiMealSummaryResponseSchema,
  getMealAnalysisTipsResponseSchema,
} from '../../utils/schema-generator.js';

function parseMealAnalysisTipsQueryCount(
  query: unknown
): { ok: true; limit?: number } | { ok: false; message: string } {
  if (query === null || query === undefined || typeof query !== 'object') {
    return { ok: true, limit: undefined };
  }
  const raw = (query as Record<string, unknown>).count;
  if (raw === undefined || raw === null || raw === '') {
    return { ok: true, limit: undefined };
  }
  const n =
    typeof raw === 'number'
      ? raw
      : typeof raw === 'string'
        ? Number.parseInt(raw, 10)
        : NaN;
  if (!Number.isInteger(n) || n < 1) {
    return { ok: false, message: 'count must be a positive integer' };
  }
  if (n > MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX) {
    return {
      ok: false,
      message: `count must be at most ${MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX}`,
    };
  }
  return { ok: true, limit: n };
}

interface AiSummaryRow {
  summary: string;
  generated_at: Date;
  stats_snapshot: AiSummaryStats | null;
}

type RecentMealRow = AiSummaryMealRow;

function csvEscape(value: string | number | null | undefined): string {
  const stringValue = value == null ? '' : String(value);
  if (!/[",\n]/.test(stringValue)) return stringValue;
  return `"${stringValue.replace(/"/g, '""')}"`;
}

function toIsoString(value: Date | string): string {
  return (value instanceof Date ? value : new Date(value)).toISOString();
}

function buildMealHistoryCsv(meals: RecentMealRow[]): string {
  const header = [
    'logged_at',
    'meal_type',
    'meal_name',
    'calories',
    'protein_g',
    'carbs_g',
    'fat_g',
    'fiber_g',
  ];
  const rows = meals.map((meal) =>
    [
      toIsoString(meal.logged_at),
      meal.logged_meal_type ?? '',
      meal.logged_meal_name ?? '',
      meal.logged_calories ?? '',
      meal.logged_protein ?? '',
      meal.logged_carbs ?? '',
      meal.logged_fat ?? '',
      meal.logged_fiber ?? '',
    ]
      .map(csvEscape)
      .join(',')
  );
  return [header.join(','), ...rows].join('\n');
}

const foodFailureMessages = {
  load_ai_summary: 'Failed to load AI meal summary',
  load_meal_analysis_tips: 'Failed to load meal analysis tips',
  export_meal_history: 'Failed to export meal history',
} as const;

type FoodOperation = keyof typeof foodFailureMessages;

function sendUnexpectedFoodError(
  request: FastifyRequest,
  reply: FastifyReply,
  error: unknown,
  operation: FoodOperation
): void {
  request.log.error(
    { operation, ...safeErrorMetadata(error) },
    'Unexpected V1 food request failure'
  );
  reply.status(500).send(createErrorResponse(foodFailureMessages[operation]));
}

export async function foodRoutes(
  fastify: FastifyInstance
): Promise<void> {
  fastify.addHook('preHandler', authenticateUser);

  /**
   * GET /api/v1/food/ai-summary
   * Returns the latest AI-generated nutritional summary for the authenticated user.
   */
  fastify.get(
    '/ai-summary',
    {
      schema: {
        description: 'Get the latest AI-generated meal summary for the authenticated user.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Latest summary and trailing stats (calorify.AiMealSummaryResponse)',
            ...getAiMealSummaryResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        if (!config.DATABASE_URL) {
          const body: AiMealSummaryResponse = {
            mealCount: 0,
            topFoods: [],
            macroBalanceScore: 0,
            trend: AiMealSummaryTrend.STEADY,
          };
          reply.send(body);
          return;
        }

        const userId = getCurrentUserId(request);
        const { rows } = await query<AiSummaryRow>(
          `SELECT summary, generated_at, stats_snapshot
             FROM ai_summaries
            WHERE user_id = $1
            ORDER BY generated_at DESC
            LIMIT 1`,
          [userId]
        );

        const row = rows[0];
        if (!row) {
          const body: AiMealSummaryResponse = {
            mealCount: 0,
            topFoods: [],
            macroBalanceScore: 0,
            trend: AiMealSummaryTrend.STEADY,
          };
          reply.send(body);
          return;
        }

        let stats = row.stats_snapshot;
        if (!stats) {
          // Legacy summaries predate snapshot persistence. Keep the old fallback
          // until those rows naturally age out of the latest-summary position.
          const { rows: recentMeals } = await query<RecentMealRow>(
            `SELECT
                logged_at,
                logged_meal_name,
                logged_meal_type,
                logged_calories,
                logged_protein,
                logged_carbs,
                logged_fat,
                logged_fiber
               FROM meal_analysis_session
              WHERE user_id = $1
                AND logged_at >= NOW() - INTERVAL '3 days'
                AND logged_at <= NOW() + INTERVAL '5 minutes'
              ORDER BY logged_at DESC`,
            [userId]
          );
          stats = computeAiSummaryStats(recentMeals);
        }

        const body: AiMealSummaryResponse = {
          summary: row.summary,
          generatedAt: toIsoString(row.generated_at),
          mealCount: stats.mealCount,
          topFoods: stats.topFoods,
          macroBalanceScore: stats.macroBalanceScore,
          trend: stats.trend,
        };
        reply.send(body);
      } catch (error) {
        sendUnexpectedFoodError(
          request,
          reply,
          error,
          'load_ai_summary'
        );
      }
    }
  );

  /**
   * GET /api/v1/food/meal-analysis-tips
   * Rotating tips for the meal analysis loading UI; editable via data file without an app release.
   * Optional `count` returns up to that many tips chosen uniformly at random without replacement.
   */
  fastify.get(
    '/meal-analysis-tips',
    {
      schema: {
        description:
          'Localized one-line tips shown during AI meal analysis. Content is loaded from server config. Optional query `count` (1–100): return at most that many tips chosen uniformly at random without replacement; omit for the full list.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Localized tips payload (calorify.MealAnalysisTipsResponse)',
            ...getMealAnalysisTipsResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        const parsed = parseMealAnalysisTipsQueryCount(request.query);
        if (!parsed.ok) {
          reply.status(400).send(createErrorResponse(parsed.message));
          return;
        }
        const locale = getLocaleFromRequest(request);
        const { version, tips } = getMealAnalysisTipsForLocale(locale);
        const outTips =
          parsed.limit !== undefined ? pickRandomTips(tips, parsed.limit) : tips;
        const body: MealAnalysisTipsResponse = { version, tips: outTips };
        reply.send(body);
      } catch (error) {
        sendUnexpectedFoodError(
          request,
          reply,
          error,
          'load_meal_analysis_tips'
        );
      }
    }
  );

  fastify.get(
    '/export',
    {
      schema: {
        description: 'Export the authenticated user meal history as CSV.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            type: 'string',
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        if (!config.DATABASE_URL) {
          reply
            .header('Content-Type', 'text/csv; charset=utf-8')
            .send(buildMealHistoryCsv([]));
          return;
        }

        const userId = getCurrentUserId(request);
        const { rows } = await query<RecentMealRow>(
          `SELECT
              logged_at,
              logged_meal_name,
              logged_meal_type,
              logged_calories,
              logged_protein,
              logged_carbs,
              logged_fat,
              logged_fiber
             FROM meal_analysis_session
            WHERE user_id = $1
              AND logged_at IS NOT NULL
            ORDER BY logged_at DESC`,
          [userId]
        );

        reply
          .header('Content-Type', 'text/csv; charset=utf-8')
          .header(
            'Content-Disposition',
            `attachment; filename="calorify-meals-${userId}.csv"`
          )
          .send(buildMealHistoryCsv(rows));
      } catch (error) {
        sendUnexpectedFoodError(
          request,
          reply,
          error,
          'export_meal_history'
        );
      }
    }
  );

}
