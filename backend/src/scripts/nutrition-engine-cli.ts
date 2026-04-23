/**
 * Nutrition Engine CLI — prototype for testing the deterministic macro pipeline.
 *
 * Usage:
 *   npx tsx src/scripts/nutrition-engine-cli.ts                     # interactive REPL
 *   npx tsx src/scripts/nutrition-engine-cli.ts "2 roti with dal"   # single query
 *
 * Run from the backend/ directory so staging.env is picked up.
 */

import OpenAI from 'openai';
import { readFileSync } from 'node:fs';
import { createInterface } from 'node:readline/promises';
type ReadlineInterface = ReturnType<typeof createInterface>;
import { fileURLToPath } from 'node:url';
import { dirname, join } from 'node:path';
import dotenv from 'dotenv';
import { OPENAI_MEAL_ANALYSIS_MODEL } from '../openaiModels.js';

// ---------------------------------------------------------------------------
// Environment
// ---------------------------------------------------------------------------
dotenv.config({ path: join(process.cwd(), 'staging.env') });
dotenv.config({ override: true });

// ---------------------------------------------------------------------------
// ANSI helpers
// ---------------------------------------------------------------------------
const c = {
  reset: '\x1b[0m',
  bold: '\x1b[1m',
  dim: '\x1b[2m',
  green: '\x1b[32m',
  yellow: '\x1b[33m',
  cyan: '\x1b[36m',
  red: '\x1b[31m',
  magenta: '\x1b[35m',
  white: '\x1b[37m',
  bgCyan: '\x1b[46m',
};
const B = (s: string) => `${c.bold}${s}${c.reset}`;
const D = (s: string) => `${c.dim}${s}${c.reset}`;
const G = (s: string) => `${c.green}${s}${c.reset}`;
const Y = (s: string) => `${c.yellow}${s}${c.reset}`;
const R = (s: string) => `${c.red}${s}${c.reset}`;
const C = (s: string) => `${c.cyan}${s}${c.reset}`;
const M = (s: string) => `${c.magenta}${s}${c.reset}`;

function hr(label: string) {
  console.log(`\n${c.cyan}── ${label} ──${c.reset}`);
}

// ---------------------------------------------------------------------------
// Types
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

interface Macros {
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

// ---------------------------------------------------------------------------
// Food database (in-memory)
// ---------------------------------------------------------------------------
const __dirname = dirname(fileURLToPath(import.meta.url));
const FOOD_DB: FoodEntry[] = JSON.parse(
  readFileSync(join(__dirname, 'usda-foods-sample.json'), 'utf-8'),
);

const foodIndex = new Map<string, FoodEntry>();
for (const f of FOOD_DB) {
  foodIndex.set(f.id, f);
}

// ---------------------------------------------------------------------------
// Alias dictionary  (regional name → food DB id)
// ---------------------------------------------------------------------------
const ALIASES: Record<string, string> = {
  // Hindi / Indian
  'roti': 'wheat-flour-whole',
  'chapati': 'wheat-flour-whole',
  'phulka': 'wheat-flour-whole',
  'atta': 'wheat-flour-whole',
  'naan': 'wheat-flour-refined',
  'maida': 'wheat-flour-refined',
  'aloo': 'potato-boiled',
  'potato': 'potato-boiled',
  'bhindi': 'okra-cooked',
  'okra': 'okra-cooked',
  'baingan': 'eggplant-cooked',
  'eggplant': 'eggplant-cooked',
  'palak': 'spinach-cooked',
  'spinach': 'spinach-cooked',
  'gobhi': 'cauliflower-cooked',
  'cauliflower': 'cauliflower-cooked',
  'gajar': 'carrot-raw',
  'carrot': 'carrot-raw',
  'matar': 'green-peas-cooked',
  'peas': 'green-peas-cooked',
  'tamatar': 'tomato-raw',
  'tomato': 'tomato-raw',
  'pyaaz': 'onion-raw',
  'onion': 'onion-raw',
  'dahi': 'yogurt-plain',
  'curd': 'yogurt-plain',
  'yogurt': 'yogurt-plain',
  'chawal': 'rice-white-cooked',
  'rice': 'rice-white-cooked',
  'white rice': 'rice-white-cooked',
  'brown rice': 'rice-brown-cooked',
  'dal': 'toor-dal-cooked',
  'toor dal': 'toor-dal-cooked',
  'arhar dal': 'toor-dal-cooked',
  'moong dal': 'moong-dal-cooked',
  'moong': 'moong-dal-cooked',
  'chana dal': 'chana-dal-cooked',
  'masoor dal': 'lentils-red-cooked',
  'masoor': 'lentils-red-cooked',
  'red lentils': 'lentils-red-cooked',
  'rajma': 'rajma-cooked',
  'kidney beans': 'rajma-cooked',
  'chole': 'chickpeas-cooked',
  'chickpeas': 'chickpeas-cooked',
  'makhan': 'butter',
  'tel': 'oil-vegetable',
  'cooking oil': 'oil-vegetable',
  'vegetable oil': 'oil-vegetable',
  'olive oil': 'oil-olive',
  'coconut oil': 'oil-coconut',
  'mustard oil': 'oil-mustard',
  'namak': 'salt',
  'cheeni': 'sugar-white',
  'sugar': 'sugar-white',
  'gur': 'jaggery',
  'shahad': 'honey',
  'paneer': 'paneer',
  'ghee': 'ghee',
  'chicken': 'chicken-breast-cooked',
  'chicken breast': 'chicken-breast-cooked',
  'chicken thigh': 'chicken-thigh-cooked',
  'egg': 'egg-whole-cooked',
  'eggs': 'egg-whole-cooked',
  'salmon': 'salmon-cooked',
  'lamb': 'lamb-cooked',
  'shrimp': 'shrimp-cooked',
  'tofu': 'tofu-firm',
  'oats': 'oats-rolled-dry',
  'pasta': 'pasta-cooked',
  'avocado': 'avocado',
  'banana': 'banana',
  'apple': 'apple',
  'mango': 'mango',
  'garlic': 'garlic',
  'ginger': 'ginger',
  'adrak': 'ginger',
  'lahsun': 'garlic',
  'haldi': 'turmeric-powder',
  'turmeric': 'turmeric-powder',
  'jeera': 'cumin-seeds',
  'cumin': 'cumin-seeds',
  'cabbage': 'cabbage-cooked',
  'patta gobhi': 'cabbage-cooked',
  'broccoli': 'broccoli-cooked',
  'almond': 'almond',
  'almonds': 'almond',
  'badam': 'almond',
  'peanut butter': 'peanut-butter',
  'bread': 'bread-white',
  'white bread': 'bread-white',
  'whole wheat bread': 'bread-whole-wheat',
  'milk': 'milk-whole',
  'whole milk': 'milk-whole',
  'skim milk': 'milk-skim',
  'cheese': 'cheese-cheddar',
  'cheddar': 'cheese-cheddar',
  'cream': 'cream-heavy',
  'coconut': 'coconut-fresh',
  'coconut milk': 'coconut-milk',
};

// ---------------------------------------------------------------------------
// OpenAI client
// ---------------------------------------------------------------------------
function getOpenAI(): OpenAI {
  const key = process.env.OPENAI_API_KEY;
  if (!key) {
    console.error(R('OPENAI_API_KEY not set. Load staging.env or .env.'));
    process.exit(1);
  }
  return new OpenAI({ apiKey: key });
}

// ---------------------------------------------------------------------------
// LLM Decomposition  (Phase 3)
// ---------------------------------------------------------------------------
const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal description into individual atomic ingredients with gram estimates.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into atomic ingredients.
   Example: "biryani" → rice, chicken, oil, onion, yogurt, spices…
3. For each ingredient provide:
   - raw_name: ingredient as described
   - canonical_hint: normalized English food name for database lookup (use common USDA-style naming, e.g. "Rice, white, cooked")
   - grams_estimated: best gram estimate for the total quantity described
   - min_grams / max_grams: reasonable lower/upper bounds
   - notes: cooking state, variant info, or reason for uncertainty
4. State whether weights are for cooked or raw form. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices used in cooking.
6. For ambiguous portions use standard serving sizes.
7. confidence: 0-1 reflecting how confident you are overall.

Portion references:
- 1 chapati/roti ≈ 30g whole wheat flour + 3g oil/ghee (before cooking)
- 1 cup cooked rice ≈ 185g
- 1 cup cooked dal ≈ 210g
- 1 tablespoon oil/ghee ≈ 14g
- 1 medium egg ≈ 50g
- 1 cup milk ≈ 245g
- 1 medium banana ≈ 120g (without peel)
- 1 slice bread ≈ 30g`;

const DECOMPOSITION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: {
      type: 'string' as const,
      description: 'Short name for the identified meal',
    },
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          raw_name: { type: 'string' as const, description: 'Ingredient as described' },
          canonical_hint: { type: 'string' as const, description: 'Normalized English food name for DB lookup' },
          grams_estimated: { type: 'number' as const, description: 'Best estimate in grams' },
          min_grams: { type: 'number' as const, description: 'Lower bound gram estimate' },
          max_grams: { type: 'number' as const, description: 'Upper bound gram estimate' },
          notes: { type: 'string' as const, description: 'Cooking method, variant, or reason for uncertainty' },
        },
        required: ['raw_name', 'canonical_hint', 'grams_estimated', 'min_grams', 'max_grams', 'notes'] as const,
        additionalProperties: false,
      },
    },
    confidence: {
      type: 'number' as const,
      description: 'Overall confidence 0-1',
    },
  },
  required: ['meal_name', 'ingredients', 'confidence'] as const,
  additionalProperties: false,
};

async function decompose(openai: OpenAI, input: string): Promise<LLMDecomposition> {
  const t0 = performance.now();
  const response = await openai.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      { role: 'user', content: input },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: {
        name: 'meal_decomposition',
        schema: DECOMPOSITION_SCHEMA,
        strict: true,
      },
    },
    max_completion_tokens: 1200,
  });
  const elapsed = Math.round(performance.now() - t0);

  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');

  const parsed = JSON.parse(raw) as LLMDecomposition;
  const tokens = response.usage;
  console.log(
    D(`  LLM call: ${elapsed}ms | tokens: ${tokens?.prompt_tokens ?? '?'}→${tokens?.completion_tokens ?? '?'} | model: ${OPENAI_MEAL_ANALYSIS_MODEL}`),
  );
  return parsed;
}

// ---------------------------------------------------------------------------
// LLM Macro Fallback  (for unmatched ingredients)
// ---------------------------------------------------------------------------
interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface LLMFallbackResponse {
  ingredients: LLMFallbackEntry[];
}

const FALLBACK_SYSTEM_PROMPT = `You are a nutritional database. For each ingredient provided, return its macronutrient values per 100 grams.
Use values consistent with USDA FoodData Central where possible. All numbers should be realistic estimates.
If the ingredient is a composite dish, estimate based on a typical recipe.`;

const FALLBACK_SCHEMA = {
  type: 'object' as const,
  properties: {
    ingredients: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          name: { type: 'string' as const, description: 'Ingredient name as given' },
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

async function estimateMacrosViaLLM(
  client: OpenAI,
  names: string[],
): Promise<Map<string, LLMFallbackEntry>> {
  if (names.length === 0) return new Map();

  const t0 = performance.now();
  const prompt = names.map((n, i) => `${i + 1}. ${n}`).join('\n');

  const response = await client.chat.completions.create({
    model: OPENAI_MEAL_ANALYSIS_MODEL,
    messages: [
      { role: 'system', content: FALLBACK_SYSTEM_PROMPT },
      { role: 'user', content: `Provide per-100g macros for:\n${prompt}` },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: {
        name: 'macro_fallback',
        schema: FALLBACK_SCHEMA,
        strict: true,
      },
    },
    max_completion_tokens: 800,
  });
  const elapsed = Math.round(performance.now() - t0);

  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM fallback response');

  const parsed = JSON.parse(raw) as LLMFallbackResponse;
  const tokens = response.usage;
  console.log(
    D(`  LLM fallback call: ${elapsed}ms | tokens: ${tokens?.prompt_tokens ?? '?'}→${tokens?.completion_tokens ?? '?'} | model: ${OPENAI_MEAL_ANALYSIS_MODEL}`),
  );

  const result = new Map<string, LLMFallbackEntry>();
  for (const entry of parsed.ingredients) {
    result.set(normalize(entry.name), entry);
  }
  // Also map by index in case the model returns slightly different names
  for (let i = 0; i < names.length && i < parsed.ingredients.length; i++) {
    result.set(normalize(names[i]), parsed.ingredients[i]);
  }
  return result;
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

// ---------------------------------------------------------------------------
// Canonicalization  (Phase 2 — simplified for CLI)
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

  // 1. Exact alias lookup
  if (ALIASES[norm]) {
    const food = foodIndex.get(ALIASES[norm]);
    if (food) {
      return { foodId: food.id, canonicalName: food.canonical_name, score: 1.0, matchType: 'alias' };
    }
  }

  // 2. Exact id/name match
  for (const food of FOOD_DB) {
    if (normalize(food.canonical_name) === norm || food.id === norm) {
      return { foodId: food.id, canonicalName: food.canonical_name, score: 1.0, matchType: 'exact' };
    }
  }

  // 3. Fuzzy match (word overlap — production would use pgvector embeddings)
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

// ---------------------------------------------------------------------------
// Macro Calculator  (Phase 5)
// ---------------------------------------------------------------------------
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

// ---------------------------------------------------------------------------
// Uncertainty Engine  (Phase 4)
// ---------------------------------------------------------------------------
interface UncertaintyReport {
  variancePercent: number;
  needsClarification: boolean;
  minTotal: Macros;
  maxTotal: Macros;
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

// ---------------------------------------------------------------------------
// Clarification Engine  (Phase 4b — interactive uncertainty resolution)
// ---------------------------------------------------------------------------
interface ClarificationQuestion {
  ingredientIndex: number;
  ingredientName: string;
  question: string;
  options: ClarificationOption[];
  defaultOptionIndex: number;
}

interface ClarificationOption {
  label: string;
  grams: number;
  calorieDelta: number;
}

function generateClarifications(resolved: ResolvedIngredient[]): ClarificationQuestion[] {
  const questions: ClarificationQuestion[] = [];

  for (let i = 0; i < resolved.length; i++) {
    const r = resolved[i];
    const calorieSpread = r.maxMacros.calories - r.minMacros.calories;
    if (calorieSpread < 50) continue;

    questions.push({
      ingredientIndex: i,
      ingredientName: r.rawName,
      question: `How much ${r.rawName}?`,
      options: [
        { label: `Small (~${r.minGrams}g)`, grams: r.minGrams, calorieDelta: r.minMacros.calories - r.macros.calories },
        { label: `Medium (~${r.grams}g)`, grams: r.grams, calorieDelta: 0 },
        { label: `Large (~${r.maxGrams}g)`, grams: r.maxGrams, calorieDelta: r.maxMacros.calories - r.macros.calories },
      ],
      defaultOptionIndex: 1,
    });
  }

  return questions;
}

function scaleMacros(m: Macros, ratio: number): Macros {
  return {
    calories: Math.round(m.calories * ratio),
    protein: +(m.protein * ratio).toFixed(1),
    carbs: +(m.carbs * ratio).toFixed(1),
    fat: +(m.fat * ratio).toFixed(1),
    fiber: +(m.fiber * ratio).toFixed(1),
  };
}

function applyClarification(r: ResolvedIngredient, selectedGrams: number): void {
  const ratio = selectedGrams / (r.grams || 1);
  r.macros = scaleMacros(r.macros, ratio);
  r.grams = selectedGrams;
  r.minGrams = selectedGrams;
  r.maxGrams = selectedGrams;
  r.minMacros = { ...r.macros };
  r.maxMacros = { ...r.macros };
}

async function promptClarifications(
  rl: ReadlineInterface,
  questions: ClarificationQuestion[],
  resolved: ResolvedIngredient[],
): Promise<number> {
  let applied = 0;

  for (let qi = 0; qi < questions.length; qi++) {
    const q = questions[qi];
    console.log(`\n  ${B(`Q${qi + 1}:`)} ${q.question}`);

    for (let oi = 0; oi < q.options.length; oi++) {
      const opt = q.options[oi];
      const delta =
        opt.calorieDelta > 0 ? Y(`+${opt.calorieDelta}`) :
        opt.calorieDelta < 0 ? G(`${opt.calorieDelta}`) :
        D('±0');
      const def = oi === q.defaultOptionIndex ? D(' (default)') : '';
      console.log(`    ${C(String(oi + 1))}. ${opt.label}  ${delta} kcal${def}`);
    }

    let selected: number;
    try {
      const answer = await rl.question(`  ${D('Choose [1-' + q.options.length + '], Enter=default:')} `);
      const parsed = answer.trim() ? parseInt(answer.trim(), 10) - 1 : q.defaultOptionIndex;
      selected = (parsed >= 0 && parsed < q.options.length) ? parsed : q.defaultOptionIndex;
    } catch {
      console.log(D('    (input closed — using defaults for remaining questions)'));
      break;
    }
    const chosenOpt = q.options[selected];

    if (selected !== q.defaultOptionIndex) {
      applyClarification(resolved[q.ingredientIndex], chosenOpt.grams);
      console.log(`    → ${G(chosenOpt.label)}`);
      applied++;
    } else {
      console.log(`    → ${D(chosenOpt.label + ' (kept default)')}`);
    }
  }

  return applied;
}

function showClarificationsNonInteractive(questions: ClarificationQuestion[]): void {
  for (let qi = 0; qi < questions.length; qi++) {
    const q = questions[qi];
    console.log(`\n  ${B(`Q${qi + 1}:`)} ${q.question}`);

    for (let oi = 0; oi < q.options.length; oi++) {
      const opt = q.options[oi];
      const delta =
        opt.calorieDelta > 0 ? Y(`+${opt.calorieDelta}`) :
        opt.calorieDelta < 0 ? G(`${opt.calorieDelta}`) :
        D('±0');
      const marker = oi === q.defaultOptionIndex ? C(' ← default') : '';
      console.log(`    ${C(String(oi + 1))}. ${opt.label}  ${delta} kcal${marker}`);
    }
  }
}

// ---------------------------------------------------------------------------
// Variation Engine  (Phase 6)
// ---------------------------------------------------------------------------
interface Variation {
  label: string;
  description: string;
  adjustedCalories: number;
}

function generateVariations(
  resolved: ResolvedIngredient[],
  totalMacros: Macros,
  _uncertainty: UncertaintyReport,
): Variation[] {
  const variations: Variation[] = [];

  const FAT_FOOD_IDS = new Set(['ghee', 'butter', 'oil-vegetable', 'oil-olive', 'oil-coconut', 'oil-mustard']);
  const FAT_NAME_PATTERNS = /\b(oil|ghee|butter|lard|shortening)\b/i;
  const fatIngredients = resolved.filter((r) =>
    FAT_FOOD_IDS.has(r.match.foodId) || FAT_NAME_PATTERNS.test(r.rawName),
  );
  if (fatIngredients.length > 0) {
    let savedCal = 0;
    for (const fi of fatIngredients) {
      savedCal += fi.macros.calories * 0.5;
    }
    variations.push({
      label: 'Low oil/fat',
      description: `Reduce ${fatIngredients.map((f) => f.rawName).join(', ')} by 50%`,
      adjustedCalories: Math.round(totalMacros.calories - savedCal),
    });
  }

  // Reduced portion (0.75x)
  variations.push({
    label: 'Reduced portion (75%)',
    description: 'Scale all ingredients to 75%',
    adjustedCalories: Math.round(totalMacros.calories * 0.75),
  });

  // Sensitivity band
  variations.push({
    label: 'Calorie range',
    description: `Based on gram uncertainty across ingredients`,
    adjustedCalories: 0, // not a single number
  });

  return variations;
}

// ---------------------------------------------------------------------------
// Pipeline orchestrator
// ---------------------------------------------------------------------------
async function runPipeline(openai: OpenAI, input: string, rl?: ReadlineInterface): Promise<void> {
  // Step 1: LLM Decomposition
  hr('Step 1: LLM Decomposition');
  let decomposition: LLMDecomposition;
  try {
    decomposition = await decompose(openai, input);
  } catch (err) {
    console.error(R(`  LLM error: ${err instanceof Error ? err.message : err}`));
    return;
  }

  console.log(`  ${B('Meal:')} ${decomposition.meal_name}`);
  console.log(`  ${B('Confidence:')} ${formatConfidence(decomposition.confidence)}`);
  console.log(`  ${B('Ingredients:')}`);
  for (const ing of decomposition.ingredients) {
    const range = ing.min_grams !== ing.max_grams
      ? D(` [${ing.min_grams}–${ing.max_grams}g]`)
      : '';
    const notes = ing.notes ? D(` (${ing.notes})`) : '';
    console.log(`    • ${ing.raw_name} — ${B(String(ing.grams_estimated) + 'g')}${range}${notes}`);
  }

  // Step 2: Canonicalization
  hr('Step 2: Canonicalization');
  const resolved: ResolvedIngredient[] = [];
  const unmatchedIngredients: { index: number; ing: LLMIngredient }[] = [];

  for (const ing of decomposition.ingredients) {
    const match = canonicalize(ing.canonical_hint);
    const icon = match.matchType === 'unmatched' ? R('✗') : G('✓');
    const typeLabel = match.matchType === 'unmatched'
      ? R(match.matchType)
      : D(match.matchType + (match.matchType === 'fuzzy' ? ` ${(match.score * 100).toFixed(0)}%` : ''));

    console.log(`    ${icon} ${ing.canonical_hint} → ${C(match.canonicalName)} [${typeLabel}]`);

    const macros = calcMacros(match.foodId, ing.grams_estimated);
    const minMacros = calcMacros(match.foodId, ing.min_grams);
    const maxMacros = calcMacros(match.foodId, ing.max_grams);

    if (match.matchType === 'unmatched') {
      unmatchedIngredients.push({ index: resolved.length, ing });
    }

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

  // Step 2b: LLM fallback for unmatched ingredients
  if (unmatchedIngredients.length > 0) {
    hr('Step 2b: LLM Fallback');
    console.log(Y(`  ${unmatchedIngredients.length} ingredient(s) unmatched — requesting LLM macro estimates…`));

    try {
      const names = unmatchedIngredients.map((u) => u.ing.canonical_hint);
      const fallbackMap = await estimateMacrosViaLLM(openai, names);

      for (const { index, ing } of unmatchedIngredients) {
        const entry = fallbackMap.get(normalize(ing.canonical_hint));
        if (entry) {
          const r = resolved[index];
          r.macros = calcMacrosFromPer100g(entry, ing.grams_estimated);
          r.minMacros = calcMacrosFromPer100g(entry, ing.min_grams);
          r.maxMacros = calcMacrosFromPer100g(entry, ing.max_grams);
          r.match = { ...r.match, matchType: 'llm_fallback' };
          r.source = 'llm_fallback';
          console.log(
            `    ${Y('⚡')} ${ing.canonical_hint}: ${entry.kcal_per_100g} kcal/100g  P:${entry.protein_per_100g}  C:${entry.carbs_per_100g}  F:${entry.fat_per_100g}  Fib:${entry.fiber_per_100g}`,
          );
        } else {
          console.log(`    ${R('✗')} ${ing.canonical_hint}: LLM fallback returned no data — macros remain 0`);
        }
      }
    } catch (err) {
      console.error(R(`  LLM fallback error: ${err instanceof Error ? err.message : err}`));
      console.log(Y('  Proceeding with 0 macros for unmatched ingredients.'));
    }
  }

  // Step 3: Uncertainty Analysis
  hr('Step 3: Uncertainty Analysis');
  let uncertainty = analyzeUncertainty(resolved);
  const vpFmt = (uncertainty.variancePercent * 100).toFixed(1);
  const vpColor = uncertainty.needsClarification ? Y : G;
  console.log(`  Variance: ${vpColor(vpFmt + '%')} ${uncertainty.needsClarification ? Y('(> 15% — triggering clarification)') : G('(≤ 15% — use defaults)')}`);
  console.log(`  Calorie band: ${uncertainty.minTotal.calories} – ${uncertainty.maxTotal.calories} kcal`);

  // Step 3b: Clarification Questions
  if (uncertainty.needsClarification) {
    const questions = generateClarifications(resolved);

    if (questions.length > 0) {
      hr('Step 3b: Clarification');
      console.log(`  ${questions.length} question(s) to improve accuracy:`);

      if (rl) {
        const applied = await promptClarifications(rl, questions, resolved);
        if (applied > 0) {
          uncertainty = analyzeUncertainty(resolved);
          const newVp = (uncertainty.variancePercent * 100).toFixed(1);
          console.log(`\n  → ${G(String(applied))} clarification(s) applied.`);
          console.log(`  Updated variance: ${uncertainty.needsClarification ? Y(newVp + '%') : G(newVp + '%')} | Calorie band: ${uncertainty.minTotal.calories} – ${uncertainty.maxTotal.calories} kcal`);
        } else {
          console.log(D('\n  All defaults kept — no changes.'));
        }
      } else {
        showClarificationsNonInteractive(questions);
        console.log(D('\n  (Non-interactive mode — using default estimates)'));
      }
    }
  }

  // Step 4: Deterministic Macro Computation
  hr('Step 4: Macro Computation');
  const totalMacros = sumMacros(resolved.map((r) => r.macros));

  // Table header
  const pad = (s: string, n: number) => s.length >= n ? s.slice(0, n) : s + ' '.repeat(n - s.length);
  const rpad = (s: string, n: number) => s.length >= n ? s.slice(0, n) : ' '.repeat(n - s.length) + s;

  console.log(
    D('  ┌─────────────────────────┬───────┬───────┬───────┬───────┬───────┬───────┐'),
  );
  console.log(
    `  │ ${B(pad('Ingredient', 23))} │ ${B(rpad('g', 5))} │ ${B(rpad('kcal', 5))} │ ${B(rpad('P', 5))} │ ${B(rpad('C', 5))} │ ${B(rpad('F', 5))} │ ${B(rpad('Fib', 5))} │`,
  );
  console.log(
    D('  ├─────────────────────────┼───────┼───────┼───────┼───────┼───────┼───────┤'),
  );

  for (const r of resolved) {
    const tag = r.source === 'llm_fallback' ? Y('*') : ' ';
    const name = pad(r.rawName.slice(0, 22), 22);
    const row = [
      rpad(String(r.grams), 5),
      rpad(String(r.macros.calories), 5),
      rpad(String(r.macros.protein), 5),
      rpad(String(r.macros.carbs), 5),
      rpad(String(r.macros.fat), 5),
      rpad(String(r.macros.fiber), 5),
    ];
    const color = r.source === 'llm_fallback' ? Y : (s: string) => s;
    console.log(`  │ ${tag}${color(name)} │ ${row.join(' │ ')} │`);
  }

  console.log(
    D('  ├─────────────────────────┼───────┼───────┼───────┼───────┼───────┼───────┤'),
  );
  console.log(
    `  │ ${B(pad('TOTAL', 23))} │ ${B(rpad(String(resolved.reduce((a, r) => a + r.grams, 0)), 5))} │ ${B(rpad(String(totalMacros.calories), 5))} │ ${B(rpad(String(totalMacros.protein), 5))} │ ${B(rpad(String(totalMacros.carbs), 5))} │ ${B(rpad(String(totalMacros.fat), 5))} │ ${B(rpad(String(totalMacros.fiber), 5))} │`,
  );
  console.log(
    D('  └─────────────────────────┴───────┴───────┴───────┴───────┴───────┴───────┘'),
  );

  const llmCount = resolved.filter((r) => r.source === 'llm_fallback').length;
  if (llmCount > 0) {
    console.log(Y(`  * ${llmCount} ingredient(s) sourced from LLM fallback (not from food DB)`));
  }

  // Step 5: Variations
  hr('Step 5: Variations');
  const variations = generateVariations(resolved, totalMacros, uncertainty);
  for (const v of variations) {
    if (v.label === 'Calorie range') {
      console.log(`  ${M('◆')} ${B(v.label)}: ${uncertainty.minTotal.calories} – ${uncertainty.maxTotal.calories} kcal  ${D(v.description)}`);
    } else {
      console.log(`  ${M('◆')} ${B(v.label)}: ${v.adjustedCalories} kcal  ${D(v.description)}`);
    }
  }

  console.log('');
}

function formatConfidence(conf: number): string {
  const pct = (conf * 100).toFixed(0) + '%';
  if (conf >= 0.8) return G(pct);
  if (conf >= 0.5) return Y(pct);
  return R(pct);
}

// ---------------------------------------------------------------------------
// CLI entry point
// ---------------------------------------------------------------------------
async function main() {
  console.log(`\n${c.bgCyan}${c.bold} Nutrition Engine CLI ${c.reset}  ${D('(deterministic macro pipeline prototype)')}\n`);

  const openai = getOpenAI();

  const singleQuery = process.argv.slice(2).join(' ').trim();
  if (singleQuery) {
    await runPipeline(openai, singleQuery);
    return;
  }

  // Interactive REPL
  const rl = createInterface({ input: process.stdin, output: process.stdout });
  console.log(D('Type a food description and press Enter. Type "quit" to exit.\n'));

  while (true) {
    let input: string;
    try {
      input = await rl.question(`${c.bold}> ${c.reset}`);
    } catch {
      break;
    }
    const trimmed = input.trim();
    if (!trimmed) continue;
    if (trimmed === 'quit' || trimmed === 'exit' || trimmed === 'q') break;
    if (trimmed === 'foods') {
      console.log(D(`\nLoaded ${FOOD_DB.length} foods. Showing first 20:`));
      for (const f of FOOD_DB.slice(0, 20)) {
        console.log(D(`  ${f.id}: ${f.canonical_name} (${f.kcal_per_100g} kcal/100g)`));
      }
      console.log('');
      continue;
    }
    if (trimmed === 'help') {
      console.log(`
  ${B('Commands:')}
    ${C('<food description>')}  Run the full pipeline (e.g. "2 roti with dal and ghee")
    ${C('foods')}               List loaded food database entries
    ${C('help')}                Show this help
    ${C('quit')}                Exit
`);
      continue;
    }

    await runPipeline(openai, trimmed, rl);
  }

  rl.close();
  console.log(D('Bye!'));
}

main().catch((err) => {
  console.error(R(`Fatal: ${err instanceof Error ? err.message : err}`));
  process.exit(1);
});
