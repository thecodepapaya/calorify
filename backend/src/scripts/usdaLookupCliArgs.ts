export const USDA_LOOKUP_INTENTS = ['generic', 'branded', 'ambiguous'] as const;
export type UsdaLookupIntent = typeof USDA_LOOKUP_INTENTS[number];

export interface UsdaLookupCliOptions {
  name: string | null;
  intent: UsdaLookupIntent | null;
  productQuery: string | null;
  json: boolean;
}

export type UsdaLookupCliArgsResult =
  | { ok: true; options: UsdaLookupCliOptions }
  | { ok: false; kind: 'help' }
  | { ok: false; kind: 'error'; message: string };

export function usdaLookupHelp(): string {
  return `
npm run usda:lookup -- [food name] [options]

Inspect the local USDA database with the same resolver used by meal analysis.

Input
  food name          Canonical identity or any other food name
  --name <food name> Alternative to positional input

Options
  --intent <intent>  generic, branded, or ambiguous
  --product-query    Concise brand and product text; branded intent only
  --json             Emit machine-readable JSON
  -h, --help         Show this message

Without --json, missing values are collected through an interactive menu.
JSON mode requires an explicit food name and intent; branded JSON also
requires --product-query.
`.trim();
}

export function parseUsdaLookupArgs(argv: string[]): UsdaLookupCliArgsResult {
  const args = argv.slice(2);
  if (args.some((arg) => arg === '-h' || arg === '--help')) {
    return { ok: false, kind: 'help' };
  }

  let namedValue: string | null = null;
  let intent: UsdaLookupIntent | null = null;
  let productQuery: string | null = null;
  let json = false;
  const positional: string[] = [];

  for (let index = 0; index < args.length; index += 1) {
    const arg = args[index]!;
    if (arg === '--json') {
      json = true;
      continue;
    }
    if (arg === '--name') {
      const value = args[++index]?.trim();
      if (!value) return { ok: false, kind: 'error', message: '--name requires a value' };
      if (namedValue !== null) {
        return { ok: false, kind: 'error', message: 'Specify --name only once' };
      }
      namedValue = value;
      continue;
    }
    if (arg === '--intent') {
      const value = args[++index]?.trim();
      if (!value) return { ok: false, kind: 'error', message: '--intent requires a value' };
      if (!USDA_LOOKUP_INTENTS.includes(value as UsdaLookupIntent)) {
        return { ok: false, kind: 'error', message: '--intent must be generic, branded, or ambiguous' };
      }
      if (intent !== null) return { ok: false, kind: 'error', message: 'Specify --intent only once' };
      intent = value as UsdaLookupIntent;
      continue;
    }
    if (arg === '--product-query') {
      const value = args[++index]?.trim();
      if (!value) return { ok: false, kind: 'error', message: '--product-query requires a value' };
      if (productQuery !== null) {
        return { ok: false, kind: 'error', message: 'Specify --product-query only once' };
      }
      productQuery = value;
      continue;
    }
    if (arg.startsWith('-')) {
      return { ok: false, kind: 'error', message: `Unknown argument: ${arg}` };
    }
    positional.push(arg);
  }

  const positionalName = positional.join(' ').trim();
  if (namedValue !== null && positionalName !== '') {
    return { ok: false, kind: 'error', message: 'Use either --name or positional input, not both' };
  }
  const name = namedValue ?? (positionalName || null);
  if (json && name === null) {
    return { ok: false, kind: 'error', message: '--json requires an explicit food name' };
  }
  if (json && intent === null) {
    return { ok: false, kind: 'error', message: '--json requires --intent' };
  }
  if (intent !== null && intent !== 'branded' && productQuery !== null) {
    return { ok: false, kind: 'error', message: '--product-query requires --intent branded' };
  }
  if (json && intent === 'branded' && productQuery === null) {
    return { ok: false, kind: 'error', message: 'branded --json lookup requires --product-query' };
  }
  return { ok: true, options: { name, intent, productQuery, json } };
}
