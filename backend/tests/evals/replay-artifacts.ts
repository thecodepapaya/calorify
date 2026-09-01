/**
 * Replays saved eval artifacts through the aligned harness. No model calls.
 * Usage: node --import tsx tests/evals/replay-artifacts.ts <artifact-dir>
 */
import { readdir, readFile } from 'node:fs/promises';
import { join } from 'node:path';
import assert from 'node:assert/strict';
import {
  evaluateMealAnalysisRun,
  type MealAnalysisEvalCase,
  type MealAnalysisEvalDataset,
} from '../../src/evals/mealAnalysisEval.js';

const dir = process.argv[2];
if (!dir) throw new Error('artifact directory required');

const dataset: MealAnalysisEvalDataset = JSON.parse(
  await readFile('evals/meal-analysis.cases.json', 'utf8'),
);
const byId = new Map(dataset.cases.map((c: MealAnalysisEvalCase) => [c.id, c]));

const files = await readdir(dir);
const runs = new Map<string, { first: string; second: string }>();
for (const file of files) {
  const m = /^(.*)-run-(\d+)-(\d+)-interpret-v3-(components|ingredients)-text-model-output\.json$/.exec(file);
  if (!m) continue;
  const key = `${m[1]}-run-${m[2]}`;
  const entry = runs.get(key) ?? { first: '', second: '' };
  if (m[4] === 'components') entry.first = file;
  else entry.second = file;
  runs.set(key, entry);
}

let checked = 0;
for (const [key, { first, second }] of runs) {
  const caseId = key.split('-run-')[0]!;
  const evalCase = byId.get(caseId);
  if (!evalCase || !first || !second) continue;
  const firstValue = JSON.parse(await readFile(join(dir, first), 'utf8')).output;
  const secondValue = JSON.parse(await readFile(join(dir, second), 'utf8')).output;
  const result = evaluateMealAnalysisRun(evalCase, firstValue, secondValue);
  const summary = `${result.passed ? 'PASS' : 'FAIL'} ${result.hardPassed}/${result.hardTotal}`;
  console.log(`${key}: ${summary}${
    result.assertions.filter((a) => a.kind === 'hard' && !a.passed).map((a) => ` ${a.id}`).join('')
  }`);
  checked += 1;
  assert.ok(Number.isFinite(result.hardTotal), 'hardTotal must be finite');
}
console.log(`\nReplayed ${checked} runs.`);
