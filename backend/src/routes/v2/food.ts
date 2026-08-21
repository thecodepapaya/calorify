import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import {
  confirmMealAnalysisLogged,
  isMealAnalysisSessionOwnedByUser,
  recordMealAnalysisFeedback,
  type MealLogConfirmationRecord,
} from '../../services/mealAnalysisStore.js';
import {
  analyzeImageMeal,
  analyzeTextMeal,
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  FEEDBACK_ISSUES,
  MEAL_TYPES,
  reanalyzeMeal,
  resumeMealAnalysis,
  type PipelineEvent,
} from '../../services/nutritionEngineV2.js';
import { createErrorResponse } from '../../utils/errors.js';
import {
  getCountryFromRequest,
  getLocaleFromRequest,
  getTimeZoneFromRequest,
} from '../../utils/locale.js';
import { nonEmptyString, parseBody, urlString, z } from '../../utils/validation.js';
import {
  MealAnalysisFeedbackSignal,
  type ApiResult,
  type MealClarificationAnswer,
  type MealAnalysisImageRequest,
  type MealAnalysisReanalyzeRequest,
  type MealAnalysisResumeRequest,
  type MealAnalysisTextRequest,
} from '../../protos/calorify/http_api.js';
import {
  getApiResultSchema,
  getErrorResponseSchema,
} from '../../utils/schema-generator.js';
import { resolveOwnedImageObject } from '../../services/oracleObjectStorage.js';

const MEAL_TYPE_VALUES = [...MEAL_TYPES, 'UNKNOWN'] as const;

// -----------------------------------------------------------------------------
// Zod: bounded checks on top of proto-shaped bodies (protos/calorify/*.proto).
// -----------------------------------------------------------------------------

const analyzeTextBodySchema: z.ZodType<MealAnalysisTextRequest> = z.object({
  analysisId: z.string().uuid().optional(),
  textDescription: nonEmptyString.max(2000, 'must be at most 2000 characters'),
});
type AnalyzeTextBody = MealAnalysisTextRequest;

const analyzeImageBodySchema: z.ZodType<MealAnalysisImageRequest> = z.object({
  analysisId: z.string().uuid().optional(),
  imageUrl: urlString,
});
type AnalyzeImageBody = MealAnalysisImageRequest;

/** Accepts proto3 camelCase or snake_case nested keys. */
const clarifyAnswerItemSchema = z.preprocess((raw) => {
  if (raw && typeof raw === 'object' && raw !== null && !Array.isArray(raw)) {
    const o = raw as Record<string, unknown>;
    const clarificationId = o.clarificationId ?? o.clarification_id;
    const selectedOptionId = o.selectedOptionId ?? o.selected_option_id;
    if (typeof clarificationId === 'string' && typeof selectedOptionId === 'string') {
      return { clarificationId, selectedOptionId };
    }
  }
  return raw;
}, z.object({
  clarificationId: nonEmptyString,
  selectedOptionId: nonEmptyString,
}));

const clarifyBodySchema = z.object({
  analysisId: nonEmptyString.max(128),
  answers: z
    .array(clarifyAnswerItemSchema)
    .min(1, 'must contain at least one answer')
    .max(20, 'must contain at most 20 answers'),
});
type ClarifyBody = z.infer<typeof clarifyBodySchema>;

const resumeBodySchema: z.ZodType<MealAnalysisResumeRequest> = z.object({
  analysisId: nonEmptyString.max(128),
});
type ResumeBody = MealAnalysisResumeRequest;

const feedbackBodySchema = z.object({
  analysisId: nonEmptyString.max(128),
  signal: z.enum([MealAnalysisFeedbackSignal.UP, MealAnalysisFeedbackSignal.DOWN]),
});
type FeedbackBody = z.infer<typeof feedbackBodySchema>;

const mealTypeBodySchema = z.object({
  analysisId: nonEmptyString.max(128),
  mealType: z.enum(MEAL_TYPES),
});
type MealTypeBody = z.infer<typeof mealTypeBodySchema>;

const reanalyzeBodySchema = z.object({
  analysisId: nonEmptyString.max(128),
  newAnalysisId: z.string().uuid().optional(),
  issues: z
    .array(z.enum(FEEDBACK_ISSUES))
    .min(1, 'must contain at least one issue')
    .max(FEEDBACK_ISSUES.length),
  otherText: z.string().trim().max(2000).optional(),
});
type ReanalyzeBody = Omit<MealAnalysisReanalyzeRequest, 'issues'> & {
  issues: (typeof FEEDBACK_ISSUES)[number][];
};

const confirmLogMealMacroSchema = z.object({
  calories: z.number().finite().nonnegative().max(100_000),
  protein: z.number().finite().nonnegative().max(10_000),
  carbs: z.number().finite().nonnegative().max(10_000),
  fat: z.number().finite().nonnegative().max(10_000),
  fiber: z.number().finite().nonnegative().max(10_000),
});

const confirmLogMealSchema = z.object({
  name: nonEmptyString.max(500),
  quantity: nonEmptyString.max(200),
  type: z.enum(MEAL_TYPE_VALUES),
  macros: confirmLogMealMacroSchema,
});

const confirmLogBodySchema = z.object({
  analysisId: nonEmptyString.max(128),
  loggedAt: z.string().datetime({ offset: true }).refine(
    (value) => Date.parse(value) <= Date.now() + 5 * 60 * 1000,
    'must not be more than 5 minutes in the future'
  ),
  meal: confirmLogMealSchema,
});
type ConfirmLogBody = z.infer<typeof confirmLogBodySchema>;

function confirmLogBodyToStoreRecord(
  body: ConfirmLogBody,
  timeZone?: string
): MealLogConfirmationRecord {
  const { meal: m } = body;
  return {
    analysisId: body.analysisId,
    loggedAt: new Date(body.loggedAt).toISOString(),
    mealName: m.name,
    calories: Math.round(m.macros.calories),
    protein: Math.round(m.macros.protein),
    carbs: Math.round(m.macros.carbs),
    fat: Math.round(m.macros.fat),
    fiber: Math.round(m.macros.fiber),
    mealType: m.type,
    quantity: m.quantity,
    timeZone,
  };
}

async function requireOwnedAnalysis(
  analysisId: string,
  userId: string,
  reply: FastifyReply
): Promise<boolean> {
  if (await isMealAnalysisSessionOwnedByUser(analysisId, userId)) return true;
  reply.status(404).send(createErrorResponse('Analysis session not found'));
  return false;
}

// Preserve the public Fastify route typing (used by <{Body: ...}> generics below).
export type {
  AnalyzeTextBody,
  AnalyzeImageBody,
  ClarifyBody,
  ResumeBody,
  FeedbackBody,
  MealTypeBody,
  ReanalyzeBody,
  ConfirmLogBody,
};

type StreamFormat = 'ndjson' | 'sse';
type StreamResponseMeta = {
  format: StreamFormat;
  eventCount: number;
  firstSteps: string[];
  lastStep?: string;
  hasErrorEvent: boolean;
};

function getStreamFormat(acceptHeader?: string): StreamFormat {
  if (!acceptHeader) return 'ndjson';
  if (acceptHeader.includes('text/event-stream')) return 'sse';
  return 'ndjson';
}

function writeEvent(reply: FastifyReply, format: StreamFormat, event: PipelineEvent): void {
  if (format === 'sse') {
    reply.raw.write(`event: ${event.step}\n`);
    reply.raw.write(`data: ${JSON.stringify(event.data)}\n\n`);
    return;
  }
  reply.raw.write(`${JSON.stringify(event)}\n`);
}

async function streamEvents(
  reply: FastifyReply,
  acceptHeader: string | undefined,
  stream: AsyncGenerator<PipelineEvent>
): Promise<void> {
  const format = getStreamFormat(acceptHeader);
  const streamMeta: StreamResponseMeta = {
    format,
    eventCount: 0,
    firstSteps: [],
    hasErrorEvent: false,
  };
  (reply.request as any).streamResponseMeta = streamMeta;

  reply.hijack();
  reply.raw.writeHead(200, {
    'Content-Type': format === 'sse' ? 'text/event-stream' : 'application/x-ndjson',
    'Transfer-Encoding': 'chunked',
    'Cache-Control': 'no-cache',
    Connection: 'keep-alive',
    'X-Accel-Buffering': 'no',
  });

  try {
    for await (const event of stream) {
      streamMeta.eventCount += 1;
      streamMeta.lastStep = event.step;
      if (streamMeta.firstSteps.length < 5) {
        streamMeta.firstSteps.push(event.step);
      }
      if (event.step === 'ERROR') {
        streamMeta.hasErrorEvent = true;
      }

      writeEvent(reply, format, event);
      if (event.step === 'ERROR') {
        break;
      }
    }
  } catch {
    streamMeta.hasErrorEvent = true;
    writeEvent(reply, format, {
      step: 'ERROR',
      data: {
        analysisId: 'unknown',
        message: 'Pipeline failed',
        retryable: false,
      },
    });
  } finally {
    reply.raw.end();
  }
}

export async function foodRoutesV2(fastify: FastifyInstance): Promise<void> {
  // Every V2 flow creates or mutates user-attributed analysis state. Requiring
  // Firebase auth here also makes rate limiting user-aware and prevents one
  // caller from continuing or confirming another caller's analysis.
  fastify.addHook('preHandler', authenticateUser);

  fastify.post<{ Body: AnalyzeTextBody }>(
    '/analyze-text',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      schema: {
        description:
          'Analyze a meal from text description. Streams V2 pipeline events as NDJSON or SSE.',
        tags: ['Food', 'V2'],
        // Body validation is centralized in analyzeTextBodySchema below.
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            ...getErrorResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeTextBody }>, reply: FastifyReply) => {
      const parsed = parseBody(analyzeTextBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = getCurrentUserId(request);
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeTextMeal(parsed.textDescription, {
          analysisId: parsed.analysisId,
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          timeZone: getTimeZoneFromRequest(request),
          userId,
          logger: request.log,
        })
      );
    }
  );

  fastify.post<{ Body: AnalyzeImageBody }>(
    '/analyze-image',
    {
      config: {
        rateLimit: {
          max: 20,
          timeWindow: '1 minute',
        },
      },
      schema: {
        description:
          'Analyze a meal from image URL. Streams V2 pipeline events as NDJSON or SSE.',
        tags: ['Food', 'V2'],
        // Body validation is centralized in analyzeImageBodySchema below.
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            ...getErrorResponseSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeImageBody }>, reply: FastifyReply) => {
      const parsed = parseBody(analyzeImageBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = getCurrentUserId(request);
      let imageObject: ReturnType<typeof resolveOwnedImageObject>;
      try {
        imageObject = resolveOwnedImageObject(parsed.imageUrl, userId);
      } catch {
        reply.status(400).send(createErrorResponse('Invalid or unowned imageUrl'));
        return;
      }

      await streamEvents(
        reply,
        request.headers.accept,
        analyzeImageMeal(imageObject.downloadUrl, {
          analysisId: parsed.analysisId,
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          timeZone: getTimeZoneFromRequest(request),
          userId,
          imageObjectKey: imageObject.objectKey,
          logger: request.log,
        })
      );
    }
  );

  fastify.post<{ Body: ClarifyBody }>(
    '/clarify',
    {
      schema: {
        description: 'Resume a V2 meal analysis after the user answers clarification prompts.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId', 'answers'],
          properties: {
            analysisId: { type: 'string' },
            // Zod normalizes camelCase vs legacy snake_case; keep AJV permissive.
            answers: {
              type: 'array',
              minItems: 1,
              items: { type: 'object', additionalProperties: true },
            },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ClarifyBody }>, reply: FastifyReply) => {
      const parsed = parseBody(clarifyBodySchema, request.body, reply);
      if (!parsed) return;
      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysis(
          parsed.analysisId,
          parsed.answers as MealClarificationAnswer[],
          {
            userId,
            logger: request.log,
          }
        )
      );
    }
  );

  fastify.post<{ Body: ResumeBody }>(
    '/resume',
    {
      schema: {
        description: 'Resume a V2 meal analysis from its last durable stage.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId'],
          properties: {
            analysisId: { type: 'string' },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ResumeBody }>, reply: FastifyReply) => {
      const parsed = parseBody(resumeBodySchema, request.body, reply);
      if (!parsed) return;
      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;

      await streamEvents(
        reply,
        request.headers.accept,
        resumeMealAnalysis(parsed.analysisId, {
          userId,
          logger: request.log,
        })
      );
    }
  );

  fastify.post<{ Body: FeedbackBody }>(
    '/feedback',
    {
      schema: {
        description: 'Persist positive feedback for a completed V2 meal analysis.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId', 'signal'],
          properties: {
            analysisId: { type: 'string' },
            signal: {
              type: 'string',
              enum: [MealAnalysisFeedbackSignal.UP, MealAnalysisFeedbackSignal.DOWN],
            },
          },
        },
        response: {
          200: {
            description: 'Ack (calorify.ApiResult)',
            ...getApiResultSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: FeedbackBody }>, reply: FastifyReply) => {
      const parsed = parseBody(feedbackBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;
      await recordMealAnalysisFeedback({
        analysisId: parsed.analysisId,
        userId,
        signal: parsed.signal,
        payload: request.body,
      });
      const ok: ApiResult = { ok: true, message: '' };
      reply.send(ok);
    }
  );

  fastify.post<{ Body: MealTypeBody }>(
    '/meal-type',
    {
      schema: {
        description: 'Resume a V2 meal analysis after the user explicitly selects meal type.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId', 'mealType'],
          properties: {
            analysisId: { type: 'string' },
            mealType: {
              type: 'string',
              enum: [...MEAL_TYPES],
            },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: MealTypeBody }>, reply: FastifyReply) => {
      const parsed = parseBody(mealTypeBodySchema, request.body, reply);
      if (!parsed) return;
      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysisWithMealType(parsed.analysisId, parsed.mealType, {
          userId,
          logger: request.log,
        })
      );
    }
  );

  fastify.post<{ Body: ReanalyzeBody }>(
    '/reanalyze',
    {
      schema: {
        description: 'Reanalyze a completed V2 meal analysis using structured negative feedback.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId', 'issues'],
          properties: {
            analysisId: { type: 'string' },
            newAnalysisId: { type: 'string', format: 'uuid' },
            issues: {
              type: 'array',
              items: {
                type: 'string',
                enum: [...FEEDBACK_ISSUES],
              },
            },
            otherText: { type: 'string' },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ReanalyzeBody }>, reply: FastifyReply) => {
      const parsed = parseBody(reanalyzeBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;
      await recordMealAnalysisFeedback({
        analysisId: parsed.analysisId,
        userId,
        signal: MealAnalysisFeedbackSignal.DOWN,
        issues: parsed.issues,
        otherText: parsed.otherText,
        payload: request.body,
      });

      await streamEvents(
        reply,
        request.headers.accept,
        reanalyzeMeal(parsed.analysisId, parsed.issues, parsed.otherText, userId, {
          analysisId: parsed.newAnalysisId,
          logger: request.log,
        })
      );
    }
  );

  fastify.post<{ Body: ConfirmLogBody }>(
    '/confirm-log',
    {
      schema: {
        description:
          'Confirm that the user saved a V2 meal analysis result to their log. ' +
          'Stamps logged_at and the final meal data on the analysis session row.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId', 'loggedAt', 'meal'],
          properties: {
            analysisId: { type: 'string' },
            loggedAt: { type: 'string' },
            meal: {
              type: 'object',
              required: ['name', 'quantity', 'type', 'macros'],
              properties: {
                name: { type: 'string' },
                quantity: { type: 'string' },
                type: { type: 'string', enum: [...MEAL_TYPE_VALUES] },
                macros: {
                  type: 'object',
                  required: ['calories', 'protein', 'carbs', 'fat', 'fiber'],
                  properties: {
                    calories: { type: 'number' },
                    protein: { type: 'number' },
                    carbs: { type: 'number' },
                    fat: { type: 'number' },
                    fiber: { type: 'number' },
                  },
                },
              },
              additionalProperties: true,
            },
          },
        },
        response: {
          200: {
            description: 'Ack (calorify.ApiResult)',
            ...getApiResultSchema(),
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ConfirmLogBody }>, reply: FastifyReply) => {
      const parsed = parseBody(confirmLogBodySchema, request.body, reply);
      if (!parsed) return;
      const userId = getCurrentUserId(request);
      if (!(await requireOwnedAnalysis(parsed.analysisId, userId, reply))) return;

      await confirmMealAnalysisLogged(
        confirmLogBodyToStoreRecord(parsed, getTimeZoneFromRequest(request))
      );
      const ok: ApiResult = { ok: true, message: '' };
      reply.send(ok);
    }
  );
}
