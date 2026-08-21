import cron, { type ScheduledTask } from 'node-cron';
import { randomUUID } from 'node:crypto';
import { query } from '../services/database.js';
import {
  activateBatchRecord,
  collectMealDataForUsers,
  submitBatch,
  saveBatchIntent,
  getPendingBatches,
  pollAndProcessBatch,
  reconcileCreatingBatches,
  splitSummaryRequestsIntoBatches,
  updateBatchStatus,
  type UserSummaryRequest,
} from '../services/aiSummaryService.js';
import {
  DEFAULT_THREE_AM_PLUS_MINUS_MINUTES,
  isTimeZoneNear3am,
  resolveTimeZone,
} from '../utils/timezone.js';
import config from '../config.js';
import { withDatabaseAdvisoryLock } from '../services/databaseAdvisoryLock.js';
import { safeErrorMetadata } from '../utils/safeError.js';

interface UserRow {
  user_id: string;
  locale: string;
  time_zone: string | null;
  country_code: string | null;
}

const COLLECTION_QUERY_USER_LIMIT = 1_000;
const AI_SUMMARY_JOB_LOCK = 'calorify:ai-summary-job';

/**
 * How to pick users for the submit phase (after polling pending batches).
 * `cron_hour` is the production window: ~local **03:00** with **−m inclusive / +m exclusive** bounds (see timezone helper).
 */
export type AiSummarySubmitMode =
  | { mode: 'cron_hour' }
  | { mode: 'all' }
  | { mode: 'user'; userId: string };

// ---------------------------------------------------------------------------
// Phase 1: Poll pending batches from previous runs
// ---------------------------------------------------------------------------

async function pollPendingBatches(): Promise<void> {
  const pending = await getPendingBatches();
  if (pending.length === 0) return;

  console.log(`[aiSummaryCron] Polling ${pending.length} pending batch(es)`);

  for (const row of pending) {
    try {
      const result = await pollAndProcessBatch(row.openai_batch_id, row.user_data);
      await updateBatchStatus(row.openai_batch_id, result.status, result.error);

      if (result.status === 'completed') {
        console.log(
          `[aiSummaryCron] Batch ${row.openai_batch_id} completed: ` +
          `saved=${result.savedCount} errors=${result.errorCount}`
        );
      } else if (result.status === 'failed' || result.status === 'expired' || result.status === 'cancelled') {
        console.error(`[aiSummaryCron] Batch ${row.openai_batch_id} ended with status: ${result.status}`);
      }
      // 'processing' / 'submitted' → still pending, will be checked next hour
    } catch (err) {
      console.error(
        `[aiSummaryCron] Error polling batch ${row.openai_batch_id}:`,
        safeErrorMetadata(err, 'batch_poll_failed')
      );
    }
  }
}

// ---------------------------------------------------------------------------
// User resolution for submit phase
// ---------------------------------------------------------------------------

async function queryAllRecentUsers(excludeActiveOrRecentBatches: boolean = false): Promise<UserRow[]> {
  const batchExclusion = excludeActiveOrRecentBatches
    ? `AND NOT EXISTS (
         SELECT 1
           FROM ai_summary_batches b
          WHERE (
              b.user_data ? s.user_id
              OR EXISTS (
                SELECT 1
                  FROM jsonb_each(b.user_data) AS batch_user(_custom_id, metadata)
                 WHERE batch_user.metadata ->> 'userId' = s.user_id
              )
            )
            AND (
              b.status IN ('creating', 'submitted', 'processing')
              OR (b.status = 'completed' AND b.submitted_at >= NOW() - INTERVAL '20 hours')
            )
       )`
    : '';
  const { rows } = await query<UserRow>(
    `SELECT DISTINCT ON (s.user_id)
            s.user_id,
            COALESCE(s.locale, 'en') AS locale,
            s.time_zone,
            s.country_code
       FROM meal_analysis_session s
      WHERE s.user_id IS NOT NULL
        AND s.logged_at >= NOW() - INTERVAL '3 days'
        AND s.logged_at <= NOW() + INTERVAL '5 minutes'
        ${batchExclusion}
      ORDER BY s.user_id, s.created_at DESC`
  );
  return rows;
}

async function queryLatestSessionForUser(userId: string): Promise<UserRow | null> {
  const { rows } = await query<UserRow>(
    `SELECT s.user_id,
            COALESCE(s.locale, 'en') AS locale,
            s.time_zone,
            s.country_code
       FROM meal_analysis_session s
      WHERE s.user_id = $1
      ORDER BY s.created_at DESC
      LIMIT 1`,
    [userId]
  );
  return rows[0] ?? null;
}

async function resolveUsersAndTimeZones(
  submit: AiSummarySubmitMode,
  now: Date
): Promise<{ users: UserRow[]; timeZones: string[] }> {
  switch (submit.mode) {
    case 'cron_hour': {
      const recentUsers = await queryAllRecentUsers(true);
      const users = recentUsers.filter((user) =>
        isTimeZoneNear3am(
          now,
          resolveTimeZone(user.time_zone ?? undefined, user.country_code ?? undefined),
          DEFAULT_THREE_AM_PLUS_MINUS_MINUTES
        )
      );
      const timeZones = [...new Set(users.map((user) =>
        resolveTimeZone(user.time_zone ?? undefined, user.country_code ?? undefined)
      ))];
      return { users, timeZones };
    }
    case 'all': {
      const users = await queryAllRecentUsers();
      return { users, timeZones: [] };
    }
    case 'user': {
      const row = await queryLatestSessionForUser(submit.userId);
      const users = row ? [row] : [];
      return { users, timeZones: [] };
    }
    default: {
      const _exhaustive: never = submit;
      return _exhaustive;
    }
  }
}

function submitLogLabel(submit: AiSummarySubmitMode, timeZones: string[]): string {
  switch (submit.mode) {
    case 'cron_hour':
      return (
        `local ~03:00 [−${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}m inclusive, +${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}m exclusive)` +
        ` → timezones: ${timeZones.join(', ')}`
      );
    case 'all':
      return 'all users with sessions in last 3 days';
    case 'user':
      return 'single requested user';
    default: {
      const _e: never = submit;
      return _e;
    }
  }
}

// ---------------------------------------------------------------------------
// Phase 2: Submit a new batch
// ---------------------------------------------------------------------------

export type AiSummarySubmitOutcome = 'submitted' | 'skipped' | 'failed';

async function submitTrackedBatch(
  requests: UserSummaryRequest[]
): Promise<AiSummarySubmitOutcome> {
  const submissionKey = randomUUID();
  const pendingBatchId = `pending:${submissionKey}`;

  try {
    await saveBatchIntent(pendingBatchId, requests);
  } catch (err) {
    console.error(
      '[aiSummaryCron] Failed to persist batch intent; provider submission skipped:',
      safeErrorMetadata(err, 'batch_intent_persist_failed')
    );
    return 'failed';
  }

  let submitted;
  try {
    submitted = await submitBatch(requests, submissionKey);
  } catch (err) {
    await updateBatchStatus(
      pendingBatchId,
      'failed',
      'Provider batch submission failed'
    ).catch((statusErr) =>
      console.error(
        '[aiSummaryCron] Failed to close rejected batch intent:',
        safeErrorMetadata(statusErr, 'batch_intent_close_failed')
      )
    );
    console.error(
      '[aiSummaryCron] Failed to submit batch:',
      safeErrorMetadata(err, 'batch_submission_failed')
    );
    return 'failed';
  }

  try {
    await activateBatchRecord(pendingBatchId, submitted);
  } catch (err) {
    // The provider batch carries submissionKey metadata, so the next run can
    // recover this activation without losing or duplicating the external job.
    console.error(
      `[aiSummaryCron] Batch ${submitted.openAiBatchId} submitted; DB activation deferred to reconciliation:`,
      safeErrorMetadata(err, 'batch_activation_failed')
    );
  }
  console.log(
    `[aiSummaryCron] Submitted batch ${submitted.openAiBatchId} ` +
      `with ${submitted.requestCount} request(s)`
  );
  return 'submitted';
}

async function submitNewBatch(submit: AiSummarySubmitMode, now: Date): Promise<AiSummarySubmitOutcome> {
  const { users, timeZones } = await resolveUsersAndTimeZones(submit, now);

  if (submit.mode === 'user' && users.length === 0) {
    console.error('[aiSummaryCron] No meal_analysis_session row for requested user; nothing to submit');
    return 'skipped';
  }

  if (users.length === 0) {
    if (submit.mode === 'cron_hour') {
      return 'skipped';
    }
    console.log('[aiSummaryCron] No eligible users for batch submission');
    return 'skipped';
  }

  console.log(`[aiSummaryCron] Building batch for ${users.length} user(s) (${submitLogLabel(submit, timeZones)})`);

  const requests: UserSummaryRequest[] = [];
  for (let start = 0; start < users.length; start += COLLECTION_QUERY_USER_LIMIT) {
    const chunk = users.slice(start, start + COLLECTION_QUERY_USER_LIMIT);
    requests.push(...await collectMealDataForUsers(chunk.map((user) => ({
      userId: user.user_id,
      locale: user.locale,
      timeZone: resolveTimeZone(user.time_zone ?? undefined, user.country_code ?? undefined),
    }))));
  }

  if (requests.length === 0) {
    console.log('[aiSummaryCron] No users with meal data, skipping batch submission');
    return 'skipped';
  }

  let outcome: AiSummarySubmitOutcome = 'submitted';
  for (const requestChunk of splitSummaryRequestsIntoBatches(requests)) {
    const chunkOutcome = await submitTrackedBatch(requestChunk);
    if (chunkOutcome === 'failed') outcome = 'failed';
  }
  return outcome;
}

// ---------------------------------------------------------------------------
// Main job: poll first, then submit
// ---------------------------------------------------------------------------

export type RunAiSummaryJobOptions = {
  /** Default matches production cron: users in their local ~3am window. */
  submit?: AiSummarySubmitMode;
};

export type RunAiSummaryJobResult = {
  /** Outcome of the submit phase (after polling pending batches). */
  submitOutcome: AiSummarySubmitOutcome;
};

/** One shot: poll pending OpenAI batches, then submit according to `submit` (default: same window as cron). */
export async function runAiSummaryJob(options?: RunAiSummaryJobOptions): Promise<RunAiSummaryJobResult | null> {
  if (!config.DATABASE_URL) return null;

  const submit: AiSummarySubmitMode = options?.submit ?? { mode: 'cron_hour' };
  const locked = await withDatabaseAdvisoryLock(AI_SUMMARY_JOB_LOCK, async () => {
    // Durable batch intents plus provider submission metadata make retries
    // idempotent across crashes; the advisory lock prevents two processes
    // from creating intents for the same scheduling window concurrently.
    await reconcileCreatingBatches();
    await pollPendingBatches();
    const submitOutcome = await submitNewBatch(submit, new Date());
    return { submitOutcome };
  });
  if (!locked.acquired) {
    console.warn('[aiSummaryCron] Another process owns the job lock; skipping overlap');
    return { submitOutcome: 'skipped' };
  }
  return locked.value;
}

export function startAiSummaryCron(): ScheduledTask {
  // Run at the top of every hour
  const task = cron.schedule('0 * * * *', async () => {
    try {
      await runAiSummaryJob();
    } catch (err) {
      console.error(
        '[aiSummaryCron] Unhandled error in job:',
        safeErrorMetadata(err, 'ai_summary_job_failed')
      );
    }
  });

  console.log(
    `✅ AI summary CRON scheduled (hourly @ :00 UTC: poll batches + submit for users in local ` +
      `03:00 ±${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}min window [02:30, 03:30))`
  );

  return task;
}
