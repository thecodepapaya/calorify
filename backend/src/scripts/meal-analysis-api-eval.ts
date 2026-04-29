/**
 * Meal Analysis API eval runner.
 *
 * Exercises the real streamed V2 API and checks prompt-level invariants.
 *
 * Usage:
 *   npm run analysis:v2:eval -- --base-url http://localhost:8000
 *   npm run analysis:v2:eval -- --base-url https://staging-api.example.dev --case roti-paneer-sabzi
 */

import dotenv from 'dotenv';
import { randomUUID } from 'node:crypto';
import { join } from 'node:path';

dotenv.config({ path: join(process.cwd(), 'staging.env') });
dotenv.config({ override: true });

type Args = {
  baseUrl: string;
  locale: string;
  country?: string;
  authToken?: string;
  caseId?: string;
  json: boolean;
  showHelp: boolean;
};

type V2Event = {
  step: string;
  data?: Record<string, unknown>;
};

type DecomposedIngredient = {
  rawName?: string;
  canonicalHint?: string;
  gramsEstimated?: number;
  count?: number;
  portionKind?: string;
};

type ResolvedIngredient = {
  rawName?: string;
  canonicalName?: string;
  matchType?: string;
  source?: 'db' | 'llm_fallback';
};

type EvalCase = {
  id: string;
  input: string;
  mustIncludeCanonicalHints?: string[];
  mustIncludeAnyCanonicalHint?: string[][];
  mustIncludeRawTerms?: string[];
  forbiddenCanonicalHintPatterns?: string[];
  forbiddenRawExact?: string[];
  expectedCounts?: Array<{ canonicalHint: string; count: number }>;
  maxAiFallbackRatio?: number;
  calorieBand?: { min: number; max: number };
};

type EvalResult = {
  id: string;
  input: string;
  passed: boolean;
  failures: string[];
  metrics: {
    ingredientCount: number;
    dbCount: number;
    aiFallbackCount: number;
    aiFallbackRatio: number;
    calories?: number;
  };
};

const DEFAULT_BASE_URL =
  process.env.BASE_URL ??
  process.env.BACKEND_URL ??
  `http://localhost:${process.env.PORT ?? '8000'}`;

const EVAL_CASES: EvalCase[] = [
  {
    id: 'roti-paneer-sabzi',
    input: '2 rotis with paneer sabzi in lunch',
    mustIncludeCanonicalHints: ['wheat flour whole', 'paneer'],
    mustIncludeAnyCanonicalHint: [
      ['ghee', 'oil vegetable', 'butter'],
      ['onion', 'tomato'],
      ['curry powder', 'garam masala', 'turmeric powder', 'cumin seeds'],
    ],
    mustIncludeRawTerms: ['paneer sabzi'],
    forbiddenCanonicalHintPatterns: ['/', '_', 'raw_ingredient', 'for_roti', 'vegetable_curry', 'salt_and_spices'],
    forbiddenRawExact: ['sabzi', 'vegetable curry'],
    expectedCounts: [{ canonicalHint: 'wheat flour whole', count: 2 }],
    maxAiFallbackRatio: 0.4,
    calorieBand: { min: 350, max: 850 },
  },
  {
    id: 'rotis-dal',
    input: '4 rotis with dal for dinner',
    mustIncludeCanonicalHints: ['wheat flour whole'],
    mustIncludeAnyCanonicalHint: [['lentils cooked', 'toor dal', 'mung beans cooked', 'chickpeas cooked']],
    forbiddenCanonicalHintPatterns: ['/', '_', 'raw_ingredient', 'for_roti'],
    expectedCounts: [{ canonicalHint: 'wheat flour whole', count: 4 }],
    maxAiFallbackRatio: 0.35,
    calorieBand: { min: 450, max: 950 },
  },
  {
    id: 'rajma-rice',
    input: 'rajma rice in lunch',
    mustIncludeAnyCanonicalHint: [
      ['kidney beans cooked', 'rajma'],
      ['rice white cooked', 'rice'],
    ],
    forbiddenCanonicalHintPatterns: ['/', '_'],
    maxAiFallbackRatio: 0.35,
    calorieBand: { min: 400, max: 900 },
  },
  {
    id: 'aloo-paratha-curd',
    input: '2 aloo parathas with curd',
    mustIncludeAnyCanonicalHint: [
      ['wheat flour whole', 'wheat flour refined'],
      ['potato boiled'],
      ['yogurt plain'],
      ['ghee', 'oil vegetable', 'butter'],
    ],
    forbiddenCanonicalHintPatterns: ['/', '_'],
    maxAiFallbackRatio: 0.45,
    calorieBand: { min: 500, max: 1100 },
  },
  {
    id: 'idli-sambar',
    input: '3 idlis with sambar breakfast',
    mustIncludeRawTerms: ['idli'],
    forbiddenCanonicalHintPatterns: ['/', '_'],
    maxAiFallbackRatio: 0.55,
    calorieBand: { min: 250, max: 750 },
  },
];

function normalize(value: string): string {
  return value.toLowerCase().replace(/[^a-z0-9\s]/g, ' ').replace(/\s+/g, ' ').trim();
}

function parseArgs(argv: string[]): Args {
  const args: Args = {
    baseUrl: DEFAULT_BASE_URL,
    locale: 'en',
    json: false,
    showHelp: false,
  };

  for (let i = 0; i < argv.length; i += 1) {
    const arg = argv[i]!;
    const next = argv[i + 1];
    if (arg === '--help' || arg === '-h') args.showHelp = true;
    else if (arg === '--json') args.json = true;
    else if (arg === '--base-url' && next) {
      args.baseUrl = next;
      i += 1;
    } else if (arg === '--locale' && next) {
      args.locale = next;
      i += 1;
    } else if (arg === '--country' && next) {
      args.country = next;
      i += 1;
    } else if (arg === '--auth-token' && next) {
      args.authToken = next;
      i += 1;
    } else if (arg === '--case' && next) {
      args.caseId = next;
      i += 1;
    }
  }

  return args;
}

function printHelp(): void {
  console.log(`Meal Analysis API eval runner

Usage:
  npm run analysis:v2:eval -- --base-url http://localhost:8000
  npm run analysis:v2:eval -- --base-url https://staging-api.example.dev --case roti-paneer-sabzi

Flags:
  --base-url <url>     Backend base URL. Defaults to BASE_URL/BACKEND_URL/localhost.
  --case <id>          Run one eval case.
  --locale <locale>    Locale header. Defaults to en.
  --country <code>     Optional country header.
  --auth-token <token> Optional bearer token.
  --json               Print JSON results.
`);
}

function headers(args: Args): Record<string, string> {
  const requestId = `meal-eval-${randomUUID()}`;
  const result: Record<string, string> = {
    Accept: 'application/x-ndjson',
    'Content-Type': 'application/json',
    'Accept-Language': args.locale,
    'X-Request-Id': requestId,
  };
  if (args.country) result['X-Country-Code'] = args.country;
  if (args.authToken) result.Authorization = `Bearer ${args.authToken}`;
  return result;
}

async function postAnalyzeText(args: Args, input: string): Promise<V2Event[]> {
  const response = await fetch(new URL('/api/v2/food/analyze-text', args.baseUrl), {
    method: 'POST',
    headers: headers(args),
    body: JSON.stringify({ textDescription: input }),
  });

  const body = await response.text();
  if (!response.ok) {
    throw new Error(`HTTP ${response.status}: ${body}`);
  }

  return body
    .split('\n')
    .map((line) => line.trim())
    .filter(Boolean)
    .map((line) => JSON.parse(line) as V2Event);
}

function getIngredients(events: V2Event[]): {
  decomposed: DecomposedIngredient[];
  resolved: ResolvedIngredient[];
  calories?: number;
} {
  const decomposition = events.find((event) => event.step === 'DECOMPOSITION');
  const ingredients = events.find((event) => event.step === 'INGREDIENTS');
  const result = events.find((event) => event.step === 'RESULT');
  const resultMacros = result?.data?.macros as { calories?: number } | undefined;

  return {
    decomposed: ((decomposition?.data?.ingredients as DecomposedIngredient[] | undefined) ?? []),
    resolved: ((ingredients?.data?.ingredients as ResolvedIngredient[] | undefined) ?? []),
    calories: resultMacros?.calories,
  };
}

function includesNormalized(values: string[], expected: string): boolean {
  const expectedNorm = normalize(expected);
  return values.some((value) => {
    const valueNorm = normalize(value);
    return valueNorm === expectedNorm || valueNorm.includes(expectedNorm) || expectedNorm.includes(valueNorm);
  });
}

function evaluateCase(testCase: EvalCase, events: V2Event[]): EvalResult {
  const failures: string[] = [];
  const { decomposed, resolved, calories } = getIngredients(events);
  const canonicalHints = decomposed.map((ingredient) => ingredient.canonicalHint ?? '').filter(Boolean);
  const rawNames = decomposed.map((ingredient) => ingredient.rawName ?? '').filter(Boolean);
  const resolvedSources = resolved.map((ingredient) => ingredient.source).filter(Boolean);
  const aiFallbackCount = resolvedSources.filter((source) => source === 'llm_fallback').length;
  const dbCount = resolvedSources.filter((source) => source === 'db').length;
  const aiFallbackRatio = resolvedSources.length > 0 ? aiFallbackCount / resolvedSources.length : 0;

  if (decomposed.length === 0) failures.push('missing DECOMPOSITION ingredients');
  if (resolved.length === 0) failures.push('missing INGREDIENTS resolution');

  for (const expected of testCase.mustIncludeCanonicalHints ?? []) {
    if (!includesNormalized(canonicalHints, expected)) {
      failures.push(`missing canonical hint: ${expected}`);
    }
  }

  for (const options of testCase.mustIncludeAnyCanonicalHint ?? []) {
    if (!options.some((option) => includesNormalized(canonicalHints, option))) {
      failures.push(`missing any canonical hint: ${options.join(' | ')}`);
    }
  }

  for (const expected of testCase.mustIncludeRawTerms ?? []) {
    if (!includesNormalized(rawNames, expected)) {
      failures.push(`missing raw dish context: ${expected}`);
    }
  }

  for (const pattern of testCase.forbiddenCanonicalHintPatterns ?? []) {
    const offender = canonicalHints.find((hint) => hint.toLowerCase().includes(pattern.toLowerCase()));
    if (offender) failures.push(`forbidden canonical hint pattern "${pattern}" in "${offender}"`);
  }

  const normalizedForbiddenRaw = new Set((testCase.forbiddenRawExact ?? []).map(normalize));
  for (const rawName of rawNames) {
    if (normalizedForbiddenRaw.has(normalize(rawName))) {
      failures.push(`forbidden standalone raw row: ${rawName}`);
    }
  }

  for (const expected of testCase.expectedCounts ?? []) {
    const match = decomposed.find((ingredient) =>
      includesNormalized([ingredient.canonicalHint ?? ''], expected.canonicalHint)
    );
    if (!match) continue;
    if (match.count !== expected.count) {
      failures.push(`expected ${expected.canonicalHint} count ${expected.count}, got ${match.count ?? 'missing'}`);
    }
  }

  if (testCase.maxAiFallbackRatio != null && aiFallbackRatio > testCase.maxAiFallbackRatio) {
    failures.push(
      `AI fallback ratio ${aiFallbackRatio.toFixed(2)} exceeds ${testCase.maxAiFallbackRatio.toFixed(2)}`
    );
  }

  if (testCase.calorieBand) {
    if (calories == null) {
      failures.push('missing RESULT calories for calorie band check');
    } else if (calories < testCase.calorieBand.min || calories > testCase.calorieBand.max) {
      failures.push(`calories ${calories} outside ${testCase.calorieBand.min}-${testCase.calorieBand.max}`);
    }
  }

  const error = events.find((event) => event.step === 'ERROR');
  if (error) {
    failures.push(`pipeline error: ${String(error.data?.message ?? 'unknown error')}`);
  }

  return {
    id: testCase.id,
    input: testCase.input,
    passed: failures.length === 0,
    failures,
    metrics: {
      ingredientCount: decomposed.length,
      dbCount,
      aiFallbackCount,
      aiFallbackRatio: +aiFallbackRatio.toFixed(3),
      calories,
    },
  };
}

async function main(): Promise<void> {
  const args = parseArgs(process.argv.slice(2));
  if (args.showHelp) {
    printHelp();
    return;
  }

  const cases = args.caseId ? EVAL_CASES.filter((testCase) => testCase.id === args.caseId) : EVAL_CASES;
  if (cases.length === 0) {
    throw new Error(`Unknown eval case: ${args.caseId}`);
  }

  const results: EvalResult[] = [];
  for (const testCase of cases) {
    const events = await postAnalyzeText(args, testCase.input);
    const result = evaluateCase(testCase, events);
    results.push(result);
    if (!args.json) {
      const status = result.passed ? 'PASS' : 'FAIL';
      const metrics = `ingredients=${result.metrics.ingredientCount} db=${result.metrics.dbCount} ai=${result.metrics.aiFallbackCount} calories=${result.metrics.calories ?? '?'}`;
      console.log(`${status} ${testCase.id}  ${metrics}`);
      for (const failure of result.failures) console.log(`  - ${failure}`);
    }
  }

  if (args.json) {
    console.log(JSON.stringify({ results }, null, 2));
  }

  const failed = results.filter((result) => !result.passed);
  if (failed.length > 0) {
    process.exitCode = 1;
  }
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : error);
  process.exitCode = 1;
});
