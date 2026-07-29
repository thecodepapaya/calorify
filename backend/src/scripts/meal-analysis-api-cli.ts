/**
 * Meal Analysis V2 decomposition CLI.
 *
 * Runs the first LLM decomposition call from nutritionEngineV2, then checks
 * whether each canonical hint resolves in the USDA table. It intentionally
 * stops before macro fallback, uncertainty, clarification, and presentation.
 *
 * Usage:
 *   npm run analysis:v2:cli -- --text "2 rotis with paneer sabzi"
 *   npm run analysis:v2:cli -- "2 rotis with paneer sabzi"
 *   npm run analysis:v2:cli -- --csv ./meal-inputs.csv
 *   npm run analysis:v2:cli -- --csv ./meal-inputs.csv --json
 */

import dotenv from 'dotenv';
import { readFile } from 'node:fs/promises';
import { join } from 'node:path';
import {
  analyzeTextMealDecompositionPreview,
  type DecompositionPreview,
} from '../services/nutritionEngineV2.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';

dotenv.config({ path: join(process.cwd(), 'staging.env') });
dotenv.config({ override: true });

type Args = {
  text?: string;
  csv?: string;
  json: boolean;
  showHelp: boolean;
};

const c = {
  reset: '\x1b[0m',
  bold: '\x1b[1m',
  dim: '\x1b[2m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  red: '\x1b[31m',
  cyan: '\x1b[36m',
};

const B = (value: string) => `${c.bold}${value}${c.reset}`;
const D = (value: string) => `${c.dim}${value}${c.reset}`;
const G = (value: string) => `${c.green}${value}${c.reset}`;
const Y = (value: string) => `${c.yellow}${value}${c.reset}`;
const R = (value: string) => `${c.red}${value}${c.reset}`;
const C = (value: string) => `${c.cyan}${value}${c.reset}`;

function parseArgs(argv: string[]): Args {
  const args: Args = { json: false, showHelp: false };
  const positional: string[] = [];

  for (let i = 0; i < argv.length; i += 1) {
    const arg = argv[i]!;
    const next = argv[i + 1];

    if (arg === '--help' || arg === '-h') {
      args.showHelp = true;
    } else if (arg === '--json') {
      args.json = true;
    } else if (arg === '--text' && next) {
      args.text = next;
      i += 1;
    } else if (arg === '--csv' && next) {
      args.csv = next;
      i += 1;
    } else if (!arg.startsWith('-')) {
      positional.push(arg);
    }
  }

  if (!args.text && positional.length > 0) {
    args.text = positional.join(' ');
  }

  return args;
}

function printHelp(): void {
  console.log(`Meal Analysis V2 decomposition CLI

Usage:
  npm run analysis:v2:cli -- --text "2 rotis with paneer sabzi"
  npm run analysis:v2:cli -- "2 rotis with paneer sabzi"
  npm run analysis:v2:cli -- --csv ./meal-inputs.csv
  npm run analysis:v2:cli -- --csv ./meal-inputs.csv --json

CSV input:
  - If a column named text, input, or description exists, that column is used.
  - Otherwise, the first column is used.

Flags:
  --text <description> Food text description to decompose.
  --csv <path>         CSV file with one or more text descriptions.
  --json               Print machine-readable JSON.
`);
}

function splitCsvLine(line: string): string[] {
  const cells: string[] = [];
  let current = '';
  let quoted = false;

  for (let i = 0; i < line.length; i += 1) {
    const char = line[i]!;
    const next = line[i + 1];

    if (char === '"' && quoted && next === '"') {
      current += '"';
      i += 1;
    } else if (char === '"') {
      quoted = !quoted;
    } else if (char === ',' && !quoted) {
      cells.push(current.trim());
      current = '';
    } else {
      current += char;
    }
  }

  cells.push(current.trim());
  return cells;
}

async function readCsvInputs(path: string): Promise<string[]> {
  const content = await readFile(path, 'utf8');
  const lines = content
    .split(/\r?\n/)
    .map((line) => line.trim())
    .filter(Boolean);
  if (lines.length === 0) return [];

  const firstRow = splitCsvLine(lines[0]!);
  const headerIndex = firstRow.findIndex((cell) =>
    ['text', 'input', 'description'].includes(cell.toLowerCase())
  );
  const hasHeader = headerIndex >= 0;
  const columnIndex = hasHeader ? headerIndex : 0;
  const dataLines = hasHeader ? lines.slice(1) : lines;

  return dataLines
    .map((line) => splitCsvLine(line)[columnIndex]?.trim() ?? '')
    .filter(Boolean);
}

function formatPercent(value: number): string {
  return `${Math.round(value * 100)}%`;
}

function printHuman(input: string, preview: DecompositionPreview): void {
  console.log(`\n${C('==')} ${B(input)}`);
  console.log(
    `${D('Meal:')} ${preview.mealName || '(unknown)'}  ${D('confidence:')} ${preview.confidence}  ${D('type:')} ${preview.inferredMealType}`
  );
  console.log(
    `${D('USDA hits:')} ${preview.usdaSummary.hitCount}/${preview.usdaSummary.total} (${formatPercent(preview.usdaSummary.hitRate)})  ${D('matches:')} ${JSON.stringify(preview.usdaSummary.matchTypes)}`
  );

  const rows = preview.ingredients.map((ingredient) => {
    const source = ingredient.usda.hit ? G('USDA') : R('MISS');
    const count = ingredient.count == null ? '' : ` count=${ingredient.count}`;
    const unit = ingredient.perUnitGrams == null ? '' : ` unit=${ingredient.perUnitGrams}g`;
    const resolved = ingredient.usda.canonicalName ?? ingredient.canonicalHint;
    return {
      raw: ingredient.rawName,
      hint: ingredient.canonicalHint,
      grams: `${ingredient.gramsEstimated}g`,
      portion: `${ingredient.portionKind}${count}${unit}`,
      usda: `${source} ${ingredient.usda.matchType} ${ingredient.usda.score}`,
      resolved,
    };
  });

  const widths = {
    raw: Math.max(10, ...rows.map((row) => row.raw.length)),
    hint: Math.max(14, ...rows.map((row) => row.hint.length)),
    grams: Math.max(5, ...rows.map((row) => row.grams.length)),
    portion: Math.max(7, ...rows.map((row) => row.portion.length)),
    usda: Math.max(
      10,
      ...rows.map((row) =>
        row.usda.replace(new RegExp(`${String.fromCharCode(27)}\\[[0-9;]*m`, 'g'), '').length
      )
    ),
  };

  console.log(
    `${D('Raw'.padEnd(widths.raw))}  ${D('Canonical hint'.padEnd(widths.hint))}  ${D('Grams'.padEnd(widths.grams))}  ${D('Portion'.padEnd(widths.portion))}  ${D('USDA'.padEnd(widths.usda))}  ${D('Resolved as')}`
  );
  for (const row of rows) {
    console.log(
      `${row.raw.padEnd(widths.raw)}  ${row.hint.padEnd(widths.hint)}  ${row.grams.padEnd(widths.grams)}  ${row.portion.padEnd(widths.portion)}  ${row.usda.padEnd(widths.usda + 9)}  ${row.resolved}`
    );
  }
}

async function main(): Promise<void> {
  const args = parseArgs(process.argv.slice(2));
  if (args.showHelp) {
    printHelp();
    return;
  }

  const inputs = args.csv ? await readCsvInputs(args.csv) : args.text ? [args.text.trim()] : [];
  if (inputs.length === 0) {
    printHelp();
    process.exitCode = 1;
    return;
  }

  initializeDatabase();
  try {
    const results: Array<{ input: string; decomposition: DecompositionPreview }> = [];
    for (const input of inputs) {
      const decomposition = await analyzeTextMealDecompositionPreview(input);
      results.push({ input, decomposition });
      if (!args.json) printHuman(input, decomposition);
    }

    if (args.json) {
      console.log(JSON.stringify({ results }, null, 2));
    } else if (results.length > 1) {
      const total = results.reduce((sum, result) => sum + result.decomposition.usdaSummary.total, 0);
      const hits = results.reduce((sum, result) => sum + result.decomposition.usdaSummary.hitCount, 0);
      const hitRate = total > 0 ? hits / total : 0;
      console.log(`\n${Y('Overall USDA hits:')} ${hits}/${total} (${formatPercent(hitRate)})`);
    }
  } finally {
    await closeDatabase();
  }
}

main().catch((error) => {
  console.error(R(error instanceof Error ? error.message : String(error)));
  process.exitCode = 1;
});
