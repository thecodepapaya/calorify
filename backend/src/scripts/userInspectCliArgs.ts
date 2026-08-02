export interface UserInspectCliOptions {
  userId: string;
  limit: number;
  json: boolean;
}

export type UserInspectCliResult =
  | { ok: true; options: UserInspectCliOptions }
  | { ok: false; kind: 'help' }
  | { ok: false; kind: 'error'; message: string };

export function printUserInspectHelp(): void {
  console.log(`
npm run user:inspect -- --user-id <firebaseUid> [options]

Read-only user diagnostics for meal analysis and AI summaries.

Required
  --user-id <uid>  Firebase UID to inspect (--user is an alias)

Options
  --limit <n>      Maximum history rows per section, 1-100 (default: 10)
  --json           Emit the complete machine-readable report
  -h, --help       Show this message

The report excludes auth tokens, uploaded-image URLs, and raw request payloads.
`.trim());
}

function positiveInteger(raw: string | undefined, flag: string): number | string {
  if (!raw) return `${flag} requires a value`;
  const parsed = Number(raw);
  if (!Number.isInteger(parsed) || parsed < 1 || parsed > 100) {
    return `${flag} must be an integer from 1 to 100`;
  }
  return parsed;
}

export function parseUserInspectArgs(argv: string[]): UserInspectCliResult {
  const args = argv.slice(2);
  if (args.some((arg) => arg === '-h' || arg === '--help')) {
    return { ok: false, kind: 'help' };
  }

  let userId: string | null = null;
  let limit = 10;
  let json = false;

  for (let i = 0; i < args.length; i++) {
    const arg = args[i]!;
    if (arg === '--user-id' || arg === '--user') {
      const value = args[++i]?.trim();
      if (!value) return { ok: false, kind: 'error', message: `${arg} requires a non-empty UID` };
      if (userId !== null) return { ok: false, kind: 'error', message: 'Specify the user ID only once' };
      userId = value;
      continue;
    }
    if (arg === '--limit') {
      const parsed = positiveInteger(args[++i], '--limit');
      if (typeof parsed === 'string') return { ok: false, kind: 'error', message: parsed };
      limit = parsed;
      continue;
    }
    if (arg === '--json') {
      json = true;
      continue;
    }
    return { ok: false, kind: 'error', message: `Unknown argument: ${arg}` };
  }

  if (userId === null) {
    return { ok: false, kind: 'error', message: '--user-id is required' };
  }
  return { ok: true, options: { userId, limit, json } };
}
