/**
 * Nutrition Engine service — deterministic macro pipeline with streamed events.
 * Extracted from the CLI prototype for use by the V2 API.
 */

import OpenAI from 'openai';
import { readFileSync, existsSync } from 'node:fs';
import { dirname, join } from 'node:path';
import { fileURLToPath } from 'node:url';
import config from '../config.js';

// ---------------------------------------------------------------------------
// Types (internal pipeline)
// ---------------------------------------------------------------------------
interface FoodEntry {
  id: string;
  canonical_name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
  default_weight_grams: number;
  source: string;
}

interface LLMIngredient {
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
}

interface LLMDecomposition {
  meal_name: string;
  ingredients: LLMIngredient[];
  confidence: number;
}

interface CanonicalMatch {
  foodId: string;
  canonicalName: string;
  score: number;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'llm_fallback' | 'unmatched';
}

export interface Macros {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

interface ResolvedIngredient {
  rawName: string;
  match: CanonicalMatch;
  grams: number;
  minGrams: number;
  maxGrams: number;
  macros: Macros;
  minMacros: Macros;
  maxMacros: Macros;
  source: 'db' | 'llm_fallback';
}

interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface UncertaintyReport {
  variancePercent: number;
  needsClarification: boolean;
  minTotal: Macros;
  maxTotal: Macros;
}

// ---------------------------------------------------------------------------
// Pipeline event types (streamed NDJSON)
// ---------------------------------------------------------------------------
export interface DecomposedIngredientDTO {
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
}

export interface ResolvedIngredientDTO {
  raw_name: string;
  canonical_name: string;
  match_type: string;
  grams: number;
  macros: Macros;
  source: 'db' | 'llm_fallback';
}

export interface ClarificationOptionDTO {
  label: string;
  grams: number;
  calorie_delta: number;
}

export interface ClarificationDTO {
  ingredient_name: string;
  question: string;
  options: ClarificationOptionDTO[];
  default_option_index: number;
}

export type PipelineEvent =
  | {
      step: 'decomposition';
      data: {
        meal_name: string;
        confidence: number;
        ingredients: DecomposedIngredientDTO[];
      };
    }
  | {
      step: 'ingredients';
      data: { ingredients: ResolvedIngredientDTO[] };
    }
  | {
      step: 'uncertainty';
      data: {
        variance_percent: number;
        needs_clarification: boolean;
        calorie_band: { min: number; max: number };
        clarifications: ClarificationDTO[];
      };
    }
  | {
      step: 'result';
      data: {
        meal_name: string;
        macros: Macros;
        calorie_confidence: string;
        calorie_band: { min: number; max: number };
        ingredients: ResolvedIngredientDTO[];
      };
    }
  | { step: 'error'; data: { message: string } };

// ---------------------------------------------------------------------------
// Food database
// ---------------------------------------------------------------------------
function getFoodDbPath(): string {
  const __dirname = dirname(fileURLToPath(import.meta.url));
  const fromDist = join(__dirname, '../scripts/usda-foods-sample.json');
  const fromSrc = join(process.cwd(), 'src/scripts/usda-foods-sample.json');
  if (existsSync(fromDist)) return fromDist;
  if (existsSync(fromSrc)) return fromSrc;
  return fromSrc;
}

const FOOD_DB: FoodEntry[] = JSON.parse(
  readFileSync(getFoodDbPath(), 'utf-8'),
);

const foodIndex = new Map<string, FoodEntry>();
for (const f of FOOD_DB) {
  foodIndex.set(f.id, f);
}

// ---------------------------------------------------------------------------
// Alias dictionary (subset for service; full set in CLI)
// ---------------------------------------------------------------------------
const ALIASES: Record<string, string> = {
  roti: 'wheat-flour-whole',
  chapati: 'wheat-flour-whole',
  phulka: 'wheat-flour-whole',
  atta: 'wheat-flour-whole',
  naan: 'wheat-flour-refined',
  maida: 'wheat-flour-refined',
  aloo: 'potato-boiled',
  potato: 'potato-boiled',
  bhindi: 'okra-cooked',
  okra: 'okra-cooked',
  baingan: 'eggplant-cooked',
  eggplant: 'eggplant-cooked',
  palak: 'spinach-cooked',
  spinach: 'spinach-cooked',
  gobhi: 'cauliflower-cooked',
  cauliflower: 'cauliflower-cooked',
  gajar: 'carrot-raw',
  carrot: 'carrot-raw',
  matar: 'green-peas-cooked',
  peas: 'green-peas-cooked',
  tamatar: 'tomato-raw',
  tomato: 'tomato-raw',
  pyaaz: 'onion-raw',
  onion: 'onion-raw',
  dahi: 'yogurt-plain',
  curd: 'yogurt-plain',
  yogurt: 'yogurt-plain',
  chawal: 'rice-white-cooked',
  rice: 'rice-white-cooked',
  'white rice': 'rice-white-cooked',
  'brown rice': 'rice-brown-cooked',
  dal: 'toor-dal-cooked',
  'toor dal': 'toor-dal-cooked',
  'arhar dal': 'toor-dal-cooked',
  'moong dal': 'moong-dal-cooked',
  moong: 'moong-dal-cooked',
  'chana dal': 'chana-dal-cooked',
  'masoor dal': 'lentils-red-cooked',
  masoor: 'lentils-red-cooked',
  'red lentils': 'lentils-red-cooked',
  rajma: 'rajma-cooked',
  'kidney beans': 'rajma-cooked',
  chole: 'chickpeas-cooked',
  chickpeas: 'chickpeas-cooked',
  makhan: 'butter',
  tel: 'oil-vegetable',
  'cooking oil': 'oil-vegetable',
  'vegetable oil': 'oil-vegetable',
  'olive oil': 'oil-olive',
  'coconut oil': 'oil-coconut',
  'mustard oil': 'oil-mustard',
  namak: 'salt',
  cheeni: 'sugar-white',
  sugar: 'sugar-white',
  gur: 'jaggery',
  shahad: 'honey',
  paneer: 'paneer',
  ghee: 'ghee',
  chicken: 'chicken-breast-cooked',
  'chicken breast': 'chicken-breast-cooked',
  'chicken thigh': 'chicken-thigh-cooked',
  egg: 'egg-whole-cooked',
  eggs: 'egg-whole-cooked',
  salmon: 'salmon-cooked',
  lamb: 'lamb-cooked',
  shrimp: 'shrimp-cooked',
  tofu: 'tofu-firm',
  oats: 'oats-rolled-dry',
  pasta: 'pasta-cooked',
  avocado: 'avocado',
  banana: 'banana',
  apple: 'apple',
  mango: 'mango',
  garlic: 'garlic',
  ginger: 'ginger',
  adrak: 'ginger',
  lahsun: 'garlic',
  haldi: 'turmeric-powder',
  turmeric: 'turmeric-powder',
  jeera: 'cumin-seeds',
  cumin: 'cumin-seeds',
  cabbage: 'cabbage-cooked',
  'patta gobhi': 'cabbage-cooked',
  broccoli: 'broccoli-cooked',
  almond: 'almond',
  almonds: 'almond',
  badam: 'almond',
  'peanut butter': 'peanut-butter',
  bread: 'bread-white',
  'white bread': 'bread-white',
  'whole wheat bread': 'bread-whole-wheat',
  milk: 'milk-whole',
  'whole milk': 'milk-whole',
  'skim milk': 'milk-skim',
  cheese: 'cheese-cheddar',
  cheddar: 'cheese-cheddar',
  cream: 'cream-heavy',
  coconut: 'coconut-fresh',
  'coconut milk': 'coconut-milk',
};

// ---------------------------------------------------------------------------
// OpenAI
// ---------------------------------------------------------------------------
const DECOMPOSITION_MODEL = 'gpt-5-nano';

const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal description into individual atomic ingredients with gram estimates.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into atomic ingredients.
3. For each ingredient provide: raw_name, canonical_hint, grams_estimated, min_grams, max_grams, notes.
4. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices.
6. confidence: 0-1 reflecting how confident you are overall.

Portion references: 1 chapati/roti ≈ 30g whole wheat flour + 3g oil/ghee; 1 cup cooked rice ≈ 185g; 1 cup cooked dal ≈ 210g; 1 tbsp oil/ghee ≈ 14g; 1 medium egg ≈ 50g; 1 cup milk ≈ 245g; 1 medium banana ≈ 120g; 1 slice bread ≈ 30g`;

const DECOMPOSITION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const, description: 'Short name for the identified meal' },
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          raw_name: { type: 'string' as const },
          canonical_hint: { type: 'string' as const },
          grams_estimated: { type: 'number' as const },
          min_grams: { type: 'number' as const },
          max_grams: { type: 'number' as const },
          notes: { type: 'string' as const },
        },
        required: ['raw_name', 'canonical_hint', 'grams_estimated', 'min_grams', 'max_grams', 'notes'] as const,
        additionalProperties: false,
      },
    },
    confidence: { type: 'number' as const, description: 'Overall confidence 0-1' },
  },
  required: ['meal_name', 'ingredients', 'confidence'] as const,
  additionalProperties: false,
};

const FALLBACK_SYSTEM_PROMPT = `You are a nutritional database. For each ingredient provided, return its macronutrient values per 100 grams. Use values consistent with USDA FoodData Central where possible.`;

const FALLBACK_SCHEMA = {
  type: 'object' as const,
  properties: {
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          name: { type: 'string' as const },
          kcal_per_100g: { type: 'number' as const },
          protein_per_100g: { type: 'number' as const },
          carbs_per_100g: { type: 'number' as const },
          fat_per_100g: { type: 'number' as const },
          fiber_per_100g: { type: 'number' as const },
        },
        required: ['name', 'kcal_per_100g', 'protein_per_100g', 'carbs_per_100g', 'fat_per_100g', 'fiber_per_100g'] as const,
        additionalProperties: false,
      },
    },
  },
  required: ['ingredients'] as const,
  additionalProperties: false,
};

// ---------------------------------------------------------------------------
// Helpers
// ---------------------------------------------------------------------------
function normalize(name: string): string {
  return name
    .toLowerCase()
    .replace(/[^a-z0-9\s]/g, '')
    .replace(/\s+/g, ' ')
    .trim();
}

function fuzzyScore(a: string, b: string): number {
  const aNorm = normalize(a);
  const bNorm = normalize(b);
  if (aNorm === bNorm) return 1.0;
  if (bNorm.includes(aNorm) || aNorm.includes(bNorm)) return 0.9;
  const aWords = new Set(aNorm.split(' '));
  const bWords = new Set(bNorm.split(' '));
  let overlap = 0;
  for (const w of aWords) {
    if (bWords.has(w)) overlap++;
  }
  const union = new Set([...aWords, ...bWords]).size;
  return union > 0 ? overlap / union : 0;
}

function canonicalize(hint: string): CanonicalMatch {
  const norm = normalize(hint);
  if (ALIASES[norm]) {
    const food = foodIndex.get(ALIASES[norm]);
    if (food) return { foodId: food.id, canonicalName: food.canonical_name, score: 1.0, matchType: 'alias' };
  }
  for (const food of FOOD_DB) {
    if (normalize(food.canonical_name) === norm || food.id === norm) {
      return { foodId: food.id, canonicalName: food.canonical_name, score: 1.0, matchType: 'exact' };
    }
  }
  let bestFood: FoodEntry | null = null;
  let bestScore = 0;
  for (const food of FOOD_DB) {
    const s1 = fuzzyScore(norm, food.canonical_name);
    const s2 = fuzzyScore(norm, food.id.replace(/-/g, ' '));
    const s = Math.max(s1, s2);
    if (s > bestScore) {
      bestScore = s;
      bestFood = food;
    }
  }
  if (bestFood && bestScore >= 0.4) {
    return { foodId: bestFood.id, canonicalName: bestFood.canonical_name, score: bestScore, matchType: 'fuzzy' };
  }
  return { foodId: '', canonicalName: hint, score: 0, matchType: 'unmatched' };
}

function calcMacros(foodId: string, grams: number): Macros {
  const food = foodIndex.get(foodId);
  if (!food) return { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
  const r = grams / 100;
  return {
    calories: Math.round(food.kcal_per_100g * r),
    protein: +(food.protein_per_100g * r).toFixed(1),
    carbs: +(food.carbs_per_100g * r).toFixed(1),
    fat: +(food.fat_per_100g * r).toFixed(1),
    fiber: +(food.fiber_per_100g * r).toFixed(1),
  };
}

function sumMacros(list: Macros[]): Macros {
  const t: Macros = { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
  for (const m of list) {
    t.calories += m.calories;
    t.protein += m.protein;
    t.carbs += m.carbs;
    t.fat += m.fat;
    t.fiber += m.fiber;
  }
  t.protein = +t.protein.toFixed(1);
  t.carbs = +t.carbs.toFixed(1);
  t.fat = +t.fat.toFixed(1);
  t.fiber = +t.fiber.toFixed(1);
  return t;
}

function calcMacrosFromPer100g(per100g: LLMFallbackEntry, grams: number): Macros {
  const r = grams / 100;
  return {
    calories: Math.round(per100g.kcal_per_100g * r),
    protein: +(per100g.protein_per_100g * r).toFixed(1),
    carbs: +(per100g.carbs_per_100g * r).toFixed(1),
    fat: +(per100g.fat_per_100g * r).toFixed(1),
    fiber: +(per100g.fiber_per_100g * r).toFixed(1),
  };
}

function analyzeUncertainty(resolved: ResolvedIngredient[]): UncertaintyReport {
  const minTotal = sumMacros(resolved.map((r) => r.minMacros));
  const maxTotal = sumMacros(resolved.map((r) => r.maxMacros));
  const midTotal = sumMacros(resolved.map((r) => r.macros));
  const avg = midTotal.calories || 1;
  const variancePercent = +((maxTotal.calories - minTotal.calories) / avg).toFixed(3);
  return {
    variancePercent,
    needsClarification: variancePercent > 0.15,
    minTotal,
    maxTotal,
  };
}

function generateClarifications(resolved: ResolvedIngredient[]): ClarificationDTO[] {
  const out: ClarificationDTO[] = [];
  for (let i = 0; i < resolved.length; i++) {
    const r = resolved[i];
    const calorieSpread = r.maxMacros.calories - r.minMacros.calories;
    if (calorieSpread < 50) continue;
    out.push({
      ingredient_name: r.rawName,
      question: `How much ${r.rawName}?`,
      options: [
        { label: `Small (~${r.minGrams}g)`, grams: r.minGrams, calorie_delta: r.minMacros.calories - r.macros.calories },
        { label: `Medium (~${r.grams}g)`, grams: r.grams, calorie_delta: 0 },
        { label: `Large (~${r.maxGrams}g)`, grams: r.maxGrams, calorie_delta: r.maxMacros.calories - r.macros.calories },
      ],
      default_option_index: 1,
    });
  }
  return out;
}

function varianceToCalorieConfidence(variancePercent: number): string {
  if (variancePercent <= 0.15) return 'HIGH';
  if (variancePercent <= 0.3) return 'MEDIUM';
  return 'LOW';
}

// ---------------------------------------------------------------------------
// LLM calls
// ---------------------------------------------------------------------------
async function decompose(client: OpenAI, input: string): Promise<LLMDecomposition> {
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      { role: 'user', content: input },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_tokens: 1200,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function estimateMacrosViaLLM(
  client: OpenAI,
  names: string[],
): Promise<Map<string, LLMFallbackEntry>> {
  if (names.length === 0) return new Map();
  const prompt = names.map((n, i) => `${i + 1}. ${n}`).join('\n');
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
      { role: 'user', content: `Provide per-100g macros for:\n${prompt}` },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'macro_fallback', schema: FALLBACK_SCHEMA, strict: true },
    },
    max_tokens: 800,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM fallback response');
  const parsed = JSON.parse(raw) as { ingredients: LLMFallbackEntry[] };
  const result = new Map<string, LLMFallbackEntry>();
  for (const entry of parsed.ingredients) result.set(normalize(entry.name), entry);
  for (let i = 0; i < names.length && i < parsed.ingredients.length; i++) {
    result.set(normalize(names[i]), parsed.ingredients[i]);
  }
  return result;
}

// ---------------------------------------------------------------------------
// Async generator: stream pipeline events
// ---------------------------------------------------------------------------
export async function* analyzeMeal(input: string): AsyncGenerator<PipelineEvent> {
  const apiKey = config.OPENAI_API_KEY;
  if (!apiKey) {
    yield { step: 'error', data: { message: 'OPENAI_API_KEY is not set' } };
    return;
  }
  const client = new OpenAI({ apiKey });

  let decomposition: LLMDecomposition;
  try {
    decomposition = await decompose(client, input);
  } catch (err) {
    yield { step: 'error', data: { message: err instanceof Error ? err.message : 'Decomposition failed' } };
    return;
  }

  yield {
    step: 'decomposition',
    data: {
      meal_name: decomposition.meal_name,
      confidence: decomposition.confidence,
      ingredients: decomposition.ingredients.map((ing) => ({
        raw_name: ing.raw_name,
        canonical_hint: ing.canonical_hint,
        grams_estimated: ing.grams_estimated,
        min_grams: ing.min_grams,
        max_grams: ing.max_grams,
        notes: ing.notes,
      })),
    },
  };

  const resolved: ResolvedIngredient[] = [];
  const unmatchedIngredients: { index: number; ing: LLMIngredient }[] = [];

  for (const ing of decomposition.ingredients) {
    const match = canonicalize(ing.canonical_hint);
    const macros = calcMacros(match.foodId, ing.grams_estimated);
    const minMacros = calcMacros(match.foodId, ing.min_grams);
    const maxMacros = calcMacros(match.foodId, ing.max_grams);
    if (match.matchType === 'unmatched') unmatchedIngredients.push({ index: resolved.length, ing });
    resolved.push({
      rawName: ing.raw_name,
      match,
      grams: ing.grams_estimated,
      minGrams: ing.min_grams,
      maxGrams: ing.max_grams,
      macros,
      minMacros,
      maxMacros,
      source: match.matchType === 'unmatched' ? 'llm_fallback' : 'db',
    });
  }

  if (unmatchedIngredients.length > 0) {
    try {
      const names = unmatchedIngredients.map((u) => u.ing.canonical_hint);
      const fallbackMap = await estimateMacrosViaLLM(client, names);
      for (const { index, ing } of unmatchedIngredients) {
        const entry = fallbackMap.get(normalize(ing.canonical_hint));
        if (entry) {
          const r = resolved[index];
          r.macros = calcMacrosFromPer100g(entry, ing.grams_estimated);
          r.minMacros = calcMacrosFromPer100g(entry, ing.min_grams);
          r.maxMacros = calcMacrosFromPer100g(entry, ing.max_grams);
          r.match = { ...r.match, matchType: 'llm_fallback' };
          r.source = 'llm_fallback';
        }
      }
    } catch {
      // Proceed with 0 macros for unmatched
    }
  }

  yield {
    step: 'ingredients',
    data: {
      ingredients: resolved.map((r) => ({
        raw_name: r.rawName,
        canonical_name: r.match.canonicalName,
        match_type: r.match.matchType,
        grams: r.grams,
        macros: r.macros,
        source: r.source,
      })),
    },
  };

  const uncertainty = analyzeUncertainty(resolved);
  const clarifications = uncertainty.needsClarification ? generateClarifications(resolved) : [];

  yield {
    step: 'uncertainty',
    data: {
      variance_percent: uncertainty.variancePercent,
      needs_clarification: uncertainty.needsClarification,
      calorie_band: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      clarifications,
    },
  };

  const totalMacros = sumMacros(resolved.map((r) => r.macros));

  yield {
    step: 'result',
    data: {
      meal_name: decomposition.meal_name,
      macros: totalMacros,
      calorie_confidence: varianceToCalorieConfidence(uncertainty.variancePercent),
      calorie_band: { min: uncertainty.minTotal.calories, max: uncertainty.maxTotal.calories },
      ingredients: resolved.map((r) => ({
        raw_name: r.rawName,
        canonical_name: r.match.canonicalName,
        match_type: r.match.matchType,
        grams: r.grams,
        macros: r.macros,
        source: r.source,
      })),
    },
  };
}
