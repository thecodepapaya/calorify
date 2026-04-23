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
      step: 'decomposition';
      data: {
        analysis_id: string;
        meal_name: string;
        confidence: number;
        ingredients: Array<{
          raw_name: string;
          canonical_hint: string;
          grams_estimated: number;
          min_grams: number;
          max_grams: number;
          notes: string;
        }>;
      };
    }
  | {
      step: 'ingredients';
      data: {
        analysis_id: string;
        ingredients: Array<{
          raw_name: string;
          canonical_name: string;
          match_type: string;
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
      step: 'uncertainty';
      data: {
        analysis_id: string;
        variance_percent: number;
        needs_clarification: boolean;
        calorie_band: { min: number; max: number };
        clarifications: Array<{
          ingredient_name: string;
          question: string;
          default_option_index: number;
          options: Array<{
            label: string;
            grams: number;
            calorie_delta: number;
          }>;
        }>;
      };
    }
  | {
      step: 'meal_type_question';
      data: {
        analysis_id: string;
        question: string;
        options: string[];
        inferred_meal_type?: string;
      };
    }
  | {
      step: 'result';
      data: {
        analysis_id: string;
        meal_name: string;
        quantity: string;
        meal_type: string;
        meal_type_source: string;
        tip: string;
        calorie_confidence: string;
        calorie_band: { min: number; max: number };
        macros: {
          calories: number;
          protein: number;
          carbs: number;
          fat: number;
          fiber: number;
        };
        health: null | {
          health_score: string;
          health_score_reason: string;
        };
        ingredients: Array<{
          raw_name: string;
          canonical_name: string;
          match_type: string;
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
      step: 'error';
      data: {
        analysis_id: string;
        message: string;
      };
    };

type StreamOutcome =
  | { kind: 'result'; analysisId: string; result: Extract<V2Event, { step: 'result' }>['data'] }
  | { kind: 'clarification'; analysisId: string; clarifications: Extract<V2Event, { step: 'uncertainty' }>['data']['clarifications'] }
  | { kind: 'meal-type'; analysisId: string; question: Extract<V2Event, { step: 'meal_type_question' }>['data'] }
  | { kind: 'error'; analysisId?: string; message: string };

function hr(label: string): void {
  console.log(`\n${c.cyan}── ${label} ──${c.reset}`);
}

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
  console.log(`${D('file:')} ${imageFile}`);
  console.log(`${D('object:')} ${objectKey}`);

  const response = await fetch(uploadUrl, {
    method: 'PUT',
    headers: {
      'Content-Type': mimeTypeForExtension(extension),
    },
    body: fileBytes,
  });

  if (!response.ok) {
    const body = await response.text().catch(() => '');
    throw new Error(`Image upload failed (${response.status}): ${body || response.statusText}`);
  }

  console.log(`${G('uploaded')} ${uploadUrl}`);
  return uploadUrl;
}

function summarizeSources(
  ingredients: Array<{ source: 'db' | 'llm_fallback'; match_type: string }>
): { db: number; llmFallback: number; matchTypes: Record<string, number> } {
  const summary = {
    db: 0,
    llmFallback: 0,
    matchTypes: {} as Record<string, number>,
  };

  for (const ingredient of ingredients) {
    if (ingredient.source === 'db') summary.db += 1;
    if (ingredient.source === 'llm_fallback') summary.llmFallback += 1;
    summary.matchTypes[ingredient.match_type] =
      (summary.matchTypes[ingredient.match_type] ?? 0) + 1;
  }

  return summary;
}

function printSources(
  ingredients: Array<{
    raw_name: string;
    canonical_name: string;
    match_type: string;
    grams: number;
    source: 'db' | 'llm_fallback';
  }>
): void {
  const summary = summarizeSources(ingredients);
  console.log(
    `${D('source summary:')} USDA/db=${summary.db} | AI fallback=${summary.llmFallback} | matchTypes=${JSON.stringify(summary.matchTypes)}`
  );
  for (const ingredient of ingredients) {
    const sourceTag = ingredient.source === 'db' ? G('USDA') : Y('AI');
    console.log(
      `  - ${ingredient.raw_name} -> ${ingredient.canonical_name} | ${sourceTag} | match=${ingredient.match_type} | ${ingredient.grams}g`
    );
  }
}

function formatDuration(ms: number): string {
  return `${(ms / 1000).toFixed(2)}s`;
}

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
    `  trace: total=${String(summary.totalDurationMs ?? '-')}ms | llmCalls=${String(summary.llmCallCount ?? '-')} | usdaLookups=${String(summary.usdaLookupCount ?? '-')} | dbWrites=${String(summary.dbWriteCount ?? '-')}`
  );

  if (!Array.isArray(summary.steps) || summary.steps.length === 0) return;
  for (const step of summary.steps) {
    const meta =
      step.meta && typeof step.meta === 'object'
        ? JSON.stringify(step.meta)
        : '';
    console.log(
      `    - [${String(step.category ?? '-')}] ${String(step.name ?? '-')} ${String(step.durationMs ?? '-')}ms${meta ? ` ${meta}` : ''}`
    );
  }
}

function printEvent(event: V2Event, sinceStartMs: number, deltaMs: number): void {
  const prefix = `${C(`[+${formatDuration(sinceStartMs)} | +${formatDuration(deltaMs)}]`)}`;

  switch (event.step) {
    case 'decomposition':
      console.log(`${prefix} ${B('decomposition')} ${event.data.meal_name} (confidence=${event.data.confidence})`);
      for (const ingredient of event.data.ingredients) {
        console.log(
          `  - ${ingredient.raw_name} -> ${ingredient.canonical_hint} | ${ingredient.grams_estimated}g (${ingredient.min_grams}-${ingredient.max_grams}g)`
        );
      }
      break;

    case 'ingredients':
      console.log(`${prefix} ${B('ingredients')} ${event.data.ingredients.length} resolved ingredient(s)`);
      printSources(event.data.ingredients);
      break;

    case 'uncertainty':
      console.log(
        `${prefix} ${B('uncertainty')} variance=${event.data.variance_percent} | clarification=${event.data.needs_clarification ? Y('yes') : G('no')} | band=${event.data.calorie_band.min}-${event.data.calorie_band.max} kcal`
      );
      if (event.data.clarifications.length > 0) {
        for (const clarification of event.data.clarifications) {
          console.log(`  ? ${clarification.question}`);
          clarification.options.forEach((option, index) => {
            const isDefault = index === clarification.default_option_index ? ' default' : '';
            console.log(`    ${index + 1}. ${option.label} (${option.grams}g, delta ${option.calorie_delta} kcal)${isDefault}`);
          });
        }
      }
      break;

    case 'meal_type_question':
      console.log(
        `${prefix} ${B('meal_type_question')} ${event.data.question} | options=${event.data.options.join(', ')}${event.data.inferred_meal_type ? ` | inferred=${event.data.inferred_meal_type}` : ''}`
      );
      break;

    case 'result':
      console.log(
        `${prefix} ${G(B('result'))} ${event.data.meal_name} | ${event.data.quantity} | mealType=${event.data.meal_type} (${event.data.meal_type_source})`
      );
      console.log(
        `  macros: ${event.data.macros.calories} kcal | P ${event.data.macros.protein} | C ${event.data.macros.carbs} | F ${event.data.macros.fat} | Fi ${event.data.macros.fiber}`
      );
      console.log(
        `  confidence: ${event.data.calorie_confidence} | band=${event.data.calorie_band.min}-${event.data.calorie_band.max} kcal`
      );
      if (event.data.health) {
        console.log(`  health: ${event.data.health.health_score} | ${event.data.health.health_score_reason}`);
      }
      if (event.data.tip) {
        console.log(`  tip: ${event.data.tip}`);
      }
      printSources(event.data.ingredients);
      break;

    case 'error':
      console.log(`${prefix} ${R(B('error'))} ${event.data.message}`);
      break;
  }
}

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
  raw: boolean
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
  let lastEventAt = startedAt;
  let analysisId = '';
  let outcome: StreamOutcome | undefined;

  await readNdjsonStream(response, async (line) => {
    if (raw) {
      console.log(`${D('[raw]')} ${line}`);
    }
    const event = JSON.parse(line) as V2Event;
    analysisId = (event as { data?: { analysis_id?: string } }).data?.analysis_id ?? analysisId;
    const now = Date.now();
    printEvent(event, now - startedAt, now - lastEventAt);
    lastEventAt = now;

    if (event.step === 'result') {
      outcome = { kind: 'result', analysisId: event.data.analysis_id, result: event.data };
      return;
    }
    if (event.step === 'error') {
      outcome = {
        kind: 'error',
        analysisId: event.data.analysis_id,
        message: event.data.message,
      };
      return;
    }
    if (
      event.step === 'uncertainty' &&
      event.data.needs_clarification &&
      event.data.clarifications.length > 0
    ) {
      outcome = {
        kind: 'clarification',
        analysisId: event.data.analysis_id,
        clarifications: event.data.clarifications,
      };
      return;
    }
    if (event.step === 'meal_type_question') {
      outcome = {
        kind: 'meal-type',
        analysisId: event.data.analysis_id,
        question: event.data,
      };
    }
  });

  return outcome ?? {
    kind: 'error',
    analysisId,
    message: 'Stream ended without a final result, clarification, or error event.',
  };
}

async function promptForClarifications(
  clarifications: Extract<StreamOutcome, { kind: 'clarification' }>['clarifications']
): Promise<Array<{ ingredient_name: string; selected_option_index: number }>> {
  const rl = createInterface({ input: process.stdin, output: process.stdout });
  try {
    const answers: Array<{ ingredient_name: string; selected_option_index: number }> = [];
    for (const clarification of clarifications) {
      console.log(`\n${B(clarification.question)}`);
      clarification.options.forEach((option, index) => {
        const isDefault = index === clarification.default_option_index ? ' (default)' : '';
        console.log(`  ${index + 1}. ${option.label}${isDefault}`);
      });
      const raw = await rl.question('Select option number: ');
      const numeric = Number.parseInt(raw.trim(), 10);
      const selected =
        Number.isFinite(numeric) &&
        numeric >= 1 &&
        numeric <= clarification.options.length
          ? numeric - 1
          : clarification.default_option_index;
      answers.push({
        ingredient_name: clarification.ingredient_name,
        selected_option_index: selected,
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
    console.log(`\n${B(question.question)}`);
    question.options.forEach((option, index) => {
      const inferred = option === question.inferred_meal_type ? ' (inferred)' : '';
      console.log(`  ${index + 1}. ${option}${inferred}`);
    });
    const raw = await rl.question('Select meal type number: ');
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
      for (const [, line] of values.slice(-10)) {
        try {
          const parsed = JSON.parse(line) as Record<string, unknown>;
          const event = typeof parsed.event === 'string' ? parsed.event : '';
          const type = typeof parsed.type === 'string' ? parsed.type : '';
          const msg = typeof parsed.msg === 'string' ? parsed.msg : '';
          const reqId = typeof parsed.reqId === 'string' ? parsed.reqId : args.requestId;
          const duration = parsed.totalDurationMs ?? parsed.responseTime ?? '';
          console.log(`  - reqId=${reqId} type=${type || '-'} event=${event || '-'} msg=${msg || '-'} duration=${String(duration || '-')}`);
          if (parsed.traceSummary) {
            printTraceSummary(parsed.traceSummary);
          }
        } catch {
          console.log(`  - ${line}`);
        }
      }
      console.log(`${D('LogQL:')} ${query}`);
      return;
    } catch (error) {
      lastError = error instanceof Error ? error.message : 'Unknown Loki error';
      await new Promise((resolve) => setTimeout(resolve, 1000));
    }
  }

  console.log(`${Y('No Loki logs found within timeout.')}`);
  if (lastError) {
    console.log(`${D('last Loki error:')} ${lastError}`);
  }
  console.log(`${D('Try in Grafana Explore:')} ${query}`);
}

async function run(args: Args): Promise<number> {
  const headers = buildHeaders(args);
  let imageUrl = args.imageUrl;

  hr('Request');
  console.log(`${D('baseUrl:')} ${args.baseUrl}`);
  console.log(`${D('locale:')} ${args.locale}`);
  console.log(`${D('requestId:')} ${args.requestId}`);
  console.log(`${D('interactive:')} ${args.interactive ? 'yes' : 'no'}`);

  if (args.mode === 'image' && args.imageFile) {
    imageUrl = await uploadImageFile(args.imageFile);
  }

  let outcome: StreamOutcome;
  if (args.mode === 'text') {
    hr('Analyze Text');
    console.log(`${D('text:')} ${args.text}`);
    outcome = await postStream(
      new URL('/api/v2/food/analyze-text', args.baseUrl).toString(),
      headers,
      { textDescription: args.text!.trim() },
      args.raw
    );
  } else {
    hr('Analyze Image');
    console.log(`${D('imageUrl:')} ${imageUrl}`);
    outcome = await postStream(
      new URL('/api/v2/food/analyze-image', args.baseUrl).toString(),
      headers,
      { imageUrl },
      args.raw
    );
  }

  while (true) {
    if (outcome.kind === 'clarification') {
      if (!args.interactive) break;
      const answers = await promptForClarifications(outcome.clarifications);
      hr('Clarify');
      outcome = await postStream(
        new URL('/api/v2/food/clarify', args.baseUrl).toString(),
        headers,
        {
          analysisId: outcome.analysisId,
          answers,
        },
        args.raw
      );
      continue;
    }

    if (outcome.kind === 'meal-type') {
      if (!args.interactive) break;
      const selectedMealType = await promptForMealType(outcome.question);
      hr('Submit Meal Type');
      outcome = await postStream(
        new URL('/api/v2/food/meal-type', args.baseUrl).toString(),
        headers,
        {
          analysisId: outcome.analysisId,
          mealType: selectedMealType,
        },
        args.raw
      );
      continue;
    }

    break;
  }

  hr('Summary');
  switch (outcome.kind) {
    case 'result':
      console.log(`${G('Analysis completed successfully.')}`);
      console.log(`${D('analysisId:')} ${outcome.analysisId}`);
      console.log(`${D('final meal:')} ${outcome.result.meal_name}`);
      break;
    case 'clarification':
      console.log(`${Y('Analysis stopped at clarification step.')}`);
      console.log(`${D('analysisId:')} ${outcome.analysisId}`);
      break;
    case 'meal-type':
      console.log(`${Y('Analysis stopped at meal-type question.')}`);
      console.log(`${D('analysisId:')} ${outcome.analysisId}`);
      break;
    case 'error':
      console.log(`${R('Analysis failed.')}`);
      if (outcome.analysisId) {
        console.log(`${D('analysisId:')} ${outcome.analysisId}`);
      }
      console.log(`${D('message:')} ${outcome.message}`);
      break;
  }

  console.log(`${D('log correlation requestId:')} ${args.requestId}`);
  console.log(
    `${D('console hint:')} docker compose logs --since 5m backend-staging | rg '${args.requestId}|meal_analysis_v2'`
  );

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
