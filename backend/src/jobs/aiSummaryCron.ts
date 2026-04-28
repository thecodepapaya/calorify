import cron from 'node-cron';
import { query } from '../services/database.js';
import {
  collectMealDataForUser,
  submitBatch,
  saveBatchRecord,
  getPendingBatches,
  pollAndProcessBatch,
  updateBatchStatus,
} from '../services/aiSummaryService.js';
import { DEFAULT_THREE_AM_PLUS_MINUS_MINUTES, getCountriesNear3am } from '../utils/timezone.js';
import config from '../config.js';

interface UserRow {
  user_id: string;
  locale: string;
}

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
      await updateBatchStatus(row.openai_batch_id, result.status);

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
        err instanceof Error ? err.message : err
      );
    }
  }
}

// ---------------------------------------------------------------------------
// User resolution for submit phase
// ---------------------------------------------------------------------------

async function queryUsersByCountries(countries: string[]): Promise<UserRow[]> {
  if (countries.length === 0) return [];

  const { rows } = await query<UserRow>(
    `SELECT DISTINCT ON (s.user_id) s.user_id, COALESCE(s.locale, 'en') AS locale
       FROM meal_analysis_session s
      WHERE s.country_code = ANY($1::text[])
        AND s.user_id IS NOT NULL
        AND s.logged_at >= NOW() - INTERVAL '3 days'
      ORDER BY s.user_id, s.created_at DESC`,
    [countries]
  );
  return rows;
}

async function queryAllRecentUsers(): Promise<UserRow[]> {
  const { rows } = await query<UserRow>(
    `SELECT DISTINCT ON (s.user_id) s.user_id, COALESCE(s.locale, 'en') AS locale
       FROM meal_analysis_session s
      WHERE s.user_id IS NOT NULL
        AND s.logged_at >= NOW() - INTERVAL '3 days'
      ORDER BY s.user_id, s.created_at DESC`
  );
  return rows;
}

async function queryLatestSessionForUser(userId: string): Promise<UserRow | null> {
  const { rows } = await query<UserRow>(
    `SELECT s.user_id, COALESCE(s.locale, 'en') AS locale
       FROM meal_analysis_session s
      WHERE s.user_id = $1
      ORDER BY s.created_at DESC
      LIMIT 1`,
    [userId]
  );
  return rows[0] ?? null;
}

async function resolveUsersAndCountries(
  submit: AiSummarySubmitMode,
  now: Date
): Promise<{ users: UserRow[]; countries: string[] }> {
  switch (submit.mode) {
    case 'cron_hour': {
      const countries = getCountriesNear3am(now, DEFAULT_THREE_AM_PLUS_MINUS_MINUTES);
      if (countries.length === 0) return { users: [], countries: [] };
      const users = await queryUsersByCountries(countries);
      return { users, countries };
    }
    case 'all': {
      const users = await queryAllRecentUsers();
      return { users, countries: [] };
    }
    case 'user': {
      const row = await queryLatestSessionForUser(submit.userId);
      const users = row ? [row] : [];
      return { users, countries: [] };
    }
    default: {
      const _exhaustive: never = submit;
      return _exhaustive;
    }
  }
}

function submitLogLabel(submit: AiSummarySubmitMode, countries: string[]): string {
  switch (submit.mode) {
    case 'cron_hour':
      return (
        `local ~03:00 [−${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}m inclusive, +${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}m exclusive)` +
        ` → countries: ${countries.join(', ')}`
      );
    case 'all':
      return 'all users with sessions in last 3 days';
    case 'user':
      return `single user ${submit.userId}`;
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

async function submitNewBatch(submit: AiSummarySubmitMode, now: Date): Promise<AiSummarySubmitOutcome> {
  const { users, countries } = await resolveUsersAndCountries(submit, now);

  if (submit.mode === 'user' && users.length === 0) {
    console.error(
      `[aiSummaryCron] No meal_analysis_session row for user ${submit.userId}; nothing to submit`
    );
    return 'skipped';
  }

  if (users.length === 0) {
    if (submit.mode === 'cron_hour') {
      return 'skipped';
    }
    console.log('[aiSummaryCron] No eligible users for batch submission');
    return 'skipped';
  }

  console.log(`[aiSummaryCron] Building batch for ${users.length} user(s) (${submitLogLabel(submit, countries)})`);

  const requests = (
    await Promise.all(
      users.map((u) => collectMealDataForUser(u.user_id, u.locale))
    )
  ).filter((r) => r !== null);

  if (requests.length === 0) {
    console.log('[aiSummaryCron] No users with meal data, skipping batch submission');
    return 'skipped';
  }

  try {
    const submitted = await submitBatch(requests);
    await saveBatchRecord(submitted);
    console.log(
      `[aiSummaryCron] Submitted batch ${submitted.openAiBatchId} ` +
      `with ${submitted.requestCount} request(s)`
    );
    return 'submitted';
  } catch (err) {
    console.error('[aiSummaryCron] Failed to submit batch:', err instanceof Error ? err.message : err);
    return 'failed';
  }
}

// ---------------------------------------------------------------------------
// Main job: poll first, then submit
// ---------------------------------------------------------------------------

export type RunAiSummaryJobOptions = {
  /** Default matches production cron: countries in the ~3am ±window (see timezone helper). */
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

  await pollPendingBatches();
  const submitOutcome = await submitNewBatch(submit, new Date());
  return { submitOutcome };
}

export function startAiSummaryCron(): void {
  // Run at the top of every hour
  cron.schedule('0 * * * *', () =>
    runAiSummaryJob().catch((err) => {
      console.error('[aiSummaryCron] Unhandled error in job:', err);
    })
  );

  console.log(
    `✅ AI summary CRON scheduled (hourly @ :00 UTC: poll batches + submit for countries in local ` +
      `03:00 ±${DEFAULT_THREE_AM_PLUS_MINUS_MINUTES}min window [02:30, 03:30))`
  );
}
