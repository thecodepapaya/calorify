import { readFile, writeFile } from 'node:fs/promises';
import { resolve } from 'node:path';
import type { PipelineEvent } from '../services/nutritionEngineV2.js';
import {
  evaluateCalorieCase,
  summarizeCalorieEval,
  summarizeCalorieStability,
  type CalorieEvalCase,
  type CalorieEvalCaseResult,
  type CalorieEvalDataset,
  type CalorieEvalObservation,
} from '../evals/calorieEstimationEval.js';

type Args = {
  baseUrl: string;
  datasetPath: string;
  caseIds: Set<string>;
  json: boolean;
  noFail: boolean;
  verbose: boolean;
  outputPath?: string;
  timeoutMs: number;
  repeats: number;
  split: 'development' | 'holdout' | 'all';
  authToken?: string;
};

const DEFAULT_DATASET = 'evals/calorie-estimation.cases.json';

function parsePositiveInteger(raw: string | undefined, flag: string): number {
  const value = Number(raw);
  if (!Number.isInteger(value) || value <= 0) throw new Error(`${flag} must be a positive integer`);
  return value;
}

function parseArgs(argv: string[]): Args {
  const args: Args = {
    baseUrl: process.env.CALORIE_EVAL_BASE_URL ?? 'http://127.0.0.1:8000',
    datasetPath: process.env.CALORIE_EVAL_DATASET ?? DEFAULT_DATASET,
    caseIds: new Set(),
    json: false,
    noFail: false,
    verbose: false,
    timeoutMs: 90_000,
    repeats: parsePositiveInteger(process.env.CALORIE_EVAL_REPEATS ?? '1', 'CALORIE_EVAL_REPEATS'),
    split: 'development',
    authToken: process.env.CALORIE_EVAL_AUTH_TOKEN,
  };

  for (let index = 0; index < argv.length; index += 1) {
    const arg = argv[index]!;
    const next = argv[index + 1];
    if (arg === '--base-url' && next) {
      args.baseUrl = next;
      index += 1;
    } else if (arg === '--dataset' && next) {
      args.datasetPath = next;
      index += 1;
    } else if (arg === '--case' && next) {
      next.split(',').filter(Boolean).forEach((id) => args.caseIds.add(id));
      index += 1;
    } else if (arg === '--timeout-ms' && next) {
      args.timeoutMs = parsePositiveInteger(next, '--timeout-ms');
      index += 1;
    } else if (arg === '--auth-token' && next) {
      args.authToken = next;
      index += 1;
    } else if (arg === '--repeats' && next) {
      args.repeats = parsePositiveInteger(next, '--repeats');
      index += 1;
    } else if (arg === '--split' && next && ['development', 'holdout', 'all'].includes(next)) {
      args.split = next as Args['split'];
      index += 1;
    } else if (arg === '--json') {
      args.json = true;
    } else if (arg === '--verbose') {
      args.verbose = true;
    } else if (arg === '--output' && next) {
      args.outputPath = next;
      index += 1;
    } else if (arg === '--no-fail') {
      args.noFail = true;
    } else if (arg === '--help' || arg === '-h') {
      console.log(`Calorie estimation API eval

Usage:
  npm run calories:eval
  npm run calories:eval -- --base-url https://staging-api.example.com
  npm run calories:eval -- --case indian-roti-dal-curd,dry-oats-100g --verbose

Options:
  --base-url <url>    API origin (default: CALORIE_EVAL_BASE_URL or http://127.0.0.1:8000)
  --dataset <path>    Dataset JSON (default: ${DEFAULT_DATASET})
  --case <ids>        Comma-separated case IDs
  --timeout-ms <ms>   Per-request timeout (default: 90000)
  --auth-token <jwt>  API bearer token (default: CALORIE_EVAL_AUTH_TOKEN)
  --repeats <count>   Runs per case for stability measurement (default: 1)
  --split <name>      development, holdout, or all (default: development)
  --json              Print machine-readable output
  --output <path>     Also write the complete JSON report to a file
  --verbose           Show event paths, confidence, decisions, and ingredients
  --no-fail           Report threshold failures without a non-zero exit code`);
      process.exit(0);
    } else {
      throw new Error(`Unknown or incomplete argument: ${arg}`);
    }
  }

  args.baseUrl = args.baseUrl.replace(/\/$/, '');
  return args;
}

async function readDataset(path: string): Promise<CalorieEvalDataset> {
  const parsed = JSON.parse(await readFile(resolve(process.cwd(), path), 'utf8')) as CalorieEvalDataset;
  if (!Array.isArray(parsed.cases) || parsed.cases.length === 0) throw new Error('Eval dataset has no cases');
  if (!parsed.thresholds) throw new Error('Eval dataset has no thresholds');
  const ids = new Set<string>();
  for (const evalCase of parsed.cases) {
    if (!evalCase.id || ids.has(evalCase.id)) throw new Error(`Duplicate or empty case ID: ${evalCase.id}`);
    if (evalCase.expectedCalories.min < 0 || evalCase.expectedCalories.max < evalCase.expectedCalories.min) {
      throw new Error(`Invalid calorie range for ${evalCase.id}`);
    }
    if (!evalCase.provenance?.trim()) throw new Error(`Missing provenance for ${evalCase.id}`);
    ids.add(evalCase.id);
  }
  return parsed;
}

function parsePipelineEvent(value: unknown): PipelineEvent {
  if (value == null || typeof value !== 'object' || Array.isArray(value)) {
    throw new Error('Pipeline event is not an object');
  }
  const event = value as Record<string, unknown>;
  const steps = new Set<PipelineEvent['step']>([
    'STARTED', 'DECOMPOSITION', 'INGREDIENTS', 'UNCERTAINTY',
    'MEAL_TYPE_QUESTION', 'RESULT', 'NO_FOOD', 'ERROR',
  ]);
  if (!steps.has(event.step as PipelineEvent['step']) ||
      event.data == null || typeof event.data !== 'object' ||
      typeof (event.data as Record<string, unknown>).analysisId !== 'string') {
    throw new Error('Pipeline event has an invalid envelope');
  }
  return event as unknown as PipelineEvent;
}

function parseNdjson(body: string): PipelineEvent[] {
  return body
    .split(/\r?\n/)
    .map((line) => line.trim())
    .filter(Boolean)
    .map((line) => parsePipelineEvent(JSON.parse(line)));
}

async function postEvents(
  baseUrl: string,
  endpoint: string,
  payload: object,
  timeoutMs: number,
  authToken?: string
): Promise<PipelineEvent[]> {
  const response = await fetch(`${baseUrl}${endpoint}`, {
    method: 'POST',
    headers: {
      accept: 'application/x-ndjson',
      'content-type': 'application/json',
      ...(authToken ? { authorization: `Bearer ${authToken}` } : {}),
    },
    body: JSON.stringify(payload),
    signal: AbortSignal.timeout(timeoutMs),
  });
  const body = await response.text();
  if (!response.ok) throw new Error(`HTTP ${response.status}: ${body.slice(0, 300)}`);
  return parseNdjson(body);
}

function lastEvent(events: PipelineEvent[]): PipelineEvent | undefined {
  return events.at(-1);
}

function analysisIdFrom(events: PipelineEvent[]): string | undefined {
  for (const event of events) {
    const id = event.data?.analysisId;
    if (typeof id === 'string' && id) return id;
  }
  return undefined;
}

async function runPipeline(evalCase: CalorieEvalCase, args: Args): Promise<CalorieEvalObservation> {
  const startedAt = Date.now();
  let events: PipelineEvent[] = [];
  const eventSteps: string[] = [];
  const continuationDecisions: string[] = [];
  let analysisId: string | undefined;
  try {
    events = await postEvents(
      args.baseUrl,
      '/api/v2/food/analyze-text',
      { textDescription: evalCase.description },
      args.timeoutMs,
      args.authToken
    );
    eventSteps.push(...events.map((event) => event.step));
    analysisId = analysisIdFrom(events);

    // Explicit eval inputs should normally finish directly. If the engine still asks a
    // question, accept its default portion and the dataset's declared meal type so the
    // evaluation measures calorie grounding rather than UI interaction.
    for (let continuation = 0; continuation < 3; continuation += 1) {
      const terminal = lastEvent(events);
      analysisId = analysisId ?? analysisIdFrom(events);
      if (!terminal || !analysisId || terminal.step === 'RESULT' || terminal.step === 'ERROR') break;

      if (terminal.step === 'UNCERTAINTY' && terminal.data?.needsClarification === true) {
        const clarifications = terminal.data.clarifications;
        const answers = clarifications.map((clarification) => ({
          clarificationId: clarification.clarificationId,
          selectedOptionId: clarification.defaultOptionId,
        }));
        if (answers.length === 0) break;
        continuationDecisions.push(`accepted ${answers.length} default clarification answer(s)`);
        events = await postEvents(
          args.baseUrl,
          '/api/v2/food/clarify',
          { analysisId, answers },
          args.timeoutMs,
          args.authToken
        );
        eventSteps.push(...events.map((event) => event.step));
        continue;
      }

      if (terminal.step === 'MEAL_TYPE_QUESTION') {
        continuationDecisions.push(`selected dataset meal type ${evalCase.mealType}`);
        events = await postEvents(
          args.baseUrl,
          '/api/v2/food/meal-type',
          { analysisId, mealType: evalCase.mealType },
          args.timeoutMs,
          args.authToken
        );
        eventSteps.push(...events.map((event) => event.step));
        continue;
      }
      break;
    }

    const terminal = lastEvent(events);
    const result = [...events].reverse().find(
      (event): event is Extract<PipelineEvent, { step: 'RESULT' }> =>
        event.step === 'RESULT'
    );
    const data = result?.data;
    const calories = data?.macros?.calories;
    return {
      analysisId,
      calories: typeof calories === 'number' ? calories : undefined,
      ingredients: data?.ingredients,
      calorieConfidence: data?.calorieConfidence,
      confidenceReasons: data?.confidenceReasons,
      calorieBand: data?.calorieBand,
      eventSteps,
      continuationDecisions,
      latencyMs: Date.now() - startedAt,
      terminalStep: terminal?.step,
      error:
        terminal?.step === 'ERROR' && typeof terminal.data?.message === 'string'
          ? terminal.data.message
          : result
            ? undefined
            : `Pipeline ended at ${terminal?.step ?? 'no event'}`,
    };
  } catch (error) {
    return {
      analysisId,
      eventSteps,
      continuationDecisions,
      latencyMs: Date.now() - startedAt,
      terminalStep: lastEvent(events)?.step,
      error: error instanceof Error ? error.message : String(error),
    };
  }
}

function formatPercent(value: number): string {
  return `${(value * 100).toFixed(1)}%`;
}

function printHuman(
  results: CalorieEvalCaseResult[],
  summary: ReturnType<typeof summarizeCalorieEval>,
  stability: ReturnType<typeof summarizeCalorieStability>,
  verbose: boolean
): void {
  for (const result of results) {
    const status = result.passed ? 'PASS' : 'FAIL';
    const calories = result.calories === undefined ? 'no result' : `${result.calories} kcal`;
    const expected = `${result.expectedCalories.min}-${result.expectedCalories.max}`;
    const details = [
      !result.rangePassed ? 'calorie range' : '',
      ...result.missingIngredientGroups.map((group) => `missing ${group.join('|')}`),
      ...result.forbiddenIngredientMatches.map((term) => `forbidden ${term}`),
      result.error ?? '',
    ].filter(Boolean).join('; ');
    const run = result.runNumber == null ? '' : ` #${result.runNumber}`;
    console.log(`${status.padEnd(4)} ${(result.id + run).padEnd(34)} ${calories.padEnd(13)} expected ${expected.padEnd(9)} ${result.latencyMs}ms${details ? `  ${details}` : ''}`);
    if (verbose) {
      console.log(`     events: ${result.eventSteps.join(' -> ') || 'none'}`);
      console.log(`     analysis: ${result.analysisId ?? 'unknown'}; confidence: ${result.calorieConfidence ?? 'unknown'}; band: ${result.calorieBand ? `${result.calorieBand.min}-${result.calorieBand.max}` : 'unknown'}; reasons: ${result.confidenceReasons.join(', ') || 'none'}`);
      for (const decision of result.continuationDecisions) console.log(`     decision: ${decision}`);
      for (const ingredient of result.ingredients) {
        console.log(`     ingredient: ${ingredient.rawName ?? ingredient.canonicalName ?? 'unknown'} | ${ingredient.grams ?? '?'}g | ${ingredient.macros?.calories ?? '?'} kcal | ${ingredient.canonicalName ?? 'unresolved'}`);
      }
    }
  }
  console.log(`\nCompletion ${summary.completed}/${summary.total} (${formatPercent(summary.completionRate)})`);
  console.log(`Passed     ${summary.passed}/${summary.total} (${formatPercent(summary.passRate)})`);
  console.log(`Mean range error ${formatPercent(summary.meanRangeError)}`);
  console.log(`Mean absolute error to range midpoint ${summary.meanAbsoluteErrorToMidpoint.toFixed(1)} kcal`);
  console.log(`P95 latency ${summary.p95LatencyMs}ms`);
  if (results.some((result) => result.runNumber != null)) {
    console.log(`Stable case pass rate ${formatPercent(stability.stablePassRate)}`);
    console.log(`Mean/max calorie spread ${formatPercent(stability.meanCalorieSpreadPercent)} / ${formatPercent(stability.maxCalorieSpreadPercent)}`);
    if (stability.unstableCaseIds.length > 0) {
      console.log(`Unstable cases: ${stability.unstableCaseIds.join(', ')}`);
    }
  }
  if (summary.thresholdsPassed) console.log('Thresholds PASS');
  else console.log(`Thresholds FAIL: ${summary.thresholdFailures.join('; ')}`);
}

async function main(): Promise<void> {
  const args = parseArgs(process.argv.slice(2));
  const dataset = await readDataset(args.datasetPath);
  const splitCases = args.split === 'all'
    ? dataset.cases
    : dataset.cases.filter((evalCase) => (evalCase.split ?? 'development') === args.split);
  const cases = args.caseIds.size === 0
    ? splitCases
    : dataset.cases.filter((evalCase) => args.caseIds.has(evalCase.id));
  const unknownIds = [...args.caseIds].filter((id) => !dataset.cases.some((evalCase) => evalCase.id === id));
  if (unknownIds.length > 0) throw new Error(`Unknown case IDs: ${unknownIds.join(', ')}`);
  if (cases.length === 0) throw new Error('No eval cases selected');

  const results: CalorieEvalCaseResult[] = [];
  for (const evalCase of cases) {
    for (let runNumber = 1; runNumber <= args.repeats; runNumber += 1) {
      const observation = await runPipeline(evalCase, args);
      results.push({
        ...evaluateCalorieCase(evalCase, observation),
        ...(args.repeats > 1 ? { runNumber } : {}),
      });
    }
  }
  const summary = summarizeCalorieEval(results, dataset.thresholds);
  const stability = summarizeCalorieStability(results);
  const report = { datasetVersion: dataset.version, baseUrl: args.baseUrl, split: args.split, repeats: args.repeats, summary, stability, results };
  if (args.outputPath) {
    const outputPath = resolve(process.cwd(), args.outputPath);
    await writeFile(outputPath, `${JSON.stringify(report, null, 2)}\n`, 'utf8');
    if (!args.json) console.log(`Report written to ${outputPath}`);
  }
  if (args.json) console.log(JSON.stringify(report, null, 2));
  else printHuman(results, summary, stability, args.verbose);
  if (!summary.thresholdsPassed && !args.noFail) process.exitCode = 1;
}

main().catch((error) => {
  console.error(error instanceof Error ? error.message : String(error));
  process.exitCode = 1;
});
