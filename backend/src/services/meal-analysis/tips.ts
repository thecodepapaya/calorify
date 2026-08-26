import fs from 'node:fs';
import path from 'node:path';
import config from '../../config.js';
import { safeErrorMetadata } from '../../utils/safeError.js';

export interface MealAnalysisTipsPayload {
  version: number;
  locales: Record<string, string[]>;
}

/** Used when the tips file is missing, invalid, or unreadable (API returns empty tips). */
const EMPTY_PAYLOAD: MealAnalysisTipsPayload = {
  version: 0,
  locales: {},
};

type TipsCache = {
  filePath: string;
  mtimeMs: number | null;
  checkedAtMs: number;
  payload: MealAnalysisTipsPayload;
};
let cache: TipsCache | null = null;
const TIPS_FILE_CHECK_INTERVAL_MS = 30_000;

function normalizeTipsLocaleKey(key: string): string {
  return key.trim().toLowerCase().replace(/_/g, '-');
}

function resolveTipsFilePath(): string {
  if (config.MEAL_ANALYSIS_TIPS_PATH) {
    return path.resolve(config.MEAL_ANALYSIS_TIPS_PATH);
  }
  return path.join(process.cwd(), 'data', 'meal_analysis_tips.json');
}

function normalizePayload(parsed: unknown): MealAnalysisTipsPayload {
  if (!parsed || typeof parsed !== 'object') {
    throw new Error('meal analysis tips: root must be an object');
  }
  const root = parsed as Record<string, unknown>;
  const version = root.version;
  const localesRaw = root.locales;
  if (typeof version !== 'number' || !localesRaw || typeof localesRaw !== 'object') {
    throw new Error('meal analysis tips: expected numeric version and locales object');
  }
  const locales: Record<string, string[]> = {};
  for (const [key, value] of Object.entries(localesRaw)) {
    if (!Array.isArray(value)) continue;
    const code = normalizeTipsLocaleKey(key);
    locales[code] = value.filter((item): item is string => typeof item === 'string');
  }
  return { version, locales };
}

function resolveTipsList(locales: Record<string, string[]>): string[] | undefined {
  const entries = Object.entries(locales).filter(([, list]) => list?.length);
  if (!entries.length) return undefined;
  return entries[0]![1];
}

function pickTipsForLocale(
  locales: Record<string, string[]>,
  locale: string,
): string[] | undefined {
  const norm = normalizeTipsLocaleKey(locale);
  const candidates: string[] = [norm];
  const i = norm.indexOf('-');
  if (i > 0) {
    candidates.push(norm.slice(0, i));
  }
  candidates.push('en');
  for (const key of candidates) {
    const list = locales[key];
    if (list?.length) return list;
  }
  return resolveTipsList(locales);
}

/** Maximum `count` accepted on GET /meal-analysis-tips (query param). */
export const MEAL_ANALYSIS_TIPS_QUERY_COUNT_MAX = 100;

/**
 * Uniform random subset without replacement (partial Fisher–Yates).
 * When `count` >= `items.length`, returns a copy of all items in original order.
 */
export function pickRandomTips<T>(items: readonly T[], count: number): T[] {
  if (count < 1 || items.length === 0) return [];
  if (count >= items.length) return [...items];
  const copy = [...items];
  for (let i = 0; i < count; i++) {
    const j = i + Math.floor(Math.random() * (copy.length - i));
    const tmp = copy[i]!;
    copy[i] = copy[j]!;
    copy[j] = tmp;
  }
  return copy.slice(0, count);
}

export function loadMealAnalysisTipsPayload(): MealAnalysisTipsPayload {
  const filePath = resolveTipsFilePath();
  const now = Date.now();
  if (
    cache &&
    cache.filePath === filePath &&
    now - cache.checkedAtMs < TIPS_FILE_CHECK_INTERVAL_MS
  ) {
    return cache.payload;
  }

  try {
    if (!fs.existsSync(filePath)) {
      const payload = { ...EMPTY_PAYLOAD };
      cache = { filePath, mtimeMs: null, checkedAtMs: now, payload };
      return payload;
    }
    const stat = fs.statSync(filePath);
    if (
      cache &&
      cache.filePath === filePath &&
      cache.mtimeMs === stat.mtimeMs
    ) {
      cache.checkedAtMs = now;
      return cache.payload;
    }
    const raw = fs.readFileSync(filePath, 'utf8');
    const payload = normalizePayload(JSON.parse(raw));
    cache = { filePath, mtimeMs: stat.mtimeMs, checkedAtMs: now, payload };
    return payload;
  } catch (err) {
    console.error(
      '[mealAnalysisTips] Failed to load tips file; meal-analysis-tips will return empty tips:',
      safeErrorMetadata(err, 'meal_analysis_tips_load_failed')
    );
    const payload = { ...EMPTY_PAYLOAD };
    cache = { filePath, mtimeMs: null, checkedAtMs: now, payload };
    return payload;
  }
}

/** Tips for API responses (trimmed non-empty strings, locale fallback chain). */
export function getMealAnalysisTipsForLocale(locale: string): {
  version: number;
  tips: string[];
} {
  const payload = loadMealAnalysisTipsPayload();
  const list = pickTipsForLocale(payload.locales, locale) ?? [];
  const tips = list.map((s) => s.trim()).filter((s) => s.length > 0);
  return { version: payload.version, tips };
}
