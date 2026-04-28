/**
 * Meal Analysis API CLI
 *
 * Exercises the real streamed V2 backend flow without the app:
 * - POST /api/v2/food/analyze-text
 * - POST /api/v2/food/analyze-image
 * - POST /api/v2/food/clarify
 * - POST /api/v2/food/meal-type
 *
 * Supports:
 * - text input
 * - image URL input
 * - local image file upload to the existing object-storage upload URL, then streamed V2 analysis
 * - optional interactive clarification + meal-type follow-ups
 * - request ID correlation for backend console logs and Loki/Grafana
 * - optional Loki query after the run
 *
 * Usage examples:
 *   npx tsx src/scripts/meal-analysis-api-cli.ts --text "2 rotis with dal"
 *   npx tsx src/scripts/meal-analysis-api-cli.ts "2 rotis with dal"
 *   npx tsx src/scripts/meal-analysis-api-cli.ts --image-url "https://.../meal.jpg"
 *   npx tsx src/scripts/meal-analysis-api-cli.ts --image-file ./meal.jpg
 *   npx tsx src/scripts/meal-analysis-api-cli.ts --text "poha" --check-loki
 */

import dotenv from 'dotenv';
import { randomUUID } from 'node:crypto';
import { readFile } from 'node:fs/promises';
import { extname, join } from 'node:path';
import { createInterface } from 'node:readline/promises';

dotenv.config({ path: join(process.cwd(), 'staging.env') });
dotenv.config({ override: true });

const c = {
  reset: '\x1b[0m',
  bold: '\x1b[1m',
  dim: '\x1b[2m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  red: '\x1b[31m',
  cyan: '\x1b[36m',
  magenta: '\x1b[35m',
};

const B = (s: string) => `${c.bold}${s}${c.reset}`;
const D = (s: string) => `${c.dim}${s}${c.reset}`;
const G = (s: string) => `${c.green}${s}${c.reset}`;
const Y = (s: string) => `${c.yellow}${s}${c.reset}`;
const R = (s: string) => `${c.red}${s}${c.reset}`;
const C = (s: string) => `${c.cyan}${s}${c.reset}`;

const DEFAULT_BASE_URL = `http://localhost:${process.env.PORT ?? '8000'}`;

const DEFAULT_LOKI_URL = 'http://localhost:3100';

// Mirrors the app's upload destination so a local image file can still exercise the streamed V2 API.
const ORACLE_BUCKET_UPLOAD_URL =
  process.env.ORACLE_BUCKET_UPLOAD_URL ??
  'https://objectstorage.ap-mumbai-1.oraclecloud.com/p/oOdWDrhqvtFsQ4CLSt3kRn9nACEuk9wfqQBygsb3mVtxYkRmagTHS23ZDTzAE3LM/n/bmm3s6m8sdi5/b/calorify-images/o/';

const ALLOWED_IMAGE_EXTENSIONS = new Set(['jpg', 'jpeg', 'png', 'webp']);

type Mode = 'text' | 'image';

type Args = {
  mode: Mode;
  text?: string;
  imageUrl?: string;
  imageFile?: string;
  baseUrl: string;
  locale: string;
  country?: string;
  authToken?: string;
  requestId: string;
  interactive: boolean;
  raw: boolean;
  checkLoki: boolean;
  lokiUrl: string;
  lokiTimeoutMs: number;
  showHelp: boolean;
};

type V2Event =
  | {
      step: 'STARTED';
      data: {
        analysisId: string;
      };
    }
  | {
      step: 'DECOMPOSITION';
      data: {
        analysisId: string;
        mealName: string;
        confidence: number;
        ingredients: Array<{
          rawName: string;
          canonicalHint: string;
          gramsEstimated: number;
          minGrams: number;
          maxGrams: number;
          notes: string;
        }>;
      };
    }
  | {
      step: 'INGREDIENTS';
      data: {
        analysisId: string;
        ingredients: Array<{
          rawName: string;
          canonicalName: string;
          matchType: string;
          grams: number;
          source: 'db' | 'llm_fallback';
          macros: {
            calories: number;
            protein: number;
            carbs: number;
            fat: number;
            fiber: number;
          };
        }>;
      };
    }
  | {
      step: 'UNCERTAINTY';
      data: {
        analysisId: string;
        mealName: string;
        variancePercent: number;
        needsClarification: boolean;
        calorieBand: { min: number; max: number };
        clarifications: Array<{
          clarificationId: string;
          rowId: string;
          ingredientName: string;
          portionKind: string;
          question: string;
          defaultOptionId: string;
          options: Array<{
            optionId: string;
            label: string;
            detail?: string;
            grams: number;
            calorieDelta: number;
          }>;
        }>;
      };
    }
  | {
      step: 'MEAL_TYPE_QUESTION';
      data: {
        analysisId: string;
        mealName: string;
        question: string;
        options: string[];
        inferredMealType?: string;
      };
    }
  | {
      step: 'RESULT';
      data: {
        analysisId: string;
        mealName: string;
        quantity: string;
        mealType: string;
        mealTypeSource: string;
        tip: string;
        calorieConfidence: string;
        calorieBand: { min: number; max: number };
        macros: {
          calories: number;
          protein: number;
          carbs: number;
          fat: number;
          fiber: number;
        };
        health: null | {
          healthScore: string;
          healthScoreReason: string;
        };
        ingredients: Array<{
          rawName: string;
          canonicalName: string;
          matchType: string;
          grams: number;
          source: 'db' | 'llm_fallback';
          macros: {
            calories: number;
            protein: number;
            carbs: number;
            fat: number;
            fiber: number;
          };
        }>;
      };
    }
  | {
      step: 'ERROR';
      data: {
        analysisId: string;
        message: string;
      };
    };

type StreamOutcome =
  | { kind: 'result'; analysisId: string; result: Extract<V2Event, { step: 'RESULT' }>['data'] }
  | { kind: 'clarification'; analysisId: string; clarifications: Extract<V2Event, { step: 'UNCERTAINTY' }>['data']['clarifications'] }
  | { kind: 'meal-type'; analysisId: string; question: Extract<V2Event, { step: 'MEAL_TYPE_QUESTION' }>['data'] }
  | { kind: 'error'; analysisId?: string; message: string };

// Records what happened in each HTTP call for the flow summary.
type CallRecord = {
  label: string;
  endpoint: string;
  startedAt: number;
  durationMs: number;
  stopReason: string;
};

// ── Table renderer ──────────────────────────────────────────────────────────

function tableWidths(headers: string[], rows: string[][]): number[] {
  return headers.map((h, i) =>
    Math.max(h.length, ...rows.map((r) => r[i]?.length ?? 0))
  );
}

function tableLine(widths: number[], l: string, m: string, r: string): string {
  return l + widths.map((w) => '─'.repeat(w + 2)).join(m) + r;
}

function tableRow(cells: string[], widths: number[]): string {
  return '│' + widths.map((width, i) => ` ${(cells[i] ?? '').padEnd(width)} `).join('│') + '│';
}

function renderTable(headers: string[], rows: string[][]): string {
  const widths = tableWidths(headers, rows);
  const lines = [
    tableLine(widths, '┌', '┬', '┐'),
    tableRow(headers, widths),
    tableLine(widths, '├', '┼', '┤'),
    ...rows.map((row) => tableRow(row, widths)),
    tableLine(widths, '└', '┴', '┘'),
  ];
  return lines.join('\n');
}

// ── Formatting helpers ───────────────────────────────────────────────────────

function hr(label: string): void {
  console.log(`\n${c.cyan}── ${label} ──${c.reset}`);
}

function ts(ms: number): string {
  return `+${(ms / 1000).toFixed(2)}s`;
}

function pct(v: number): string {
  return `${(v * 100).toFixed(1)}%`;
}

function sourceBadge(source: 'db' | 'llm_fallback'): string {
  return source === 'db' ? 'USDA' : 'AI';
}

// ── Usage ────────────────────────────────────────────────────────────────────

function usage(): string {
  return [
    'Meal Analysis API CLI',
    '',
    'Required:',
    '  --text "<meal description>"',
    '  --image-url "<url>"',
    '  --image-file /path/to/image.jpg',
    '  positional text also works: meal-analysis-api-cli.ts "2 rotis with dal"',
    '',
    'Options:',
    `  --base-url <url>        Backend base URL (default: ${DEFAULT_BASE_URL})`,
    '  --locale <code>         Accept-Language header (default: en)',
    '  --country <code>        Optional X-Country-Code style context for display only',
    '  --auth-token <token>    Optional Bearer token',
    '  --request-id <id>       Override request/correlation ID',
    '  --no-interactive        Do not answer clarification / meal-type prompts',
    '  --raw                   Print raw NDJSON lines as they arrive',
    `  --loki-url <url>        Loki base URL (default: ${DEFAULT_LOKI_URL})`,
    '  --check-loki            Query Loki after the run using the request ID',
    '  --loki-timeout-ms <n>   How long to wait for Loki logs (default: 10000)',
    '  --help                  Show this message',
  ].join('\n');
}

// ── Arg parsing ──────────────────────────────────────────────────────────────

function parseArgs(argv: string[]): Args {
  const args: Args = {
    mode: 'text',
    baseUrl: DEFAULT_BASE_URL,
    locale: 'en',
    requestId: `meal-cli-${randomUUID()}`,
    interactive: process.stdin.isTTY === true,
    raw: false,
    checkLoki: false,
    lokiUrl: DEFAULT_LOKI_URL,
    lokiTimeoutMs: 10_000,
    showHelp: false,
  };

  const positionals: string[] = [];

  for (let i = 0; i < argv.length; i++) {
    const arg = argv[i]!;
    const next = argv[i + 1];
    switch (arg) {
      case '--text':
        args.mode = 'text';
        args.text = next ?? '';
        i++;
        break;
      case '--image-url':
        args.mode = 'image';
        args.imageUrl = next ?? '';
        i++;
        break;
      case '--image-file':
        args.mode = 'image';
        args.imageFile = next ?? '';
        i++;
        break;
      case '--base-url':
        args.baseUrl = next ?? args.baseUrl;
        i++;
        break;
      case '--locale':
        args.locale = next ?? args.locale;
        i++;
        break;
      case '--country':
        args.country = next ?? '';
        i++;
        break;
      case '--auth-token':
        args.authToken = next ?? '';
        i++;
        break;
      case '--request-id':
        args.requestId = next ?? args.requestId;
        i++;
        break;
      case '--no-interactive':
        args.interactive = false;
        break;
      case '--raw':
        args.raw = true;
        break;
      case '--check-loki':
        args.checkLoki = true;
        break;
      case '--loki-url':
        args.lokiUrl = next ?? args.lokiUrl;
        i++;
        break;
      case '--loki-timeout-ms':
        args.lokiTimeoutMs = Number.parseInt(next ?? '', 10) || args.lokiTimeoutMs;
        i++;
        break;
      case '--help':
      case '-h':
        args.showHelp = true;
        break;
      default:
        if (arg.startsWith('--')) {
          throw new Error(`Unknown flag: ${arg}`);
        }
        positionals.push(arg);
        break;
    }
  }

  if (!args.text && positionals.length > 0 && !args.imageUrl && !args.imageFile) {
    args.mode = 'text';
    args.text = positionals.join(' ');
  }

  return args;
}

function assertValidArgs(args: Args): void {
  if (args.showHelp) return;

  if (args.mode === 'text') {
    if (!args.text || args.text.trim().length === 0) {
      throw new Error('Text mode requires --text or a positional meal description.');
    }
    return;
  }

  if (!args.imageUrl && !args.imageFile) {
    throw new Error('Image mode requires --image-url or --image-file.');
  }
}

function buildHeaders(args: Args): Record<string, string> {
  const headers: Record<string, string> = {
    'Content-Type': 'application/json',
    Accept: 'application/x-ndjson',
    'Accept-Language': args.locale,
    'X-Request-Id': args.requestId,
    'X-Correlation-Id': args.requestId,
  };
  if (args.authToken && args.authToken.trim().length > 0) {
    headers.Authorization = `Bearer ${args.authToken.trim()}`;
  }
  return headers;
}

function mimeTypeForExtension(extension: string): string {
  switch (extension.toLowerCase()) {
    case 'jpg':
    case 'jpeg':
      return 'image/jpeg';
    case 'png':
      return 'image/png';
    case 'webp':
      return 'image/webp';
    default:
      return 'application/octet-stream';
  }
}

async function uploadImageFile(imageFile: string): Promise<string> {
  const extension = extname(imageFile).replace('.', '').toLowerCase();
  if (!ALLOWED_IMAGE_EXTENSIONS.has(extension)) {
    throw new Error(
      `Unsupported image extension "${extension}". Allowed: ${[...ALLOWED_IMAGE_EXTENSIONS].join(', ')}`
    );
  }

  const fileBytes = await readFile(imageFile);
  const isoTimestamp = new Date().toISOString();
  const fileName = `${isoTimestamp}_${randomUUID()}.${extension}`;
  const objectKey = `${encodeURIComponent('cli')}/${encodeURIComponent(fileName)}`;
  const uploadUrl = `${ORACLE_BUCKET_UPLOAD_URL}${objectKey}`;

  hr('Upload');
  console.log(`${D('file:')}   ${imageFile}`);
  console.log(`${D('object:')} ${objectKey}`);

  const response = await fetch(uploadUrl, {
    method: 'PUT',
    headers: { 'Content-Type': mimeTypeForExtension(extension) },
    body: fileBytes,
  });

  if (!response.ok) {
    const body = await response.text().catch(() => '');
    throw new Error(`Image upload failed (${response.status}): ${body || response.statusText}`);
  }

  console.log(`${G('uploaded')} ${uploadUrl}`);
  return uploadUrl;
}

// ── Event printers ──────────────────────────────────────────────────────────

function printEvent(
  event: V2Event,
  sinceStartMs: number,
  isContinuation: boolean
): void {
  const tag = C(`[${ts(sinceStartMs)}]`);

  switch (event.step) {
    case 'STARTED':
      console.log(`${tag} ${B('STARTED')}  analysisId=${D(event.data.analysisId)}`);
      break;

    case 'DECOMPOSITION': {
      const conf = event.data.confidence >= 0.8 ? G : event.data.confidence >= 0.5 ? Y : R;
      console.log(`${tag} ${B('DECOMPOSITION')}  ${event.data.mealName}  confidence=${conf(String(event.data.confidence))}`);
      const rows = event.data.ingredients.map((ing) => [
        ing.rawName,
        ing.canonicalHint,
        `${ing.gramsEstimated}g`,
        `${ing.minGrams}–${ing.maxGrams}g`,
      ]);
      console.log(renderTable(['Ingredient', 'Canonical hint', 'Est', 'Range'], rows)
        .split('\n').map((l) => `  ${l}`).join('\n'));
      break;
    }

    case 'INGREDIENTS': {
      const n = event.data.ingredients.length;
      const db = event.data.ingredients.filter((i) => i.source === 'db').length;
      const ai = n - db;
      const dbTag = db > 0 ? G(`USDA: ${db}`) : D(`USDA: 0`);
      const aiTag = ai > 0 ? Y(`AI: ${ai}`) : D(`AI: 0`);

      if (isContinuation) {
        console.log(`${tag} ${B('INGREDIENTS')}  ${n} resolved  ${dbTag}  ${aiTag}  ${D('(unchanged — loaded from session)')}`);
      } else {
        console.log(`${tag} ${B('INGREDIENTS')}  ${n} resolved  ${dbTag}  ${aiTag}`);
        const rows = event.data.ingredients.map((ing) => [
          ing.rawName,
          ing.canonicalName,
          sourceBadge(ing.source),
          `${ing.grams}g`,
        ]);
        console.log(renderTable(['Ingredient', 'Resolved as', 'Src', 'Grams'], rows)
          .split('\n').map((l) => `  ${l}`).join('\n'));
      }
      break;
    }

    case 'UNCERTAINTY': {
      const v = event.data.variancePercent;
      const vStr = pct(v);
      const band = `${event.data.calorieBand.min}–${event.data.calorieBand.max} kcal`;

      if (event.data.needsClarification) {
        console.log(`${tag} ${B('UNCERTAINTY')}  variance=${Y(vStr)}  band=${band}  ${Y('→ clarification needed')}`);
        for (const clarification of event.data.clarifications) {
          console.log(`\n  ${B('?')} ${clarification.question}`);
          const defaultIndex = clarification.options.findIndex((opt) => opt.optionId === clarification.defaultOptionId);
          const rows = clarification.options.map((opt, idx) => {
            const isDefault = idx === defaultIndex;
            const labelText = opt.detail ? `${opt.label} (${opt.detail})` : opt.label;
            const label = isDefault ? `${labelText} [default]` : labelText;
            const delta = opt.calorieDelta === 0 ? '±0' : opt.calorieDelta > 0 ? `+${opt.calorieDelta}` : String(opt.calorieDelta);
            return [`${idx + 1}`, label, `${opt.grams}g`, `${delta} kcal`];
          });
          console.log(renderTable(['#', 'Option', 'Grams', 'Calorie delta'], rows)
            .split('\n').map((l) => `    ${l}`).join('\n'));
        }
      } else {
        const vColor = v <= 0.1 ? G : v <= 0.2 ? Y : R;
        console.log(`${tag} ${B('UNCERTAINTY')}  variance=${vColor(vStr)}  band=${G(band)}  ${G('✓ no clarification needed')}`);
      }
      break;
    }

    case 'MEAL_TYPE_QUESTION':
      console.log(
        `${tag} ${B('MEAL_TYPE_QUESTION')}  ${event.data.question}  options=${event.data.options.join(' | ')}${
          event.data.inferredMealType ? `  ${D(`inferred=${event.data.inferredMealType}`)}` : ''
        }`
      );
      break;

    case 'RESULT': {
      const m = event.data.macros;
      const confColor = event.data.calorieConfidence === 'HIGH' ? G : event.data.calorieConfidence === 'MEDIUM' ? Y : R;
      console.log(
        `${tag} ${G(B('RESULT'))}  ${B(event.data.mealName)}  ·  ${event.data.mealType}  ·  confidence=${confColor(event.data.calorieConfidence)}`
      );

      // Macros table
      const macroRows = [
        ['Calories', `${m.calories} kcal`],
        ['Protein',  `${m.protein}g`],
        ['Carbs',    `${m.carbs}g`],
        ['Fat',      `${m.fat}g`],
        ['Fiber',    `${m.fiber}g`],
      ];
      console.log(renderTable(['Macro', 'Amount'], macroRows)
        .split('\n').map((l) => `  ${l}`).join('\n'));

      const band = `${event.data.calorieBand.min}–${event.data.calorieBand.max} kcal`;
      console.log(`  ${D('Band:')} ${band}  (${event.data.quantity})`);

      if (event.data.health) {
        const healthColor =
          event.data.health.healthScore === 'HEALTHY' ? G :
          event.data.health.healthScore === 'NEUTRAL' ? Y : R;
        console.log(`  ${D('Health:')} ${healthColor(event.data.health.healthScore)}`);
        console.log(`  ${D('       ')} ${event.data.health.healthScoreReason}`);
      }
      if (event.data.tip) {
        console.log(`  ${D('Tip:')}    ${event.data.tip}`);
      }

      // Ingredient breakdown table
      console.log(`\n  ${B('Ingredients')}`);
      const ingRows = event.data.ingredients.map((ing) => [
        ing.rawName,
        ing.canonicalName,
        sourceBadge(ing.source),
        `${ing.grams}g`,
        `${ing.macros.calories}`,
        `${ing.macros.protein}g`,
        `${ing.macros.carbs}g`,
        `${ing.macros.fat}g`,
      ]);
      console.log(renderTable(
        ['Ingredient', 'Resolved as', 'Src', 'Grams', 'kcal', 'Prot', 'Carb', 'Fat'],
        ingRows
      ).split('\n').map((l) => `  ${l}`).join('\n'));
      break;
    }

    case 'ERROR':
      console.log(`${tag} ${R(B('ERROR'))}  ${event.data.message}`);
      break;
  }
}

// ── NDJSON stream reader ──────────────────────────────────────────────────────

async function readNdjsonStream(
  response: Response,
  onLine: (line: string) => Promise<void>
): Promise<void> {
  if (!response.body) {
    throw new Error('Empty response body');
  }

  const reader = response.body.getReader();
  const decoder = new TextDecoder();
  let buffer = '';

  while (true) {
    const { value, done } = await reader.read();
    if (done) break;
    buffer += decoder.decode(value, { stream: true });

    while (true) {
      const newlineIndex = buffer.indexOf('\n');
      if (newlineIndex < 0) break;
      const line = buffer.slice(0, newlineIndex).trim();
      buffer = buffer.slice(newlineIndex + 1);
      if (line.length === 0) continue;
      await onLine(line);
    }
  }

  const finalLine = buffer.trim();
  if (finalLine.length > 0) {
    await onLine(finalLine);
  }
}

async function postStream(
  url: string,
  headers: Record<string, string>,
  payload: Record<string, unknown>,
  raw: boolean,
  isContinuation: boolean = false
): Promise<StreamOutcome> {
  let response: Response;
  try {
    response = await fetch(url, {
      method: 'POST',
      headers,
      body: JSON.stringify(payload),
    });
  } catch (error) {
    return {
      kind: 'error',
      message: `Request to ${url} failed: ${error instanceof Error ? error.message : 'Unknown fetch error'}`,
    };
  }

  if (!response.ok) {
    const text = await response.text().catch(() => '');
    let detail = text;
    try {
      const parsed = JSON.parse(text) as { detail?: string; message?: string };
      detail = parsed.detail ?? parsed.message ?? text;
    } catch {
      // Keep raw text.
    }
    return {
      kind: 'error',
      message: `HTTP ${response.status}: ${detail || response.statusText}`,
    };
  }

  const startedAt = Date.now();
  let analysisId = '';
  let outcome: StreamOutcome | undefined;

  await readNdjsonStream(response, async (line) => {
    if (raw) {
      console.log(`${D('[raw]')} ${line}`);
    }
    const event = JSON.parse(line) as V2Event;
    analysisId = (event as { data?: { analysisId?: string } }).data?.analysisId ?? analysisId;
    const now = Date.now();
    printEvent(event, now - startedAt, isContinuation);

    if (event.step === 'RESULT') {
      outcome = { kind: 'result', analysisId: event.data.analysisId, result: event.data };
      return;
    }
    if (event.step === 'ERROR') {
      outcome = { kind: 'error', analysisId: event.data.analysisId, message: event.data.message };
      return;
    }
    if (event.step === 'UNCERTAINTY' && event.data.needsClarification && event.data.clarifications.length > 0) {
      outcome = {
        kind: 'clarification',
        analysisId: event.data.analysisId,
        clarifications: event.data.clarifications,
      };
      return;
    }
    if (event.step === 'MEAL_TYPE_QUESTION') {
      outcome = { kind: 'meal-type', analysisId: event.data.analysisId, question: event.data };
    }
  });

  return outcome ?? {
    kind: 'error',
    analysisId,
    message: 'Stream ended without a final result, clarification, or error event.',
  };
}

// ── Interactive prompts ───────────────────────────────────────────────────────

async function promptForClarifications(
  clarifications: Extract<StreamOutcome, { kind: 'clarification' }>['clarifications']
): Promise<Array<{ clarificationId: string; selectedOptionId: string }>> {
  const rl = createInterface({ input: process.stdin, output: process.stdout });
  try {
    const answers: Array<{ clarificationId: string; selectedOptionId: string }> = [];
    for (const clarification of clarifications) {
      const raw = await rl.question(`\nSelect option for "${clarification.ingredientName}" (1–${clarification.options.length}): `);
      const numeric = Number.parseInt(raw.trim(), 10);
      const defaultIndex = Math.max(
        0,
        clarification.options.findIndex((option) => option.optionId === clarification.defaultOptionId)
      );
      const selected =
        Number.isFinite(numeric) && numeric >= 1 && numeric <= clarification.options.length
          ? numeric - 1
          : defaultIndex;
      const option = clarification.options[selected] ?? clarification.options[defaultIndex] ?? clarification.options[0];
      if (!option) continue;
      answers.push({
        clarificationId: clarification.clarificationId,
        selectedOptionId: option.optionId,
      });
    }
    return answers;
  } finally {
    await rl.close();
  }
}

async function promptForMealType(
  question: Extract<StreamOutcome, { kind: 'meal-type' }>['question']
): Promise<string> {
  const rl = createInterface({ input: process.stdin, output: process.stdout });
  try {
    console.log(`\n  ${B(question.question)}`);
    question.options.forEach((option, index) => {
      const inferred = option === question.inferredMealType ? D(' (inferred)') : '';
      console.log(`    ${index + 1}.  ${option}${inferred}`);
    });
    const raw = await rl.question('  Select number: ');
    const numeric = Number.parseInt(raw.trim(), 10);
    const selectedIndex =
      Number.isFinite(numeric) && numeric >= 1 && numeric <= question.options.length
        ? numeric - 1
        : 0;
    return question.options[selectedIndex]!;
  } finally {
    await rl.close();
  }
}

// ── Flow explanation ──────────────────────────────────────────────────────────

function printFlowExplanation(calls: CallRecord[]): void {
  hr('Flow explanation');

  console.log(
    `  ${calls.length} HTTP ${calls.length === 1 ? 'call was' : 'calls were'} made. ` +
    `The V2 pipeline is a multi-turn conversation — each call streams events until it needs ` +
    `user input, then pauses. A new POST resumes from the saved session.\n`
  );

  calls.forEach((call, i) => {
    const num = `Call ${i + 1}`;
    const dur = `${(call.durationMs / 1000).toFixed(2)}s`;
    console.log(`  ${C(B(num))}  ${call.label}  ${D(call.endpoint)}  ${D(dur)}`);
    console.log(`         Stopped: ${call.stopReason}`);
    if (i < calls.length - 1) console.log();
  });

  console.log(`\n  ${B('Why is it slow?')}`);
  console.log(`  Each call involves sequential LLM round-trips — you pay the API latency per call.`);
  console.log(`  Common causes:`);
  console.log(`    ${D('•')} ${B('Decomposition LLM')} — first call always breaks the meal into atomic ingredients`);
  console.log(`    ${D('•')} ${B('AI fallback macros')} — when USDA has no match, a second LLM estimates macros for unmatched items`);
  console.log(`    ${D('•')} ${B('Presentation LLM')} — runs once (in whichever call has both clarifications resolved and meal type known)`);
  console.log(`  ${D('→')} Better USDA match rate = fewer AI fallback calls = faster first response.`);
}

// ── Loki check ───────────────────────────────────────────────────────────────

function printTraceSummary(traceSummary: unknown): void {
  if (!traceSummary || typeof traceSummary !== 'object') return;
  const summary = traceSummary as {
    totalDurationMs?: unknown;
    llmCallCount?: unknown;
    usdaLookupCount?: unknown;
    dbWriteCount?: unknown;
    steps?: Array<{
      category?: unknown;
      name?: unknown;
      durationMs?: unknown;
      meta?: unknown;
    }>;
  };

  console.log(
    `  ${D('trace:')} total=${String(summary.totalDurationMs ?? '-')}ms | llmCalls=${String(summary.llmCallCount ?? '-')} | usdaLookups=${String(summary.usdaLookupCount ?? '-')} | dbWrites=${String(summary.dbWriteCount ?? '-')}`
  );

  if (!Array.isArray(summary.steps) || summary.steps.length === 0) return;
  const rows = summary.steps.map((step) => [
    String(step.category ?? '-'),
    String(step.name ?? '-'),
    `${String(step.durationMs ?? '-')}ms`,
    step.meta ? JSON.stringify(step.meta) : '',
  ]);
  console.log(renderTable(['Category', 'Step', 'Duration', 'Meta'], rows)
    .split('\n').map((l) => `  ${l}`).join('\n'));
}

async function maybeCheckLoki(args: Args): Promise<void> {
  if (!args.checkLoki) return;

  hr('Loki');
  console.log(`${D('query requestId:')} ${args.requestId}`);

  const deadline = Date.now() + args.lokiTimeoutMs;
  const query = `{app="calorify-backend"} |= "${args.requestId}"`;
  let lastError = '';

  while (Date.now() < deadline) {
    try {
      const endNs = BigInt(Date.now()) * 1_000_000n;
      const startNs = BigInt(Date.now() - 5 * 60 * 1000) * 1_000_000n;
      const url = new URL('/loki/api/v1/query_range', args.lokiUrl);
      url.searchParams.set('query', query);
      url.searchParams.set('start', startNs.toString());
      url.searchParams.set('end', endNs.toString());
      url.searchParams.set('limit', '50');
      url.searchParams.set('direction', 'forward');

      const response = await fetch(url);
      if (!response.ok) {
        lastError = `HTTP ${response.status}`;
        await new Promise((resolve) => setTimeout(resolve, 1000));
        continue;
      }

      const data = await response.json() as {
        data?: { result?: Array<{ stream?: Record<string, string>; values?: Array<[string, string]> }> };
      };
      const values = (data.data?.result ?? []).flatMap((entry) => entry.values ?? []);
      if (values.length === 0) {
        await new Promise((resolve) => setTimeout(resolve, 1000));
        continue;
      }

      console.log(`${G(`found ${values.length} Loki log line(s)`)}`);
      const rows: string[][] = [];
      for (const [, line] of values.slice(-10)) {
        try {
          const parsed = JSON.parse(line) as Record<string, unknown>;
          const event = typeof parsed.event === 'string' ? parsed.event : '-';
          const type = typeof parsed.type === 'string' ? parsed.type : '-';
          const msg = typeof parsed.msg === 'string' ? parsed.msg : '-';
          const duration = String(parsed.totalDurationMs ?? parsed.responseTime ?? '-');
          rows.push([event, type, msg, duration]);
          if (parsed.traceSummary) {
            printTraceSummary(parsed.traceSummary);
          }
        } catch {
          console.log(`  - ${line}`);
        }
      }
      if (rows.length > 0) {
        console.log(renderTable(['event', 'type', 'msg', 'duration'], rows)
          .split('\n').map((l) => `  ${l}`).join('\n'));
      }
      console.log(`${D('LogQL:')} ${query}`);
      return;
    } catch (error) {
      lastError = error instanceof Error ? error.message : 'Unknown Loki error';
      await new Promise((resolve) => setTimeout(resolve, 1000));
    }
  }

  console.log(`${Y('No Loki logs found within timeout.')}`);
  if (lastError) console.log(`${D('last Loki error:')} ${lastError}`);
  console.log(`${D('Try in Grafana Explore:')} ${query}`);
}

// ── Main run ──────────────────────────────────────────────────────────────────

async function run(args: Args): Promise<number> {
  const headers = buildHeaders(args);
  let imageUrl = args.imageUrl;
  const callLog: CallRecord[] = [];

  hr('Request');
  console.log(`${D('Backend:')}   ${args.baseUrl}`);
  console.log(`${D('Locale:')}    ${args.locale}`);
  console.log(`${D('Mode:')}      ${args.mode}`);
  console.log(`${D('RequestId:')} ${args.requestId}`);

  if (args.mode === 'image' && args.imageFile) {
    imageUrl = await uploadImageFile(args.imageFile);
  }

  let outcome: StreamOutcome;

  if (args.mode === 'text') {
    hr('Analyze Text');
    console.log(`${D('Input:')} ${args.text}`);
    const t0 = Date.now();
    outcome = await postStream(
      new URL('/api/v2/food/analyze-text', args.baseUrl).toString(),
      headers,
      { textDescription: args.text!.trim() },
      args.raw,
      false
    );
    const dur = Date.now() - t0;
    const stopReason =
      outcome.kind === 'clarification'
        ? `variance too high → asked about portion size`
        : outcome.kind === 'meal-type'
        ? `meal type not confident → asked for meal type`
        : outcome.kind === 'result'
        ? 'completed'
        : `error: ${outcome.message}`;
    callLog.push({ label: 'Analyze Text', endpoint: '/api/v2/food/analyze-text', startedAt: t0, durationMs: dur, stopReason });
  } else {
    hr('Analyze Image');
    console.log(`${D('imageUrl:')} ${imageUrl}`);
    const t0 = Date.now();
    outcome = await postStream(
      new URL('/api/v2/food/analyze-image', args.baseUrl).toString(),
      headers,
      { imageUrl },
      args.raw,
      false
    );
    const dur = Date.now() - t0;
    callLog.push({ label: 'Analyze Image', endpoint: '/api/v2/food/analyze-image', startedAt: t0, durationMs: dur, stopReason: outcome.kind });
  }

  while (true) {
    if (outcome.kind === 'clarification') {
      if (!args.interactive) break;
      const answers = await promptForClarifications(outcome.clarifications);
      hr('Clarify');
      const t0 = Date.now();
      outcome = await postStream(
        new URL('/api/v2/food/clarify', args.baseUrl).toString(),
        headers,
        { analysisId: outcome.analysisId, answers },
        args.raw,
        true
      );
      const dur = Date.now() - t0;
      const stopReason =
        outcome.kind === 'meal-type'
          ? 'meal type not confident → asked for meal type'
          : outcome.kind === 'result'
          ? 'completed'
          : outcome.kind === 'clarification'
          ? 'more clarification needed'
          : `error: ${'message' in outcome ? outcome.message : ''}`;
      callLog.push({ label: 'Clarify', endpoint: '/api/v2/food/clarify', startedAt: t0, durationMs: dur, stopReason });
      continue;
    }

    if (outcome.kind === 'meal-type') {
      if (!args.interactive) break;
      const selectedMealType = await promptForMealType(outcome.question);
      hr('Submit Meal Type');
      const t0 = Date.now();
      outcome = await postStream(
        new URL('/api/v2/food/meal-type', args.baseUrl).toString(),
        headers,
        { analysisId: outcome.analysisId, mealType: selectedMealType },
        args.raw,
        true
      );
      const dur = Date.now() - t0;
      callLog.push({
        label: 'Submit Meal Type',
        endpoint: '/api/v2/food/meal-type',
        startedAt: t0,
        durationMs: dur,
        stopReason: outcome.kind === 'result' ? 'completed' : outcome.kind,
      });
      continue;
    }

    break;
  }

  hr('Summary');
  switch (outcome.kind) {
    case 'result':
      console.log(`  ${G('Analysis completed.')}  analysisId=${outcome.analysisId}`);
      console.log(`  ${D('Meal:')} ${outcome.result.mealName}`);
      break;
    case 'clarification':
      console.log(`  ${Y('Stopped at clarification.')}  analysisId=${outcome.analysisId}`);
      break;
    case 'meal-type':
      console.log(`  ${Y('Stopped at meal-type question.')}  analysisId=${outcome.analysisId}`);
      break;
    case 'error':
      console.log(`  ${R('Analysis failed.')}`);
      if (outcome.analysisId) console.log(`  ${D('analysisId:')} ${outcome.analysisId}`);
      console.log(`  ${D('message:')} ${outcome.message}`);
      break;
  }
  console.log(`  ${D('Log hint:')} docker compose logs --since 5m backend-staging | rg '${args.requestId}|meal_analysis_v2'`);

  if (callLog.length > 1 || (callLog.length === 1 && callLog[0]!.stopReason !== 'completed')) {
    printFlowExplanation(callLog);
  }

  await maybeCheckLoki(args);
  return outcome.kind === 'error' ? 1 : 0;
}

async function main(): Promise<void> {
  try {
    const args = parseArgs(process.argv.slice(2));
    if (args.showHelp) {
      console.log(usage());
      process.exit(0);
    }
    assertValidArgs(args);
    const exitCode = await run(args);
    process.exit(exitCode);
  } catch (error) {
    console.error(R(error instanceof Error ? error.message : 'Unknown error'));
    console.log('\n' + usage());
    process.exit(1);
  }
}

void main();
