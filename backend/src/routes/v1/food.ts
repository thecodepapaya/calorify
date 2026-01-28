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
        description: 'Analyze a food image using Google Gemini AI. Upload an image file to get detailed nutritional information including calories, macros, and health score.',
        tags: ['Food'],
        consumes: ['multipart/form-data'],
        security: [{ bearerAuth: [] }],
        response: {
          200: {
            description: 'Successful analysis',
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean', description: 'Whether a meal was successfully identified' },
              calorieConfidence: { type: 'number', description: 'Confidence level (0-100) for calorie estimation' },
              tip: { type: 'string', description: 'Helpful tip about the meal' },
              mealInfo: {
                type: 'object',
                description: 'Detailed meal information',
                properties: {
                  mealName: { type: 'string' },
                  mealQuantity: { type: 'string' },
                  mealType: { type: 'string', enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'] },
                  calories: { type: 'number' },
                  protein: { type: 'number', description: 'Protein in grams' },
                  carbs: { type: 'number', description: 'Carbohydrates in grams' },
                  fat: { type: 'number', description: 'Fat in grams' },
                  fiber: { type: 'number', description: 'Fiber in grams' },
                  timestamp: { type: 'number', description: 'Unix timestamp in milliseconds' },
                  healthScore: { type: 'string', enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'] },
                  healthScoreReason: { type: 'string' },
                },
              },
            },
          },
          400: {
            description: 'Bad request - invalid file or missing file',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            description: 'Unauthorized - invalid or missing authentication token',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            description: 'Internal server error',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      } as any,
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
        description: 'Analyze a food description using Google Gemini AI. Provide a text description of the meal to get nutritional information.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        body: {
          type: 'object',
          required: ['description'],
          properties: {
            description: {
              type: 'string',
              description: 'Text description of the food/meal',
              // Example (for docs only):
              // 'Grilled chicken breast with brown rice and steamed broccoli'
            },
          },
        },
        response: {
          200: {
            description: 'Successful analysis',
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean', description: 'Whether a meal was successfully identified' },
              calorieConfidence: { type: 'number', description: 'Confidence level (0-100) for calorie estimation' },
              tip: { type: 'string', description: 'Helpful tip about the meal' },
              mealInfo: {
                type: 'object',
                description: 'Detailed meal information',
                properties: {
                  mealName: { type: 'string' },
                  mealQuantity: { type: 'string' },
                  mealType: { type: 'string', enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'] },
                  calories: { type: 'number' },
                  protein: { type: 'number', description: 'Protein in grams' },
                  carbs: { type: 'number', description: 'Carbohydrates in grams' },
                  fat: { type: 'number', description: 'Fat in grams' },
                  fiber: { type: 'number', description: 'Fiber in grams' },
                  timestamp: { type: 'number', description: 'Unix timestamp in milliseconds' },
                  healthScore: { type: 'string', enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'] },
                  healthScoreReason: { type: 'string' },
                },
              },
            },
          },
          400: {
            description: 'Bad request - missing or invalid description',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            description: 'Unauthorized - invalid or missing authentication token',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            description: 'Internal server error',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      } as any,
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
        description: 'Identify food from an image URL using OpenAI GPT-4o-mini Vision API. The image should be uploaded to Google Cloud Storage and the URL provided.',
        tags: ['Food'],
        security: [{ bearerAuth: [] }],
        body: {
          type: 'object',
          required: ['imageUrl'],
          properties: {
            imageUrl: {
              type: 'string',
              format: 'uri',
              description: 'URL of the image stored in Google Cloud Storage',
              // Example (for docs only):
              // 'https://storage.googleapis.com/bucket-name/path/to/image.jpg'
            },
          },
        },
        response: {
          200: {
            description: 'Successful identification',
            type: 'object',
            properties: {
              mealIdentified: { type: 'boolean', description: 'Whether a meal was successfully identified' },
              calorieConfidence: { type: 'number', description: 'Confidence level (0-100) for calorie estimation' },
              tip: { type: 'string', description: 'Helpful tip about the meal' },
              mealInfo: {
                type: 'object',
                description: 'Detailed meal information',
                properties: {
                  mealName: { type: 'string' },
                  mealQuantity: { type: 'string' },
                  mealType: { type: 'string', enum: ['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK', 'UNKNOWN'] },
                  calories: { type: 'number' },
                  protein: { type: 'number', description: 'Protein in grams' },
                  carbs: { type: 'number', description: 'Carbohydrates in grams' },
                  fat: { type: 'number', description: 'Fat in grams' },
                  fiber: { type: 'number', description: 'Fiber in grams' },
                  timestamp: { type: 'number', description: 'Unix timestamp in milliseconds' },
                  healthScore: { type: 'string', enum: ['HEALTHY', 'NEUTRAL', 'UNHEALTHY'] },
                  healthScoreReason: { type: 'string' },
                },
              },
            },
          },
          400: {
            description: 'Bad request - invalid or missing imageUrl',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          401: {
            description: 'Unauthorized - invalid or missing authentication token',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
          500: {
            description: 'Internal server error',
            type: 'object',
            properties: {
              detail: { type: 'string' },
            },
          },
        },
      } as any,
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
