import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { createErrorResponse } from '../../utils/errors.js';
import { query } from '../../services/database.js';

interface UserProfileBody {
  height?: number;
  weight?: number;
  targetWeight?: number;
  gender?: string;
  dateOfBirth?: number; // Unix timestamp in milliseconds
  weightGoal?: string;
  activityLevel?: string;
  heightUnit?: string;
  weightUnit?: string;
  dailyCalorieGoal?: number;
}

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
        body: {
          type: 'object',
          properties: {
            height: { type: 'number' },
            weight: { type: 'number' },
            targetWeight: { type: 'number' },
            gender: { type: 'string' },
            dateOfBirth: { type: 'number' },
            weightGoal: { type: 'string' },
            activityLevel: { type: 'string' },
            heightUnit: { type: 'string' },
            weightUnit: { type: 'string' },
            dailyCalorieGoal: { type: 'number' },
          },
        },
        response: {
          200: {
            type: 'object',
            properties: {
              success: { type: 'boolean' },
              message: { type: 'string' },
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
    async (request: FastifyRequest<{ Body: UserProfileBody }>, reply: FastifyReply) => {
      try {
        // User is already authenticated by middleware
        const userId = getCurrentUserId(request);

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
        } = request.body;

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
