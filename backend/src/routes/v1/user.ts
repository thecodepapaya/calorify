import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { createErrorResponse } from '../../utils/errors.js';
import { query } from '../../services/database.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import { parseBody, z } from '../../utils/validation.js';
import type { ApiResult } from '../../protos/calorify/http_api.js';
import { getApiResultSchema, getErrorResponseSchema } from '../../utils/schema-generator.js';
import { getTimeZoneFromRequest } from '../../utils/locale.js';
import { calendarDateInTimeZone } from '../../utils/timezone.js';
import { safeErrorMetadata } from '../../utils/safeError.js';

// Zod schema adds bounds checks that Fastify's JSON schema isn't expressing.
// - DOB: ISO calendar date (legacy offset-bearing timestamps remain accepted).
// All fields are optional in both write modes: POST patches the stored profile,
// while PUT treats omitted fields as explicitly cleared in a full snapshot.
function normalizeDateOfBirth(value: string): string | null {
  const match = /^(\d{4}-\d{2}-\d{2})(?:$|[T ])/.exec(value.trim());
  if (!match) return null;

  const calendarDate = match[1]!;
  const parsedDate = new Date(`${calendarDate}T00:00:00.000Z`);
  if (
    Number.isNaN(parsedDate.getTime()) ||
    parsedDate.toISOString().slice(0, 10) !== calendarDate
  ) {
    return null;
  }

  if (value.trim() !== calendarDate && !Number.isFinite(Date.parse(value))) {
    return null;
  }
  return calendarDate;
}

const userProfileBodySchema = z.object({
  height: z.number().finite().positive().max(400).optional(),
  weight: z.number().finite().positive().max(1000).optional(),
  targetWeight: z.number().finite().positive().max(1000).optional(),
  gender: z.enum(['MALE', 'FEMALE', 'OTHER']).optional(),
  dateOfBirth: z.string().refine(
    (value) => normalizeDateOfBirth(value) != null,
    'must be an ISO calendar date'
  ).optional(),
  weightGoal: z.enum(['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT']).optional(),
  activityLevel: z
    .enum(['SEDENTARY', 'LIGHTLY_ACTIVE', 'MODERATELY_ACTIVE', 'VERY_ACTIVE', 'EXTREMELY_ACTIVE'])
    .optional(),
  heightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  weightUnit: z.enum(['METRIC', 'IMPERIAL']).optional(),
  dailyCalorieGoal: z.number().finite().min(500).max(20_000).optional(),
});
type UserProfileBody = z.infer<typeof userProfileBodySchema>;

const patchProfileAssignments = `
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
  updated_at = EXCLUDED.updated_at`;

const replaceProfileAssignments = `
  height = EXCLUDED.height,
  weight = EXCLUDED.weight,
  target_weight = EXCLUDED.target_weight,
  gender = EXCLUDED.gender,
  date_of_birth = EXCLUDED.date_of_birth,
  weight_goal = EXCLUDED.weight_goal,
  activity_level = EXCLUDED.activity_level,
  height_unit = EXCLUDED.height_unit,
  weight_unit = EXCLUDED.weight_unit,
  daily_calorie_goal = EXCLUDED.daily_calorie_goal,
  updated_at = EXCLUDED.updated_at`;

export async function userRoutes(fastify: FastifyInstance): Promise<void> {
  /**
   * POST /api/v1/user/profile patches supplied fields for legacy clients.
   * PUT /api/v1/user/profile replaces the complete profile snapshot.
   */
  fastify.route<{ Body: UserProfileBody }>({
    method: ['POST', 'PUT'],
    url: '/profile',
    preHandler: [authenticateUser],
    schema: {
      description:
        'Create or update a user profile. POST applies a partial update; PUT replaces the full snapshot and clears omitted fields.',
      tags: ['User'],
      security: [{ bearerAuth: [] }],
      body: {
        type: 'object',
        description: 'User profile data. All fields are optional.',
        properties: {
          height: {
            type: 'number',
            description: 'User height',
          },
          weight: {
            type: 'number',
            description: 'Current weight',
          },
          targetWeight: {
            type: 'number',
            description: 'Target weight goal',
          },
          gender: {
            type: 'string',
            description: 'Gender',
            enum: ['MALE', 'FEMALE', 'OTHER'],
          },
          dateOfBirth: {
            type: 'string',
            description: 'Date of birth as an ISO calendar date (e.g. 1990-01-01)',
          },
          weightGoal: {
            type: 'string',
            description: 'Weight goal',
            enum: ['LOSE_WEIGHT', 'MAINTAIN_WEIGHT', 'GAIN_WEIGHT'],
          },
          activityLevel: {
            type: 'string',
            description: 'Activity level',
            enum: [
              'SEDENTARY',
              'LIGHTLY_ACTIVE',
              'MODERATELY_ACTIVE',
              'VERY_ACTIVE',
              'EXTREMELY_ACTIVE',
            ],
          },
          heightUnit: {
            type: 'string',
            description: 'Unit system for height',
            enum: ['METRIC', 'IMPERIAL'],
          },
          weightUnit: {
            type: 'string',
            description: 'Unit system for weight',
            enum: ['METRIC', 'IMPERIAL'],
          },
          dailyCalorieGoal: {
            type: 'number',
            description: 'Daily calorie goal',
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
    handler: async (
      request: FastifyRequest<{ Body: UserProfileBody }>,
      reply: FastifyReply
    ) => {
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

        const normalizedDateOfBirth = dateOfBirth
          ? normalizeDateOfBirth(dateOfBirth) ?? undefined
          : undefined;
        const today = calendarDateInTimeZone(
          new Date(),
          getTimeZoneFromRequest(request) ?? 'UTC'
        );
        if (normalizedDateOfBirth && normalizedDateOfBirth > today) {
          reply.status(400).send(createErrorResponse('dateOfBirth must not be in the future'));
          return;
        }

        const now = new Date();
        const updateAssignments =
          request.method === 'PUT'
            ? replaceProfileAssignments
            : patchProfileAssignments;

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
            ${updateAssignments}`,
          [
            userId,
            height ?? null,
            weight ?? null,
            targetWeight ?? null,
            gender ?? null,
            normalizedDateOfBirth ?? null,
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
        request.log.error(
          {
            operation: 'save_user_profile',
            ...safeErrorMetadata(error),
          },
          'Unexpected V1 user request failure'
        );
        reply
          .status(500)
          .send(createErrorResponse('Failed to save user profile'));
      }
    },
  });
}
