import { isAbsolute, resolve } from 'node:path';

export type CliMealType = 'BREAKFAST' | 'LUNCH' | 'DINNER' | 'SNACK';
export type CliImageOrigin = 'CAMERA_NOW' | 'GALLERY';

export interface MealAnalysisCliOptions {
  text?: string;
  imagePath?: string;
  proposalPath?: string;
  answers?: string;
  locale: string;
  countryCode: string;
  timeZone: string;
  capturedAt: string;
  imageOrigin?: CliImageOrigin;
  mealType?: CliMealType;
  json: boolean;
}

export type MealAnalysisCliArgsResult =
  | { ok: true; options: MealAnalysisCliOptions }
  | { ok: false; kind: 'help' }
  | { ok: false; kind: 'error'; message: string };

export interface MealAnalysisCliDefaults {
  locale?: string;
  timeZone?: string;
  capturedAt?: string;
  cwd?: string;
}

const VALUE_ARGUMENTS = new Set([
  '--answers',
  '--captured-at',
  '--country-code',
  '--image',
  '--image-origin',
  '--locale',
  '--meal-type',
  '--proposal',
  '--text',
  '--time-zone',
]);

function validTimeZone(value: string): boolean {
  try {
    new Intl.DateTimeFormat('en', { timeZone: value }).format();
    return true;
  } catch {
    return false;
  }
}

function countryFromLocale(locale: string): string | undefined {
  try {
    return new Intl.Locale(locale).region;
  } catch {
    return undefined;
  }
}

function filePath(value: string, cwd: string): string {
  return isAbsolute(value) ? value : resolve(cwd, value);
}

export function parseMealAnalysisCliArgs(
  argv: string[],
  defaults: MealAnalysisCliDefaults = {}
): MealAnalysisCliArgsResult {
  const values = new Map<string, string>();
  const positional: string[] = [];
  let json = false;

  for (let index = 2; index < argv.length; index += 1) {
    const argument = argv[index]!;
    if (argument === '--help' || argument === '-h') return { ok: false, kind: 'help' };
    if (argument === '--json') {
      json = true;
      continue;
    }
    if (VALUE_ARGUMENTS.has(argument)) {
      const value = argv[index + 1];
      if (!value || value.startsWith('--')) {
        return { ok: false, kind: 'error', message: `${argument} requires a value` };
      }
      values.set(argument, value.trim());
      index += 1;
      continue;
    }
    if (argument.startsWith('--')) {
      return { ok: false, kind: 'error', message: `Unknown argument: ${argument}` };
    }
    positional.push(argument);
  }

  const text = values.get('--text') ?? (positional.length > 0 ? positional.join(' ').trim() : undefined);
  const image = values.get('--image');
  if (text && image) {
    return { ok: false, kind: 'error', message: 'Use exactly one of --text or --image' };
  }
  if (!text && !image) {
    return { ok: false, kind: 'error', message: 'Use exactly one of --text or --image' };
  }

  const locale = values.get('--locale') ?? defaults.locale ??
    Intl.DateTimeFormat().resolvedOptions().locale;
  try {
    new Intl.Locale(locale);
  } catch {
    return { ok: false, kind: 'error', message: `Invalid locale: ${locale}` };
  }

  const countryCode = (values.get('--country-code') ?? countryFromLocale(locale) ?? '').toUpperCase();
  if (!/^[A-Z]{2}$/.test(countryCode)) {
    return {
      ok: false,
      kind: 'error',
      message: '--country-code is required when --locale has no region',
    };
  }

  const timeZone = values.get('--time-zone') ?? defaults.timeZone ??
    Intl.DateTimeFormat().resolvedOptions().timeZone;
  if (!validTimeZone(timeZone)) {
    return { ok: false, kind: 'error', message: `Invalid IANA time zone: ${timeZone}` };
  }

  const captured = values.get('--captured-at') ?? defaults.capturedAt ?? new Date().toISOString();
  const capturedDate = new Date(captured);
  if (!Number.isFinite(capturedDate.getTime())) {
    return { ok: false, kind: 'error', message: `Invalid captured timestamp: ${captured}` };
  }

  const rawImageOrigin = values.get('--image-origin')?.toUpperCase();
  if (rawImageOrigin && rawImageOrigin !== 'CAMERA_NOW' && rawImageOrigin !== 'GALLERY') {
    return { ok: false, kind: 'error', message: `Invalid image origin: ${rawImageOrigin}` };
  }
  if (!image && rawImageOrigin) {
    return { ok: false, kind: 'error', message: '--image-origin requires --image' };
  }

  const rawMealType = values.get('--meal-type')?.toUpperCase();
  if (rawMealType && !['BREAKFAST', 'LUNCH', 'DINNER', 'SNACK'].includes(rawMealType)) {
    return { ok: false, kind: 'error', message: `Invalid meal type: ${rawMealType}` };
  }

  const cwd = defaults.cwd ?? process.cwd();
  return {
    ok: true,
    options: {
      ...(text ? { text } : {}),
      ...(image ? { imagePath: filePath(image, cwd) } : {}),
      ...(values.get('--proposal')
        ? { proposalPath: filePath(values.get('--proposal')!, cwd) }
        : {}),
      ...(values.get('--answers') ? { answers: values.get('--answers') } : {}),
      locale,
      countryCode,
      timeZone,
      capturedAt: capturedDate.toISOString(),
      ...(image ? { imageOrigin: (rawImageOrigin as CliImageOrigin | undefined) ?? 'GALLERY' } : {}),
      ...(rawMealType ? { mealType: rawMealType as CliMealType } : {}),
      json,
    },
  };
}

export const MEAL_ANALYSIS_CLI_HELP = `Usage:
  npm run meal-analysis -- --text "meal description" --locale en-IN
  npm run meal-analysis -- --image ./meal.webp --locale en-IN [--image-origin GALLERY]

Context:
  --locale TAG          BCP 47 locale. A region supplies the country by default.
  --country-code CODE   ISO alpha-2 country when the locale has no region.
  --time-zone ZONE      IANA time zone. Defaults to the host time zone.
  --captured-at TIME    RFC 3339 capture time. Defaults to now.
  --image-origin VALUE  CAMERA_NOW or GALLERY. Local files default to GALLERY.

Testing:
  --proposal FILE       Use a saved interpretation proposal instead of a model call.
  --answers JSON        Submit explicit question answers as a JSON array.
  --meal-type VALUE     Explicit BREAKFAST, LUNCH, DINNER, or SNACK answer.
  --json                Emit one NDJSON observation per line; never prompt.
  --help                Show this help.
`;
