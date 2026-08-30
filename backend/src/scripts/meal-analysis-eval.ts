import { mkdir, mkdtemp, readFile, writeFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { isAbsolute, join, resolve } from 'node:path';
import config from '../config.js';
import {
  assertionPassRates,
  evaluateMealAnalysisRun,
  type MealAnalysisEvalCase,
  type MealAnalysisEvalDataset,
  type MealAnalysisEvalRunResult,
} from '../evals/mealAnalysisEval.js';
import { createMealAnalysisLlmClient } from '../services/meal-analysis/llm.js';
import { createModelMealInterpreter } from '../services/meal-analysis-v3/interpretation.js';

const DEFAULT_DATASET = 'evals/meal-analysis.cases.json';

interface Args {
  model: string;
  repeats: number;
  datasetPath: string;
  outputDirectory?: string;
  caseId?: string;
}

function help(): string {
  return `Two-pass meal-analysis model eval

Usage:
  npm run meal-analysis:eval
  npm run meal-analysis:eval -- --model openai/gpt-5.6-luna
  npm run meal-analysis:eval -- --model gpt-5-nano --repeats 3

Options:
  --model MODEL          Exact OpenRouter model; openai/ is added when omitted
  --repeats NUMBER       Repetitions per case (default: 3)
  --case ID              Run one case
  --dataset PATH         Dataset JSON (default: ${DEFAULT_DATASET})
  --output-directory DIR Preserve artifacts in this directory
  --help                  Show this help
`;
}

function requiredValue(argv: string[], index: number, flag: string): string {
  const value = argv[index + 1];
  if (!value || value.startsWith('--')) throw new Error(`${flag} requires a value`);
  return value;
}

export function normalizeEvalModel(value: string): string {
  return value.includes('/') ? value : `openai/${value}`;
}

export function reasoningEffortForEvalModel(model: string): 'none' | 'minimal' {
  return /gpt-5\.(?:[1-9]|[1-9][0-9])/.test(model) ? 'none' : 'minimal';
}

function parseArgs(argv: string[]): Args | 'help' {
  const args: Args = {
    model: normalizeEvalModel(config.OPENROUTER_MEAL_V3_MODEL),
    repeats: 3,
    datasetPath: DEFAULT_DATASET,
  };
  for (let index = 2; index < argv.length; index += 1) {
    const flag = argv[index]!;
    if (flag === '--help' || flag === '-h') return 'help';
    if (flag === '--model') {
      args.model = normalizeEvalModel(requiredValue(argv, index, flag));
      index += 1;
    } else if (flag === '--repeats') {
      const repeats = Number(requiredValue(argv, index, flag));
      if (!Number.isInteger(repeats) || repeats < 1 || repeats > 100) {
        throw new Error('--repeats must be an integer from 1 to 100');
      }
      args.repeats = repeats;
      index += 1;
    } else if (flag === '--case') {
      args.caseId = requiredValue(argv, index, flag);
      index += 1;
    } else if (flag === '--dataset') {
      args.datasetPath = requiredValue(argv, index, flag);
      index += 1;
    } else if (flag === '--output-directory') {
      args.outputDirectory = requiredValue(argv, index, flag);
      index += 1;
    } else {
      throw new Error(`Unknown argument: ${flag}`);
    }
  }
  return args;
}

function safePart(value: unknown): string {
  return String(value ?? 'unknown')
    .toLowerCase()
    .replace(/[^a-z0-9]+/g, '-')
    .replace(/^-|-$/g, '');
}

async function loadDataset(path: string): Promise<MealAnalysisEvalDataset> {
  const resolved = isAbsolute(path) ? path : resolve(process.cwd(), path);
  const parsed = JSON.parse(await readFile(resolved, 'utf8')) as MealAnalysisEvalDataset;
  if (!Number.isInteger(parsed.version) || !Array.isArray(parsed.cases) || parsed.cases.length === 0) {
    throw new Error(`Invalid eval dataset: ${resolved}`);
  }
  const ids = new Set<string>();
  for (const evalCase of parsed.cases) {
    if (!evalCase.id || ids.has(evalCase.id)) throw new Error(`Duplicate or empty case ID: ${evalCase.id}`);
    ids.add(evalCase.id);
  }
  return parsed;
}

function traceOutput(entries: unknown[], operation: string): unknown {
  const match = entries.find((entry) => {
    if (entry === null || typeof entry !== 'object') return false;
    const record = entry as Record<string, unknown>;
    return record.event === 'model_output' && record.operation === operation;
  }) as { output?: unknown } | undefined;
  return match?.output;
}

async function writeJson(path: string, value: unknown): Promise<void> {
  await writeFile(path, `${JSON.stringify(value, null, 2)}\n`, 'utf8');
}

async function runOnce(
  evalCase: MealAnalysisEvalCase,
  model: string,
  runNumber: number,
  outputDirectory: string
): Promise<MealAnalysisEvalRunResult> {
  const entries: unknown[] = [];
  const client = createMealAnalysisLlmClient({
    openRouterModel: model,
    writeProviderTrace: (entry) => { entries.push(entry); },
  });
  let error: string | undefined;
  try {
    await createModelMealInterpreter(client, undefined, {
      reasoningEffort: reasoningEffortForEvalModel(model),
    }).interpret({
      kind: 'TEXT',
      text: evalCase.input.text,
      context: {
        locale: evalCase.input.locale,
        countryCode: evalCase.input.countryCode,
        timeZone: evalCase.input.timeZone,
        capturedAt: evalCase.input.capturedAt,
      },
    });
  } catch (caught) {
    error = caught instanceof Error ? caught.message : 'Unknown eval error';
  }

  const runPrefix = `${safePart(evalCase.id)}-run-${String(runNumber).padStart(2, '0')}`;
  for (let index = 0; index < entries.length; index += 1) {
    const entry = entries[index];
    const record = entry !== null && typeof entry === 'object'
      ? entry as Record<string, unknown>
      : {};
    const filename = [
      runPrefix,
      String(index + 1).padStart(2, '0'),
      safePart(record.operation),
      safePart(record.event),
    ].join('-') + '.json';
    await writeJson(join(outputDirectory, filename), entry);
  }

  const result = evaluateMealAnalysisRun(
    evalCase,
    traceOutput(entries, 'interpret_v3_components_text'),
    traceOutput(entries, 'interpret_v3_ingredients_text'),
    error
  );
  await writeJson(join(outputDirectory, `${runPrefix}-result.json`), result);
  return result;
}

async function main(): Promise<void> {
  const args = parseArgs(process.argv);
  if (args === 'help') {
    process.stdout.write(help());
    return;
  }
  if (!config.OPENROUTER_API_KEY) throw new Error('OPENROUTER_API_KEY is required');

  const dataset = await loadDataset(args.datasetPath);
  const cases = args.caseId
    ? dataset.cases.filter((evalCase) => evalCase.id === args.caseId)
    : dataset.cases;
  if (cases.length === 0) throw new Error(`Unknown eval case: ${args.caseId}`);

  const outputDirectory = args.outputDirectory
    ? resolve(args.outputDirectory)
    : await mkdtemp(join(tmpdir(), 'calorify-meal-eval-'));
  await mkdir(outputDirectory, { recursive: true });
  process.stdout.write(`Eval artifacts: ${outputDirectory}\n`);
  process.stdout.write(`Model: ${args.model}\n`);
  process.stdout.write(`Reasoning effort: ${reasoningEffortForEvalModel(args.model)}\n`);

  const results: MealAnalysisEvalRunResult[] = [];
  for (const evalCase of cases) {
    for (let runNumber = 1; runNumber <= args.repeats; runNumber += 1) {
      const result = await runOnce(evalCase, args.model, runNumber, outputDirectory);
      results.push(result);
      const failed = result.assertions
        .filter((assertion) => assertion.kind === 'hard' && !assertion.passed)
        .map((assertion) => assertion.id);
      process.stdout.write(
        `[${runNumber}/${args.repeats}] ${result.passed ? 'PASS' : 'FAIL'} `
        + `${result.hardPassed}/${result.hardTotal} hard assertions`
        + `${failed.length > 0 ? ` · ${failed.join(', ')}` : ''}\n`
      );
    }
  }

  const passed = results.filter((result) => result.passed).length;
  const summary = {
    datasetVersion: dataset.version,
    model: args.model,
    reasoningEffort: reasoningEffortForEvalModel(args.model),
    repeats: args.repeats,
    runs: results.length,
    passed,
    passRate: results.length === 0 ? 0 : passed / results.length,
    assertionPassRates: assertionPassRates(results),
  };
  await writeJson(join(outputDirectory, 'summary.json'), summary);
  process.stdout.write(`Pass rate: ${passed}/${results.length} (${(summary.passRate * 100).toFixed(1)}%)\n`);
  process.stdout.write('No pass-rate threshold is enforced.\n');
}

main().catch((error: unknown) => {
  process.stderr.write(`Meal-analysis eval failed: ${error instanceof Error ? error.message : 'unknown error'}\n`);
  process.exitCode = 1;
});
