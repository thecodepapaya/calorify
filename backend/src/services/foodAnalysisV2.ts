import OpenAI from 'openai';
import config from '../config.js';
import { query } from './database.js';

interface USDAFoodRow {
  fdc_id: string;
  description: string;
  data_type: string | null;
  normalized_name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

interface LLMIngredient {
  raw_name: string;
  canonical_hint: string;
  grams_estimated: number;
  min_grams: number;
  max_grams: number;
  notes: string;
}

interface LLMItem {
  item_name: string;
  quantity: string;
  ingredients: LLMIngredient[];
}

interface LLMDecomposition {
  meal_name: string;
  items: LLMItem[];
  confidence: number;
}

export interface Macros {
  calories: number;
  protein: number;
  carbs: number;
  fat: number;
  fiber: number;
}

interface ResolvedIngredient {
  ingredientId: string;
  rawName: string;
  canonicalName: string;
  fdcId: string | null;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'llm_fallback' | 'unmatched';
  matchScore: number;
  grams: number;
  minGrams: number;
  maxGrams: number;
  macros: Macros;
  minMacros: Macros;
  maxMacros: Macros;
  source: 'db' | 'llm_fallback';
}

interface ResolvedItem {
  itemId: string;
  name: string;
  quantity: string;
  ingredients: ResolvedIngredient[];
  macros: Macros;
  minMacros: Macros;
  maxMacros: Macros;
}

interface LLMFallbackEntry {
  name: string;
  kcal_per_100g: number;
  protein_per_100g: number;
  carbs_per_100g: number;
  fat_per_100g: number;
  fiber_per_100g: number;
}

export interface VariationOptionDTO {
  option: string;
  macro_diff: Macros;
}

export interface VariationDTO {
  item_id: string;
  question: string;
  options: VariationOptionDTO[];
  default_option_index: number;
}

export type PipelineEvent =
  | {
      step: 'meal';
      data: {
        meal_id: string;
        name: string;
        confidence: number;
      };
    }
  | {
      step: 'items';
      data: {
        meal_id: string;
        items: Array<{
          item_id: string;
          name: string;
          quantity: string;
          macros: Macros;
          calorie_band: { min: number; max: number };
          ingredients: Array<{
            ingredient_id: string;
            raw_name: string;
            canonical_name: string;
            fdc_id: string | null;
            match_type: string;
            match_score: number;
            source: 'db' | 'llm_fallback';
            grams: number;
            min_grams: number;
            max_grams: number;
            macros: Macros;
          }>;
        }>;
      };
    }
  | {
      step: 'variations';
      data: {
        meal_id: string;
        variations: VariationDTO[];
      };
    }
  | {
      step: 'result';
      data: {
        meal_id: string;
        macros: Macros;
        calorie_confidence: 'LOW' | 'MEDIUM' | 'HIGH';
        calorie_band: { min: number; max: number };
        items: Array<{
          item_id: string;
          name: string;
          quantity: string;
          macros: Macros;
          calorie_band: { min: number; max: number };
          ingredients: Array<{
            ingredient_id: string;
            raw_name: string;
            canonical_name: string;
            fdc_id: string | null;
            match_type: string;
            match_score: number;
            source: 'db' | 'llm_fallback';
            grams: number;
            min_grams: number;
            max_grams: number;
            macros: Macros;
          }>;
        }>;
      };
    }
  | { step: 'error'; data: { message: string } };

const DECOMPOSITION_MODEL = 'gpt-5-nano';

const DECOMPOSITION_SYSTEM_PROMPT = `You are a food decomposition AI. Your ONLY job is to break down a meal into items and atomic ingredients with gram estimates.

RULES:
1. NEVER generate calorie or macro nutritional values. You ONLY estimate grams.
2. Decompose composite dishes into items, and each item into atomic ingredients.
3. For each ingredient provide: raw_name, canonical_hint, grams_estimated, min_grams, max_grams, notes.
4. Prefer cooked weights for cooked dishes.
5. Include ALL ingredients — oils, butter, ghee, salt, spices.
6. confidence: 0-1 reflecting how confident you are overall.

Portion references: 1 chapati/roti ≈ 30g whole wheat flour + 3g oil/ghee; 1 cup cooked rice ≈ 185g; 1 cup cooked dal ≈ 210g; 1 tbsp oil/ghee ≈ 14g; 1 medium egg ≈ 50g; 1 cup milk ≈ 245g; 1 medium banana ≈ 120g; 1 slice bread ≈ 30g`;

const DECOMPOSITION_SCHEMA = {
  type: 'object' as const,
  properties: {
    meal_name: { type: 'string' as const, description: 'Short name for the identified meal' },
    items: {
      type: 'array' as const,
      items: {
        type: 'object' as const,
        properties: {
          item_name: { type: 'string' as const },
          quantity: { type: 'string' as const },
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
        },
        required: ['item_name', 'quantity', 'ingredients'] as const,
        additionalProperties: false,
      },
    },
    confidence: { type: 'number' as const, description: 'Overall confidence 0-1' },
  },
  required: ['meal_name', 'items', 'confidence'] as const,
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

const ALIASES: Record<string, string> = {
  roti: 'wheat flour whole',
  chapati: 'wheat flour whole',
  phulka: 'wheat flour whole',
  atta: 'wheat flour whole',
  naan: 'wheat flour refined',
  maida: 'wheat flour refined',
  aloo: 'potato boiled',
  potato: 'potato boiled',
  bhindi: 'okra cooked',
  okra: 'okra cooked',
  baingan: 'eggplant cooked',
  eggplant: 'eggplant cooked',
  palak: 'spinach cooked',
  spinach: 'spinach cooked',
  gobhi: 'cauliflower cooked',
  cauliflower: 'cauliflower cooked',
  gajar: 'carrot raw',
  carrot: 'carrot raw',
  matar: 'green peas cooked',
  peas: 'green peas cooked',
  tamatar: 'tomato raw',
  tomato: 'tomato raw',
  pyaaz: 'onion raw',
  onion: 'onion raw',
  dahi: 'yogurt plain',
  curd: 'yogurt plain',
  yogurt: 'yogurt plain',
  chawal: 'rice white cooked',
  rice: 'rice white cooked',
  'white rice': 'rice white cooked',
  'brown rice': 'rice brown cooked',
  dal: 'lentils cooked',
  'toor dal': 'lentils cooked',
  'arhar dal': 'lentils cooked',
  'moong dal': 'mung beans cooked',
  moong: 'mung beans cooked',
  'chana dal': 'chickpeas cooked',
  'masoor dal': 'lentils red cooked',
  masoor: 'lentils red cooked',
  'red lentils': 'lentils red cooked',
  rajma: 'kidney beans cooked',
  'kidney beans': 'kidney beans cooked',
  chole: 'chickpeas cooked',
  chickpeas: 'chickpeas cooked',
  makhan: 'butter',
  tel: 'oil vegetable',
  'cooking oil': 'oil vegetable',
  'vegetable oil': 'oil vegetable',
  'olive oil': 'oil olive',
  'coconut oil': 'oil coconut',
  'mustard oil': 'oil mustard',
  namak: 'salt',
  cheeni: 'sugar',
  sugar: 'sugar',
  gur: 'jaggery',
  shahad: 'honey',
  paneer: 'paneer',
  ghee: 'ghee',
  chicken: 'chicken breast cooked',
  'chicken breast': 'chicken breast cooked',
  'chicken thigh': 'chicken thigh cooked',
  egg: 'egg whole cooked',
  eggs: 'egg whole cooked',
  salmon: 'salmon cooked',
  lamb: 'lamb cooked',
  shrimp: 'shrimp cooked',
  tofu: 'tofu firm',
  oats: 'oats rolled dry',
  pasta: 'pasta cooked',
  avocado: 'avocado',
  banana: 'banana',
  apple: 'apple',
  mango: 'mango',
  garlic: 'garlic',
  ginger: 'ginger',
  adrak: 'ginger',
  lahsun: 'garlic',
  haldi: 'turmeric powder',
  turmeric: 'turmeric powder',
  jeera: 'cumin seeds',
  cumin: 'cumin seeds',
  cabbage: 'cabbage cooked',
  'patta gobhi': 'cabbage cooked',
  broccoli: 'broccoli cooked',
  almond: 'almond',
  almonds: 'almond',
  badam: 'almond',
  'peanut butter': 'peanut butter',
  bread: 'bread white',
  'white bread': 'bread white',
  'whole wheat bread': 'bread whole wheat',
  milk: 'milk whole',
  'whole milk': 'milk whole',
  'skim milk': 'milk skim',
  cheese: 'cheddar cheese',
  cheddar: 'cheddar cheese',
  cream: 'heavy cream',
  coconut: 'coconut fresh',
  'coconut milk': 'coconut milk',
};

const ALTERNATE_GROUPS: Array<{
  match: RegExp;
  question: string;
  options: string[];
}> = [
  {
    match: /milk/,
    question: 'Which type of milk was used?',
    options: ['milk whole', 'milk reduced fat', 'milk skim'],
  },
  {
    match: /flour|roti|chapati|paratha/,
    question: 'Which flour was used?',
    options: ['wheat flour whole', 'wheat flour refined'],
  },
  {
    match: /oil|ghee|butter/,
    question: 'Which fat was used?',
    options: ['oil vegetable', 'butter', 'ghee', 'oil olive'],
  },
];

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

function calcMacros(per100g: LLMFallbackEntry, grams: number): Macros {
  const r = grams / 100;
  return {
    calories: Math.round(per100g.kcal_per_100g * r),
    protein: +(per100g.protein_per_100g * r).toFixed(1),
    carbs: +(per100g.carbs_per_100g * r).toFixed(1),
    fat: +(per100g.fat_per_100g * r).toFixed(1),
    fiber: +(per100g.fiber_per_100g * r).toFixed(1),
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

function varianceToCalorieConfidence(variancePercent: number): 'LOW' | 'MEDIUM' | 'HIGH' {
  if (variancePercent <= 0.15) return 'HIGH';
  if (variancePercent <= 0.3) return 'MEDIUM';
  return 'LOW';
}

function getTokenCandidates(value: string): string[] {
  const tokens = normalize(value).split(' ').filter(Boolean);
  tokens.sort((a, b) => b.length - a.length);
  return tokens.slice(0, 4);
}

async function findExact(normalizedName: string): Promise<USDAFoodRow | null> {
  const result = await query<USDAFoodRow>(
    'SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g FROM usda_foods WHERE normalized_name = $1 LIMIT 1',
    [normalizedName],
  );
  return result.rows[0] ?? null;
}

async function findCandidates(term: string): Promise<USDAFoodRow[]> {
  const tokens = getTokenCandidates(term);
  if (tokens.length === 0) return [];
  const likeParams = tokens.map((t) => `%${t}%`);
  const conditions = tokens
    .map((_, i) => `(normalized_name ILIKE $${i + 1} OR description ILIKE $${i + 1})`)
    .join(' OR ');
  const result = await query<USDAFoodRow>(
    `SELECT fdc_id, description, data_type, normalized_name, kcal_per_100g, protein_per_100g, carbs_per_100g, fat_per_100g, fiber_per_100g
     FROM usda_foods
     WHERE ${conditions}
     LIMIT 50`,
    likeParams,
  );
  return result.rows;
}

async function canonicalize(hint: string): Promise<{
  row: USDAFoodRow | null;
  matchType: 'exact' | 'alias' | 'fuzzy' | 'unmatched';
  score: number;
}> {
  const norm = normalize(hint);
  const aliasTerm = ALIASES[norm];
  if (aliasTerm) {
    const aliasNorm = normalize(aliasTerm);
    const exact = await findExact(aliasNorm);
    if (exact) return { row: exact, matchType: 'alias', score: 1.0 };
    const candidates = await findCandidates(aliasNorm);
    let best: USDAFoodRow | null = null;
    let bestScore = 0;
    for (const c of candidates) {
      const score = Math.max(
        fuzzyScore(aliasNorm, c.normalized_name),
        fuzzyScore(aliasNorm, c.description),
      );
      if (score > bestScore) {
        bestScore = score;
        best = c;
      }
    }
    if (best && bestScore >= 0.4) return { row: best, matchType: 'alias', score: bestScore };
  }

  const exact = await findExact(norm);
  if (exact) return { row: exact, matchType: 'exact', score: 1.0 };

  const candidates = await findCandidates(norm);
  let best: USDAFoodRow | null = null;
  let bestScore = 0;
  for (const c of candidates) {
    const score = Math.max(
      fuzzyScore(norm, c.normalized_name),
      fuzzyScore(norm, c.description),
    );
    if (score > bestScore) {
      bestScore = score;
      best = c;
    }
  }
  if (best && bestScore >= 0.4) return { row: best, matchType: 'fuzzy', score: bestScore };

  return { row: null, matchType: 'unmatched', score: 0 };
}

async function decomposeText(client: OpenAI, input: string): Promise<LLMDecomposition> {
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      { role: 'user', content: input },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition_v2', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_tokens: 1400,
  });
  const raw = response.choices[0]?.message?.content;
  if (!raw) throw new Error('Empty LLM response');
  return JSON.parse(raw) as LLMDecomposition;
}

async function decomposeImage(client: OpenAI, imageUrl: string): Promise<LLMDecomposition> {
  const response = await client.chat.completions.create({
    model: DECOMPOSITION_MODEL,
    messages: [
      { role: 'system', content: DECOMPOSITION_SYSTEM_PROMPT },
      {
        role: 'user',
        content: [
          {
            type: 'image_url',
            image_url: { url: imageUrl },
          },
        ],
      },
    ],
    response_format: {
      type: 'json_schema',
      json_schema: { name: 'meal_decomposition_v2_image', schema: DECOMPOSITION_SCHEMA, strict: true },
    },
    max_tokens: 1400,
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

function analyzeVariance(minTotal: Macros, maxTotal: Macros, midTotal: Macros): number {
  const avg = midTotal.calories || 1;
  return +((maxTotal.calories - minTotal.calories) / avg).toFixed(3);
}

function createId(prefix: string, index: number): string {
  return `${prefix}_${index + 1}`;
}

async function buildVariations(items: ResolvedItem[]): Promise<VariationDTO[]> {
  const variations: VariationDTO[] = [];

  for (const item of items) {
    for (const ing of item.ingredients) {
      const calorieSpread = ing.maxMacros.calories - ing.minMacros.calories;
      if (calorieSpread >= 50) {
        variations.push({
          item_id: item.itemId,
          question: `How much ${ing.rawName} in ${item.name}?`,
          options: [
            {
              option: `Small (~${ing.minGrams}g)`,
              macro_diff: {
                calories: ing.minMacros.calories - ing.macros.calories,
                protein: +(ing.minMacros.protein - ing.macros.protein).toFixed(1),
                carbs: +(ing.minMacros.carbs - ing.macros.carbs).toFixed(1),
                fat: +(ing.minMacros.fat - ing.macros.fat).toFixed(1),
                fiber: +(ing.minMacros.fiber - ing.macros.fiber).toFixed(1),
              },
            },
            {
              option: `Medium (~${ing.grams}g)`,
              macro_diff: { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 },
            },
            {
              option: `Large (~${ing.maxGrams}g)`,
              macro_diff: {
                calories: ing.maxMacros.calories - ing.macros.calories,
                protein: +(ing.maxMacros.protein - ing.macros.protein).toFixed(1),
                carbs: +(ing.maxMacros.carbs - ing.macros.carbs).toFixed(1),
                fat: +(ing.maxMacros.fat - ing.macros.fat).toFixed(1),
                fiber: +(ing.maxMacros.fiber - ing.macros.fiber).toFixed(1),
              },
            },
          ],
          default_option_index: 1,
        });
      }

      const normalizedName = normalize(ing.canonicalName || ing.rawName);
      for (const group of ALTERNATE_GROUPS) {
        if (!group.match.test(normalizedName)) continue;
        if (!ing.fdcId) continue;
        const basePer100g: LLMFallbackEntry = {
          name: ing.canonicalName,
          kcal_per_100g: ing.macros.calories / (ing.grams / 100 || 1),
          protein_per_100g: ing.macros.protein / (ing.grams / 100 || 1),
          carbs_per_100g: ing.macros.carbs / (ing.grams / 100 || 1),
          fat_per_100g: ing.macros.fat / (ing.grams / 100 || 1),
          fiber_per_100g: ing.macros.fiber / (ing.grams / 100 || 1),
        };
        const options: VariationOptionDTO[] = [];
        for (const optionTerm of group.options) {
          const match = await canonicalize(optionTerm);
          if (!match.row) continue;
          const altPer100g: LLMFallbackEntry = {
            name: match.row.description,
            kcal_per_100g: match.row.kcal_per_100g,
            protein_per_100g: match.row.protein_per_100g,
            carbs_per_100g: match.row.carbs_per_100g,
            fat_per_100g: match.row.fat_per_100g,
            fiber_per_100g: match.row.fiber_per_100g,
          };
          const baseMacros = calcMacros(basePer100g, ing.grams);
          const altMacros = calcMacros(altPer100g, ing.grams);
          options.push({
            option: match.row.description,
            macro_diff: {
              calories: altMacros.calories - baseMacros.calories,
              protein: +(altMacros.protein - baseMacros.protein).toFixed(1),
              carbs: +(altMacros.carbs - baseMacros.carbs).toFixed(1),
              fat: +(altMacros.fat - baseMacros.fat).toFixed(1),
              fiber: +(altMacros.fiber - baseMacros.fiber).toFixed(1),
            },
          });
        }
        if (options.length >= 2) {
          variations.push({
            item_id: item.itemId,
            question: group.question,
            options,
            default_option_index: 0,
          });
        }
        break;
      }
    }
  }

  return variations;
}

async function resolveIngredients(
  client: OpenAI,
  item: LLMItem,
  itemIndex: number,
): Promise<ResolvedItem> {
  const resolved: ResolvedIngredient[] = [];
  const unmatched: { index: number; ing: LLMIngredient }[] = [];

  for (const ing of item.ingredients) {
    const match = await canonicalize(ing.canonical_hint);
    let macros: Macros = { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    let minMacros: Macros = { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };
    let maxMacros: Macros = { calories: 0, protein: 0, carbs: 0, fat: 0, fiber: 0 };

    if (match.row) {
      const per100g: LLMFallbackEntry = {
        name: match.row.description,
        kcal_per_100g: match.row.kcal_per_100g,
        protein_per_100g: match.row.protein_per_100g,
        carbs_per_100g: match.row.carbs_per_100g,
        fat_per_100g: match.row.fat_per_100g,
        fiber_per_100g: match.row.fiber_per_100g,
      };
      macros = calcMacros(per100g, ing.grams_estimated);
      minMacros = calcMacros(per100g, ing.min_grams);
      maxMacros = calcMacros(per100g, ing.max_grams);
    }

    if (!match.row) {
      unmatched.push({ index: resolved.length, ing });
    }

    resolved.push({
      ingredientId: createId(`ing_${itemIndex}`, resolved.length),
      rawName: ing.raw_name,
      canonicalName: match.row ? match.row.description : ing.canonical_hint,
      fdcId: match.row ? String(match.row.fdc_id) : null,
      matchType: match.matchType,
      matchScore: match.score,
      grams: ing.grams_estimated,
      minGrams: ing.min_grams,
      maxGrams: ing.max_grams,
      macros,
      minMacros,
      maxMacros,
      source: match.row ? 'db' : 'llm_fallback',
    });
  }

  if (unmatched.length > 0) {
    const names = unmatched.map((u) => u.ing.canonical_hint);
    const fallbackMap = await estimateMacrosViaLLM(client, names);
    for (const { index, ing } of unmatched) {
      const entry = fallbackMap.get(normalize(ing.canonical_hint));
      if (!entry) continue;
      const r = resolved[index];
      r.macros = calcMacros(entry, ing.grams_estimated);
      r.minMacros = calcMacros(entry, ing.min_grams);
      r.maxMacros = calcMacros(entry, ing.max_grams);
      r.matchType = 'llm_fallback';
      r.matchScore = 0;
      r.source = 'llm_fallback';
    }
  }

  const macros = sumMacros(resolved.map((r) => r.macros));
  const minMacros = sumMacros(resolved.map((r) => r.minMacros));
  const maxMacros = sumMacros(resolved.map((r) => r.maxMacros));

  return {
    itemId: createId('item', itemIndex),
    name: item.item_name,
    quantity: item.quantity,
    ingredients: resolved,
    macros,
    minMacros,
    maxMacros,
  };
}

async function runAnalysis(decomposition: LLMDecomposition): Promise<ResolvedItem[]> {
  const apiKey = config.OPENAI_API_KEY;
  if (!apiKey) throw new Error('OPENAI_API_KEY is not set');
  const client = new OpenAI({ apiKey });

  const resolvedItems: ResolvedItem[] = [];
  for (let i = 0; i < decomposition.items.length; i++) {
    const item = decomposition.items[i];
    const resolvedItem = await resolveIngredients(client, item, i);
    resolvedItems.push(resolvedItem);
  }
  return resolvedItems;
}

export async function* analyzeTextV2(input: string): AsyncGenerator<PipelineEvent> {
  if (!config.DATABASE_URL) {
    yield { step: 'error', data: { message: 'DATABASE_URL is not set' } };
    return;
  }
  const apiKey = config.OPENAI_API_KEY;
  if (!apiKey) {
    yield { step: 'error', data: { message: 'OPENAI_API_KEY is not set' } };
    return;
  }
  const client = new OpenAI({ apiKey });

  let decomposition: LLMDecomposition;
  try {
    decomposition = await decomposeText(client, input);
  } catch (err) {
    yield { step: 'error', data: { message: err instanceof Error ? err.message : 'Decomposition failed' } };
    return;
  }

  const mealId = 'meal_1';
  yield {
    step: 'meal',
    data: {
      meal_id: mealId,
      name: decomposition.meal_name,
      confidence: decomposition.confidence,
    },
  };

  let items: ResolvedItem[] = [];
  try {
    items = await runAnalysis(decomposition);
  } catch (err) {
    yield { step: 'error', data: { message: err instanceof Error ? err.message : 'Ingredient resolution failed' } };
    return;
  }

  yield {
    step: 'items',
    data: {
      meal_id: mealId,
      items: items.map((item) => ({
        item_id: item.itemId,
        name: item.name,
        quantity: item.quantity,
        macros: item.macros,
        calorie_band: { min: item.minMacros.calories, max: item.maxMacros.calories },
        ingredients: item.ingredients.map((ing) => ({
          ingredient_id: ing.ingredientId,
          raw_name: ing.rawName,
          canonical_name: ing.canonicalName,
          fdc_id: ing.fdcId,
          match_type: ing.matchType,
          match_score: ing.matchScore,
          source: ing.source,
          grams: ing.grams,
          min_grams: ing.minGrams,
          max_grams: ing.maxGrams,
          macros: ing.macros,
        })),
      })),
    },
  };

  let variations: VariationDTO[] = [];
  try {
    variations = await buildVariations(items);
  } catch {
    variations = [];
  }

  yield {
    step: 'variations',
    data: {
      meal_id: mealId,
      variations,
    },
  };

  const mealMacros = sumMacros(items.map((i) => i.macros));
  const minTotal = sumMacros(items.map((i) => i.minMacros));
  const maxTotal = sumMacros(items.map((i) => i.maxMacros));
  const variance = analyzeVariance(minTotal, maxTotal, mealMacros);

  yield {
    step: 'result',
    data: {
      meal_id: mealId,
      macros: mealMacros,
      calorie_confidence: varianceToCalorieConfidence(variance),
      calorie_band: { min: minTotal.calories, max: maxTotal.calories },
      items: items.map((item) => ({
        item_id: item.itemId,
        name: item.name,
        quantity: item.quantity,
        macros: item.macros,
        calorie_band: { min: item.minMacros.calories, max: item.maxMacros.calories },
        ingredients: item.ingredients.map((ing) => ({
          ingredient_id: ing.ingredientId,
          raw_name: ing.rawName,
          canonical_name: ing.canonicalName,
          fdc_id: ing.fdcId,
          match_type: ing.matchType,
          match_score: ing.matchScore,
          source: ing.source,
          grams: ing.grams,
          min_grams: ing.minGrams,
          max_grams: ing.maxGrams,
          macros: ing.macros,
        })),
      })),
    },
  };
}

export async function* analyzeImageV2(imageUrl: string): AsyncGenerator<PipelineEvent> {
  if (!config.DATABASE_URL) {
    yield { step: 'error', data: { message: 'DATABASE_URL is not set' } };
    return;
  }
  const apiKey = config.OPENAI_API_KEY;
  if (!apiKey) {
    yield { step: 'error', data: { message: 'OPENAI_API_KEY is not set' } };
    return;
  }

  let decomposition: LLMDecomposition;
  try {
    const client = new OpenAI({ apiKey });
    decomposition = await decomposeImage(client, imageUrl);
  } catch (err) {
    yield { step: 'error', data: { message: err instanceof Error ? err.message : 'Decomposition failed' } };
    return;
  }

  const mealId = 'meal_1';
  yield {
    step: 'meal',
    data: {
      meal_id: mealId,
      name: decomposition.meal_name,
      confidence: decomposition.confidence,
    },
  };

  let items: ResolvedItem[] = [];
  try {
    items = await runAnalysis(decomposition);
  } catch (err) {
    yield { step: 'error', data: { message: err instanceof Error ? err.message : 'Ingredient resolution failed' } };
    return;
  }

  yield {
    step: 'items',
    data: {
      meal_id: mealId,
      items: items.map((item) => ({
        item_id: item.itemId,
        name: item.name,
        quantity: item.quantity,
        macros: item.macros,
        calorie_band: { min: item.minMacros.calories, max: item.maxMacros.calories },
        ingredients: item.ingredients.map((ing) => ({
          ingredient_id: ing.ingredientId,
          raw_name: ing.rawName,
          canonical_name: ing.canonicalName,
          fdc_id: ing.fdcId,
          match_type: ing.matchType,
          match_score: ing.matchScore,
          source: ing.source,
          grams: ing.grams,
          min_grams: ing.minGrams,
          max_grams: ing.maxGrams,
          macros: ing.macros,
        })),
      })),
    },
  };

  let variations: VariationDTO[] = [];
  try {
    variations = await buildVariations(items);
  } catch {
    variations = [];
  }

  yield {
    step: 'variations',
    data: {
      meal_id: mealId,
      variations,
    },
  };

  const mealMacros = sumMacros(items.map((i) => i.macros));
  const minTotal = sumMacros(items.map((i) => i.minMacros));
  const maxTotal = sumMacros(items.map((i) => i.maxMacros));
  const variance = analyzeVariance(minTotal, maxTotal, mealMacros);

  yield {
    step: 'result',
    data: {
      meal_id: mealId,
      macros: mealMacros,
      calorie_confidence: varianceToCalorieConfidence(variance),
      calorie_band: { min: minTotal.calories, max: maxTotal.calories },
      items: items.map((item) => ({
        item_id: item.itemId,
        name: item.name,
        quantity: item.quantity,
        macros: item.macros,
        calorie_band: { min: item.minMacros.calories, max: item.maxMacros.calories },
        ingredients: item.ingredients.map((ing) => ({
          ingredient_id: ing.ingredientId,
          raw_name: ing.rawName,
          canonical_name: ing.canonicalName,
          fdc_id: ing.fdcId,
          match_type: ing.matchType,
          match_score: ing.matchScore,
          source: ing.source,
          grams: ing.grams,
          min_grams: ing.minGrams,
          max_grams: ing.maxGrams,
          macros: ing.macros,
        })),
      })),
    },
  };
}
