import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { openAIFoodAnalysisService } from '../../services/openAIFoodAnalysis.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleFromRequest, getCountryFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { query } from '../../services/database.js';
import { nonEmptyString, parseBody, urlString, z } from '../../utils/validation.js';
import type {
  ImageMealDetectionRequest,
  TextMealDetectionRequest,
} from '../../protos/calorify/meal_detection.js';

const imageDetectionBodySchema = z.object({
  imageUrl: urlString,
});

const textDetectionBodySchema = z.object({
  textDescription: nonEmptyString.max(2000, 'must be at most 2000 characters'),
});
// IMPORTANT: Use schema generator functions to keep documentation in sync with proto definitions
// See: src/utils/schema-generator.ts and SCHEMA_SYNC.md
import {
  getMealDetectionResponseSchema,
  getImageMealDetectionRequestSchema,
  getTextMealDetectionRequestSchema,
  getStandardErrorResponses,
} from '../../utils/schema-generator.js';

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
      trend: 'steady' as const,
    };
  }

  const foodCounts = new Map<string, number>();
  let protein = 0;
  let carbs = 0;
  let fat = 0;

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
    protein += meal.logged_protein ?? 0;
    carbs += meal.logged_carbs ?? 0;
    fat += meal.logged_fat ?? 0;
  }

  const topFoods = [...foodCounts.entries()]
    .sort((a, b) => b[1] - a[1] || a[0].localeCompare(b[0]))
    .slice(0, 3)
    .map(([name]) => name);

  const totalMacros = protein + carbs + fat;
  let macroBalanceScore = 0;
  if (totalMacros > 0) {
    const carbRatio = carbs / totalMacros;
    const proteinRatio = protein / totalMacros;
    const fatRatio = fat / totalMacros;
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
  let trend: 'up' | 'down' | 'steady' = 'steady';
  if (previousAverage > 0 && latestAverage > 0) {
    const change = (latestAverage - previousAverage) / previousAverage;
    if (change >= 0.1) {
      trend = 'up';
    } else if (change <= -0.1) {
      trend = 'down';
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
            type: 'object',
            properties: {
              summary: { type: 'string', nullable: true },
              generatedAt: { type: 'string', nullable: true },
              mealCount: { type: 'integer' },
              topFoods: {
                type: 'array',
                items: { type: 'string' },
              },
              macroBalanceScore: { type: 'integer' },
              trend: {
                type: 'string',
                enum: ['up', 'down', 'steady'],
              },
            },
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      if (!config.DATABASE_URL) {
        reply.send({
          summary: null,
          generatedAt: null,
          mealCount: 0,
          topFoods: [],
          macroBalanceScore: 0,
          trend: 'steady',
        });
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
        reply.send({
          summary: null,
          generatedAt: null,
          mealCount: 0,
          topFoods: [],
          macroBalanceScore: 0,
          trend: 'steady',
        });
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

      reply.send({
        summary: row.summary,
        generatedAt: toIsoString(row.generated_at),
        mealCount: stats.mealCount,
        topFoods: stats.topFoods,
        macroBalanceScore: stats.macroBalanceScore,
        trend: stats.trend,
      });
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
        body: getImageMealDetectionRequestSchema(),
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
        body: getTextMealDetectionRequestSchema(),
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
