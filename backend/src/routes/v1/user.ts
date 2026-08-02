import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { createErrorResponse } from '../../utils/errors.js';
import { query } from '../../services/database.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { parseBody, z } from '../../utils/validation.js';
import type { ApiResult } from '../../protos/calorify/http_api.js';
import { getApiResultSchema, getErrorResponseSchema } from '../../utils/schema-generator.js';

// Zod schema adds bounds checks that Fastify's JSON schema isn't expressing.
// - DOB: ISO 8601 string (same as user.UserProfile / sync).
// All fields optional because this endpoint is a partial-update PATCH-like POST.
const userProfileBodySchema = z.object({
  height: z.number().finite().positive().max(400).optional(),
  weight: z.number().finite().positive().max(1000).optional(),
  targetWeight: z.number().finite().positive().max(1000).optional(),
  gender: z.enum(['MALE', 'FEMALE', 'OTHER']).optional(),
  dateOfBirth: z
    .string()
    .datetime({ offset: true })
    .refine((value) => Date.parse(value) <= Date.now(), 'must not be in the future')
    .optional(),
  weightGoal: z.enum(['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT']).optional(),
  activityLevel: z
    .enum(['SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE'])
    .optional(),
  heightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  weightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  dailyCalorieGoal: z.number().finite().min(500).max(20_000).optional(),
});
type UserProfileBody = z.infer<typeof userProfileBodySchema>;

export async function userRoutes(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v1/user/profile
   * Create or update user profile
   */
  fastify.post<{ Body: UserProfileBody }>(
    '/profile',
    {
      preHandler: [authenticateUser],
      schema: {
        description: 'Create or update user profile. If a profile already exists for the authenticated user, it will be updated. Otherwise, a new profile will be created.',
        tags: ['User'],
        security: [{ bearerAuth: [] }],
        body: {
          type: 'object',
          description: 'User profile data. All fields are optional.',
          properties: {
            height: {
              type: 'number',
              description: 'User height',
              // Example (for docs only): 175.5,
            },
            weight: {
              type: 'number',
              description: 'Current weight',
              // Example (for docs only): 70.5,
            },
            targetWeight: {
              type: 'number',
              description: 'Target weight goal',
              // Example (for docs only): 65.0,
            },
            gender: {
              type: 'string',
              description: 'Gender',
              enum: ['MALE', 'FEMALE', 'OTHER'],
              // Example (for docs only): 'MALE',
            },
            dateOfBirth: {
              type: 'string',
              format: 'date-time',
              description: 'Date of birth as ISO 8601 (e.g. 1990-01-01T00:00:00.000Z)',
            },
            weightGoal: {
              type: 'string',
              description: 'Weight goal',
              enum: ['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT'],
              // Example (for docs only): 'LOSE_WEIGHT',
            },
            activityLevel: {
              type: 'string',
              description: 'Activity level',
              enum: ['SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE'],
              // Example (for docs only): 'MODERATELY_ACTIVE',
            },
            heightUnit: {
              type: 'string',
              description: 'Unit system for height',
              enum: ['METRIC', 'IMPERIAL'],
              // Example (for docs only): 'METRIC',
            },
            weightUnit: {
              type: 'string',
              description: 'Unit system for weight',
              enum: ['METRIC', 'IMPERIAL'],
              // Example (for docs only): 'METRIC',
            },
            dailyCalorieGoal: {
              type: 'number',
              description: 'Daily calorie goal',
              // Example (for docs only): 2000,
            },
          },
        },
        response: {
          200: {
            description: 'Profile saved successfully (calorify.ApiResult)',
            ...getApiResultSchema(),
          },
          400: {
            description: 'Bad request - invalid data',
            ...getErrorResponseSchema(),
          },
          401: {
            description: 'Unauthorized - invalid or missing authentication token',
            ...getErrorResponseSchema(),
          },
          500: {
            description: 'Internal server error',
            ...getErrorResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: UserProfileBody }>, reply: FastifyReply) => {
      try {
        const userId = getCurrentUserId(request);

        const parsed = parseBody(userProfileBodySchema, request.body, reply);
        if (!parsed) return;
        const {
          height,
          weight,
          targetWeight,
          gender,
          dateOfBirth,
          weightGoal,
          activityLevel,
          heightUnit,
          weightUnit,
          dailyCalorieGoal,
        } = parsed;

        const now = new Date();

        // A single upsert avoids a SELECT/INSERT race when startup and profile
        // editing save concurrently for a newly-created anonymous user.
        await query(
          `INSERT INTO user_profile (
            id, user_id, height, weight, target_weight, gender, date_of_birth,
            weight_goal, activity_level, height_unit, weight_unit, daily_calorie_goal,
            created_at, updated_at
          ) VALUES (
            gen_random_uuid(), $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13
          )
          ON CONFLICT (user_id) DO UPDATE SET
            height = COALESCE(EXCLUDED.height, user_profile.height),
            weight = COALESCE(EXCLUDED.weight, user_profile.weight),
            target_weight = COALESCE(EXCLUDED.target_weight, user_profile.target_weight),
            gender = COALESCE(EXCLUDED.gender, user_profile.gender),
            date_of_birth = COALESCE(EXCLUDED.date_of_birth, user_profile.date_of_birth),
            weight_goal = COALESCE(EXCLUDED.weight_goal, user_profile.weight_goal),
            activity_level = COALESCE(EXCLUDED.activity_level, user_profile.activity_level),
            height_unit = COALESCE(EXCLUDED.height_unit, user_profile.height_unit),
            weight_unit = COALESCE(EXCLUDED.weight_unit, user_profile.weight_unit),
            daily_calorie_goal = COALESCE(
              EXCLUDED.daily_calorie_goal,
              user_profile.daily_calorie_goal
            ),
            updated_at = EXCLUDED.updated_at`,
          [
            userId,
            height ?? null,
            weight ?? null,
            targetWeight ?? null,
            gender ?? null,
            dateOfBirth ? new Date(dateOfBirth) : null,
            weightGoal ?? null,
            activityLevel ?? null,
            heightUnit ?? null,
            weightUnit ?? null,
            dailyCalorieGoal ?? null,
            now,
            now,
          ]
        );

        const result: ApiResult = {
          ok: true,
          message: 'User profile saved successfully',
        };
        reply.send(result);
      } catch (error) {
        reply.status(500).send(
          createErrorResponse(
            error instanceof Error ? error.message : 'Failed to save user profile'
          )
        );
      }
    }
  );
}
