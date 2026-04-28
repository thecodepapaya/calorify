import type { AiSummarySubmitMode } from '../jobs/aiSummaryCron.js';

export function printAiSummaryRunHelp(): void {
  console.log(`
npm run ai-summary:run -- [options]

Poll pending OpenAI batches (always), then submit one batch for selected users.

Scope (pick one; default: production window)
  --scope cron-hour   Countries where local time is ~03:00 with a symmetric margin (default ±30 min:
                      02:30 inclusive … 03:30 exclusive — same logic as hourly cron).
  --scope near-3am    Same as cron-hour (alias).
  --scope all         Every user with meal sessions in the last 3 days (any country).
  --user <firebaseUid>  Single user only (uses latest session row for locale).

Other
  -h, --help       Show this message
`.trim());
}

export type AiSummaryRunCliResult =
  | { ok: true; submit: AiSummarySubmitMode }
  | { ok: false; kind: 'help' }
  | { ok: false; kind: 'error'; message: string };

export function parseAiSummaryRunArgs(argv: string[]): AiSummaryRunCliResult {
  const args = argv.slice(2);
  if (args.some((a) => a === '-h' || a === '--help')) {
    return { ok: false, kind: 'help' };
  }

  let scope: 'cron_hour' | 'all' | null = null;
  let userId: string | null = null;

  for (let i = 0; i < args.length; i++) {
    const a = args[i]!;
    if (a === '--scope') {
      const v = args[++i];
      if (!v) return { ok: false, kind: 'error', message: '--scope requires a value (cron-hour | near-3am | all)' };
      // near-3am is an alias: production uses one ~3am window for both
      if (v === 'cron-hour' || v === 'near-3am') scope = 'cron_hour';
      else if (v === 'all') scope = 'all';
      else {
        return { ok: false, kind: 'error', message: `Unknown --scope value: ${v}` };
      }
      continue;
    }
    if (a === '--user') {
      const v = args[++i];
      if (!v?.trim()) return { ok: false, kind: 'error', message: '--user requires a non-empty UID' };
      userId = v.trim();
      continue;
    }
    return { ok: false, kind: 'error', message: `Unknown argument: ${a}` };
  }

  if (userId !== null && scope !== null) {
    return { ok: false, kind: 'error', message: 'Use either --user or --scope, not both' };
  }

  if (userId !== null) {
    return { ok: true, submit: { mode: 'user', userId } };
  }

  if (scope !== null) {
    return { ok: true, submit: { mode: scope } };
  }

  return { ok: true, submit: { mode: 'cron_hour' } };
}
