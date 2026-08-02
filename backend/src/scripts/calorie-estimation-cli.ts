/**
 * End-to-end calorie-estimation diagnostic CLI.
 *
 * Runs the same in-process V2 engine used by the API and exposes pipeline
 * events, automatic continuation decisions, grounding, timing, and actual
 * LLM provider/model attempts without printing credentials.
 */

import { pathToFileURL } from 'node:url';

import config from '../config.js';
import { closeDatabase, healthCheck, initializeDatabase } from '../services/database.js';
import {
  MEAL_TYPES,
  analyzeImageMeal,
  analyzeTextMeal,
  continueMealAnalysis,
  continueMealAnalysisWithMealType,
  createAnalysisTrace,
  summarizeAnalysisTrace,
  type AnalysisLogger,
  type MealTypeValue,
  type PipelineEvent,
} from '../services/nutritionEngineV2.js';

export type CalorieEstimationCliArgs = {
  text?: string;
  imageUrl?: string;
  locale: string;
  countryCode?: string;
  mealType?: MealTypeValue;
  autoContinue: boolean;
  json: boolean;
  help: boolean;
};

type TimedEvent = {
  phase: number;
  elapsedMs: number;
  event: PipelineEvent;
};

type Decision = {
  phase: number;
  kind: 'clarification_defaults' | 'meal_type';
  detail: Record<string, unknown>;
};

type CapturedLog = {
  elapsedMs: number;
  level: 'info' | 'warn' | 'error';
  message?: string;
  data: Record<string, unknown>;
};

const MAX_CONTINUATIONS = 6;

function valueAfter(argv: string[], index: number, flag: string): string {
  const value = argv[index + 1];
  if (!value || value.startsWith('--')) throw new Error(`${flag} requires a value`);
  return value;
}

export function parseCalorieEstimationCliArgs(argv: string[]): CalorieEstimationCliArgs {
  const args: CalorieEstimationCliArgs = {
    locale: 'en',
    autoContinue: true,
    json: false,
    help: false,
  };
  const positional: string[] = [];

  for (let index = 0; index < argv.length; index += 1) {
    const arg = argv[index]!;
    if (arg === '--help' || arg === '-h') args.help = true;
    else if (arg === '--json') args.json = true;
    else if (arg === '--no-auto-continue') args.autoContinue = false;
    else if (arg === '--text') {
      args.text = valueAfter(argv, index, arg);
      index += 1;
    } else if (arg === '--image-url') {
      args.imageUrl = valueAfter(argv, index, arg);
      index += 1;
    } else if (arg === '--locale') {
      args.locale = valueAfter(argv, index, arg);
      index += 1;
    } else if (arg === '--country') {
      args.countryCode = valueAfter(argv, index, arg).toUpperCase();
      index += 1;
    } else if (arg === '--meal-type') {
      const value = valueAfter(argv, index, arg).toUpperCase() as MealTypeValue;
      if (!MEAL_TYPES.includes(value as (typeof MEAL_TYPES)[number])) {
        throw new Error(`--meal-type must be one of ${MEAL_TYPES.join(', ')}`);
      }
      args.mealType = value;
      index += 1;
    } else if (arg.startsWith('-')) {
      throw new Error(`Unknown argument: ${arg}`);
    } else {
      positional.push(arg);
    }
  }

  if (!args.text && positional.length > 0) args.text = positional.join(' ');
  if (args.text && args.imageUrl) throw new Error('Use either --text or --image-url, not both');
  return args;
}

function printHelp(): void {
  console.log(`Calorie estimation diagnostic CLI

Usage:
  npm run calories:estimate -- --text "2 rotis with dal"
  npm run calories:estimate -- "100 g dry oats with 250 ml milk"
  npm run calories:estimate -- --image-url https://example.com/meal.jpg --meal-type DINNER
  npm run calories:estimate -- --text "paneer curry" --json

Options:
  --text <description>       Analyze a text meal.
  --image-url <url>          Analyze an accessible meal image.
  --meal-type <type>         BREAKFAST, LUNCH, DINNER, or SNACK.
  --locale <code>            Response locale (default: en).
  --country <code>           Optional country hint, such as IN or US.
  --no-auto-continue         Stop at clarification or meal-type questions.
  --json                     Emit one machine-readable diagnostic document.
  --help                     Show this help.

By default, clarification defaults are accepted until the pipeline completes.
If meal type is still unknown, the inferred type is used, otherwise LUNCH is
selected and recorded in the decisions section. Pass --meal-type for controlled tests.`);
}

export function redactedImageUrl(value: string): string {
  try {
    const url = new URL(value);
    return `${url.origin}${url.pathname}`;
  } catch {
    return '(invalid URL)';
  }
}

function createLogger(startedAt: number, logs: CapturedLog[]): AnalysisLogger {
  const capture = (level: CapturedLog['level']) =>
    (data: Record<string, unknown>, message?: string): void => {
      logs.push({ elapsedMs: Date.now() - startedAt, level, message, data });
    };
  return { info: capture('info'), warn: capture('warn'), error: capture('error') };
}

async function collect(
  generator: AsyncGenerator<PipelineEvent>,
  phase: number,
  startedAt: number,
  timeline: TimedEvent[]
): Promise<PipelineEvent[]> {
  const events: PipelineEvent[] = [];
  for await (const event of generator) {
    events.push(event);
    timeline.push({ phase, elapsedMs: Date.now() - startedAt, event });
  }
  return events;
}

function lastEvent(events: PipelineEvent[]): PipelineEvent | undefined {
  return events.at(-1);
}

function analysisIdFrom(events: PipelineEvent[]): string | undefined {
  return events.find((event) => event.data.analysisId)?.data.analysisId;
}

export function mealTypeForQuestion(event: Extract<PipelineEvent, { step: 'MEAL_TYPE_QUESTION' }>): MealTypeValue {
  if (event.data.inferredMealType && event.data.inferredMealType !== 'UNKNOWN') {
    return event.data.inferredMealType;
  }
  return event.data.options.includes('LUNCH') ? 'LUNCH' : event.data.options[0] ?? 'LUNCH';
}

function terminalResult(timeline: TimedEvent[]): Extract<PipelineEvent, { step: 'RESULT' }> | undefined {
  return [...timeline].reverse().find(({ event }) => event.step === 'RESULT')?.event as
    | Extract<PipelineEvent, { step: 'RESULT' }>
    | undefined;
}

export function printHuman(report: Record<string, unknown>): void {
  const input = report.input as { kind: string; value: string };
  const result = report.result as Extract<PipelineEvent, { step: 'RESULT' }>['data'] | undefined;
  const timeline = report.timeline as TimedEvent[];
  const decisions = report.decisions as Decision[];
  const trace = report.trace as {
    totalDurationMs: number;
    llmCallCount: number;
    llmAttemptCount: number;
    llmFailedAttemptCount: number;
    usdaLookupCount: number;
    dbWriteCount: number;
    steps: Array<{ category: string; name: string; durationMs: number; meta?: Record<string, unknown> }>;
    llmAttempts: Array<{ operation?: string; provider: string; model: string; outcome: string; durationMs: number; error?: string }>;
  };

  console.log(`\nCalorie estimation: ${input.value}`);
  console.log(`Input ${input.kind} | database ${report.databaseHealthy ? 'connected' : 'unavailable'}`);
  console.log(`Routing ${String((report.routing as Record<string, unknown>).order)}`);

  console.log('\nPipeline timeline');
  for (const item of timeline) {
    const suffix = item.event.step === 'UNCERTAINTY'
      ? ` needsClarification=${item.event.data.needsClarification}`
      : item.event.step === 'ERROR'
        ? ` ${item.event.data.message}`
        : '';
    console.log(`  +${String(item.elapsedMs).padStart(6)}ms  phase ${item.phase}  ${item.event.step}${suffix}`);
  }

  const decomposition = [...timeline].reverse().find(({ event }) => event.step === 'DECOMPOSITION')?.event;
  if (decomposition?.step === 'DECOMPOSITION') {
    console.log(`\nDecomposition: ${decomposition.data.mealName} (confidence ${decomposition.data.confidence})`);
    for (const ingredient of decomposition.data.ingredients) {
      const band = `${ingredient.minGrams}-${ingredient.maxGrams}g`;
      console.log(`  ${ingredient.rawName}: ${ingredient.gramsEstimated}g [${band}] -> ${ingredient.canonicalHint}`);
    }
  }

  const ingredientsEvent = [...timeline].reverse().find(({ event }) => event.step === 'INGREDIENTS')?.event;
  if (ingredientsEvent?.step === 'INGREDIENTS') {
    console.log('\nGrounded ingredients');
    for (const ingredient of ingredientsEvent.data.ingredients) {
      console.log(
        `  ${ingredient.rawName}: ${ingredient.grams}g, ${ingredient.macros.calories} kcal | ${ingredient.source}/${ingredient.matchType} -> ${ingredient.canonicalName}`
      );
    }
  }

  if (decisions.length > 0) {
    console.log('\nAutomatic decisions');
    for (const decision of decisions) console.log(`  phase ${decision.phase} ${decision.kind}: ${JSON.stringify(decision.detail)}`);
  }

  console.log('\nLLM routing attempts');
  for (const attempt of trace.llmAttempts) {
    console.log(
      `  ${attempt.outcome.toUpperCase().padEnd(7)} ${attempt.operation ?? 'unknown'} ${attempt.provider}/${attempt.model} ${attempt.durationMs}ms${attempt.error ? ` — ${attempt.error}` : ''}`
    );
  }

  console.log('\nInternal trace');
  for (const step of trace.steps) {
    const failed = step.meta?.ok === false ? ` ERROR ${String(step.meta.error ?? '')}` : '';
    console.log(`  ${step.category.padEnd(8)} ${step.name.padEnd(38)} ${String(step.durationMs).padStart(6)}ms${failed}`);
  }

  if (result) {
    console.log(`\nResult: ${result.mealName} — ${result.macros.calories} kcal`);
    console.log(
      `Macros: ${result.macros.protein}g protein, ${result.macros.carbs}g carbs, ${result.macros.fat}g fat, ${result.macros.fiber}g fiber`
    );
    console.log(
      `Confidence: ${result.calorieConfidence}; band ${result.calorieBand.min}-${result.calorieBand.max} kcal; reasons ${result.confidenceReasons.join(', ') || 'none'}`
    );
    console.log(`Meal type: ${result.mealType} (${result.mealTypeSource})`);
  } else {
    console.log(`\nNo final result. Terminal step: ${String(report.terminalStep ?? 'none')}`);
  }
  console.log(
    `\nTotals: ${trace.totalDurationMs}ms, ${trace.llmCallCount} LLM calls/${trace.llmAttemptCount} attempts/${trace.llmFailedAttemptCount} failed attempts, ${trace.usdaLookupCount} USDA lookups, ${trace.dbWriteCount} DB writes`
  );
}

export async function runCalorieEstimationCli(argv = process.argv.slice(2)): Promise<void> {
  const args = parseCalorieEstimationCliArgs(argv);
  if (args.help) {
    printHelp();
    return;
  }
  if (!args.text && !args.imageUrl) {
    printHelp();
    process.exitCode = 1;
    return;
  }

  const startedAt = Date.now();
  const trace = createAnalysisTrace();
  const timeline: TimedEvent[] = [];
  const decisions: Decision[] = [];
  const logs: CapturedLog[] = [];
  const logger = createLogger(startedAt, logs);
  initializeDatabase();

  try {
    const databaseHealthy = await healthCheck();
    if (!databaseHealthy) {
      throw new Error(
        'Database health check failed. Start PostgreSQL or point DATABASE_URL at a reachable backend database.'
      );
    }
    let phase = 1;
    let events = await collect(
      args.imageUrl
        ? analyzeImageMeal(args.imageUrl, {
            locale: args.locale,
            countryCode: args.countryCode,
            selectedMealType: args.mealType,
            selectedMealTypeSource: args.mealType ? 'user' : undefined,
            logger,
            trace,
          })
        : analyzeTextMeal(args.text!, {
            locale: args.locale,
            countryCode: args.countryCode,
            selectedMealType: args.mealType,
            selectedMealTypeSource: args.mealType ? 'user' : undefined,
            logger,
            trace,
          }),
      phase,
      startedAt,
      timeline
    );
    const analysisId = analysisIdFrom(events);

    while (args.autoContinue && analysisId && phase < MAX_CONTINUATIONS) {
      const terminal = lastEvent(events);
      if (!terminal || terminal.step === 'RESULT' || terminal.step === 'ERROR') break;
      phase += 1;

      if (terminal.step === 'UNCERTAINTY' && terminal.data.needsClarification) {
        const answers = terminal.data.clarifications.map((clarification) => ({
          clarificationId: clarification.clarificationId,
          selectedOptionId: clarification.defaultOptionId,
        }));
        if (answers.length === 0) break;
        decisions.push({
          phase,
          kind: 'clarification_defaults',
          detail: { answers },
        });
        events = await collect(
          continueMealAnalysis(analysisId, answers, { logger, trace }),
          phase,
          startedAt,
          timeline
        );
        continue;
      }

      if (terminal.step === 'MEAL_TYPE_QUESTION') {
        const selected = args.mealType ?? mealTypeForQuestion(terminal);
        decisions.push({
          phase,
          kind: 'meal_type',
          detail: {
            selected,
            strategy: args.mealType
              ? 'command_line'
              : terminal.data.inferredMealType && terminal.data.inferredMealType !== 'UNKNOWN'
                ? 'pipeline_inference'
                : 'diagnostic_default',
          },
        });
        events = await collect(
          continueMealAnalysisWithMealType(analysisId, selected, { logger, trace }),
          phase,
          startedAt,
          timeline
        );
        continue;
      }
      break;
    }

    const result = terminalResult(timeline)?.data;
    const terminal = lastEvent(events);
    const report = {
      input: {
        kind: args.imageUrl ? 'image' : 'text',
        value: args.imageUrl ? redactedImageUrl(args.imageUrl) : args.text,
        locale: args.locale,
        countryCode: args.countryCode,
        requestedMealType: args.mealType,
      },
      analysisId,
      databaseHealthy,
      routing: {
        order: [
          config.OPENROUTER_API_KEY ? `openrouter/${config.OPENROUTER_MEAL_MODEL}` : undefined,
          config.OPENROUTER_API_KEY ? `openrouter/${config.OPENROUTER_FREE_MODEL}` : undefined,
          config.OPENAI_API_KEY ? 'openai/direct-fallback' : undefined,
        ].filter(Boolean),
      },
      terminalStep: terminal?.step,
      completed: Boolean(result),
      timeline,
      decisions,
      result,
      trace: summarizeAnalysisTrace(trace),
      logs,
    };

    if (args.json) console.log(JSON.stringify(report, null, 2));
    else printHuman(report);
    if (terminal?.step === 'ERROR' || (!result && args.autoContinue)) process.exitCode = 1;
  } finally {
    await closeDatabase();
  }
}

const isMainModule = process.argv[1] != null && import.meta.url === pathToFileURL(process.argv[1]).href;
if (isMainModule) {
  runCalorieEstimationCli().catch((error) => {
    console.error(error instanceof Error ? error.message : String(error));
    process.exitCode = 1;
  });
}
