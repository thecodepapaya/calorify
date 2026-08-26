import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { z } from 'zod';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleTagFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { query } from '../../services/infrastructure/database.js';
import {
  getMealAnalysisTipsForLocale,
  MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX,
  pickRandomTips,
} from '../../services/meal-analysis/tips.js';
import type { MealAnalysisTipsResponse } from '../../protos/calorify/http_api.js';
import { AiSummaryRequestError, generateAiSummary } from '../../services/summaries/service.js';
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

interface RecentMealRow {
  logged_at: Date | string;
  logged_meal_name: string | null;
  logged_meal_type: string | null;
  logged_calories: number | null;
  logged_protein: number | null;
  logged_carbs: number | null;
  logged_fat: number | null;
  logged_fiber: number | null;
}

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
  generate_ai_summary: 'Failed to generate AI meal summary',
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

  fastify.post(
    '/ai-summary/generate',
    {
      schema: {
        description: 'Generate or return today\'s idempotent meal summary.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Daily summary (calorify.AiMealSummaryResponse)',
            ...getAiMealSummaryResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        if (!config.DATABASE_URL) throw new Error('DATABASE_URL is not set');
        const result = await generateAiSummary(getCurrentUserId(request), request.body);
        reply.header('Content-Language', result.locale).send(result.response);
      } catch (error) {
        if (error instanceof z.ZodError) {
          reply.status(400).send({ code: 'invalid_summary_snapshot', message: 'Invalid AI summary snapshot' });
          return;
        }
        if (error instanceof AiSummaryRequestError) {
          if (error.retryAfter) reply.header('Retry-After', String(error.retryAfter));
          reply.status(error.statusCode).send({ code: error.code, message: error.message });
          return;
        }
        sendUnexpectedFoodError(
          request,
          reply,
          error,
          'generate_ai_summary'
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
        const locale = getLocaleTagFromRequest(request);
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
