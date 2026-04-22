import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import config from '../../config.js';
import { getOptionalUserId } from '../../middleware/auth.js';
import {
  confirmMealAnalysisLogged,
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
  type PipelineEvent,
} from '../../services/nutritionEngineV2.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getCountryFromRequest, getLocaleFromRequest } from '../../utils/locale.js';
import { nonEmptyString, parseBody, urlString, z } from '../../utils/validation.js';

// -----------------------------
// Zod schemas for request bodies
// -----------------------------
// These provide runtime validation with stricter constraints than the Fastify
// JSON-schema definitions (trimmed non-empty strings, URL format, numeric
// bounds, whitelisted enums) and give the handlers typed input.

const analyzeTextBodySchema = z.object({
  textDescription: nonEmptyString.max(2000, 'must be at most 2000 characters'),
});
type AnalyzeTextBody = z.infer<typeof analyzeTextBodySchema>;

const analyzeImageBodySchema = z.object({
  imageUrl: urlString,
});
type AnalyzeImageBody = z.infer<typeof analyzeImageBodySchema>;

const clarifyBodySchema = z.object({
  analysisId: nonEmptyString,
  answers: z
    .array(
      z.object({
        ingredient_name: nonEmptyString,
        selected_option_index: z.number().int().nonnegative(),
      })
    )
    .min(1, 'must contain at least one answer'),
});
type ClarifyBody = z.infer<typeof clarifyBodySchema>;

const feedbackBodySchema = z.object({
  analysisId: nonEmptyString,
  signal: z.literal('up'),
});
type FeedbackBody = z.infer<typeof feedbackBodySchema>;

const mealTypeBodySchema = z.object({
  analysisId: nonEmptyString,
  mealType: z.enum(MEAL_TYPES),
});
type MealTypeBody = z.infer<typeof mealTypeBodySchema>;

const reanalyzeBodySchema = z.object({
  analysisId: nonEmptyString,
  issues: z.array(z.enum(FEEDBACK_ISSUES)).min(1, 'must contain at least one issue'),
  otherText: z.string().trim().max(2000).optional(),
});
type ReanalyzeBody = z.infer<typeof reanalyzeBodySchema>;

const confirmLogBodySchema = z.object({
  analysisId: nonEmptyString,
  loggedAt: nonEmptyString,
  mealName: nonEmptyString.max(500),
  calories: z.number().finite().nonnegative().max(100_000),
  protein: z.number().finite().nonnegative().max(10_000),
  carbs: z.number().finite().nonnegative().max(10_000),
  fat: z.number().finite().nonnegative().max(10_000),
  fiber: z.number().finite().nonnegative().max(10_000),
  mealType: nonEmptyString,
  quantity: nonEmptyString.max(200),
});
type ConfirmLogBody = z.infer<typeof confirmLogBodySchema>;
// Ensure the confirm-log body keeps satisfying the store record shape at compile time.
type _ConfirmLogMatchesStoreRecord = ConfirmLogBody extends MealLogConfirmationRecord ? true : never;
const _confirmLogCheck: _ConfirmLogMatchesStoreRecord = true;
void _confirmLogCheck;

// Preserve the public Fastify route typing (used by <{Body: ...}> generics below).
export type {
  AnalyzeTextBody,
  AnalyzeImageBody,
  ClarifyBody,
  FeedbackBody,
  MealTypeBody,
  ReanalyzeBody,
  ConfirmLogBody,
};

type StreamFormat = 'ndjson' | 'sse';

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

function toDownloadUrl(imageUrl: string): string {
  const url = new URL(imageUrl);
  const pathParts = url.pathname.split('/');
  const oIndex = pathParts.indexOf('o');
  const objectKey =
    oIndex >= 0
      ? pathParts
          .slice(oIndex + 1)
          .map((segment) => encodeURIComponent(decodeURIComponent(segment)))
          .join('/')
      : encodeURIComponent(decodeURIComponent(pathParts[pathParts.length - 1] ?? ''));

  const baseUrl = config.ORACLE_BUCKET_DOWNLOAD_URL.endsWith('/')
    ? config.ORACLE_BUCKET_DOWNLOAD_URL
    : `${config.ORACLE_BUCKET_DOWNLOAD_URL}/`;
  return `${baseUrl}${objectKey}`;
}

async function streamEvents(
  reply: FastifyReply,
  acceptHeader: string | undefined,
  stream: AsyncGenerator<PipelineEvent>
): Promise<void> {
  const format = getStreamFormat(acceptHeader);

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
      writeEvent(reply, format, event);
      if (event.step === 'error') {
        break;
      }
    }
  } catch (error) {
    writeEvent(reply, format, {
      step: 'error',
      data: {
        analysis_id: 'unknown',
        message: error instanceof Error ? error.message : 'Pipeline failed',
      },
    });
  } finally {
    reply.raw.end();
  }
}

export async function foodRoutesV2(fastify: FastifyInstance): Promise<void> {
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
        body: {
          type: 'object',
          required: ['textDescription'],
          properties: {
            textDescription: { type: 'string', description: 'Meal description (e.g. "2 roti with dal")' },
          },
        },
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeTextBody }>, reply: FastifyReply) => {
      const parsed = parseBody(analyzeTextBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = await getOptionalUserId(request);
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeTextMeal(parsed.textDescription, {
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          userId,
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
        body: {
          type: 'object',
          required: ['imageUrl'],
          properties: {
            imageUrl: { type: 'string', description: 'Uploaded meal image URL' },
          },
        },
        response: {
          200: {
            description: 'Stream of events (application/x-ndjson or text/event-stream)',
            type: 'string',
          },
          400: {
            description: 'Bad request',
            type: 'object',
            properties: { detail: { type: 'string' } },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: AnalyzeImageBody }>, reply: FastifyReply) => {
      const parsed = parseBody(analyzeImageBodySchema, request.body, reply);
      if (!parsed) return;

      let finalImageUrl: string;
      try {
        finalImageUrl = toDownloadUrl(parsed.imageUrl);
      } catch {
        reply.status(400).send(createErrorResponse('Invalid imageUrl format'));
        return;
      }

      const userId = await getOptionalUserId(request);
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeImageMeal(finalImageUrl, {
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          userId,
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
            answers: {
              type: 'array',
              items: {
                type: 'object',
                required: ['ingredient_name', 'selected_option_index'],
                properties: {
                  ingredient_name: { type: 'string' },
                  selected_option_index: { type: 'number' },
                },
              },
            },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ClarifyBody }>, reply: FastifyReply) => {
      const parsed = parseBody(clarifyBodySchema, request.body, reply);
      if (!parsed) return;

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysis(parsed.analysisId, parsed.answers)
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
            signal: { type: 'string', enum: ['up'] },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: FeedbackBody }>, reply: FastifyReply) => {
      const parsed = parseBody(feedbackBodySchema, request.body, reply);
      if (!parsed) return;

      const userId = await getOptionalUserId(request);
      await recordMealAnalysisFeedback({
        analysisId: parsed.analysisId,
        userId,
        signal: 'up',
        payload: request.body,
      });
      reply.send({ ok: true });
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

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysisWithMealType(parsed.analysisId, parsed.mealType)
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

      const userId = await getOptionalUserId(request);
      await recordMealAnalysisFeedback({
        analysisId: parsed.analysisId,
        userId,
        signal: 'down',
        issues: parsed.issues,
        otherText: parsed.otherText,
        payload: request.body,
      });

      await streamEvents(
        reply,
        request.headers.accept,
        reanalyzeMeal(parsed.analysisId, parsed.issues, parsed.otherText, userId)
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
          required: [
            'analysisId', 'loggedAt', 'mealName',
            'calories', 'protein', 'carbs', 'fat', 'fiber',
            'mealType', 'quantity',
          ],
          properties: {
            analysisId: { type: 'string' },
            loggedAt:   { type: 'string' },
            mealName:   { type: 'string' },
            calories:   { type: 'number' },
            protein:    { type: 'number' },
            carbs:      { type: 'number' },
            fat:        { type: 'number' },
            fiber:      { type: 'number' },
            mealType:   { type: 'string' },
            quantity:   { type: 'string' },
          },
        },
      } as any,
    },
    async (request: FastifyRequest<{ Body: ConfirmLogBody }>, reply: FastifyReply) => {
      const parsed = parseBody(confirmLogBodySchema, request.body, reply);
      if (!parsed) return;

      await confirmMealAnalysisLogged(parsed);
      reply.send({ ok: true });
    }
  );
}
