import { mkdir, mkdtemp, readFile, writeFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { isAbsolute, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import config from '../config.js';
import {
  parseUsdaResolverCases,
  runUsdaResolverCasesEval,
  runUsdaResolverEval,
  type UsdaResolverCasesDataset,
  type UsdaResolverEvalReport,
} from '../evals/usdaResolverEval.js';
import type { MealAnalysisEvalDataset } from '../evals/mealAnalysisEval.js';
import { closeDatabase, getUsdaClient, initializeDatabase } from '../services/infrastructure/database.js';
import {
  createLocalUsdaNutritionResolver,
  type NutritionDatabaseQuery,
} from '../services/meal-analysis-v3/nutrition.js';
import { loadDataset } from './meal-analysis-eval.js';

const DEFAULT_DATASET = 'evals/usda-resolver.cases.json';

type LoadedDataset =
  | { kind: 'resolver-cases'; dataset: UsdaResolverCasesDataset }
  | { kind: 'meal-analysis'; dataset: MealAnalysisEvalDataset };

/**
 * Loads either dataset format: the standalone USDA resolver cases val set
 * (cases with term groups, retrieval intents, and product queries) or the
 * meal-analysis eval dataset, whose required ingredient groups form the
 * legacy derived corpus. A case with a groups array selects the standalone
 * format; anything else goes through the meal-analysis loader and its
 * validation.
 */
async function loadUsdaResolverDataset(path: string): Promise<LoadedDataset> {
  const resolved = isAbsolute(path) ? path : resolve(process.cwd(), path);
  const parsed: unknown = JSON.parse(await readFile(resolved, 'utf8'));
  if (hasStandaloneCases(parsed)) {
    return { kind: 'resolver-cases', dataset: parseUsdaResolverCases(parsed) };
  }
  return { kind: 'meal-analysis', dataset: await loadDataset(path) };
}

function hasStandaloneCases(value: unknown): boolean {
  if (typeof value !== 'object' || value === null) return false;
  const cases = (value as { cases?: unknown }).cases;
  if (!Array.isArray(cases)) return false;
  return cases.some((evalCase) =>
    typeof evalCase === 'object' &&
    evalCase !== null &&
    Array.isArray((evalCase as { groups?: unknown }).groups));
}

/**
 * Queries the USDA pool directly, without the production query limiter. The
 * limiter (six concurrent slots with a ten-second queue wait) protects the
 * serving API from overload, but a corpus eval fans out enough lookups to
 * overflow its queue and fail with USDA_QUERY_QUEUE_TIMEOUT. Resolution
 * semantics are unchanged — same SQL, same gates — and the connection pool
 * itself caps concurrency at its own limit.
 */
const unthrottledUsdaQuery: NutritionDatabaseQuery = async (text, params) => {
  const client = await getUsdaClient();
  try {
    const result = await client.query(text, params);
    return { rows: result.rows, rowCount: result.rowCount ?? 0 };
  } finally {
    client.release();
  }
};

interface Args {
  datasetPath: string;
  caseId?: string;
  outputDirectory?: string;
}

function help(): string {
  return `USDA resolver hit-rate eval

Resolves the USDA resolver cases val set (pass-2-style ingredient identities
with retrieval intents and product queries) against the local USDA mirror
and reports the resolve-rate baseline. No model is called; corpus
construction mirrors pass-2 leaf output.

Usage:
  npm run usda:resolver-eval
  npm run usda:resolver-eval -- --case indian-thali-lunch
  npm run usda:resolver-eval -- --dataset evals/meal-analysis.cases.json

Options:
  --dataset PATH         Dataset JSON. The standalone resolver cases val set
                         (default: ${DEFAULT_DATASET}) or the meal-analysis
                         eval dataset, whose required ingredient groups form
                         the legacy derived corpus.
  --case ID              Evaluate one case
  --output-directory DIR Preserve the report artifact in this directory
  --help                 Show this help

Requires the local USDA mirror:
  docker compose -f docker-compose.yml -f docker-compose.local.yml --profile staging up -d --wait db-usda
`;
}

function requiredValue(argv: string[], index: number, flag: string): string {
  const value = argv[index + 1];
  if (!value || value.startsWith('--')) throw new Error(`${flag} requires a value`);
  return value;
}

function parseArgs(argv: string[]): Args | 'help' {
  const args: Args = { datasetPath: DEFAULT_DATASET };
  for (let index = 2; index < argv.length; index += 1) {
    const flag = argv[index]!;
    if (flag === '--help' || flag === '-h') return 'help';
    if (flag === '--dataset') {
      args.datasetPath = requiredValue(argv, index, flag);
      index += 1;
    } else if (flag === '--case') {
      args.caseId = requiredValue(argv, index, flag);
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

export function formatUsdaResolverEvalReport(report: UsdaResolverEvalReport): string {
  const lines = [
    `USDA resolver eval — dataset v${report.datasetVersion}`,
    `Cases: ${report.caseCount}`,
    `Corpus: ${report.corpusSize} unique active ingredient leaves`
      + ` (${report.waterLeaves} water leaves resolved as builtin)`,
    `Resolved: ${report.resolvedCount}/${report.corpusSize}`
      + ` (${(report.resolveRate * 100).toFixed(1)}%)`,
  ];
  if (report.rejectionReasons.length > 0) {
    lines.push('', 'Rejection reasons:');
    for (const { reason, count } of report.rejectionReasons) {
      lines.push(`  ${reason} ${count}`);
    }
  }
  if (report.misses.length > 0) {
    lines.push('', 'Misses:');
    report.misses.forEach((miss, index) => {
      const location = [
        miss.caseId,
        miss.componentKey,
        `group ${miss.groupIndex}`,
      ].filter((part) => part !== undefined).join(' · ');
      lines.push(`${index + 1}. ${location} · terms: ${miss.terms.join(', ')}`);
      lines.push(`   reasons: ${miss.rejectionReasons.join(', ')}`);
      for (const candidate of miss.candidates.slice(0, 3)) {
        const similarity = candidate.similarity === null ? 'n/a' : candidate.similarity.toFixed(3);
        lines.push(
          `   - ${candidate.description} · FDC ${candidate.sourceRecordId}`
          + ` · ${candidate.dataType ?? 'unknown'}`
          + ` · identity ${candidate.identityTier ?? 'none'}`
          + ` · preparation ${candidate.preparationTier ?? 'none'}`
          + ` · similarity ${similarity}`
        );
      }
    });
  }
  return `${lines.join('\n')}\n`;
}

async function main(): Promise<void> {
  const args = parseArgs(process.argv);
  if (args === 'help') {
    process.stdout.write(help());
    return;
  }
  if (!config.USDA_DATABASE_URL && !config.DATABASE_URL) {
    throw new Error('USDA_DATABASE_URL or DATABASE_URL is not set');
  }

  const loaded = await loadUsdaResolverDataset(args.datasetPath);
  initializeDatabase();
  try {
    const resolver = createLocalUsdaNutritionResolver({ query: unthrottledUsdaQuery });
    const report = loaded.kind === 'resolver-cases'
      ? await runUsdaResolverCasesEval(loaded.dataset, resolver, args.caseId)
      : await runUsdaResolverEval(loaded.dataset, resolver, args.caseId);
    const outputDirectory = args.outputDirectory
      ? resolve(args.outputDirectory)
      : await mkdtemp(`${tmpdir()}/calorify-usda-resolver-eval-`);
    await mkdir(outputDirectory, { recursive: true });
    await writeFile(
      `${outputDirectory}/report.json`,
      `${JSON.stringify(report, null, 2)}\n`,
      'utf8',
    );
    process.stdout.write(`Report artifact: ${outputDirectory}\n`);
    process.stdout.write(formatUsdaResolverEvalReport(report));
  } finally {
    await closeDatabase();
  }
}

if (process.argv[1] && import.meta.url === pathToFileURL(process.argv[1]).href) {
  main().catch((error: unknown) => {
    process.stderr.write(
      `USDA resolver eval failed: ${error instanceof Error ? error.message : 'unknown error'}\n`,
    );
    process.exitCode = 1;
  });
}
