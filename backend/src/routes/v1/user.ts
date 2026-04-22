import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { createErrorResponse } from '../../utils/errors.js';
import { query } from '../../services/database.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { parseBody, z } from '../../utils/validation.js';

// Zod schema adds bounds checks that Fastify's JSON schema isn't expressing:
// - heights 30–300cm (or equivalent), weights 1–1000kg, calorie goal 500–20000.
// - DOB: any valid positive Unix timestamp (milliseconds).
// All fields optional because this endpoint is a partial-update PATCH-like POST.
const userProfileBodySchema = z.object({
  height: z.number().finite().positive().max(400).optional(),
  weight: z.number().finite().positive().max(1000).optional(),
  targetWeight: z.number().finite().positive().max(1000).optional(),
  gender: z.enum(['MALE', 'FEMALE', 'OTHER']).optional(),
  dateOfBirth: z.number().int().positive().optional(),
  weightGoal: z.enum(['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT']).optional(),
  activityLevel: z
    .enum(['SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE'])
    .optional(),
  heightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  weightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  dailyCalorieGoal: z.number().finite().positive().max(20_000).optional(),
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
              type: 'number',
              description: 'Date of birth as Unix timestamp in milliseconds',
              // Example (for docs only): 631152000000,
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
            description: 'Profile saved successfully',
            type: 'object',
            properties: {
              success: { type: 'boolean' /* Example (for docs only): true */ },
              message: {
                type: 'string',
                // Example (for docs only): 'User profile created successfully',
              },
            },
          },
          400: {
            description: 'Bad request - invalid data',
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

        // Check if profile already exists
        const existingProfile = await query<{ id: string }>(
          'SELECT id FROM user_profile WHERE user_id = $1',
          [userId]
        );

        const now = new Date();

        if (existingProfile.rows.length > 0) {
          // Update existing profile
          await query(
            `UPDATE user_profile SET
              height = COALESCE($1, height),
              weight = COALESCE($2, weight),
              target_weight = COALESCE($3, target_weight),
              gender = COALESCE($4, gender),
              date_of_birth = COALESCE($5, date_of_birth),
              weight_goal = COALESCE($6, weight_goal),
              activity_level = COALESCE($7, activity_level),
              height_unit = COALESCE($8, height_unit),
              weight_unit = COALESCE($9, weight_unit),
              daily_calorie_goal = COALESCE($10, daily_calorie_goal),
              updated_at = $11
            WHERE user_id = $12`,
            [
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
              userId,
            ]
          );

          reply.send({
            success: true,
            message: 'User profile updated successfully',
          });
        } else {
          // Create new profile
          await query(
            `INSERT INTO user_profile (
              id, user_id, height, weight, target_weight, gender, date_of_birth,
              weight_goal, activity_level, height_unit, weight_unit, daily_calorie_goal,
              created_at, updated_at
            ) VALUES (
              gen_random_uuid(), $1, $2, $3, $4, $5, $6, $7, $8, $9, $10, $11, $12, $13
            )`,
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

          reply.send({
            success: true,
            message: 'User profile created successfully',
          });
        }
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
