import OpenAI, { toFile } from 'openai';
import config from '../config.js';
import { OPENAI_AI_SUMMARY_MODEL } from '../openaiModels.js';
import { query } from './database.js';

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

interface MealRow {
  logged_at: Date;
  logged_meal_name: string;
  logged_calories: number;
  logged_meal_type: string;
}

function formatMealsAsCsv(meals: MealRow[]): string {
  return meals
    .map((m) => {
      const date = m.logged_at.toISOString().slice(0, 10);
      const type = MEAL_TYPE_ABBREV[m.logged_meal_type] ?? m.logged_meal_type[0] ?? '?';
      const name = (m.logged_meal_name ?? '').slice(0, 40);
      return `${date}, ${type}, ${name}, ${m.logged_calories} cal`;
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
  mealCount: number;
  csv: string;
}

/** Stored in ai_summary_batches.user_data keyed by custom_id */
export interface BatchUserMeta {
  userId: string;
  locale: string;
  mealCount: number;
}

// ---------------------------------------------------------------------------
// Step 1 — Collect meal data for users (called before building the batch)
// ---------------------------------------------------------------------------

export async function collectMealDataForUser(
  userId: string,
  locale: string
): Promise<UserSummaryRequest | null> {
  const { rows: meals } = await query<MealRow>(
    `SELECT logged_at, logged_meal_name, logged_calories, logged_meal_type
       FROM meal_analysis_session
      WHERE user_id = $1
        AND logged_at >= NOW() - INTERVAL '3 days'
        AND logged_meal_name IS NOT NULL
      ORDER BY logged_at`,
    [userId]
  );

  if (meals.length === 0) return null;

  return {
    userId,
    locale,
    mealCount: meals.length,
    csv: formatMealsAsCsv(meals),
  };
}

// ---------------------------------------------------------------------------
// Step 2 — Build + submit a batch for a list of users
// ---------------------------------------------------------------------------

/**
 * Builds a JSONL string where each line is one OpenAI batch request.
 * custom_id = userId (unique per batch; Firebase UIDs are already unique).
 */
function buildBatchJsonl(requests: UserSummaryRequest[]): string {
  return requests
    .map((req) => {
      const systemPrompt = SYSTEM_PROMPT_TEMPLATE.replace('{locale}', req.locale);
      const line = {
        custom_id: req.userId,
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

export interface SubmittedBatch {
  openAiBatchId: string;
  requestCount: number;
  /** custom_id -> BatchUserMeta */
  userData: Record<string, BatchUserMeta>;
}

/**
 * Uploads the JSONL file to OpenAI and creates a batch job.
 * Returns the batch ID and the user metadata map for storage.
 */
export async function submitBatch(
  requests: UserSummaryRequest[]
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
  });

  // Build the user data map for persistence
  const userData: Record<string, BatchUserMeta> = {};
  for (const req of requests) {
    userData[req.userId] = {
      userId: req.userId,
      locale: req.locale,
      mealCount: req.mealCount,
    };
  }

  return {
    openAiBatchId: batch.id,
    requestCount: requests.length,
    userData,
  };
}

// ---------------------------------------------------------------------------
// Step 3 — Poll a pending batch and process results if complete
// ---------------------------------------------------------------------------

export type BatchStatus = 'submitted' | 'processing' | 'completed' | 'failed' | 'cancelled' | 'expired';

export interface PollResult {
  status: BatchStatus;
  savedCount: number;
  errorCount: number;
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

  if (!batch.output_file_id) {
    return { status: 'failed', savedCount: 0, errorCount: 0 };
  }

  // Download and parse the results JSONL
  const fileResponse = await openai.files.content(batch.output_file_id);
  const text = await fileResponse.text();
  const lines = text.split('\n').filter((l) => l.trim().length > 0);

  let savedCount = 0;
  let errorCount = 0;

  for (const line of lines) {
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
      continue;
    }

    if (result.error || result.response?.status_code !== 200) {
      errorCount++;
      console.error(`[aiSummaryService] Batch result error for user ${meta.userId}:`, result.error);
      continue;
    }

    const content = result.response?.body?.choices?.[0]?.message?.content ?? '{}';
    let summary: string;
    try {
      const parsed = JSON.parse(content) as { summary?: string | null };
      summary = parsed.summary ?? '';
    } catch {
      summary = '';
    }

    if (!summary) {
      errorCount++;
      continue;
    }

    try {
      await saveAiSummary(meta.userId, summary, meta.locale, meta.mealCount);
      savedCount++;
    } catch (err) {
      errorCount++;
      console.error(`[aiSummaryService] Failed to save summary for user ${meta.userId}:`, err);
    }
  }

  return { status: 'completed', savedCount, errorCount };
}

// ---------------------------------------------------------------------------
// Persistence helpers
// ---------------------------------------------------------------------------

export async function saveAiSummary(
  userId: string,
  summary: string,
  locale: string,
  mealCount: number
): Promise<void> {
  await query(
    `INSERT INTO ai_summaries (user_id, summary, locale, meal_count)
     VALUES ($1, $2, $3, $4)`,
    [userId, summary, locale, mealCount]
  );
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
        SET status       = $2,
            completed_at = CASE WHEN $2 IN ('completed','failed','cancelled','expired') THEN NOW() ELSE NULL END,
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
