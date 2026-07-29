export type ExplicitQuantityAnchor = {
  sourceText: string;
  foodText: string;
  grams: number;
  unit: 'mass' | 'volume';
};

type DensityRule = {
  pattern: RegExp;
  gramsPerMl?: number;
  gramsPerCup?: number;
};

// Food-category conversions, not food-name canonicalization. Values are
// ordinary kitchen references and are applied only when the user supplied a
// volume explicitly.
const DENSITY_RULES: DensityRule[] = [
  { pattern: /\b(?:oil|ghee)\b/i, gramsPerMl: 0.91 },
  { pattern: /\b(?:milk|yogurt|curd)\b/i, gramsPerMl: 1.03 },
  { pattern: /\b(?:water|broth|stock)\b/i, gramsPerMl: 1 },
  { pattern: /\b(?:cooked\s+)?(?:white\s+|brown\s+)?rice\b/i, gramsPerCup: 185 },
  { pattern: /\b(?:dal|lentils?|beans?|rajma|chickpeas?)\b/i, gramsPerCup: 210 },
  { pattern: /\b(?:oats?|oatmeal)\b/i, gramsPerCup: 80 },
  { pattern: /\b(?:peanut butter|hummus)\b/i, gramsPerCup: 256 },
];

function numericQuantity(raw: string): number | undefined {
  const normalized = raw.trim().toLowerCase();
  if (normalized === 'half' || normalized === 'half a' || normalized === 'half an') return 0.5;
  if (normalized === 'quarter' || normalized === 'a quarter') return 0.25;
  const value = Number(normalized);
  return Number.isFinite(value) && value > 0 ? value : undefined;
}

function boundedFoodText(raw: string): string {
  return raw
    .split(/,|\band\b|\bwith\b|\bplus\b|\bthen\b/i, 1)[0]!
    .replace(/\b(?:for|at|during)\s+(?:breakfast|lunch|dinner|snack).*$/i, '')
    .trim();
}

function densityFor(foodText: string): DensityRule | undefined {
  return DENSITY_RULES.find((rule) => rule.pattern.test(foodText));
}

function addAnchor(
  anchors: ExplicitQuantityAnchor[],
  sourceText: string,
  foodText: string,
  grams: number,
  unit: ExplicitQuantityAnchor['unit']
): void {
  if (!Number.isFinite(grams) || grams <= 0 || grams > 5000) return;
  const bounded = boundedFoodText(foodText);
  if (!bounded) return;
  anchors.push({ sourceText, foodText: bounded, grams: +grams.toFixed(1), unit });
}

export function extractExplicitQuantityAnchors(input: string): ExplicitQuantityAnchor[] {
  const anchors: ExplicitQuantityAnchor[] = [];
  const massPattern = /\b(\d+(?:\.\d+)?)\s*(kg|kilograms?|g|grams?)\b\s+(?:of\s+)?(.+?)(?=,|\band\b|\bwith\b|\bplus\b|[.;\n]|$)/gi;
  for (const match of input.matchAll(massPattern)) {
    const quantity = Number(match[1]);
    const multiplier = /^k/i.test(match[2]!) ? 1000 : 1;
    addAnchor(anchors, match[0], match[3]!, quantity * multiplier, 'mass');
  }

  const volumePattern = /\b(half(?:\s+a[n]?)?|(?:a\s+)?quarter|\d+(?:\.\d+)?)\s*(ml|millilit(?:er|re)s?|cups?|tablespoons?|tbsp|teaspoons?|tsp)\b\s+(?:of\s+)?(.+?)(?=,|\band\b|\bwith\b|\bplus\b|[.;\n]|$)/gi;
  for (const match of input.matchAll(volumePattern)) {
    const quantity = numericQuantity(match[1]!);
    if (quantity == null) continue;
    const foodText = match[3]!;
    const density = densityFor(foodText);
    if (!density) continue;
    const unit = match[2]!.toLowerCase();
    let grams: number | undefined;
    if (unit.startsWith('cup')) {
      grams = density.gramsPerCup ?? (density.gramsPerMl == null ? undefined : quantity * 240 * density.gramsPerMl);
      if (grams != null && density.gramsPerCup != null) grams *= quantity;
    } else {
      const millilitres = unit === 'ml' || unit.startsWith('millilit')
        ? quantity
        : quantity * (unit.startsWith('table') || unit === 'tbsp' ? 15 : 5);
      if (density.gramsPerMl != null) grams = millilitres * density.gramsPerMl;
    }
    if (grams != null) addAnchor(anchors, match[0], foodText, grams, 'volume');
  }
  return anchors;
}
