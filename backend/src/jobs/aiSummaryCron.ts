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
import { getCountriesAt3am } from '../utils/timezone.js';
import config from '../config.js';

interface UserRow {
  user_id: string;
  locale: string;
}

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
// Phase 2: Submit a new batch for users at 3am local time
// ---------------------------------------------------------------------------

async function submitNewBatch(): Promise<void> {
  const now = new Date();
  const countries = getCountriesAt3am(now);
  if (countries.length === 0) return;

  // Users whose last known country is in the 3am window and who have V2 meals in the last 3 days
  const { rows: users } = await query<UserRow>(
    `SELECT DISTINCT ON (s.user_id) s.user_id, COALESCE(s.locale, 'en') AS locale
       FROM meal_analysis_session s
      WHERE s.country_code = ANY($1::text[])
        AND s.user_id IS NOT NULL
        AND s.logged_at >= NOW() - INTERVAL '3 days'
      ORDER BY s.user_id, s.created_at DESC`,
    [countries]
  );

  if (users.length === 0) return;

  console.log(
    `[aiSummaryCron] Building batch for ${users.length} user(s) ` +
    `at 3am local (countries: ${countries.join(', ')})`
  );

  // Collect meal data for all users in parallel — this is just DB reads, safe to fan out
  const requests = (
    await Promise.all(
      users.map((u) => collectMealDataForUser(u.user_id, u.locale))
    )
  ).filter((r) => r !== null);

  if (requests.length === 0) {
    console.log('[aiSummaryCron] No users with meal data, skipping batch submission');
    return;
  }

  try {
    const submitted = await submitBatch(requests);
    await saveBatchRecord(submitted);
    console.log(
      `[aiSummaryCron] Submitted batch ${submitted.openAiBatchId} ` +
      `with ${submitted.requestCount} request(s)`
    );
  } catch (err) {
    console.error('[aiSummaryCron] Failed to submit batch:', err instanceof Error ? err.message : err);
  }
}

// ---------------------------------------------------------------------------
// Main job: poll first, then submit
// ---------------------------------------------------------------------------

async function runAiSummaryJob(): Promise<void> {
  if (!config.DATABASE_URL) return;

  await pollPendingBatches();
  await submitNewBatch();
}

export function startAiSummaryCron(): void {
  // Run at the top of every hour
  cron.schedule('0 * * * *', () => {
    runAiSummaryJob().catch((err) => {
      console.error('[aiSummaryCron] Unhandled error in job:', err);
    });
  });

  console.log('✅ AI summary CRON scheduled (hourly: poll completed batches + submit new batch for 3am users)');
}
