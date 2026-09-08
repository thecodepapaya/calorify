import assert from 'node:assert/strict';
import test from 'node:test';
import {
  extractUsdaResolverCasesCorpus,
  extractUsdaResolverCorpus,
  parseUsdaResolverCases,
  runUsdaResolverCasesEval,
  runUsdaResolverEval,
} from '../../src/evals/usdaResolverEval.js';
import type { MealAnalysisEvalDataset } from '../../src/evals/mealAnalysisEval.js';
import {
  createLocalUsdaNutritionResolver,
  type NutritionDatabaseQuery,
  type NutritionResolver,
} from '../../src/services/meal-analysis-v3/nutrition.js';
import { formatUsdaResolverEvalReport } from '../../src/scripts/usda-resolver-eval.js';

const dataset: MealAnalysisEvalDataset = {
  version: 7,
  description: 'resolver eval fixture',
  cases: [
    {
      id: 'case-a',
      input: {
        text: 'fixture a',
        locale: 'en-US',
        countryCode: 'US',
        timeZone: 'UTC',
        capturedAt: '2026-01-01T00:00:00.000Z',
      },
      expectedComponents: [
        {
          key: 'dish',
          aliases: ['dish'],
          portion: { kind: 'AMOUNT', exact: 100, origin: 'user_stated' },
          requiredIngredientGroups: [
            ['pumpkin'],
            ['pumpkin'],
            ['toor', 'pigeon pea', 'dal', 'extra', 'more'],
          ],
          diagnosticIngredientGroups: [],
        },
      ],
    },
    {
      id: 'case-b',
      input: {
        text: 'fixture b',
        locale: 'en-US',
        countryCode: 'US',
        timeZone: 'UTC',
        capturedAt: '2026-01-01T00:00:00.000Z',
      },
      expectedComponents: [
        {
          key: 'soup',
          aliases: ['soup'],
          portion: { kind: 'AMOUNT', exact: 200, origin: 'user_stated' },
          requiredIngredientGroups: [
            ['water'],
            ['lentil'],
          ],
          diagnosticIngredientGroups: [],
        },
      ],
    },
  ],
};

const readyDataset = {
  dataset_version: 'usda-presence-v1',
  is_materialized: true,
  v3_nutrient_presence_materialized: true,
};

function candidateRow(overrides: Record<string, unknown> = {}): Record<string, unknown> {
  return {
    fdc_id: '168448',
    description: 'Pumpkin, cooked, boiled, drained, without salt',
    data_type: 'sr_legacy_food',
    normalized_name: 'pumpkin',
    kcal_per_100g: 20,
    protein_per_100g: 0.72,
    carbs_per_100g: 4.9,
    fat_per_100g: 0.07,
    fiber_per_100g: 1.1,
    kcal_present: true,
    protein_present: true,
    carbs_present: true,
    fat_present: true,
    fiber_present: true,
    dataset_version: 'usda-presence-v1',
    identity_similarity: 0.91,
    ...overrides,
  };
}

function termAwareQuery(
  rowsByTerm: Record<string, Record<string, unknown>[]>,
): { query: NutritionDatabaseQuery; calls: Array<{ params?: unknown[] }> } {
  const calls: Array<{ params?: unknown[] }> = [];
  const query: NutritionDatabaseQuery = async (_text, params) => {
    calls.push({ params });
    if (params === undefined) return { rows: [readyDataset] };
    const terms = params[0] as string[];
    const key = Object.keys(rowsByTerm).find((term) => terms.includes(term));
    return { rows: key === undefined ? [] : rowsByTerm[key]! };
  };
  return { query, calls };
}

test('extracts a deduplicated corpus with capped aliases and water flags', () => {
  const corpus = extractUsdaResolverCorpus(dataset);

  assert.equal(corpus.length, 4);
  const toor = corpus.find(({ canonicalIdentity }) => canonicalIdentity === 'toor')!;
  assert.equal(toor.caseId, 'case-a');
  assert.equal(toor.componentKey, 'dish');
  assert.equal(toor.groupIndex, 3);
  assert.deepEqual(toor.terms, ['toor', 'pigeon pea', 'dal', 'extra', 'more']);
  assert.deepEqual(toor.lookupAliases, ['pigeon pea', 'dal', 'extra']);
  assert.equal(toor.water, false);
  assert.equal(toor.scenarioId, 'case-a:dish:g3');

  const water = corpus.find(({ canonicalIdentity }) => canonicalIdentity === 'water')!;
  assert.equal(water.water, true);
  assert.equal(water.caseId, 'case-b');

  const filtered = extractUsdaResolverCorpus(dataset, 'case-a');
  assert.equal(filtered.length, 2);
  assert.ok(filtered.every(({ caseId }) => caseId === 'case-a'));
});

test('aggregates resolve rate, rejection reasons, and misses', async () => {
  const { query, calls } = termAwareQuery({
    pumpkin: [candidateRow()],
    lentil: [candidateRow({
      fdc_id: '10117061',
      description: 'Lentils, raw',
      normalized_name: 'lentil',
    })],
    toor: [candidateRow({
      fdc_id: '10009407',
      description: 'Turkey, all classes, breast, meat only',
      normalized_name: 'turkey',
    })],
  });
  const resolver = createLocalUsdaNutritionResolver({ query });

  const report = await runUsdaResolverEval(dataset, resolver);

  assert.equal(calls.length, 6);
  assert.ok(calls.some(({ params }) =>
    Array.isArray(params) && Array.isArray(params[0]) && (params[0] as string[]).includes('toor nfs')));

  assert.equal(report.datasetVersion, 7);
  assert.equal(report.caseCount, 2);
  assert.equal(report.corpusSize, 3);
  assert.equal(report.waterLeaves, 1);
  assert.equal(report.resolvedCount, 2);
  assert.equal(report.resolveRate, 2 / 3);
  assert.deepEqual(report.rejectionReasons, [{ reason: 'IDENTITY_MISMATCH', count: 1 }]);
  assert.deepEqual(report.caseSummaries, [
    { caseId: 'case-a', activeLeaves: 2, resolved: 1 },
    { caseId: 'case-b', activeLeaves: 1, resolved: 1 },
  ]);

  assert.equal(report.misses.length, 1);
  const miss = report.misses[0]!;
  assert.equal(miss.caseId, 'case-a');
  assert.equal(miss.componentKey, 'dish');
  assert.equal(miss.groupIndex, 3);
  assert.deepEqual(miss.rejectionReasons, ['IDENTITY_MISMATCH']);
  assert.ok(miss.candidates.some(({ description }) => description.startsWith('Turkey')));
});

test('formats the report with the baseline headline and miss detail', async () => {
  const { query } = termAwareQuery({
    pumpkin: [candidateRow()],
    lentil: [candidateRow({
      fdc_id: '10117061',
      description: 'Lentils, raw',
      normalized_name: 'lentil',
    })],
    toor: [candidateRow({
      fdc_id: '160959',
      description: 'Pigeon peas, raw',
      normalized_name: 'pigeon pea',
    })],
  });
  const resolver = createLocalUsdaNutritionResolver({ query });
  const report = await runUsdaResolverEval(dataset, resolver);

  assert.equal(report.resolvedCount, 3);
  const text = formatUsdaResolverEvalReport(report);
  assert.ok(text.includes('Resolved: 3/3 (100.0%)'));
  assert.ok(text.includes('unique active ingredient leaves'));
  assert.ok(text.includes('water leaves resolved as builtin'));
});

const resolverCases: unknown = {
  version: 1,
  description: 'resolver cases fixture',
  cases: [
    {
      id: 'fast-food-meal',
      groups: [
        { terms: ['pepsi cola', 'cola soft drink'], intent: 'BRANDED_PRODUCT', productQuery: 'pepsi cola' },
        { terms: ['water'] },
        { terms: ['corn flakes', 'cereal flakes'], intent: 'AMBIGUOUS' },
      ],
    },
    {
      id: 'produce-basket',
      groups: [
        { terms: ['kheera', 'cucumber'] },
        { terms: ['pepsi cola', 'cola soft drink'], intent: 'BRANDED_PRODUCT', productQuery: 'pepsi cola' },
      ],
    },
  ],
};

test('validates the standalone cases dataset', () => {
  const parsed = parseUsdaResolverCases(resolverCases);
  assert.equal(parsed.cases.length, 2);

  assert.throws(() => parseUsdaResolverCases({ version: 1, cases: [] }), /non-empty cases array/);
  assert.throws(() => parseUsdaResolverCases({ cases: [] }), /integer version/);
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: ['milk'], intent: 'DAIRY_AISLE' }] }],
    }),
    /unknown retrieval intent/,
  );
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: ['milk'], intent: 'BRANDED_PRODUCT' }] }],
    }),
    /requires a productQuery/,
  );
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: ['milk'], productQuery: 'whole milk' }] }],
    }),
    /must not carry a productQuery/,
  );
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: ['milk', 'Milk'] }] }],
    }),
    /repeats the term/,
  );
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: [] }] }],
    }),
    /non-empty terms array/,
  );
  assert.throws(
    () => parseUsdaResolverCases({
      version: 1,
      cases: [{ id: 'a', groups: [{ terms: ['milk'] }] }, { id: 'a', groups: [{ terms: ['milk'] }] }],
    }),
    /Duplicate USDA resolver case id/,
  );
});

test('extracts a standalone cases corpus with intents, product queries, and dedupe', () => {
  const parsed = parseUsdaResolverCases(resolverCases);
  const corpus = extractUsdaResolverCasesCorpus(parsed);

  assert.equal(corpus.length, 4);

  const branded = corpus.find(({ canonicalIdentity }) => canonicalIdentity === 'pepsi cola')!;
  assert.equal(branded.caseId, 'fast-food-meal');
  assert.equal(branded.groupIndex, 1);
  assert.equal(branded.retrievalIntent, 'BRANDED_PRODUCT');
  assert.equal(branded.productQuery, 'pepsi cola');
  assert.deepEqual(branded.terms, ['pepsi cola', 'cola soft drink']);
  assert.deepEqual(branded.lookupAliases, ['cola soft drink']);
  assert.equal(branded.componentKey, undefined);
  assert.equal(branded.water, false);
  assert.equal(branded.scenarioId, 'fast-food-meal:g1');

  const ambiguous = corpus.find(({ canonicalIdentity }) => canonicalIdentity === 'corn flakes')!;
  assert.equal(ambiguous.retrievalIntent, 'AMBIGUOUS');
  assert.equal(ambiguous.productQuery, undefined);

  const water = corpus.find(({ canonicalIdentity }) => canonicalIdentity === 'water')!;
  assert.equal(water.water, true);

  const filtered = extractUsdaResolverCasesCorpus(parsed, 'produce-basket');
  assert.deepEqual(
    filtered.map(({ canonicalIdentity }) => canonicalIdentity),
    ['kheera', 'pepsi cola'],
  );
});

test('runs the standalone cases eval with branded and ambiguous intents', async () => {
  const parsed = parseUsdaResolverCases(resolverCases);
  const { query } = termAwareQuery({
    'pepsi cola': [candidateRow({
      fdc_id: '174924',
      description: 'PEPSI COLA',
      data_type: 'branded_food',
      normalized_name: 'pepsi cola',
    })],
    'corn flakes': [candidateRow({
      fdc_id: '173717',
      description: 'Cereals, ready-to-eat, corn flakes',
      data_type: 'branded_food',
      normalized_name: 'corn flakes',
    })],
    kheera: [candidateRow({
      fdc_id: '10009407',
      description: 'Turkey, all classes, breast, meat only',
      normalized_name: 'turkey',
    })],
  });
  const resolver = createLocalUsdaNutritionResolver({ query });

  const report = await runUsdaResolverCasesEval(parsed, resolver);

  assert.equal(report.datasetVersion, 1);
  assert.equal(report.caseCount, 2);
  assert.equal(report.corpusSize, 3);
  assert.equal(report.waterLeaves, 1);
  assert.equal(report.resolvedCount, 2);
  assert.equal(report.resolveRate, 2 / 3);
  assert.deepEqual(report.rejectionReasons, [{ reason: 'IDENTITY_MISMATCH', count: 1 }]);
  assert.deepEqual(report.caseSummaries, [
    { caseId: 'fast-food-meal', activeLeaves: 2, resolved: 2 },
    { caseId: 'produce-basket', activeLeaves: 1, resolved: 0 },
  ]);

  assert.equal(report.misses.length, 1);
  const miss = report.misses[0]!;
  assert.equal(miss.caseId, 'produce-basket');
  assert.equal(miss.componentKey, undefined);
  assert.equal(miss.groupIndex, 1);
  assert.deepEqual(miss.terms, ['kheera', 'cucumber']);
  assert.ok(miss.candidates.some(({ description }) => description.startsWith('Turkey')));

  const text = formatUsdaResolverEvalReport(report);
  assert.ok(text.includes('1. produce-basket · group 1 · terms: kheera, cucumber'));
  assert.ok(!text.includes('undefined'));
});

test('resolves the corpus in bounded batches', async () => {
  const parsed = parseUsdaResolverCases({
    version: 1,
    description: 'batch fixture',
    cases: [{
      id: 'bulk',
      groups: Array.from({ length: 15 }, (_, index) => ({ terms: [`bulk item ${index}`] })),
    }],
  });
  const batchSizes: number[] = [];
  const resolver: NutritionResolver = {
    async resolve(scenarios) {
      batchSizes.push(scenarios.length);
      return {
        datasetVersion: 'batch-fixture',
        leaves: scenarios.map((scenario) => ({
          scenarioId: scenario.scenarioId,
          leafId: scenario.ingredients[0]!.leafId,
          reference: null,
          rejectionReasons: ['IDENTITY_MISMATCH' as const],
          candidates: [],
        })),
      };
    },
  };

  const report = await runUsdaResolverCasesEval(parsed, resolver);

  assert.deepEqual(batchSizes, [8, 7]);
  assert.equal(report.corpusSize, 15);
  assert.equal(report.resolvedCount, 0);
  assert.equal(report.misses.length, 15);
});
