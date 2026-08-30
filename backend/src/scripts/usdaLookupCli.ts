import { createInterface } from 'node:readline/promises';
import { mkdtemp, writeFile } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { stderr, stdin, stdout } from 'node:process';
import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/infrastructure/database.js';
import { recipeScenarioSchema, type RecipeScenario } from '../services/meal-analysis-v3/domain.js';
import type { FoodRetrievalIntent } from '../services/meal-analysis-v3/domain.js';
import {
  createLocalUsdaNutritionResolver,
  type NutritionCandidateDiagnostic,
  type NutritionResolutionRun,
} from '../services/meal-analysis-v3/nutrition.js';
import {
  parseUsdaLookupArgs,
  usdaLookupHelp,
  type UsdaLookupCliOptions,
  type UsdaLookupIntent,
} from './usdaLookupCliArgs.js';

export interface UsdaLookupRequest {
  name: string;
  intent: UsdaLookupIntent;
  productQuery?: string;
}

type UsdaLookupCandidate = NutritionCandidateDiagnostic & { foodName: string };

export interface UsdaLookupReport {
  query: string;
  resolverInput: {
    canonicalIdentity: string;
    lookupAliases: string[];
    retrievalIntent: FoodRetrievalIntent;
    productQuery?: string;
    nutritionBasis: 'AS_SERVED';
    preparationCodes: ['UNKNOWN'];
  };
  datasetVersion: string | null;
  outcome: 'MATCHED' | 'UNMATCHED';
  rejectionReasons: string[];
  selected: {
    candidate: UsdaLookupCandidate | null;
    macrosPer100g: {
      caloriesKcal: number;
      proteinGrams: number;
      carbsGrams: number;
      fatGrams: number;
      fiberGrams: number;
    };
  } | null;
  candidates: UsdaLookupCandidate[];
}

async function createUsdaLookupArtifact(report: UsdaLookupReport): Promise<void> {
  const directory = await mkdtemp(join(tmpdir(), 'calorify-usda-lookup-'));
  const path = join(directory, 'response.json');
  try {
    await writeFile(path, `${JSON.stringify(report, null, 2)}\n`, 'utf8');
    stderr.write(`USDA lookup artifact: ${path}\n`);
  } catch {
    stderr.write(`Unable to write USDA lookup artifact: ${path}\n`);
  }
}

function retrievalIntent(intent: UsdaLookupIntent): FoodRetrievalIntent {
  switch (intent) {
    case 'generic': return 'GENERIC_INGREDIENT';
    case 'branded': return 'BRANDED_PRODUCT';
    case 'ambiguous': return 'AMBIGUOUS';
  }
}

function resolverInput(request: UsdaLookupRequest): UsdaLookupReport['resolverInput'] {
  return {
    canonicalIdentity: request.name,
    lookupAliases: [],
    retrievalIntent: retrievalIntent(request.intent),
    ...(request.productQuery === undefined ? {} : { productQuery: request.productQuery }),
    nutritionBasis: 'AS_SERVED',
    preparationCodes: ['UNKNOWN'],
  };
}

function lookupScenario(request: UsdaLookupRequest): RecipeScenario {
  const input = resolverInput(request);
  return recipeScenarioSchema.parse({
    scenarioId: 'usda-lookup-cli',
    assumptions: [],
    ingredients: [{
      leafId: 'query',
      displayName: request.name,
      canonicalIdentity: input.canonicalIdentity,
      lookupAliases: input.lookupAliases,
      retrievalIntent: input.retrievalIntent,
      ...(input.productQuery === undefined ? {} : { productQuery: input.productQuery }),
      role: 'ACTIVE_NUTRITION',
      nutritionBasis: input.nutritionBasis,
      nutritionBasisGrams: 100,
      preparationCodes: input.preparationCodes,
      retainedFat: false,
    }],
    finishedYieldGrams: 100,
    finishedYieldUnits: null,
    effectivePortion: { kind: 'FINISHED_MASS', consumedGrams: 100 },
    effectivePreparationCodes: ['UNKNOWN'],
  });
}

function reportCandidate(candidate: NutritionCandidateDiagnostic): UsdaLookupCandidate {
  return { ...candidate, foodName: candidate.description };
}

export function buildUsdaLookupReport(
  request: UsdaLookupRequest,
  run: NutritionResolutionRun
): UsdaLookupReport {
  const leaf = run.leaves[0];
  if (!leaf) throw new Error('USDA resolver returned no lookup result');
  const selectedCandidate = leaf.reference === null
    ? null
    : leaf.candidates.find(({ sourceRecordId }) =>
      sourceRecordId === leaf.reference!.sourceRecordId);
  return {
    query: request.name,
    resolverInput: resolverInput(request),
    datasetVersion: run.datasetVersion,
    outcome: leaf.reference === null ? 'UNMATCHED' : 'MATCHED',
    rejectionReasons: leaf.rejectionReasons,
    selected: leaf.reference === null ? null : {
      candidate: selectedCandidate == null ? null : reportCandidate(selectedCandidate),
      macrosPer100g: leaf.reference.per100g,
    },
    candidates: leaf.candidates.map(reportCandidate),
  };
}

function percent(value: number | null): string {
  return value === null ? 'n/a' : `${(value * 100).toFixed(1)}%`;
}

export function formatUsdaLookupReport(report: UsdaLookupReport): string {
  const lines = [
    `USDA lookup: ${report.query}`,
    `Retrieval intent: ${report.resolverInput.retrievalIntent}`,
    ...(report.resolverInput.productQuery === undefined
      ? []
      : [`Product query: ${report.resolverInput.productQuery}`]),
    'Resolver assumptions: AS_SERVED, preparation UNKNOWN, no aliases',
    `Dataset: ${report.datasetVersion ?? 'none active'}`,
    `Result: ${report.outcome}`,
  ];

  if (report.rejectionReasons.length > 0) {
    lines.push(`Result reasons: ${report.rejectionReasons.join(', ')}`);
  }
  if (report.selected) {
    const candidate = report.selected.candidate;
    const macros = report.selected.macrosPer100g;
    lines.push('', 'Selected match');
    if (candidate) {
      lines.push(`  ${candidate.foodName}`);
      lines.push(`  FDC ${candidate.sourceRecordId} · ${candidate.dataType ?? 'unknown source'}`);
      lines.push(
        `  identity ${candidate.identityTier ?? 'none'} · preparation ${candidate.preparationTier ?? 'none'} · similarity ${percent(candidate.similarity)}`
      );
    }
    lines.push(
      `  Per 100 g: ${macros.caloriesKcal} kcal · protein ${macros.proteinGrams} g · carbs ${macros.carbsGrams} g · fat ${macros.fatGrams} g · fiber ${macros.fiberGrams} g`
    );
  }

  lines.push('', `Candidates shown (${report.candidates.length}, production diagnostics are capped at 5)`);
  if (report.candidates.length === 0) lines.push('  None');
  report.candidates.forEach((candidate, index) => {
    const status = candidate.selected
      ? 'SELECTED'
      : candidate.rejectionReasons.length > 0
        ? candidate.rejectionReasons.join(', ')
        : 'POTENTIAL';
    lines.push(`${index + 1}. ${candidate.foodName}`);
    lines.push(`   FDC ${candidate.sourceRecordId} · ${candidate.dataType ?? 'unknown source'} · similarity ${percent(candidate.similarity)}`);
    lines.push(`   identity ${candidate.identityTier ?? 'none'} · preparation ${candidate.preparationTier ?? 'none'}`);
    lines.push(`   ${status}`);
  });
  return lines.join('\n');
}

async function promptForLookupRequest(options: UsdaLookupCliOptions): Promise<UsdaLookupRequest> {
  const input = createInterface({ input: stdin, output: stdout });
  try {
    let intent = options.intent;
    if (intent === null) {
      const choice = (await input.question(
        'Choose lookup type:\n\n1. Generic ingredient\n2. Branded product\n3. Ambiguous\n   Option [1]: '
      )).trim() || '1';
      intent = choice === '1' ? 'generic' : choice === '2' ? 'branded' : choice === '3' ? 'ambiguous' : null;
      if (intent === null) throw new Error('Lookup type must be 1, 2, or 3');
    }

    const name = options.name ?? (await input.question('Food name: ')).trim();
    if (!name) throw new Error('Food name cannot be empty');

    let productQuery = options.productQuery;
    if (intent === 'branded' && productQuery === null) {
      productQuery = (await input.question(`Brand and product query [${name}]: `)).trim() || name;
    }
    if (intent !== 'branded' && productQuery !== null) {
      throw new Error('Product query is available only for branded lookups');
    }
    return {
      name,
      intent,
      ...(productQuery === null ? {} : { productQuery }),
    };
  } finally {
    input.close();
  }
}

export async function runUsdaLookupCli(argv = process.argv): Promise<number> {
  const parsed = parseUsdaLookupArgs(argv);
  if (!parsed.ok) {
    if (parsed.kind === 'help') {
      console.log(usdaLookupHelp());
      return 0;
    }
    console.error(parsed.message);
    console.error(usdaLookupHelp());
    return 64;
  }

  const request = parsed.options.json
    ? {
        name: parsed.options.name!,
        intent: parsed.options.intent!,
        ...(parsed.options.productQuery === null ? {} : { productQuery: parsed.options.productQuery }),
      }
    : await promptForLookupRequest(parsed.options);
  if (!config.USDA_DATABASE_URL && !config.DATABASE_URL) {
    throw new Error('USDA_DATABASE_URL or DATABASE_URL is not set');
  }

  initializeDatabase();
  try {
    const resolver = createLocalUsdaNutritionResolver();
    const run = await resolver.resolve([lookupScenario(request)]);
    const report = buildUsdaLookupReport(request, run);
    await createUsdaLookupArtifact(report);
    console.log(parsed.options.json
      ? JSON.stringify(report, null, 2)
      : formatUsdaLookupReport(report));
    return 0;
  } finally {
    await closeDatabase();
  }
}
