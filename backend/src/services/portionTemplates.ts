// Portion templates: per-canonical-food size buckets used by clarification UI.
//
// Templates carry stable structural data only — option IDs and per-unit grams.
// User-facing labels are produced separately by [portionLabels.ts] so we can
// localize without touching template data, and so generic fallback templates
// share the same label pipeline.

import { PortionKind } from '../protos/calorify/meal_analysis_pipeline.js';

export type PortionOptionTemplate = {
  optionId: string;
  perUnitGrams: number;
};

export type PortionTemplate = {
  /** Stable key used by [portionLabels.ts] to look up localized option labels. */
  templateKey: string;
  kind: PortionKind;
  options: PortionOptionTemplate[];
  defaultOptionId: string;
};

const COUNT_TEMPLATES: Record<string, PortionTemplate> = {
  roti: {
    templateKey: 'roti',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', perUnitGrams: 25 },
      { optionId: 'regular', perUnitGrams: 35 },
      { optionId: 'thick', perUnitGrams: 45 },
    ],
    defaultOptionId: 'regular',
  },
  bread_slice: {
    templateKey: 'bread_slice',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', perUnitGrams: 22 },
      { optionId: 'regular', perUnitGrams: 30 },
      { optionId: 'thick', perUnitGrams: 42 },
    ],
    defaultOptionId: 'regular',
  },
  egg: {
    templateKey: 'egg',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', perUnitGrams: 42 },
      { optionId: 'medium', perUnitGrams: 50 },
      { optionId: 'large', perUnitGrams: 60 },
    ],
    defaultOptionId: 'medium',
  },
  banana: {
    templateKey: 'banana',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', perUnitGrams: 90 },
      { optionId: 'medium', perUnitGrams: 120 },
      { optionId: 'large', perUnitGrams: 150 },
    ],
    defaultOptionId: 'medium',
  },
  idli: {
    templateKey: 'idli',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', perUnitGrams: 35 },
      { optionId: 'regular', perUnitGrams: 50 },
      { optionId: 'large', perUnitGrams: 70 },
    ],
    defaultOptionId: 'regular',
  },
  dosa: {
    templateKey: 'dosa',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', perUnitGrams: 80 },
      { optionId: 'regular', perUnitGrams: 120 },
      { optionId: 'large', perUnitGrams: 160 },
    ],
    defaultOptionId: 'regular',
  },
  paratha: {
    templateKey: 'paratha',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', perUnitGrams: 50 },
      { optionId: 'regular', perUnitGrams: 75 },
      { optionId: 'stuffed', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
  samosa: {
    templateKey: 'samosa',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'mini', perUnitGrams: 40 },
      { optionId: 'regular', perUnitGrams: 75 },
      { optionId: 'large', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
  pancake: {
    templateKey: 'pancake',
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', perUnitGrams: 45 },
      { optionId: 'regular', perUnitGrams: 75 },
      { optionId: 'large', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
};

const BULK_TEMPLATES: Record<string, PortionTemplate> = {
  rice_cooked: {
    templateKey: 'rice_cooked',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 150 },
      { optionId: 'regular', perUnitGrams: 200 },
      { optionId: 'large', perUnitGrams: 280 },
    ],
    defaultOptionId: 'regular',
  },
  dal_cooked: {
    templateKey: 'dal_cooked',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 150 },
      { optionId: 'regular', perUnitGrams: 220 },
      { optionId: 'large', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  curry: {
    templateKey: 'curry',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 150 },
      { optionId: 'regular', perUnitGrams: 220 },
      { optionId: 'large', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  sabzi: {
    templateKey: 'sabzi',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 120 },
      { optionId: 'regular', perUnitGrams: 180 },
      { optionId: 'large', perUnitGrams: 260 },
    ],
    defaultOptionId: 'regular',
  },
  paneer_curry: {
    templateKey: 'paneer_curry',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 150 },
      { optionId: 'regular', perUnitGrams: 220 },
      { optionId: 'large', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  yogurt: {
    templateKey: 'yogurt',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 100 },
      { optionId: 'regular', perUnitGrams: 170 },
      { optionId: 'large', perUnitGrams: 240 },
    ],
    defaultOptionId: 'regular',
  },
  milk: {
    templateKey: 'milk',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 150 },
      { optionId: 'regular', perUnitGrams: 245 },
      { optionId: 'large', perUnitGrams: 350 },
    ],
    defaultOptionId: 'regular',
  },
  cereal: {
    templateKey: 'cereal',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 30 },
      { optionId: 'regular', perUnitGrams: 50 },
      { optionId: 'large', perUnitGrams: 75 },
    ],
    defaultOptionId: 'regular',
  },
  oil: {
    templateKey: 'oil',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 5 },
      { optionId: 'regular', perUnitGrams: 14 },
      { optionId: 'heavy', perUnitGrams: 28 },
    ],
    defaultOptionId: 'regular',
  },
  butter: {
    templateKey: 'butter',
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', perUnitGrams: 5 },
      { optionId: 'regular', perUnitGrams: 14 },
      { optionId: 'heavy', perUnitGrams: 28 },
    ],
    defaultOptionId: 'regular',
  },
};

const TEMPLATES: Record<string, PortionTemplate> = {
  ...COUNT_TEMPLATES,
  ...BULK_TEMPLATES,
};

// Synonyms map raw/canonical hints to template keys. Match is case-insensitive.
// These are food-identity aliases — independent of locale, since the LLM
// canonicalizes food names to English-ish hints.
const SYNONYMS: Record<string, string> = {
  // roti family
  roti: 'roti',
  rotis: 'roti',
  chapati: 'roti',
  chapatis: 'roti',
  phulka: 'roti',
  // paratha
  paratha: 'paratha',
  parathas: 'paratha',
  parantha: 'paratha',
  // bread
  bread: 'bread_slice',
  'bread slice': 'bread_slice',
  toast: 'bread_slice',
  // egg
  egg: 'egg',
  eggs: 'egg',
  'boiled egg': 'egg',
  'fried egg': 'egg',
  // banana
  banana: 'banana',
  bananas: 'banana',
  // idli/dosa
  idli: 'idli',
  idlis: 'idli',
  dosa: 'dosa',
  dosas: 'dosa',
  // samosa / snacks
  samosa: 'samosa',
  samosas: 'samosa',
  // pancakes
  pancake: 'pancake',
  pancakes: 'pancake',
  // rice
  rice: 'rice_cooked',
  'cooked rice': 'rice_cooked',
  'white rice': 'rice_cooked',
  'brown rice': 'rice_cooked',
  // dal
  dal: 'dal_cooked',
  daal: 'dal_cooked',
  lentils: 'dal_cooked',
  'lentil soup': 'dal_cooked',
  // curry / sabzi
  curry: 'curry',
  sabzi: 'sabzi',
  sabji: 'sabzi',
  vegetable: 'sabzi',
  'mixed vegetables': 'sabzi',
  // paneer
  'paneer curry': 'paneer_curry',
  'paneer butter masala': 'paneer_curry',
  'paneer sabzi': 'paneer_curry',
  'paneer makhani': 'paneer_curry',
  paneer: 'paneer_curry',
  // yogurt / dairy
  yogurt: 'yogurt',
  yoghurt: 'yogurt',
  curd: 'yogurt',
  dahi: 'yogurt',
  // milk
  milk: 'milk',
  // cereal
  cereal: 'cereal',
  cornflakes: 'cereal',
  oats: 'cereal',
  oatmeal: 'cereal',
  // fats
  oil: 'oil',
  ghee: 'oil',
  butter: 'butter',
};

function normalizeKey(s: string): string {
  return s.toLowerCase().replace(/[^a-z0-9\s]/g, '').replace(/\s+/g, ' ').trim();
}

export function lookupTemplate(canonicalHint: string, rawName: string): PortionTemplate | undefined {
  const candidates = [canonicalHint, rawName].filter(Boolean).map(normalizeKey);
  for (const cand of candidates) {
    if (!cand) continue;
    if (TEMPLATES[cand]) return TEMPLATES[cand];
    const syn = SYNONYMS[cand];
    if (syn && TEMPLATES[syn]) return TEMPLATES[syn];
    // Word-prefix fallback: "roti with ghee" → "roti"
    const firstWord = cand.split(' ')[0];
    if (firstWord && SYNONYMS[firstWord] && TEMPLATES[SYNONYMS[firstWord]]) {
      return TEMPLATES[SYNONYMS[firstWord]];
    }
    if (firstWord && TEMPLATES[firstWord]) return TEMPLATES[firstWord];
  }
  return undefined;
}

/**
 * Synthesize a 3-option template from LLM-emitted gram bands when no static
 * template matches. Used as fallback for generic foods (e.g. "stir-fried
 * tofu cubes" or anything we don't have a curated template for). Option IDs
 * are stable across locales; labels are produced by [portionLabels.ts] from
 * the `fallback` template key.
 */
export const FALLBACK_TEMPLATE_KEY = 'fallback';

export function synthesizeFallbackTemplate(
  kind: PortionKind,
  midGrams: number,
  minGrams: number,
  maxGrams: number,
): PortionTemplate {
  const lo = Math.max(1, Math.round(minGrams));
  const mid = Math.max(lo, Math.round(midGrams));
  const hi = Math.max(mid, Math.round(maxGrams));
  return {
    templateKey: FALLBACK_TEMPLATE_KEY,
    kind,
    options: [
      { optionId: 'smaller', perUnitGrams: lo },
      { optionId: 'typical', perUnitGrams: mid },
      { optionId: 'larger', perUnitGrams: hi },
    ],
    defaultOptionId: 'typical',
  };
}
