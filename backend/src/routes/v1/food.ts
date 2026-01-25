import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { foodAnalysisService } from '../../services/foodAnalysis.js';
import { openAIFoodAnalysisService } from '../../services/openAIFoodAnalysis.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { createErrorResponse } from '../../utils/errors.js';

interface AnalyzeDescriptionBody {
  description: string;
}

interface IdentifyImageBody {
  imageUrl: string;
}

export async function foodRoutes(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v1/food/analyze-image
   * Analyze a food image using AI
   */
  fastify.post(
    '/analyze-image',
    {
      preHandler: [authenticateUser],
      schema: {
        response: {
          200: {
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean' },
              calorieConfidence: { type: 'number' },
              tip: { type: 'string' },
              mealInfo: { type: 'object' },
            },
          },
          400: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      },
    },
    async (request: FastifyRequest, reply: FastifyReply) => {
      try {
        // User is already authenticated by middleware
        getCurrentUserId(request); // Verify authentication

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

        // Analyze image
        const result = await foodAnalysisService.analyzeImage(buffer, mimeType);

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
   * POST /api/v1/food/analyze-description
   * Analyze a food description using AI
   */
  fastify.post<{ Body: AnalyzeDescriptionBody }>(
    '/analyze-description',
    {
      preHandler: [authenticateUser],
      schema: {
        body: {
          type: 'object',
          required: ['description'],
          properties: {
            description: { type: 'string' },
          },
        },
        response: {
          200: {
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean' },
              calorieConfidence: { type: 'number' },
              tip: { type: 'string' },
              mealInfo: { type: 'object' },
            },
          },
          400: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      },
    },
    async (request: FastifyRequest<{ Body: AnalyzeDescriptionBody }>, reply: FastifyReply) => {
      try {
        // User is already authenticated by middleware
        getCurrentUserId(request); // Verify authentication

        const { description } = request.body;

        if (!description || typeof description !== 'string' || description.trim() === '') {
          reply.status(400).send(createErrorResponse('Description is required'));
          return;
        }

        // Analyze description
        const result = await foodAnalysisService.analyzeDescription(description);

        // Return protobuf object directly (Fastify handles JSON serialization)
        reply.send(result);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to analyze description'
          )
        );
      }
    }
  );

  /**
   * POST /api/v1/food/identify
   * Identify food from an image URL (Google Cloud Storage)
   * Uses OpenAI for food identification
   */
  fastify.post<{ Body: IdentifyImageBody }>(
    '/identify',
    {
      preHandler: [authenticateUser],
      schema: {
        body: {
          type: 'object',
          required: ['imageUrl'],
          properties: {
            imageUrl: { type: 'string' },
          },
        },
        response: {
          200: {
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean' },
              calorieConfidence: { type: 'number' },
              tip: { type: 'string' },
              mealInfo: { type: 'object' },
            },
          },
          400: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      },
    },
    async (request: FastifyRequest<{ Body: IdentifyImageBody }>, reply: FastifyReply) => {
      try {
        // User is already authenticated by middleware
        getCurrentUserId(request); // Verify authentication

        const { imageUrl } = request.body;

        if (!imageUrl || typeof imageUrl !== 'string' || imageUrl.trim() === '') {
          reply.status(400).send(createErrorResponse('imageUrl is required'));
          return;
        }

        // Validate URL format
        try {
          new URL(imageUrl);
        } catch {
          reply.status(400).send(createErrorResponse('Invalid imageUrl format'));
          return;
        }

        // Analyze image from URL using OpenAI
        const result = await openAIFoodAnalysisService.analyzeImageFromUrl(imageUrl);

        // Return protobuf object directly (Fastify handles JSON serialization)
        reply.send(result);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to identify food from image'
          )
        );
      }
    }
  );
}
