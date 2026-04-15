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
  type ClarificationAnswerDTO,
  type MealFeedbackIssue,
  type MealTypeValue,
  type PipelineEvent,
} from '../../services/nutritionEngineV2.js';
import { createErrorResponse } from '../../utils/errors.js';
import { getCountryFromRequest, getLocaleFromRequest } from '../../utils/locale.js';

interface AnalyzeTextBody {
  textDescription: string;
}

interface AnalyzeImageBody {
  imageUrl: string;
}

interface ClarifyBody {
  analysisId: string;
  answers: ClarificationAnswerDTO[];
}

interface FeedbackBody {
  analysisId: string;
  signal: 'up';
}

interface MealTypeBody {
  analysisId: string;
  mealType: MealTypeValue;
}

interface ReanalyzeBody {
  analysisId: string;
  issues: MealFeedbackIssue[];
  otherText?: string;
}

interface ConfirmLogBody {
  analysisId: string;
  loggedAt: string;
  mealName: string;
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
  mealType: string;
  quantity: string;
}

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
      const { textDescription } = request.body ?? {};
      if (!textDescription || typeof textDescription !== 'string' || textDescription.trim() === '') {
        reply.status(400).send(createErrorResponse('textDescription is required'));
        return;
      }

      const userId = await getOptionalUserId(request);
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeTextMeal(textDescription.trim(), {
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
      const { imageUrl } = request.body ?? {};
      if (!imageUrl || typeof imageUrl !== 'string' || imageUrl.trim() === '') {
        reply.status(400).send(createErrorResponse('imageUrl is required'));
        return;
      }

      let finalImageUrl: string;
      try {
        finalImageUrl = toDownloadUrl(imageUrl.trim());
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
      const { analysisId, answers } = request.body ?? {};
      if (!analysisId || typeof analysisId !== 'string') {
        reply.status(400).send(createErrorResponse('analysisId is required'));
        return;
      }
      if (!Array.isArray(answers) || answers.length === 0) {
        reply.status(400).send(createErrorResponse('answers are required'));
        return;
      }

      await streamEvents(reply, request.headers.accept, continueMealAnalysis(analysisId, answers));
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
      const { analysisId, signal } = request.body ?? {};
      if (!analysisId || typeof analysisId !== 'string') {
        reply.status(400).send(createErrorResponse('analysisId is required'));
        return;
      }
      if (signal !== 'up') {
        reply.status(400).send(createErrorResponse('signal must be up'));
        return;
      }

      const userId = await getOptionalUserId(request);
      await recordMealAnalysisFeedback({
        analysisId,
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
      const { analysisId, mealType } = request.body ?? {};
      if (!analysisId || typeof analysisId !== 'string') {
        reply.status(400).send(createErrorResponse('analysisId is required'));
        return;
      }
      if (
        !mealType ||
        (mealType !== 'BREAKFAST' &&
          mealType !== 'LUNCH' &&
          mealType !== 'DINNER' &&
          mealType !== 'SNACK')
      ) {
        reply.status(400).send(createErrorResponse('mealType is required'));
        return;
      }

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysisWithMealType(analysisId, mealType)
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
      const { analysisId, issues, otherText } = request.body ?? {};
      if (!analysisId || typeof analysisId !== 'string') {
        reply.status(400).send(createErrorResponse('analysisId is required'));
        return;
      }
      if (!Array.isArray(issues) || issues.length === 0) {
        reply.status(400).send(createErrorResponse('issues are required'));
        return;
      }

      const invalidIssue = issues.find((issue) => !FEEDBACK_ISSUES.includes(issue));
      if (invalidIssue) {
        reply.status(400).send(createErrorResponse(`Unsupported issue: ${invalidIssue}`));
        return;
      }

      const userId = await getOptionalUserId(request);
      await recordMealAnalysisFeedback({
        analysisId,
        userId,
        signal: 'down',
        issues,
        otherText,
        payload: request.body,
      });

      await streamEvents(
        reply,
        request.headers.accept,
        reanalyzeMeal(analysisId, issues, otherText, userId)
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
      const body = request.body ?? {};
      if (!body.analysisId || typeof body.analysisId !== 'string') {
        reply.status(400).send(createErrorResponse('analysisId is required'));
        return;
      }

      await confirmMealAnalysisLogged(body as MealLogConfirmationRecord);
      reply.send({ ok: true });
    }
  );
}
