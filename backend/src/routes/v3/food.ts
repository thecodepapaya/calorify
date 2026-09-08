import type { FastifyInstance, FastifyReply } from 'fastify';
import { z } from 'zod';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import {
  createImageUploadRateLimitHook,
  FOOD_RATE_LIMITS,
  type FoodRateLimitHooks,
  type ImageUploadRateLimitHook,
} from '../../middleware/foodRateLimit.js';
import {
  runMealAnalysisV3,
  type MealAnalysisQuestionBundle,
  type MealAnalysisV3Result,
} from '../../services/meal-analysis-v3/pipeline.js';
import { mealContextSchema } from '../../services/meal-analysis-v3/domain.js';
import {
  classifyMealAnalysisV3Error,
  mealAnalysisV3ErrorMetadata,
  type MealAnalysisV3PublicError,
} from '../../services/meal-analysis-v3/errors.js';
import {
  buildMealAnalysisV3PassProgress,
  buildMealAnalysisV3Progress,
  type MealAnalysisV3Progress,
} from '../../services/meal-analysis-v3/progress.js';
import {
  loadMealAnalysisV3Session,
  recordMealAnalysisV3Feedback,
  recordMealAnalysisV3Log,
  saveMealAnalysisV3Session,
} from '../../services/meal-analysis-v3/store.js';
import {
  buildOracleDownloadUrl,
  uploadMealImageToOracle,
} from '../../services/infrastructure/objectStorage.js';
import {
  InvalidWebpError,
  MAX_MEAL_IMAGE_BYTES,
  validateStaticWebp,
} from '../../services/infrastructure/webpValidation.js';
import { createErrorResponse } from '../../utils/errors.js';
import { safeErrorMetadata } from '../../utils/safeError.js';

const analysisIdSchema = z.string().uuid();
const textBodySchema = z.object({
  analysisId: analysisIdSchema,
  text: z.string().trim().min(1).max(10_000),
  context: mealContextSchema,
}).strict();
const imageBodySchema = z.object({
  analysisId: analysisIdSchema,
  imageId: z.string().min(3).max(300),
  imageOrigin: z.enum(['CAMERA_NOW', 'GALLERY']),
  context: mealContextSchema,
}).strict();
const answerSchema = z.discriminatedUnion('kind', [
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('OPTION'),
    optionId: z.string().min(1),
  }).strict(),
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('NUMBER'),
    value: z.number().finite(),
  }).strict(),
  z.object({
    questionId: z.string().min(1),
    kind: z.literal('USE_ESTIMATE'),
  }).strict(),
]);
const answerBodySchema = z.object({
  analysisId: analysisIdSchema,
  bundleRevision: z.literal(1),
  answers: z.array(answerSchema).min(1).max(4),
}).strict();
const resumeBodySchema = z.object({ analysisId: analysisIdSchema }).strict();
const feedbackBodySchema = z.object({
  analysisId: analysisIdSchema,
  signal: z.enum(['UP', 'DOWN']),
}).strict();
const confirmBodySchema = z.object({
  analysisId: analysisIdSchema,
  deleted: z.boolean().optional(),
  loggedAt: z.string().datetime({ offset: true }).optional(),
  meal: z.unknown().optional(),
}).strict();

type StoredInput =
  | z.infer<typeof textBodySchema>
  | z.infer<typeof imageBodySchema>;

interface V3Session {
  userId: string;
  input: StoredInput;
  digest: string;
  result?: MealAnalysisV3Result;
  failure?: MealAnalysisV3PublicError & { failedAt: string };
  nutritionAnswers?: z.infer<typeof answerSchema>[];
  mealTypeAnswer?: 'BREAKFAST' | 'LUNCH' | 'DINNER' | 'SNACK';
}

const sessions = new Map<string, V3Session>();
const MAX_LIVE_SESSIONS = 5_000;

function sessionKey(userId: string, analysisId: string): string {
  return `${userId}:${analysisId}`;
}

async function remember(key: string, session: V3Session): Promise<boolean> {
  const saved = await saveMealAnalysisV3Session({
    userId: session.userId,
    analysisId: session.input.analysisId,
    input: session.input,
    digest: session.digest,
    result: session.result,
    failure: session.failure,
    nutritionAnswers: session.nutritionAnswers,
    mealTypeAnswer: session.mealTypeAnswer,
  });
  if (!saved) return false;
  sessions.delete(key);
  sessions.set(key, session);
  while (sessions.size > MAX_LIVE_SESSIONS) {
    const oldest = sessions.keys().next().value as string | undefined;
    if (oldest === undefined) break;
    sessions.delete(oldest);
  }
  return true;
}

async function recall(userId: string, analysisId: string): Promise<V3Session | undefined> {
  const key = sessionKey(userId, analysisId);
  const cached = sessions.get(key);
  if (cached) return cached;
  const stored = await loadMealAnalysisV3Session(userId, analysisId);
  if (!stored) return undefined;
  const input = ('text' in (stored.input as object) ? textBodySchema : imageBodySchema)
    .parse(stored.input) as StoredInput;
  const session: V3Session = {
    userId,
    input,
    digest: stored.digest,
    result: stored.result as MealAnalysisV3Result | undefined,
    failure: stored.failure as V3Session['failure'],
    nutritionAnswers: stored.nutritionAnswers as z.infer<typeof answerSchema>[] | undefined,
    mealTypeAnswer: stored.mealTypeAnswer as V3Session['mealTypeAnswer'],
  };
  sessions.set(key, session);
  return session;
}

function parseBody<T>(schema: z.ZodType<T>, value: unknown, reply: FastifyReply): T | undefined {
  const parsed = schema.safeParse(value);
  if (!parsed.success) {
    reply.status(400).send(createErrorResponse('Invalid V3 meal analysis request'));
    return undefined;
  }
  return parsed.data;
}

function questionData(questions: MealAnalysisQuestionBundle) {
  return {
    bundleRevision: 1,
    nutritionQuestions: questions.nutritionQuestions,
    ...(questions.mealTypeQuestion
      ? {
          mealTypeQuestion: {
            questionId: questions.mealTypeQuestion.questionId,
            scope: questions.mealTypeQuestion.scope,
            target: { dimension: 'MEAL_TYPE' },
            prompt: questions.mealTypeQuestion.prompt,
            response: {
              kind: 'OPTION',
              options: questions.mealTypeQuestion.options,
            },
            allowUseEstimate: false,
          },
        }
      : {}),
  };
}

function answersMatchBundle(
  answers: z.infer<typeof answerSchema>[],
  questions: MealAnalysisQuestionBundle
): boolean {
  const pending = [
    ...questions.nutritionQuestions,
    ...(questions.mealTypeQuestion
      ? [{
          ...questions.mealTypeQuestion,
          response: { kind: 'OPTION' as const, options: questions.mealTypeQuestion.options },
          allowUseEstimate: false,
        }]
      : []),
  ];
  if (answers.length !== pending.length) return false;
  if (new Set(answers.map(({ questionId }) => questionId)).size !== answers.length) {
    return false;
  }
  return pending.every((question) => {
    const answer = answers.find(({ questionId }) => questionId === question.questionId);
    if (!answer) return false;
    if (answer.kind === 'USE_ESTIMATE') return question.allowUseEstimate;
    if (question.response.kind === 'OPTION') {
      return answer.kind === 'OPTION' &&
        question.response.options.some(({ optionId }) => optionId === answer.optionId);
    }
    if (answer.kind !== 'NUMBER') return false;
    const { min, max, step, integerOnly } = question.response;
    if (answer.value < min || answer.value > max) return false;
    if (integerOnly && !Number.isInteger(answer.value)) return false;
    const stepCount = (answer.value - min) / step;
    return Math.abs(stepCount - Math.round(stepCount)) < 1e-8;
  });
}

function publicEvent(analysisId: string, result: MealAnalysisV3Result) {
  switch (result.outcome) {
    case 'COMPLETE': {
      const data = Object.fromEntries(
        Object.entries(result).filter(([key]) => key !== 'outcome')
      );
      return { event: 'COMPLETE', analysisId, data };
    }
    case 'NEEDS_INPUT':
      return { event: 'NEEDS_INPUT', analysisId, data: questionData(result.questions) };
    case 'NO_FOOD':
      return {
        event: 'NO_FOOD',
        analysisId,
        data: { code: 'NO_FOOD', retryable: false, recoveryAction: 'EDIT_INPUT' },
      };
    case 'UNUSABLE_INPUT':
      return {
        event: 'ERROR',
        analysisId,
        data: { code: 'UNUSABLE_INPUT', retryable: false, recoveryAction: 'EDIT_INPUT' },
      };
    case 'UNRESOLVED':
      return {
        event: 'UNRESOLVED',
        analysisId,
        data: { code: result.code, retryable: false, recoveryAction: 'EDIT_INPUT' },
      };
  }
}

function startStream(reply: FastifyReply, analysisId: string): void {
  reply.hijack();
  reply.raw.writeHead(200, {
    'Content-Type': 'application/x-ndjson; charset=utf-8',
    'Cache-Control': 'no-store',
    'X-Content-Type-Options': 'nosniff',
  });
  reply.raw.write(`${JSON.stringify({ event: 'STARTED', analysisId, data: {} })}\n`);
}

async function runSession(reply: FastifyReply, session: V3Session): Promise<void> {
  const analysisId = session.input.analysisId;
  startStream(reply, analysisId);
  const emitProgress = (progress: MealAnalysisV3Progress): void => {
    if (reply.raw.writableEnded || reply.raw.destroyed) return;
    reply.raw.write(`${JSON.stringify({
      event: 'PROGRESS',
      analysisId,
      data: progress,
    })}\n`);
  };
  try {
    let image: { bytes: Uint8Array; mediaType: 'image/webp' } | undefined;
    const normalizedInput = 'imageId' in session.input
      ? {
          kind: 'IMAGE' as const,
          imageId: session.input.imageId,
          imageOrigin: session.input.imageOrigin,
          context: session.input.context,
        }
      : {
          kind: 'TEXT' as const,
          text: session.input.text,
          context: session.input.context,
        };
    if (normalizedInput.kind === 'IMAGE') {
      const response = await fetch(buildOracleDownloadUrl(normalizedInput.imageId), {
        signal: AbortSignal.timeout(15_000),
      });
      if (!response.ok) throw new Error(`Image download failed with status ${response.status}`);
      image = { bytes: new Uint8Array(await response.arrayBuffer()), mediaType: 'image/webp' };
    }
    const result = await runMealAnalysisV3({
      input: normalizedInput,
      image,
      nutritionAnswers: session.nutritionAnswers,
      mealTypeAnswer: session.mealTypeAnswer,
      interpretationObserver(snapshot) {
        emitProgress(buildMealAnalysisV3PassProgress(snapshot));
      },
      observer(observation) {
        const progress = buildMealAnalysisV3Progress(observation);
        if (progress) emitProgress(progress);
      },
    });
    session.result = result;
    session.failure = undefined;
    await remember(sessionKey(session.userId, analysisId), session);
    reply.raw.write(`${JSON.stringify(publicEvent(analysisId, result))}\n`);
  } catch (error) {
    const publicError = classifyMealAnalysisV3Error(error);
    // Persist the terminal failure so the durable session can never read as
    // "still processing": /resume replays this instead of re-running the
    // analysis, and the operator history shows the failure code.
    session.result = undefined;
    session.failure = { ...publicError, failedAt: new Date().toISOString() };
    try {
      await remember(sessionKey(session.userId, analysisId), session);
    } catch (persistError) {
      reply.request.log.error(
        { ...safeErrorMetadata(persistError, 'meal_analysis_v3_failure_persist_failed') },
        'Failed to persist the V3 terminal failure state'
      );
    }
    reply.request.log.error(
      {
        analysisId,
        publicErrorCode: publicError.code,
        ...mealAnalysisV3ErrorMetadata(error),
      },
      'V3 meal analysis failed'
    );
    reply.raw.write(`${JSON.stringify({
      event: 'ERROR',
      analysisId,
      data: publicError,
    })}\n`);
  } finally {
    reply.raw.end();
  }
}

export interface FoodRoutesV3Options {
  foodRateLimitHooks?: FoodRateLimitHooks;
  imageUploadRateLimitHook?: ImageUploadRateLimitHook;
}

export async function foodRoutesV3(
  fastify: FastifyInstance,
  options: FoodRoutesV3Options = {}
): Promise<void> {
  const analysisHooks = options.foodRateLimitHooks ?? [];
  const imageUploadRateLimitHook =
    options.imageUploadRateLimitHook ?? createImageUploadRateLimitHook();
  fastify.addHook('onRequest', authenticateUser);
  fastify.addContentTypeParser(
    'image/webp',
    { parseAs: 'buffer', bodyLimit: MAX_MEAL_IMAGE_BYTES },
    (_request, body, done) => done(null, body)
  );

  fastify.post<{ Body: Buffer }>('/image-upload', {
    onRequest: imageUploadRateLimitHook,
  }, async (request, reply) => {
    const declaredLength = Number(request.headers['content-length']);
    if (!Number.isSafeInteger(declaredLength) || declaredLength <= 0 ||
        !Buffer.isBuffer(request.body) || request.body.length !== declaredLength) {
      return reply.status(400).send(createErrorResponse('Invalid image body'));
    }
    try {
      validateStaticWebp(request.body);
      const uploaded = await uploadMealImageToOracle(request.body, getCurrentUserId(request));
      return { imageId: uploaded.objectKey };
    } catch (error) {
      if (error instanceof InvalidWebpError) {
        return reply.status(400).send(createErrorResponse(error.message));
      }
      request.log.error(
        { ...safeErrorMetadata(error, 'meal_analysis_v3_upload_failed') },
        'V3 image upload failed'
      );
      return reply.status(503).send(createErrorResponse('Image storage is unavailable'));
    }
  });

  fastify.post('/analyze-text', {
    preHandler: analysisHooks,
    config: { rateLimit: FOOD_RATE_LIMITS.analysis },
  }, async (request, reply) => {
    const body = parseBody(textBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    const key = sessionKey(userId, body.analysisId);
    const digest = JSON.stringify(body);
    const existing = await recall(userId, body.analysisId);
    if (existing && existing.digest !== digest) {
      return reply.status(409).send(createErrorResponse('Analysis ID already has different input'));
    }
    const session = existing ?? { userId, input: body, digest };
    if (!existing && !await remember(key, session)) {
      return reply.status(409).send(createErrorResponse('Analysis ID already has different input'));
    }
    await runSession(reply, session);
  });

  fastify.post('/analyze-image', {
    preHandler: analysisHooks,
    config: { rateLimit: FOOD_RATE_LIMITS.analysis },
  }, async (request, reply) => {
    const body = parseBody(imageBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    if (!body.imageId.startsWith(`${userId}/`)) {
      return reply.status(403).send(createErrorResponse('Image is not owned by this user'));
    }
    const key = sessionKey(userId, body.analysisId);
    const digest = JSON.stringify(body);
    const existing = await recall(userId, body.analysisId);
    if (existing && existing.digest !== digest) {
      return reply.status(409).send(createErrorResponse('Analysis ID already has different input'));
    }
    const session = existing ?? { userId, input: body, digest };
    if (!existing && !await remember(key, session)) {
      return reply.status(409).send(createErrorResponse('Analysis ID already has different input'));
    }
    await runSession(reply, session);
  });

  fastify.post('/answer', {
    preHandler: analysisHooks,
    config: { rateLimit: FOOD_RATE_LIMITS.analysis },
  }, async (request, reply) => {
    const body = parseBody(answerBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    const session = await recall(userId, body.analysisId);
    if (!session || session.result?.outcome !== 'NEEDS_INPUT') {
      return reply.status(409).send(createErrorResponse('Analysis is not awaiting input'));
    }
    const expected = session.result.questions;
    if (!answersMatchBundle(body.answers, expected)) {
      return reply.status(400).send(createErrorResponse('Answers do not match the pending bundle'));
    }
    const mealTypeAnswer = body.answers.find(({ questionId }) => questionId === 'meal-type');
    if (mealTypeAnswer && mealTypeAnswer.kind !== 'OPTION') {
      return reply.status(400).send(createErrorResponse('Meal type requires an option'));
    }
    session.mealTypeAnswer = mealTypeAnswer?.kind === 'OPTION'
      ? z.enum(['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK']).parse(mealTypeAnswer.optionId)
      : undefined;
    session.nutritionAnswers = body.answers.filter(({ questionId }) => questionId !== 'meal-type');
    await remember(sessionKey(userId, body.analysisId), session);
    await runSession(reply, session);
  });

  fastify.post('/resume', {
    preHandler: analysisHooks,
    config: { rateLimit: FOOD_RATE_LIMITS.analysis },
  }, async (request, reply) => {
    const body = parseBody(resumeBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    const session = await recall(userId, body.analysisId);
    if (!session) return reply.status(404).send(createErrorResponse('Analysis not found'));
    if (session.result) {
      startStream(reply, body.analysisId);
      reply.raw.write(`${JSON.stringify(publicEvent(body.analysisId, session.result))}\n`);
      reply.raw.end();
      return;
    }
    if (session.failure) {
      startStream(reply, body.analysisId);
      const { code, retryable, recoveryAction } = session.failure;
      reply.raw.write(`${JSON.stringify({
        event: 'ERROR',
        analysisId: body.analysisId,
        data: { code, retryable, recoveryAction },
      })}\n`);
      reply.raw.end();
      return;
    }
    await runSession(reply, session);
  });

  fastify.post('/feedback', async (request, reply) => {
    const body = parseBody(feedbackBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    if (!await recordMealAnalysisV3Feedback(userId, body.analysisId, body.signal)) {
      return reply.status(409).send(createErrorResponse('Feedback requires a completed analysis'));
    }
    return { success: true };
  });

  fastify.post('/confirm-log', async (request, reply) => {
    const body = parseBody(confirmBodySchema, request.body, reply);
    if (!body) return;
    const userId = getCurrentUserId(request);
    if (body.deleted !== true && (body.loggedAt === undefined || body.meal === undefined)) {
      return reply.status(400).send(createErrorResponse('Logged meal and timestamp are required'));
    }
    if (!await recordMealAnalysisV3Log(userId, body.analysisId, body)) {
      return reply.status(409).send(createErrorResponse('Confirmation requires a completed analysis'));
    }
    return { success: true };
  });
}
