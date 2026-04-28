import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';
import { runAiSummaryJob } from '../jobs/aiSummaryCron.js';
import { parseAiSummaryRunArgs, printAiSummaryRunHelp } from './aiSummaryRunCliArgs.js';

async function main(): Promise<void> {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set');
  }

  const parsed = parseAiSummaryRunArgs(process.argv);
  if (!parsed.ok) {
    if (parsed.kind === 'help') {
      printAiSummaryRunHelp();
      process.exit(0);
    }
    console.error(parsed.message);
    printAiSummaryRunHelp();
    process.exit(1);
  }

  initializeDatabase();
  await runMigrations();
  const result = await runAiSummaryJob({ submit: parsed.submit });
  if (!result) {
    throw new Error('runAiSummaryJob did not run (missing DATABASE_URL?)');
  }
  await closeDatabase();

  if (parsed.submit.mode === 'user' && result.submitOutcome !== 'submitted') {
    console.error(
      '[ai-summary:run] Exiting with errors: expected a batch submission for single-user run — see logs above.'
    );
    process.exit(1);
  }

  console.log('[ai-summary:run] completed');
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});
