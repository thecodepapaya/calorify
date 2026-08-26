import { FastifyInstance, FastifyRequest, FastifyReply } from 'fastify';
import config from '../../config.js';
import { authenticateUser, getCurrentUserId } from '../../middleware/auth.js';
import {
  createImageUploadRateLimitHook,
  FOOD_RATE_LIMITS,
  type FoodRateLimitHooks,
  type ImageUploadRateLimitHook,
} from '../../middleware/foodRateLimit.js';
import {
  clearMealAnalysisLogged,
  confirmMealAnalysisLogged,
  isMealAnalysisSessionOwnedByUser,
  recordMealAnalysisFeedback,
  type MealLogConfirmationRecord,
} from '../../services/meal-analysis/store.js';
import { safeErrorMetadata } from '../../utils/safeError.js';
import {
  analyzeImageMeal,
  analyzeIngredientProposal,
  analyzeTextMeal,
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  createAnalysisTrace,
  FEEDBACK_ISSUES,
  MEAL_TYPES,
  reanalyzeMeal,
  resumeMealAnalysis,
  type IngredientProposal,
  type AnalysisTrace,
  type PipelineEvent,
} from '../../services/meal-analysis/engine.js';
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
  type LocalNutritionResolveRequest,
  type MealClarificationAnswer,
  type MealAnalysisReanalyzeRequest,
  type MealAnalysisResumeRequest,
} from '../../protos/calorify/http_api.js';
import {
  AnalysisModality,
  DecompositionOutcome,
  InterpretationOrigin,
  MealAnalysisFallbackReason,
  PortionKind,
} from '../../protos/calorify/meal_analysis_pipeline.js';
import {
  getApiResultSchema,
  getErrorResponseSchema,
} from '../../utils/schema-generator.js';
import {
  uploadMealImageToOracle,
  resolveOwnedImageObject,
} from '../../services/infrastructure/objectStorage.js';
import { resolveLocalNutritionLookups } from '../../services/nutrition/localResolver.js';
import { downloadLocalNutritionPack } from '../../services/nutrition/localPackDownload.js';
import {
  recordAnalysisLastResponse,
  recordAnalysisObservation,
} from '../../services/meal-analysis/historyStore.js';
import {
  InvalidWebpError,
  MAX_MEAL_IMAGE_BYTES,
  validateStaticWebp,
} from '../../services/infrastructure/webpValidation.js';

const MEAL_TYPE_VALUES = [...MEAL_TYPES, 'UNKNOWN'] as const;

function isLocalInferenceReleaseEnabled(request: FastifyRequest): boolean {
  const appBuild = request.headers['x-calorify-app-build'];
  if (typeof appBuild !== 'string' || !/^\d+$/.test(appBuild.trim())) return false;
  const buildNumber = Number(appBuild.trim());
  return Number.isSafeInteger(buildNumber) &&
    buildNumber >= config.LOCAL_INFERENCE.minimumAppBuild;
}

// -----------------------------------------------------------------------------
// Zod: bounded checks on top of proto-shaped bodies (protos/calorify/*.proto).
// -----------------------------------------------------------------------------

const fallbackReasonSchema = z.enum([
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNSUPPORTED_DEVICE,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_MODEL_NOT_READY,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BUSY,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_QUOTA_LIMITED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_BACKGROUND_BLOCKED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_THERMALLY_LIMITED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_MODEL_UPDATING,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_ROLLOUT_DISABLED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_TIMED_OUT,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_INVALID_OUTPUT,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_CANCELLED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_LOCAL_NUTRITION_MISS,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_DATASET_INCOMPATIBLE,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_USER_APPROVED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_USER_DENIED,
  MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_UNKNOWN,
]);

const epochMsSchema = z.coerce.number().int().positive().refine(
  (value) => value <= Date.now() + 5 * 60 * 1000,
  'must not be more than 5 minutes in the future'
);

const analyzeTextBodySchema = z.object({
  analysisId: z.string().uuid().optional(),
  textDescription: nonEmptyString.max(2000, 'must be at most 2000 characters'),
  localAttempted: z.boolean().optional().default(false),
  fallbackReason: fallbackReasonSchema.optional().default(
    MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE
  ),
  localAttemptId: z.string().uuid().optional(),
  localAttemptStartedAtEpochMs: epochMsSchema.optional(),
  localAttemptCompletedAtEpochMs: epochMsSchema.optional(),
}).superRefine((body, ctx) => {
  if (body.localAttempted) {
    if (body.localAttemptId == null) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'localAttemptId is required after a local attempt' });
    }
    if (body.localAttemptStartedAtEpochMs == null || body.localAttemptCompletedAtEpochMs == null) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'local attempt timestamps are required after a local attempt' });
    }
    if (body.fallbackReason === MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE) {
      ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'fallbackReason is required after a failed local attempt' });
    }
  } else if (
    body.localAttemptId != null ||
    body.localAttemptStartedAtEpochMs != null ||
    body.localAttemptCompletedAtEpochMs != null
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'local attempt metadata requires localAttempted=true' });
  }
  if (
    body.localAttemptStartedAtEpochMs != null &&
    body.localAttemptCompletedAtEpochMs != null &&
    body.localAttemptStartedAtEpochMs > body.localAttemptCompletedAtEpochMs
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'local attempt timestamps must be ordered' });
  }
});
type AnalyzeTextBody = z.infer<typeof analyzeTextBodySchema>;

const localNutritionResolveBodySchema = z.object({
  analysisId: z.string().uuid(),
  lookups: z.array(
    z.object({
      rowId: nonEmptyString.max(128, 'must be at most 128 characters'),
      canonicalHint: nonEmptyString.max(200, 'must be at most 200 characters'),
      preparation: z.string().trim().max(100, 'must be at most 100 characters'),
    }).strict()
  ).min(1).max(20),
}).strict().superRefine((body, ctx) => {
  const rowIds = new Set<string>();
  body.lookups.forEach((lookup, index) => {
    if (rowIds.has(lookup.rowId)) {
      ctx.addIssue({
        code: z.ZodIssueCode.custom,
        path: ['lookups', index, 'rowId'],
        message: 'rowId values must be unique',
      });
    }
    rowIds.add(lookup.rowId);
  });
});
type LocalNutritionResolveBody = z.infer<typeof localNutritionResolveBodySchema>;

const analyzeImageBodySchema = z.object({
  analysisId: z.string().uuid().optional(),
  imageUrl: urlString,
});
type AnalyzeImageBody = z.infer<typeof analyzeImageBodySchema>;

function approximatelyEqual(actual: number, expected: number): boolean {
  return Math.abs(actual - expected) <= Math.abs(expected) * 0.1 + 0.5;
}

const proposalIngredientSchema = z.object({
  rowId: nonEmptyString.max(128),
  rawName: nonEmptyString.max(120),
  isFoodReason: nonEmptyString.max(240),
  isFoodConfidence: z.number().finite().min(0).max(1),
  usdaLookup: z.object({
    proposedCanonicalName: nonEmptyString.max(120),
    aliases: z.array(nonEmptyString.max(120)).max(5),
    preparationStates: z.array(nonEmptyString.max(40)).max(5),
  }).strict(),
  portion: z.object({
    kind: z.enum([PortionKind.COUNT, PortionKind.BULK, PortionKind.PINCH]),
    gramsEstimated: z.number().finite().positive().max(5000),
    minGrams: z.number().finite().min(0).max(5000),
    maxGrams: z.number().finite().min(0).max(5000),
    count: z.number().finite().positive().max(20).optional(),
    perUnitGrams: z.number().finite().positive().max(5000).optional(),
    perUnitMinGrams: z.number().finite().positive().max(5000).optional(),
    perUnitMaxGrams: z.number().finite().positive().max(5000).optional(),
    sizeSpecifiedByUser: z.boolean(),
  }).strict(),
}).strict().superRefine((ingredient, ctx) => {
  const portion = ingredient.portion;
  if (
    portion.minGrams > portion.gramsEstimated ||
    portion.gramsEstimated > portion.maxGrams
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'gram range must be ordered' });
  }
  if (
    portion.kind === PortionKind.COUNT &&
    (
      portion.perUnitGrams == null ||
      portion.perUnitMinGrams == null ||
      portion.perUnitMaxGrams == null
    )
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'per-unit gram range is required for count portions' });
  }
  if (
    portion.kind === PortionKind.COUNT &&
    portion.perUnitMinGrams != null &&
    portion.perUnitGrams != null &&
    portion.perUnitMaxGrams != null &&
    (
      portion.perUnitMinGrams > portion.perUnitGrams ||
      portion.perUnitGrams > portion.perUnitMaxGrams
    )
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'per-unit gram range must be ordered' });
  }
  if (
    portion.kind === PortionKind.COUNT &&
    portion.count != null &&
    portion.perUnitGrams != null &&
    !approximatelyEqual(
      portion.gramsEstimated,
      portion.count * portion.perUnitGrams
    )
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'count and total grams must be consistent' });
  }
  if (
    portion.kind !== PortionKind.COUNT &&
    (
      portion.count != null ||
      portion.perUnitGrams != null ||
      portion.perUnitMinGrams != null ||
      portion.perUnitMaxGrams != null
    )
  ) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'non-count portions cannot contain count values' });
  }
});

const ingredientProposalSchema = z.object({
  schemaVersion: z.literal(2),
  proposalId: nonEmptyString.max(128),
  modality: z.literal(AnalysisModality.ANALYSIS_MODALITY_TEXT),
  mealName: z.string().trim().max(60),
  outcome: z.enum([
    DecompositionOutcome.DECOMPOSITION_OUTCOME_FOOD,
    DecompositionOutcome.DECOMPOSITION_OUTCOME_NO_FOOD,
  ]),
  outcomeReason: nonEmptyString.max(240),
  outcomeConfidence: z.number().finite().min(0).max(1),
  inferredMealType: z.enum(MEAL_TYPE_VALUES),
  mealTypeReason: nonEmptyString.max(240),
  mealTypeConfident: z.boolean().optional().default(false),
  items: z.array(proposalIngredientSchema).max(20),
  interpretationOrigin: z.literal(
    InterpretationOrigin.INTERPRETATION_ORIGIN_LOCAL_NANO
  ),
  modelName: z.string().trim().max(100).optional(),
  modelVersion: z.string().trim().max(100).optional(),
}).strict().superRefine((proposal, ctx) => {
  const rowIds = proposal.items.map((ingredient) => ingredient.rowId);
  if (new Set(rowIds).size !== rowIds.length) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'ingredient row IDs must be unique' });
  }
  const noFood = proposal.outcome === DecompositionOutcome.DECOMPOSITION_OUTCOME_NO_FOOD;
  if (noFood && (proposal.mealName !== '' || proposal.items.length !== 0 ||
      proposal.inferredMealType !== 'UNKNOWN' || proposal.mealTypeConfident)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'no-food proposal is inconsistent' });
  }
  if (!noFood && (proposal.mealName === '' || proposal.items.length === 0)) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'food proposal requires a meal name and items' });
  }
});

const analyzeProposalBodySchema = z.object({
  analysisId: z.string().uuid(),
  proposal: ingredientProposalSchema,
  localAttemptId: z.string().uuid(),
  localAttemptStartedAtEpochMs: epochMsSchema,
  localAttemptCompletedAtEpochMs: epochMsSchema,
  fallbackReason: fallbackReasonSchema.optional().default(
    MealAnalysisFallbackReason.MEAL_ANALYSIS_FALLBACK_REASON_NONE
  ),
}).superRefine((body, ctx) => {
  if (body.localAttemptStartedAtEpochMs > body.localAttemptCompletedAtEpochMs) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, message: 'local attempt timestamps must be ordered' });
  }
});
type AnalyzeProposalBody = z.infer<typeof analyzeProposalBodySchema>;

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
  analysisId: z.string().uuid(),
  answers: z
    .array(clarifyAnswerItemSchema)
    .min(1, 'must contain at least one answer')
    .max(20, 'must contain at most 20 answers'),
});
type ClarifyBody = z.infer<typeof clarifyBodySchema>;

const resumeBodySchema: z.ZodType<MealAnalysisResumeRequest> = z.object({
  analysisId: z.string().uuid(),
});
type ResumeBody = MealAnalysisResumeRequest;

const feedbackBodySchema = z.object({
  analysisId: z.string().uuid(),
  signal: z.enum([MealAnalysisFeedbackSignal.UP, MealAnalysisFeedbackSignal.DOWN]),
});
type FeedbackBody = z.infer<typeof feedbackBodySchema>;

const mealTypeBodySchema = z.object({
  analysisId: z.string().uuid(),
  mealType: z.enum(MEAL_TYPES),
});
type MealTypeBody = z.infer<typeof mealTypeBodySchema>;

const reanalyzeBodySchema = z.object({
  analysisId: z.string().uuid(),
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
  analysisId: z.string().uuid(),
  deleted: z.boolean().optional(),
  loggedAt: z.string().datetime({ offset: true }).refine(
    (value) => Date.parse(value) <= Date.now() + 5 * 60 * 1000,
    'must not be more than 5 minutes in the future'
  ).optional(),
  meal: confirmLogMealSchema.optional(),
}).superRefine((body, ctx) => {
  if (!body.deleted && body.loggedAt == null) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, path: ['loggedAt'], message: 'is required' });
  }
  if (!body.deleted && body.meal == null) {
    ctx.addIssue({ code: z.ZodIssueCode.custom, path: ['meal'], message: 'is required' });
  }
});
type ConfirmLogBody = z.infer<typeof confirmLogBodySchema>;

function confirmLogBodyToStoreRecord(
  body: ConfirmLogBody,
  timeZone?: string
): MealLogConfirmationRecord {
  const m = body.meal;
  if (body.loggedAt == null || m == null) {
    throw new Error('A non-deleted meal log requires loggedAt and meal');
  }
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
  AnalyzeProposalBody,
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
  stream: AsyncGenerator<PipelineEvent>,
  requestedAnalysisId: string | undefined,
  observation: { action: string; trace: AnalysisTrace }
): Promise<void> {
  const format = getStreamFormat(acceptHeader);
  const streamMeta: StreamResponseMeta = {
    format,
    eventCount: 0,
    firstSteps: [],
    hasErrorEvent: false,
  };
  let analysisId = requestedAnalysisId ?? 'unknown';
  let lastEvent: PipelineEvent | undefined;
  const eventSequence: Array<{ step: string; elapsedMs: number }> = [];
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
      if (event.data.analysisId) analysisId = event.data.analysisId;
      streamMeta.eventCount += 1;
      streamMeta.lastStep = event.step;
      if (streamMeta.firstSteps.length < 5) {
        streamMeta.firstSteps.push(event.step);
      }
      if (event.step === 'ERROR') {
        streamMeta.hasErrorEvent = true;
      }
      eventSequence.push({
        step: event.step,
        elapsedMs: Math.max(0, Date.now() - observation.trace.startedAt),
      });

      writeEvent(reply, format, event);
      lastEvent = event;
      if (event.step === 'ERROR') {
        break;
      }
    }
  } catch (error) {
    streamMeta.hasErrorEvent = true;
    reply.request.log.error(
      {
        analysisId,
        ...safeErrorMetadata(error, 'meal_analysis_stream_failed'),
      },
      'Meal analysis stream failed'
    );
    lastEvent = {
      step: 'ERROR',
      data: {
        analysisId,
        message: 'Pipeline failed',
        retryable: analysisId !== 'unknown',
      },
    };
    eventSequence.push({
      step: lastEvent.step,
      elapsedMs: Math.max(0, Date.now() - observation.trace.startedAt),
    });
    writeEvent(reply, format, lastEvent);
  } finally {
    if (lastEvent && analysisId !== 'unknown') {
      try {
        const completedAt = Date.now();
        await Promise.all([
          recordAnalysisLastResponse(analysisId, lastEvent.step, lastEvent.data),
          recordAnalysisObservation({
            analysisId,
            requestId: String(reply.request.id),
            action: observation.action,
            streamFormat: format,
            eventSequence,
            trace: observation.trace,
            lastStep: lastEvent.step,
            hadError: streamMeta.hasErrorEvent,
            completedAt,
          }),
        ]);
      } catch (error) {
        reply.request.log.error(
          {
            analysisId,
            ...safeErrorMetadata(error, 'meal_analysis_response_persist_failed'),
          },
          'Meal analysis response persistence failed'
        );
      }
    }
    reply.raw.end();
  }
}

export interface FoodRoutesV2Options {
  foodRateLimitHooks?: FoodRateLimitHooks;
  imageUploadRateLimitHook?: ImageUploadRateLimitHook;
}

export async function foodRoutesV2(
  fastify: FastifyInstance,
  options: FoodRoutesV2Options = {}
): Promise<void> {
  const imageUploadRateLimitHook =
    options.imageUploadRateLimitHook ?? createImageUploadRateLimitHook();
  // Every V2 flow creates or mutates user-attributed analysis state. Requiring
  // Firebase auth here also makes route-specific analysis limits user-aware and
  // prevents one caller from continuing or confirming another caller's analysis.
  fastify.addHook('onRequest', authenticateUser);
  fastify.addContentTypeParser(
    'image/webp',
    { parseAs: 'buffer', bodyLimit: MAX_MEAL_IMAGE_BYTES },
    (_request, body, done) => done(null, body)
  );

  fastify.get(
    '/local-capabilities',
    {
      schema: {
        description: 'Return the default-safe local inference rollout policy.',
        tags: ['Food', 'V2'],
      },
    },
    async (request) => {
      const rollout = config.LOCAL_INFERENCE;
      const releaseEnabled = isLocalInferenceReleaseEnabled(request);
      return {
        textEnabled: releaseEnabled && rollout.textEnabled,
        localNutritionPackUrl:
          releaseEnabled && rollout.localNutritionPackObject
            ? `${config.API_V2_STR}/food/local-nutrition-pack`
            : undefined,
      };
    }
  );

  fastify.post<{ Body: Buffer }>(
    '/image-upload',
    {
      onRequest: imageUploadRateLimitHook,
      schema: {
        description: 'Validate and upload one WebP meal image through the backend.',
        tags: ['Food', 'V2'],
        response: {
          200: {
            type: 'object',
            required: ['imageUrl'],
            properties: { imageUrl: { type: 'string', format: 'uri' } },
          },
          400: { description: 'Invalid WebP image', ...getErrorResponseSchema() },
          413: { description: 'Image exceeds 1 MiB', ...getErrorResponseSchema() },
          415: { description: 'Unsupported media type', ...getErrorResponseSchema() },
          429: { description: 'Upload rate limit exceeded', ...getErrorResponseSchema() },
          503: { description: 'Image storage unavailable', ...getErrorResponseSchema() },
        },
      } as any,
    },
    async (request, reply) => {
      const declaredLength = Number(request.headers['content-length']);
      if (!Number.isSafeInteger(declaredLength) || declaredLength <= 0) {
        reply.status(400).send(createErrorResponse('Content-Length is required'));
        return;
      }
      if (!Buffer.isBuffer(request.body) || request.body.length !== declaredLength) {
        reply.status(400).send(createErrorResponse('Image body length does not match Content-Length'));
        return;
      }

      try {
        validateStaticWebp(request.body);
      } catch (error) {
        if (error instanceof InvalidWebpError) {
          reply.status(400).send(createErrorResponse(error.message));
          return;
        }
        throw error;
      }

      try {
        const uploaded = await uploadMealImageToOracle(
          request.body,
          getCurrentUserId(request)
        );
        reply.send({ imageUrl: uploaded.downloadUrl });
      } catch (error) {
        request.log.error(
          {
            operation: 'upload_meal_image',
            ...safeErrorMetadata(error, 'oracle_image_upload_failed'),
          },
          'Meal image upload failed'
        );
        reply.status(503).send(createErrorResponse('Image storage is unavailable'));
      }
    }
  );

  fastify.get(
    '/local-nutrition-pack',
    {
      config: { rateLimit: FOOD_RATE_LIMITS.localNutrition },
      schema: {
        description:
          'Download the current USDA nutrition pack. Supports If-Modified-Since and returns 304 when unchanged.',
        tags: ['Food', 'V2'],
      },
    },
    async (request, reply) => {
      if (
        !isLocalInferenceReleaseEnabled(request) ||
        !config.LOCAL_INFERENCE.localNutritionPackObject
      ) {
        return reply
          .status(403)
          .send(createErrorResponse('Local nutrition download is disabled'));
      }
      try {
        const rawHeader = request.headers['if-modified-since'];
        const result = await downloadLocalNutritionPack(
          typeof rawHeader === 'string' ? rawHeader : undefined
        );
        reply
          .header('last-modified', result.lastModified)
          .header('cache-control', 'private, no-cache');
        if (result.status === 304) return reply.status(304).send();
        return reply
          .type('application/json; charset=utf-8')
          .header('content-length', result.body.length)
          .send(result.body);
      } catch (error) {
        request.log.error(
          { operation: 'download_local_nutrition_pack', ...safeErrorMetadata(error) },
          'Local nutrition pack download failed'
        );
        return reply
          .status(503)
          .send(createErrorResponse('Local nutrition pack is unavailable'));
      }
    }
  );

  fastify.post<{ Body: LocalNutritionResolveRequest }>(
    '/resolve-local-nutrition',
    {
      config: {
        rateLimit: FOOD_RATE_LIMITS.localNutrition,
      },
      schema: {
        description:
          'Resolve bounded structured ingredient hints to cacheable USDA rows.',
        tags: ['Food', 'V2'],
        response: {
          400: { description: 'Bad request', ...getErrorResponseSchema() },
          403: { description: 'Local nutrition rollout disabled', ...getErrorResponseSchema() },
        },
      } as any,
    },
    async (
      request: FastifyRequest<{ Body: LocalNutritionResolveBody }>,
      reply: FastifyReply
    ) => {
      if (
        !config.LOCAL_INFERENCE.localNutritionPackObject ||
        !isLocalInferenceReleaseEnabled(request)
      ) {
        return reply
          .status(403)
          .send(createErrorResponse('Local nutrition resolution is disabled'));
      }
      const parsed = parseBody(
        localNutritionResolveBodySchema,
        request.body,
        reply
      );
      if (!parsed) return;
      return resolveLocalNutritionLookups(parsed.analysisId, parsed.lookups);
    }
  );

  fastify.post<{ Body: AnalyzeTextBody }>(
    '/analyze-text',
    {
      config: {
        rateLimit: FOOD_RATE_LIMITS.analysis,
      },
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeTextMeal(parsed.textDescription, {
          analysisId: parsed.analysisId,
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          timeZone: getTimeZoneFromRequest(request),
          userId,
          localAttempted: parsed.localAttempted,
          localAttemptId: parsed.localAttemptId,
          localAttemptStartedAtEpochMs: parsed.localAttemptStartedAtEpochMs,
          localAttemptCompletedAtEpochMs: parsed.localAttemptCompletedAtEpochMs,
          fallbackReason: parsed.fallbackReason,
          logger: request.log,
          trace,
        }),
        parsed.analysisId,
        { action: 'analyze_text', trace }
      );
    }
  );

  fastify.post<{ Body: AnalyzeProposalBody }>(
    '/analyze-proposal',
    {
      config: {
        rateLimit: FOOD_RATE_LIMITS.analysis,
      },
      preHandler: options.foodRateLimitHooks,
      schema: {
        description:
          'Settle a strictly validated on-device ingredient proposal using the authoritative nutrition pipeline.',
        tags: ['Food', 'V2'],
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
    async (request: FastifyRequest<{ Body: AnalyzeProposalBody }>, reply: FastifyReply) => {
      const parsed = parseBody(analyzeProposalBodySchema, request.body, reply);
      if (!parsed) return;
      const trace = createAnalysisTrace();
      await streamEvents(
        reply,
        request.headers.accept,
        analyzeIngredientProposal(parsed.proposal as IngredientProposal, {
          analysisId: parsed.analysisId,
          localAttempted: true,
          localAttemptId: parsed.localAttemptId,
          localAttemptStartedAtEpochMs: parsed.localAttemptStartedAtEpochMs,
          localAttemptCompletedAtEpochMs: parsed.localAttemptCompletedAtEpochMs,
          fallbackReason: parsed.fallbackReason,
          locale: getLocaleFromRequest(request),
          countryCode: getCountryFromRequest(request),
          timeZone: getTimeZoneFromRequest(request),
          userId: getCurrentUserId(request),
          logger: request.log,
          trace,
        }),
        parsed.analysisId,
        { action: 'analyze_proposal', trace }
      );
    }
  );

  fastify.post<{ Body: AnalyzeImageBody }>(
    '/analyze-image',
    {
      config: {
        rateLimit: FOOD_RATE_LIMITS.analysis,
      },
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();
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
          trace,
        }),
        parsed.analysisId,
        { action: 'analyze_image', trace }
      );
    }
  );

  fastify.post<{ Body: ClarifyBody }>(
    '/clarify',
    {
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysis(
          parsed.analysisId,
          parsed.answers as MealClarificationAnswer[],
          {
            userId,
            logger: request.log,
            trace,
          }
        ),
        parsed.analysisId,
        { action: 'clarify', trace }
      );
    }
  );

  fastify.post<{ Body: ResumeBody }>(
    '/resume',
    {
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();

      await streamEvents(
        reply,
        request.headers.accept,
        resumeMealAnalysis(parsed.analysisId, {
          userId,
          logger: request.log,
          trace,
        }),
        parsed.analysisId,
        { action: 'resume', trace }
      );
    }
  );

  fastify.post<{ Body: FeedbackBody }>(
    '/feedback',
    {
      preHandler: options.foodRateLimitHooks,
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
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();

      await streamEvents(
        reply,
        request.headers.accept,
        continueMealAnalysisWithMealType(parsed.analysisId, parsed.mealType, {
          userId,
          logger: request.log,
          trace,
        }),
        parsed.analysisId,
        { action: 'meal_type', trace }
      );
    }
  );

  fastify.post<{ Body: ReanalyzeBody }>(
    '/reanalyze',
    {
      preHandler: options.foodRateLimitHooks,
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
      const trace = createAnalysisTrace();
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
          trace,
        }),
        parsed.newAnalysisId,
        { action: 'reanalyze', trace }
      );
    }
  );

  fastify.post<{ Body: ConfirmLogBody }>(
    '/confirm-log',
    {
      preHandler: options.foodRateLimitHooks,
      schema: {
        description:
          'Synchronize save, edit, or delete of a V2 analysis result in the meal log.',
        tags: ['Food', 'V2'],
        body: {
          type: 'object',
          required: ['analysisId'],
          properties: {
            analysisId: { type: 'string', format: 'uuid' },
            deleted: { type: 'boolean' },
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

      const updated = parsed.deleted
        ? await clearMealAnalysisLogged(parsed.analysisId)
        : await confirmMealAnalysisLogged(
            confirmLogBodyToStoreRecord(parsed, getTimeZoneFromRequest(request))
          );
      if (!updated) {
        reply.status(409).send(createErrorResponse('Analysis is not completed'));
        return;
      }
      const ok: ApiResult = { ok: true, message: '' };
      reply.send(ok);
    }
  );
}
