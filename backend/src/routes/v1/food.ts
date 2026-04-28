import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { openAIFoodAnalysisService } from '../../services/openAIFoodAnalysis.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleFromRequest, getCountryFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { query } from '../../services/database.js';
import {
  getMealAnalysisTipsForLocale,
  MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX,
  pickRandomTips,
} from '../../services/mealAnalysisTips.js';
import { nonEmptyString, parseBody, urlString, z } from '../../utils/validation.js';
import type { AiMealSummaryResponse, MealAnalysisTipsResponse } from '../../protos/calorify/http_api.js';
import { AiMealSummaryTrend } from '../../protos/calorify/ai_meal_summary_trend.js';
import type { ImageMealDetectionRequest, TextMealDetectionRequest } from '../../protos/calorify/meal_detection.js';

const imageDetectionBodySchema = z.object({
  imageUrl: urlString,
});

/** Matches protos/calorify/meal_detection.proto ImageMealDetectionRequest (imageUrl only over HTTP). */

/** Matches protos/calorify/meal_detection.proto TextMealDetectionRequest (+ Zod max length). */
const textDetectionBodySchema = z.object({
  textDescription: nonEmptyString.max(2000, 'must be at most 2000 characters'),
});
// IMPORTANT: Use schema generator functions to keep documentation in sync with proto definitions
// See: src/utils/schema-generator.ts and SCHEMA_SYNC.md
import {
  getAiMealSummaryResponseSchema,
  getMealAnalysisTipsResponseSchema,
  getMealDetectionResponseSchema,
  getStandardErrorResponses,
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

function toMillis(value: Date | string): number {
  return value instanceof Date ? value.getTime() : new Date(value).getTime();
}

function computeAiSummaryStats(meals: RecentMealRow[]) {
  if (meals.length === 0) {
    return {
      mealCount: 0,
      topFoods: [] as string[],
      macroBalanceScore: 0,
      trend: AiMealSummaryTrend.STEADY,
    };
  }

  const foodCounts = new Map<string, number>();
  let proteinCalories = 0;
  let carbCalories = 0;
  let fatCalories = 0;

  const previousMeals = meals.filter(
    (meal) => Date.now() - toMillis(meal.logged_at) > 24 * 60 * 60 * 1000
  );
  const latestMeals = meals.filter(
    (meal) => Date.now() - toMillis(meal.logged_at) <= 24 * 60 * 60 * 1000
  );

  for (const meal of meals) {
    const name = meal.logged_meal_name?.trim();
    if (name) {
      foodCounts.set(name, (foodCounts.get(name) ?? 0) + 1);
    }
    proteinCalories += (meal.logged_protein ?? 0) * 4;
    carbCalories += (meal.logged_carbs ?? 0) * 4;
    fatCalories += (meal.logged_fat ?? 0) * 9;
  }

  const topFoods = [...foodCounts.entries()]
    .sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]))
    .slice(0, 3)
    .map(([name]) => name);

  const totalMacroCalories = proteinCalories + carbCalories + fatCalories;
  let macroBalanceScore = 0;
  if (totalMacroCalories > 0) {
    const carbRatio = carbCalories / totalMacroCalories;
    const proteinRatio = proteinCalories / totalMacroCalories;
    const fatRatio = fatCalories / totalMacroCalories;
    const deviation =
      Math.abs(carbRatio - 0.5) +
      Math.abs(proteinRatio - 0.2) +
      Math.abs(fatRatio - 0.3);
    macroBalanceScore = Math.max(0, Math.min(100, Math.round(100 - deviation * 120)));
  }

  const averageCalories = (items: RecentMealRow[]) => {
    if (items.length === 0) return 0;
    return (
      items.reduce((sum, item) => sum + (item.logged_calories ?? 0), 0) / items.length
    );
  };

  const previousAverage = averageCalories(previousMeals);
  const latestAverage = averageCalories(latestMeals);
  let trend: AiMealSummaryTrend = AiMealSummaryTrend.STEADY;
  if (previousAverage > 0 && latestAverage > 0) {
    const change = (latestAverage - previousAverage) / previousAverage;
    if (change >= 0.1) {
      trend = AiMealSummaryTrend.UP;
    } else if (change <= -0.1) {
      trend = AiMealSummaryTrend.DOWN;
    }
  }

  return {
    mealCount: meals.length,
    topFoods,
    macroBalanceScore,
    trend,
  };
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

export async function foodRoutes(fastify: FastifyInstance): Promise<void> {
  /**
   * GET /api/v1/food/ai-summary
   * Returns the latest AI-generated nutritional summary for the authenticated user.
   */
  fastify.get(
    '/ai-summary',
    {
      preHandler: [authenticateUser],
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
        `SELECT summary, generated_at
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
            AND logged_at IS NOT NULL
          ORDER BY logged_at DESC`,
        [userId]
      );
      const stats = computeAiSummaryStats(recentMeals);

      const body: AiMealSummaryResponse = {
        summary: row.summary,
        generatedAt: toIsoString(row.generated_at),
        mealCount: stats.mealCount,
        topFoods: stats.topFoods,
        macroBalanceScore: stats.macroBalanceScore,
        trend: stats.trend,
      };
      reply.send(body);
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
      preHandler: [authenticateUser],
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
    }
  );

  fastify.get(
    '/export',
    {
      preHandler: [authenticateUser],
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
    }
  );

  /**
   * POST /api/v1/food/analyze-image
   * Analyze a food image using AI
   */
  fastify.post(
    '/analyze-image',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      preHandler: [authenticateUser],
      schema: {
        description: 'Analyze a food image using OpenAI. Upload an image file to get detailed nutritional information including calories, macros, health score, and variations.',
        tags: ['Food'],
        consumes: ['multipart/form-data'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Successful analysis with variations',
            ...getMealDetectionResponseSchema(),
          },
          ...getStandardErrorResponses(),
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        // Get uploaded file
        const data = await request.file();
        if (!data) {
          reply.status(400).send(createErrorResponse('File is required'));
          return;
        }

        // Check if it's an image
        if (!data.mimetype?.startsWith('image/')) {
          reply.status(400).send(createErrorResponse('File must be an image'));
          return;
        }

        // Read file buffer
        const buffer = await data.toBuffer();
        const mimeType = data.mimetype ?? 'image/jpeg';

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);
        const countryCode = getCountryFromRequest(request);

        // Analyze image using OpenAI (default AI service)
        const result = await openAIFoodAnalysisService.analyzeImageFromBuffer(buffer, mimeType, locale, countryCode);

        // Return protobuf object directly (Fastify handles JSON serialization)
        reply.send(result);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to analyze image'
          )
        );
      }
    }
  );

  /**
   * POST /api/v1/food/detect-image
   * Detect meal from image URL using OpenAI (proto-based endpoint)
   */
  fastify.post<{ Body: ImageMealDetectionRequest }>(
    '/detect-image',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      preHandler: [authenticateUser],
      schema: {
        description: 'Detect meal from image URL using OpenAI. Returns MealDetectionResponse with variations if confidence is LOW/MEDIUM.',
        tags: ['Food'],
        // Body validation: Zod (imageDetectionBodySchema) aligned with meal_detection.proto — not duplicate AJV body, to avoid coercion + response-serialization mismatch on 400.
        response: {
          200: {
            description: 'Successful detection',
            ...getMealDetectionResponseSchema(),
          },
          ...getStandardErrorResponses(),
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ImageMealDetectionRequest }>, reply: FastifyReply) => {
      try {
        const parsed = parseBody(imageDetectionBodySchema, request.body, reply);
        if (!parsed) return;
        const { imageUrl } = parsed;

        // Convert upload URL to download URL.
        // Object key = path after bucket "o/" (supports folderized keys: uid/iso_uuid.ext)
        let finalImageUrl: string;
        try {
          const url = new URL(imageUrl);
          const pathParts = url.pathname.split('/');
          const oIndex = pathParts.indexOf('o');
          const objectKey =
            oIndex >= 0
              ? pathParts
                .slice(oIndex + 1)
                .map((seg) => encodeURIComponent(decodeURIComponent(seg)))
                .join('/')
              : encodeURIComponent(decodeURIComponent(pathParts[pathParts.length - 1]));

          const baseUrl = config.ORACLE_BUCKET_DOWNLOAD_URL.endsWith('/')
            ? config.ORACLE_BUCKET_DOWNLOAD_URL
            : `${config.ORACLE_BUCKET_DOWNLOAD_URL}/`;
          finalImageUrl = `${baseUrl}${objectKey}`;
        } catch {
          reply.status(400).send(createErrorResponse('Invalid imageUrl format'));
          return;
        }

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);
        const countryCode = getCountryFromRequest(request);

        // Analyze image from URL using OpenAI
        const response = await openAIFoodAnalysisService.analyzeImageFromUrl(finalImageUrl, locale, countryCode);

        // Return protobuf object directly (Fastify handles JSON serialization)
        reply.send(response);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to detect meal from image'
          )
        );
      }
    }
  );

  /**
   * POST /api/v1/food/detect-text
   * Detect meal from text description using OpenAI (proto-based endpoint)
   */
  fastify.post<{ Body: TextMealDetectionRequest }>(
    '/detect-text',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      preHandler: [authenticateUser],
      schema: {
        description: 'Detect meal from text description using OpenAI. Returns MealDetectionResponse with variations if confidence is LOW/MEDIUM.',
        tags: ['Food'],
        // Body validation: Zod (textDetectionBodySchema) aligned with meal_detection.proto — not duplicate AJV body (see detect-image).
        response: {
          200: {
            description: 'Successful detection',
            ...getMealDetectionResponseSchema(),
          },
          ...getStandardErrorResponses(),
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: TextMealDetectionRequest }>, reply: FastifyReply) => {
      try {
        const parsed = parseBody(textDetectionBodySchema, request.body, reply);
        if (!parsed) return;

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);
        const countryCode = getCountryFromRequest(request);

        // Analyze text description using OpenAI
        const response = await openAIFoodAnalysisService.analyzeTextDescription(parsed.textDescription, locale, countryCode);

        // Return protobuf object directly (Fastify handles JSON serialization)
        reply.send(response);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to detect meal from text description'
          )
        );
      }
    }
  );
}
