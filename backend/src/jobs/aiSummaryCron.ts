import cron from 'node-cron';
import { query } from '../services/database.js';
import { generateAiSummaryForUser, saveAiSummary } from '../services/aiSummaryService.js';
import { getCountriesAt3am } from '../utils/timezone.js';
import config from '../config.js';

interface UserRow {
  user_id: string;
  locale: string;
}

async function runAiSummaryJob(): Promise<void> {
  if (!config.DATABASE_URL) return;

  const now = new Date();
  const countries = getCountriesAt3am(now);

  if (countries.length === 0) return;

  // Find users whose most recent session is from one of the 3am countries
  // and who have logged at least one V2 meal in the last 3 days
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

  console.log(`[aiSummaryCron] Processing ${users.length} user(s) at 3am local (countries: ${countries.join(', ')})`);

  let successCount = 0;
  let errorCount = 0;

  for (const user of users) {
    try {
      const result = await generateAiSummaryForUser({
        userId: user.user_id,
        locale: user.locale,
      });

      if (result) {
        await saveAiSummary(user.user_id, result.summary, user.locale, result.mealCount);
        successCount++;
      }
    } catch (err) {
      errorCount++;
      console.error(`[aiSummaryCron] Failed for user ${user.user_id}:`, err instanceof Error ? err.message : err);
    }
  }

  console.log(`[aiSummaryCron] Done. success=${successCount} errors=${errorCount}`);
}

export function startAiSummaryCron(): void {
  // Run at the top of every hour
  cron.schedule('0 * * * *', () => {
    runAiSummaryJob().catch((err) => {
      console.error('[aiSummaryCron] Unhandled error in job:', err);
    });
  });

  console.log('✅ AI summary CRON scheduled (hourly, processes users at 3am local time)');
}
