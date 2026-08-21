import OpenAI, { toFile } from './openaiClient.js';
import config from '../config.js';
import { OPENAI_AI_SUMMARY_MODEL } from '../openaiModels.js';
import { safeErrorMetadata } from '../utils/safeError.js';
import { query } from './database.js';
import { calendarDateInTimeZone } from '../utils/timezone.js';
import {
  computeAiSummaryStats,
  type AiSummaryMealRow,
  type AiSummaryStats,
} from './aiSummaryStats.js';

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------

const MEAL_TYPE_ABBREV: Record<string, string> = {
  BREAKFAST: 'B',
  LUNCH: 'L',
  DINNER: 'D',
  SNACK: 'S',
};

const SYSTEM_PROMPT_TEMPLATE =
  `You are a nutrition insight AI. The user has provided a CSV of logged meals ` +
  `(date, meal type, name, calories) from the last 3 days.\n\n` +
  `IMPORTANT: Users often do NOT log every meal. This data is incomplete.\n` +
  `Never assume low calories = dieting or high = overeating.\n` +
  `Frame insights as "Based on what you've logged..." or "Your logged meals suggest...".\n` +
  `Be encouraging and non-judgmental. Write 2-3 sentences.\n` +
  `Output language must match the locale: {locale}.\n` +
  `Return JSON only: {"summary": "..."}`;

interface MealRow extends AiSummaryMealRow {
  logged_at: Date;
  logged_meal_name: string | null;
  logged_calories: number;
  logged_meal_type: string | null;
}

interface UserMealRow extends MealRow {
  user_id: string;
}

function csvCell(value: string | number): string {
  const normalized = String(value).replace(/[\r\n]+/g, ' ');
  return /[",]/.test(normalized)
    ? `"${normalized.replace(/"/g, '""')}"`
    : normalized;
}

function formatMealsAsCsv(meals: MealRow[], timeZone: string): string {
  return meals
    .map((m) => {
      const date = calendarDateInTimeZone(m.logged_at, timeZone);
      const mealType = m.logged_meal_type ?? '';
      const type = MEAL_TYPE_ABBREV[mealType] ?? mealType[0] ?? '?';
      const name = (m.logged_meal_name ?? '').slice(0, 40);
      return [date, type, name, `${m.logged_calories} cal`]
        .map(csvCell)
        .join(', ');
    })
    .join('\n');
}

const openai = new OpenAI({ apiKey: config.OPENAI_API_KEY ?? undefined });

// ---------------------------------------------------------------------------
// Types shared between service and cron
// ---------------------------------------------------------------------------

export interface UserSummaryRequest {
  userId: string;
  locale: string;
  timeZone?: string;
  mealCount: number;
  stats?: AiSummaryStats;
  csv: string;
}

/** Stored in ai_summary_batches.user_data keyed by custom_id */
export interface BatchUserMeta {
  userId: string;
  locale: string;
  timeZone?: string;
  mealCount: number;
  stats?: AiSummaryStats;
}

// ---------------------------------------------------------------------------
// Step 1 — Collect meal data for users (called before building the batch)
// ---------------------------------------------------------------------------

export async function collectMealDataForUser(
  userId: string,
  locale: string,
  timeZone: string = 'UTC'
): Promise<UserSummaryRequest | null> {
  const { rows: meals } = await query<MealRow>(
    `SELECT logged_at, logged_meal_name, logged_calories, logged_meal_type,
            logged_protein, logged_carbs, logged_fat, logged_fiber
       FROM meal_analysis_session
      WHERE user_id = $1
        AND logged_at >= NOW() - INTERVAL '3 days'
        AND logged_at <= NOW() + INTERVAL '5 minutes'
        AND logged_meal_name IS NOT NULL
      ORDER BY logged_at`,
    [userId]
  );

  if (meals.length === 0) return null;

  return {
    userId,
    locale,
    timeZone,
    mealCount: meals.length,
    stats: computeAiSummaryStats(meals),
    csv: formatMealsAsCsv(meals, timeZone),
  };
}

export interface SummaryUserInput {
  userId: string;
  locale: string;
  timeZone: string;
}

/** Collect many users in one ordered query to avoid one DB request per user. */
export async function collectMealDataForUsers(
  users: SummaryUserInput[]
): Promise<UserSummaryRequest[]> {
  if (users.length === 0) return [];
  const { rows } = await query<UserMealRow>(
    `SELECT user_id, logged_at, logged_meal_name, logged_calories,
            logged_meal_type, logged_protein, logged_carbs, logged_fat,
            logged_fiber
       FROM meal_analysis_session
      WHERE user_id = ANY($1::text[])
        AND logged_at >= NOW() - INTERVAL '3 days'
        AND logged_at <= NOW() + INTERVAL '5 minutes'
        AND logged_meal_name IS NOT NULL
      ORDER BY user_id, logged_at`,
    [users.map((user) => user.userId)]
  );
  const mealsByUser = new Map<string, MealRow[]>();
  for (const row of rows) {
    const meals = mealsByUser.get(row.user_id) ?? [];
    meals.push(row);
    mealsByUser.set(row.user_id, meals);
  }
  return users.flatMap((user) => {
    const meals = mealsByUser.get(user.userId) ?? [];
    if (meals.length === 0) return [];
    return [{
      userId: user.userId,
      locale: user.locale,
      timeZone: user.timeZone,
      mealCount: meals.length,
      stats: computeAiSummaryStats(meals),
      csv: formatMealsAsCsv(meals, user.timeZone),
    }];
  });
}

// ---------------------------------------------------------------------------
// Step 2 — Build + submit a batch for a list of users
// ---------------------------------------------------------------------------

/**
 * Builds a JSONL string where each line is one OpenAI batch request.
 * custom_id is batch-local so stable Firebase identities are not disclosed to
 * the provider alongside meal-history data.
 */
function buildBatchJsonl(requests: UserSummaryRequest[]): string {
  return requests
    .map((req, index) => {
      const systemPrompt = SYSTEM_PROMPT_TEMPLATE.replace('{locale}', req.locale);
      const line = {
        custom_id: `request-${index + 1}`,
        method: 'POST',
        url: '/v1/chat/completions',
        body: {
          model: OPENAI_AI_SUMMARY_MODEL,
          response_format: { type: 'json_object' },
          messages: [
            { role: 'system', content: systemPrompt },
            {
              role: 'user',
              content: `Meal log (date, type B/L/D/S, name, calories):\n${req.csv}`,
            },
          ],
          max_completion_tokens: 200,
        },
      };
      return JSON.stringify(line);
    })
    .join('\n');
}

const BATCH_MAX_REQUESTS = 10_000;
const BATCH_MAX_BYTES = 190 * 1024 * 1024;

export function splitSummaryRequestsIntoBatches(
  requests: UserSummaryRequest[]
): UserSummaryRequest[][] {
  const chunks: UserSummaryRequest[][] = [];
  let chunk: UserSummaryRequest[] = [];
  let chunkBytes = 0;
  for (const request of requests) {
    const requestBytes = Buffer.byteLength(buildBatchJsonl([request]), 'utf8') + 1;
    if (requestBytes > BATCH_MAX_BYTES) {
      throw new Error('An AI summary request exceeds the batch file limit');
    }
    if (
      chunk.length > 0 &&
      (chunk.length >= BATCH_MAX_REQUESTS || chunkBytes + requestBytes > BATCH_MAX_BYTES)
    ) {
      chunks.push(chunk);
      chunk = [];
      chunkBytes = 0;
    }
    chunk.push(request);
    chunkBytes += requestBytes;
  }
  if (chunk.length > 0) chunks.push(chunk);
  return chunks;
}

export interface SubmittedBatch {
  openAiBatchId: string;
  requestCount: number;
  /** custom_id -> BatchUserMeta */
  userData: Record<string, BatchUserMeta>;
}

function buildUserData(requests: UserSummaryRequest[]): Record<string, BatchUserMeta> {
  const userData: Record<string, BatchUserMeta> = Object.create(null);
  for (const [index, req] of requests.entries()) {
    userData[`request-${index + 1}`] = {
      userId: req.userId,
      locale: req.locale,
      timeZone: req.timeZone,
      mealCount: req.mealCount,
      stats: req.stats,
    };
  }
  return userData;
}

/**
 * Uploads the JSONL file to OpenAI and creates a batch job.
 * Returns the batch ID and the user metadata map for storage.
 */
export async function submitBatch(
  requests: UserSummaryRequest[],
  submissionKey?: string
): Promise<SubmittedBatch> {
  if (requests.length === 0) throw new Error('No requests to batch');

  const jsonl = buildBatchJsonl(requests);
  // Upload the JSONL as an input file
  const inputFile = await openai.files.create({
    file: await toFile(Buffer.from(jsonl, 'utf-8'), 'ai_summary_batch.jsonl', {
      type: 'application/jsonl',
    }),
    purpose: 'batch',
  });

  // Create the batch job
  const batch = await openai.batches.create({
    input_file_id: inputFile.id,
    endpoint: '/v1/chat/completions',
    completion_window: '24h',
    metadata: submissionKey
      ? { calorify_submission_key: submissionKey }
      : undefined,
  });

  return {
    openAiBatchId: batch.id,
    requestCount: requests.length,
    userData: buildUserData(requests),
  };
}

// ---------------------------------------------------------------------------
// Step 3 — Poll a pending batch and process results if complete
// ---------------------------------------------------------------------------

export type BatchStatus =
  | 'creating'
  | 'submitted'
  | 'processing'
  | 'completed'
  | 'failed'
  | 'cancelled'
  | 'expired';

export interface PollResult {
  status: BatchStatus;
  savedCount: number;
  errorCount: number;
  error?: string;
}

/**
 * Checks the status of a batch.
 * If completed, downloads results, parses summaries, and inserts into ai_summaries.
 */
export async function pollAndProcessBatch(
  openAiBatchId: string,
  userData: Record<string, BatchUserMeta>
): Promise<PollResult> {
  const batch = await openai.batches.retrieve(openAiBatchId);

  // Map OpenAI status to our internal status
  const statusMap: Record<string, BatchStatus> = {
    validating: 'submitted',
    in_progress: 'processing',
    finalizing: 'processing',
    completed: 'completed',
    failed: 'failed',
    cancelled: 'cancelled',
    expired: 'expired',
    cancelling: 'cancelled',
  };
  const ourStatus: BatchStatus = statusMap[batch.status] ?? 'processing';

  if (ourStatus !== 'completed') {
    return { status: ourStatus, savedCount: 0, errorCount: 0 };
  }

  const fileIds = [batch.output_file_id, batch.error_file_id].filter(
    (id): id is string => Boolean(id)
  );
  if (fileIds.length === 0) {
    const errorCount = Object.keys(userData).length;
    return {
      status: 'failed',
      savedCount: 0,
      errorCount,
      error: 'Completed provider batch had no output or error file',
    };
  }

  const lines: string[] = [];
  for (const fileId of fileIds) {
    const fileResponse = await openai.files.content(fileId);
    const text = await fileResponse.text();
    lines.push(...text.split('\n').filter((line) => line.trim().length > 0));
  }

  let savedCount = 0;
  let errorCount = 0;
  let persistenceFailed = false;
  const seenCustomIds = new Set<string>();
  const errors: string[] = [];

  for (const [resultIndex, line] of lines.entries()) {
    const requestNumber = resultIndex + 1;
    let result: {
      custom_id: string;
      response?: { status_code: number; body?: { choices?: Array<{ message?: { content?: string } }> } };
      error?: unknown;
    };

    try {
      result = JSON.parse(line);
    } catch {
      errorCount++;
      continue;
    }

    const meta = userData[result.custom_id];
    if (!meta) {
      errorCount++;
      console.error(
        `[aiSummaryService] Batch result ${requestNumber} did not match stored request metadata`
      );
      continue;
    }
    seenCustomIds.add(result.custom_id);

    if (result.error || result.response?.status_code !== 200) {
      errorCount++;
      errors.push(`Provider request ${requestNumber} failed`);
      console.error(
        `[aiSummaryService] Provider request ${requestNumber} failed with status ${result.response?.status_code ?? 'error'}`
      );
      continue;
    }

    const content = result.response?.body?.choices?.[0]?.message?.content ?? '{}';
    let summary: string;
    try {
      const parsed = JSON.parse(content) as { summary?: unknown };
      summary = typeof parsed.summary === 'string' ? parsed.summary.trim() : '';
    } catch {
      summary = '';
    }

    if (!summary) {
      errorCount++;
      errors.push(`Provider returned no summary for request ${requestNumber}`);
      console.error(
        `[aiSummaryService] Batch result ${requestNumber} had no usable summary after parsing model output`
      );
      continue;
    }

    try {
      await saveAiSummary(
        meta.userId,
        summary,
        meta.locale,
        meta.mealCount,
        openAiBatchId,
        meta.stats
      );
      savedCount++;
    } catch (err) {
      errorCount++;
      persistenceFailed = true;
      errors.push(`Database save failed for request ${requestNumber}`);
      console.error(
        `[aiSummaryService] Database save failed for request ${requestNumber}`,
        safeErrorMetadata(err, 'ai_summary_save_failed')
      );
    }
  }

  for (const [requestIndex, customId] of Object.keys(userData).entries()) {
    if (seenCustomIds.has(customId)) continue;
    errorCount++;
    errors.push(`Provider returned no result for request ${requestIndex + 1}`);
  }

  if (persistenceFailed) {
    return {
      status: 'processing',
      savedCount,
      errorCount,
      error: errors.join('; '),
    };
  }
  if (errorCount > 0) {
    return {
      status: 'failed',
      savedCount,
      errorCount,
      error: errors.join('; ') || `${errorCount} batch result(s) could not be processed`,
    };
  }
  return { status: 'completed', savedCount, errorCount: 0 };
}

// ---------------------------------------------------------------------------
// Persistence helpers
// ---------------------------------------------------------------------------

export async function saveAiSummary(
  userId: string,
  summary: string,
  locale: string,
  mealCount: number,
  openAiBatchId?: string,
  stats?: AiSummaryStats
): Promise<boolean> {
  const result = await query(
    `INSERT INTO ai_summaries
       (user_id, summary, locale, meal_count, openai_batch_id, stats_snapshot)
     VALUES ($1, $2, $3, $4, $5, $6::jsonb)
     ON CONFLICT (openai_batch_id, user_id) WHERE openai_batch_id IS NOT NULL
     DO NOTHING`,
    [
      userId,
      summary,
      locale,
      mealCount,
      openAiBatchId ?? null,
      stats ? JSON.stringify(stats) : null,
    ]
  );
  return result.rowCount !== 0;
}

export async function saveBatchIntent(
  pendingBatchId: string,
  requests: UserSummaryRequest[]
): Promise<void> {
  await query(
    `INSERT INTO ai_summary_batches
       (openai_batch_id, status, request_count, user_data)
     VALUES ($1, 'creating', $2, $3::jsonb)`,
    [pendingBatchId, requests.length, JSON.stringify(buildUserData(requests))]
  );
}

export async function activateBatchRecord(
  pendingBatchId: string,
  batch: SubmittedBatch
): Promise<void> {
  await query(
    `UPDATE ai_summary_batches
        SET openai_batch_id = $2,
            status = 'submitted',
            request_count = $3,
            user_data = $4::jsonb,
            error = NULL
      WHERE openai_batch_id = $1
        AND status = 'creating'`,
    [
      pendingBatchId,
      batch.openAiBatchId,
      batch.requestCount,
      JSON.stringify(batch.userData),
    ]
  );
}

interface CreatingBatchRow {
  openai_batch_id: string;
  submitted_at: Date | string;
}

/** Recover the narrow crash window between provider creation and DB activation. */
export async function reconcileCreatingBatches(): Promise<void> {
  const { rows } = await query<CreatingBatchRow>(
    `SELECT openai_batch_id, submitted_at
       FROM ai_summary_batches
      WHERE status = 'creating'
      ORDER BY submitted_at`
  );
  if (rows.length === 0) return;

  const pendingByKey = new Map(
    rows.map((row) => [row.openai_batch_id.replace(/^pending:/, ''), row])
  );

  try {
    for await (const batch of openai.batches.list({ limit: 100 })) {
      const submissionKey = batch.metadata?.calorify_submission_key;
      if (!submissionKey || !pendingByKey.has(submissionKey)) continue;
      const row = pendingByKey.get(submissionKey)!;
      await query(
        `UPDATE ai_summary_batches
            SET openai_batch_id = $2,
                status = 'submitted',
                error = NULL
          WHERE openai_batch_id = $1
            AND status = 'creating'`,
        [row.openai_batch_id, batch.id]
      );
      pendingByKey.delete(submissionKey);
      if (pendingByKey.size === 0) break;
    }
  } catch (err) {
    console.error(
      '[aiSummaryService] Failed to reconcile creating batches:',
      safeErrorMetadata(err, 'batch_reconciliation_failed')
    );
    return;
  }

  const staleBefore = Date.now() - 26 * 60 * 60 * 1000;
  for (const row of pendingByKey.values()) {
    if (new Date(row.submitted_at).getTime() >= staleBefore) continue;
    await updateBatchStatus(
      row.openai_batch_id,
      'failed',
      'No provider batch was found for the persisted submission intent'
    );
  }
}

export async function saveBatchRecord(batch: SubmittedBatch): Promise<void> {
  await query(
    `INSERT INTO ai_summary_batches
       (openai_batch_id, status, request_count, user_data)
     VALUES ($1, 'submitted', $2, $3::jsonb)`,
    [batch.openAiBatchId, batch.requestCount, JSON.stringify(batch.userData)]
  );
}

export async function updateBatchStatus(
  openAiBatchId: string,
  status: BatchStatus,
  error?: string
): Promise<void> {
  await query(
    `UPDATE ai_summary_batches
        SET status       = $2::text,
            completed_at = CASE WHEN $2::text IN ('completed','failed','cancelled','expired') THEN NOW() ELSE NULL END,
            error        = $3
      WHERE openai_batch_id = $1`,
    [openAiBatchId, status, error ?? null]
  );
}

interface PendingBatchRow {
  openai_batch_id: string;
  user_data: Record<string, BatchUserMeta>;
}

export async function getPendingBatches(): Promise<PendingBatchRow[]> {
  const { rows } = await query<PendingBatchRow>(
    `SELECT openai_batch_id, user_data
       FROM ai_summary_batches
      WHERE status IN ('submitted', 'processing')
      ORDER BY submitted_at`
  );
  return rows;
}
