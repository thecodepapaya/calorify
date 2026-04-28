// Portion templates: per-canonical-food size buckets used by clarification UI.
// Labels are gram-free; the engine bakes count × per-unit grams into option.grams.

import { PortionKind } from '../protos/calorify/meal_analysis_pipeline.js';

export type PortionOptionTemplate = {
  optionId: string;
  label: string;
  perUnitGrams: number;
};

export type PortionTemplate = {
  kind: PortionKind;
  options: PortionOptionTemplate[];
  defaultOptionId: string;
};

const COUNT_TEMPLATES: Record<string, PortionTemplate> = {
  roti: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', label: 'Thin', perUnitGrams: 25 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 35 },
      { optionId: 'thick', label: 'Thick', perUnitGrams: 45 },
    ],
    defaultOptionId: 'regular',
  },
  bread_slice: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', label: 'Thin slice', perUnitGrams: 22 },
      { optionId: 'regular', label: 'Regular slice', perUnitGrams: 30 },
      { optionId: 'thick', label: 'Thick slice', perUnitGrams: 42 },
    ],
    defaultOptionId: 'regular',
  },
  egg: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', label: 'Small', perUnitGrams: 42 },
      { optionId: 'medium', label: 'Medium', perUnitGrams: 50 },
      { optionId: 'large', label: 'Large', perUnitGrams: 60 },
    ],
    defaultOptionId: 'medium',
  },
  banana: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', label: 'Small', perUnitGrams: 90 },
      { optionId: 'medium', label: 'Medium', perUnitGrams: 120 },
      { optionId: 'large', label: 'Large', perUnitGrams: 150 },
    ],
    defaultOptionId: 'medium',
  },
  idli: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', label: 'Small', perUnitGrams: 35 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 50 },
      { optionId: 'large', label: 'Large', perUnitGrams: 70 },
    ],
    defaultOptionId: 'regular',
  },
  dosa: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', label: 'Small', perUnitGrams: 80 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 120 },
      { optionId: 'large', label: 'Large', perUnitGrams: 160 },
    ],
    defaultOptionId: 'regular',
  },
  paratha: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'thin', label: 'Thin', perUnitGrams: 50 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 75 },
      { optionId: 'stuffed', label: 'Stuffed/large', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
  samosa: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'mini', label: 'Mini', perUnitGrams: 40 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 75 },
      { optionId: 'large', label: 'Large', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
  pancake: {
    kind: PortionKind.COUNT,
    options: [
      { optionId: 'small', label: 'Small', perUnitGrams: 45 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 75 },
      { optionId: 'large', label: 'Large', perUnitGrams: 110 },
    ],
    defaultOptionId: 'regular',
  },
};

const BULK_TEMPLATES: Record<string, PortionTemplate> = {
  rice_cooked: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small bowl', perUnitGrams: 150 },
      { optionId: 'regular', label: 'Regular bowl', perUnitGrams: 200 },
      { optionId: 'large', label: 'Large bowl', perUnitGrams: 280 },
    ],
    defaultOptionId: 'regular',
  },
  dal_cooked: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small bowl', perUnitGrams: 150 },
      { optionId: 'regular', label: 'Regular bowl', perUnitGrams: 220 },
      { optionId: 'large', label: 'Large bowl', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  curry: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small bowl', perUnitGrams: 150 },
      { optionId: 'regular', label: 'Regular bowl', perUnitGrams: 220 },
      { optionId: 'large', label: 'Large bowl', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  sabzi: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small portion', perUnitGrams: 120 },
      { optionId: 'regular', label: 'Regular portion', perUnitGrams: 180 },
      { optionId: 'large', label: 'Large portion', perUnitGrams: 260 },
    ],
    defaultOptionId: 'regular',
  },
  paneer_curry: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small bowl', perUnitGrams: 150 },
      { optionId: 'regular', label: 'Regular bowl', perUnitGrams: 220 },
      { optionId: 'large', label: 'Large bowl', perUnitGrams: 320 },
    ],
    defaultOptionId: 'regular',
  },
  yogurt: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small cup', perUnitGrams: 100 },
      { optionId: 'regular', label: 'Regular cup', perUnitGrams: 170 },
      { optionId: 'large', label: 'Large cup', perUnitGrams: 240 },
    ],
    defaultOptionId: 'regular',
  },
  milk: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small glass', perUnitGrams: 150 },
      { optionId: 'regular', label: 'Regular glass', perUnitGrams: 245 },
      { optionId: 'large', label: 'Large glass', perUnitGrams: 350 },
    ],
    defaultOptionId: 'regular',
  },
  cereal: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Small bowl', perUnitGrams: 30 },
      { optionId: 'regular', label: 'Regular bowl', perUnitGrams: 50 },
      { optionId: 'large', label: 'Large bowl', perUnitGrams: 75 },
    ],
    defaultOptionId: 'regular',
  },
  oil: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Light drizzle', perUnitGrams: 5 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 14 },
      { optionId: 'heavy', label: 'Generous', perUnitGrams: 28 },
    ],
    defaultOptionId: 'regular',
  },
  butter: {
    kind: PortionKind.BULK,
    options: [
      { optionId: 'small', label: 'Light spread', perUnitGrams: 5 },
      { optionId: 'regular', label: 'Regular', perUnitGrams: 14 },
      { optionId: 'heavy', label: 'Generous', perUnitGrams: 28 },
    ],
    defaultOptionId: 'regular',
  },
};

const TEMPLATES: Record<string, PortionTemplate> = {
  ...COUNT_TEMPLATES,
  ...BULK_TEMPLATES,
};

// Synonyms map raw/canonical hints to template keys. Match is case-insensitive.
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

// Synthesize a 3-option template from LLM-emitted gram bands when no static template matches.
// Used as fallback. Labels stay gram-free; the calling layer attaches `detail` for fine print.
export function synthesizeFallbackTemplate(
  kind: PortionKind,
  midGrams: number,
  minGrams: number,
  maxGrams: number,
): PortionTemplate {
  const lo = Math.max(1, Math.round(minGrams));
  const mid = Math.max(lo, Math.round(midGrams));
  const hi = Math.max(mid, Math.round(maxGrams));
  const labels = kind === PortionKind.COUNT
    ? { small: 'Smaller', mid: 'Typical', large: 'Larger' }
    : { small: 'Smaller portion', mid: 'Typical portion', large: 'Larger portion' };
  return {
    kind,
    options: [
      { optionId: 'smaller', label: labels.small, perUnitGrams: lo },
      { optionId: 'typical', label: labels.mid, perUnitGrams: mid },
      { optionId: 'larger', label: labels.large, perUnitGrams: hi },
    ],
    defaultOptionId: 'typical',
  };
}
