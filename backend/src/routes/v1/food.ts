import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { openAIFoodAnalysisService } from '../../services/openAIFoodAnalysis.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleFromRequest, getCountryFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { query } from '../../services/database.js';
import type {
  ImageMealDetectionRequest,
  TextMealDetectionRequest,
} from '../../protos/calorify/meal_detection.js';
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
            },
          },
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      if (!config.DATABASE_URL) {
        reply.send({ summary: null, generatedAt: null });
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
        reply.send({ summary: null, generatedAt: null });
        return;
      }

      reply.send({
        summary: row.summary,
        generatedAt: row.generated_at.toISOString(),
      });
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
        const { imageUrl } = request.body;

        if (!imageUrl || typeof imageUrl !== 'string' || imageUrl.trim() === '') {
          reply.status(400).send(createErrorResponse('imageUrl is required'));
          return;
        }

        // Validate URL format and convert upload URL to download URL
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
        const { textDescription } = request.body;

        if (!textDescription || typeof textDescription !== 'string' || textDescription.trim() === '') {
          reply.status(400).send(createErrorResponse('textDescription is required'));
          return;
        }

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);
        const countryCode = getCountryFromRequest(request);

        // Analyze text description using OpenAI
        const response = await openAIFoodAnalysisService.analyzeTextDescription(textDescription, locale, countryCode);

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
