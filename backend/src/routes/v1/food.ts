import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { openAIFoodAnalysisService } from '../../services/openAIFoodAnalysis.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getLocaleFromRequest } from '../../utils/locale.js';
import config from '../../config.js';
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

export async function foodRoutes(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v1/food/analyze-image
   * Analyze a food image using AI
   */
  fastify.post(
    '/analyze-image',
    {
      // preHandler: [authenticateUser], // Temporarily disabled
      schema: {
        description: 'Analyze a food image using OpenAI. Upload an image file to get detailed nutritional information including calories, macros, health score, and clarifications.',
        tags: ['Food'],
        consumes: ['multipart/form-data'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Successful analysis with clarifications',
            ...getMealDetectionResponseSchema(),
          },
          ...getStandardErrorResponses(),
        },
      } as any,
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        // Authentication temporarily disabled
        // getCurrentUserId(request); // Verify authentication

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

        // Analyze image using OpenAI (default AI service)
        const result = await openAIFoodAnalysisService.analyzeImageFromBuffer(buffer, mimeType, locale);

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
      // preHandler: [authenticateUser], // Temporarily disabled
      schema: {
        description: 'Detect meal from image URL using OpenAI. Returns MealDetectionResponse with clarifications if confidence is LOW/MEDIUM.',
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
        // Authentication temporarily disabled

        const { imageUrl } = request.body;

        if (!imageUrl || typeof imageUrl !== 'string' || imageUrl.trim() === '') {
          reply.status(400).send(createErrorResponse('imageUrl is required'));
          return;
        }

        // Validate URL format and convert upload URL to download URL
        let finalImageUrl: string;
        try {
          const url = new URL(imageUrl);
          // Extract filename from upload URL and convert to download URL
          // Upload URL format: .../calorify-images/o/{filename}
          // Download URL format: .../calorify-images/o/{filename}
          const pathParts = url.pathname.split('/');
          const filename = pathParts[pathParts.length - 1];

          // Always convert to download URL
          finalImageUrl = `${config.ORACLE_BUCKET_DOWNLOAD_URL}${filename}`;
        } catch {
          reply.status(400).send(createErrorResponse('Invalid imageUrl format'));
          return;
        }

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);

        // Analyze image from URL using OpenAI
        const response = await openAIFoodAnalysisService.analyzeImageFromUrl(finalImageUrl, locale);

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
      // preHandler: [authenticateUser], // Temporarily disabled
      schema: {
        description: 'Detect meal from text description using OpenAI. Returns MealDetectionResponse with clarifications if confidence is LOW/MEDIUM.',
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
        // Authentication temporarily disabled

        const { textDescription } = request.body;

        if (!textDescription || typeof textDescription !== 'string' || textDescription.trim() === '') {
          reply.status(400).send(createErrorResponse('textDescription is required'));
          return;
        }

        // Extract locale from Accept-Language header
        const locale = getLocaleFromRequest(request);

        // Analyze text description using OpenAI
        const response = await openAIFoodAnalysisService.analyzeTextDescription(textDescription, locale);

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
