// Locale-aware label resolver for portion clarifications.
//
// Templates ([portionTemplates.ts]) carry stable IDs and gram values only.
// All user-facing strings (option labels, "≈ 35g each" detail, size question,
// count question) are produced here, keyed by locale so we can add new
// translations by extending the dictionaries below — no template edits needed.
//
// The default locale is `'en'`. Unknown locales fall through to English
// defaults so unsupported markets still get usable copy.

import { PortionKind } from '../protos/calorify/meal_analysis_pipeline.js';

type Locale = string;

// Per-template, per-option labels. Outer key is the template key (e.g. 'roti',
// 'rice_cooked'); inner key is the optionId. Add new locales by adding entries
// under that locale's record.
type LabelDictionary = Record<string, Record<string, string>>;

const EN_LABELS: LabelDictionary = {
  // COUNT-kind templates
  roti: { thin: 'Thin', regular: 'Regular', thick: 'Thick' },
  bread_slice: { thin: 'Thin slice', regular: 'Regular slice', thick: 'Thick slice' },
  egg: { small: 'Small', medium: 'Medium', large: 'Large' },
  banana: { small: 'Small', medium: 'Medium', large: 'Large' },
  idli: { small: 'Small', regular: 'Regular', large: 'Large' },
  dosa: { small: 'Small', regular: 'Regular', large: 'Large' },
  paratha: { thin: 'Thin', regular: 'Regular', stuffed: 'Stuffed/large' },
  samosa: { mini: 'Mini', regular: 'Regular', large: 'Large' },
  pancake: { small: 'Small', regular: 'Regular', large: 'Large' },
  // BULK-kind templates
  rice_cooked: { small: 'Small bowl', regular: 'Regular bowl', large: 'Large bowl' },
  dal_cooked: { small: 'Small bowl', regular: 'Regular bowl', large: 'Large bowl' },
  curry: { small: 'Small bowl', regular: 'Regular bowl', large: 'Large bowl' },
  sabzi: { small: 'Small portion', regular: 'Regular portion', large: 'Large portion' },
  paneer_curry: { small: 'Small bowl', regular: 'Regular bowl', large: 'Large bowl' },
  yogurt: { small: 'Small cup', regular: 'Regular cup', large: 'Large cup' },
  milk: { small: 'Small glass', regular: 'Regular glass', large: 'Large glass' },
  cereal: { small: 'Small bowl', regular: 'Regular bowl', large: 'Large bowl' },
  oil: { small: 'Light drizzle', regular: 'Regular', heavy: 'Generous' },
  butter: { small: 'Light spread', regular: 'Regular', heavy: 'Generous' },
};

// Generic labels for synthesized fallback templates (unknown foods). Keyed by
// "fallback_count_<optionId>" / "fallback_bulk_<optionId>". The fallback
// always uses optionIds 'smaller' / 'typical' / 'larger'.
const EN_FALLBACK_LABELS: Record<string, string> = {
  fallback_count_smaller: 'Smaller',
  fallback_count_typical: 'Typical',
  fallback_count_larger: 'Larger',
  fallback_bulk_smaller: 'Smaller portion',
  fallback_bulk_typical: 'Typical portion',
  fallback_bulk_larger: 'Larger portion',
};

const LOCALE_LABELS: Record<Locale, LabelDictionary> = {
  en: EN_LABELS,
};

const LOCALE_FALLBACK_LABELS: Record<Locale, Record<string, string>> = {
  en: EN_FALLBACK_LABELS,
};

/**
 * Resolve a localized option label for a static template.
 * Falls through to English defaults when the locale or key is unknown so
 * users in unsupported markets still get readable copy.
 */
export function localizeOptionLabel(
  templateKey: string,
  optionId: string,
  locale: Locale,
): string {
  const localeLabels = LOCALE_LABELS[normalizeLocale(locale)] ?? LOCALE_LABELS.en;
  const englishLabels = LOCALE_LABELS.en!;
  const fromLocale = localeLabels[templateKey]?.[optionId];
  if (fromLocale) return fromLocale;
  const fromEnglish = englishLabels[templateKey]?.[optionId];
  if (fromEnglish) return fromEnglish;
  // Last-resort: return the optionId itself capitalized.
  return optionId.charAt(0).toUpperCase() + optionId.slice(1);
}

/**
 * Resolve a localized label for a synthesized fallback option (unknown food).
 * Used when no static template matches. `kind` distinguishes count-style
 * ("Smaller / Typical / Larger") from bulk-style ("Smaller portion / ...").
 */
export function localizeFallbackOptionLabel(
  optionId: string,
  kind: PortionKind,
  locale: Locale,
): string {
  const localeLabels = LOCALE_FALLBACK_LABELS[normalizeLocale(locale)] ?? LOCALE_FALLBACK_LABELS.en;
  const englishLabels = LOCALE_FALLBACK_LABELS.en!;
  const prefix = kind === PortionKind.COUNT ? 'fallback_count' : 'fallback_bulk';
  const key = `${prefix}_${optionId}`;
  return localeLabels[key] ?? englishLabels[key] ?? optionId;
}

/**
 * Detail text shown beneath each option for COUNT-kind clarifications, e.g.
 * "≈ 35g each". Kept localizable in case future locales prefer different
 * units, glyph spacing, or wording.
 */
export function localizeOptionDetail(
  perUnitGrams: number,
  kind: PortionKind,
  locale: Locale,
): string | undefined {
  if (kind !== PortionKind.COUNT) return undefined;
  const grams = Math.round(perUnitGrams);
  switch (normalizeLocale(locale)) {
    case 'hi':
      return `~${grams}g प्रति`;
    default:
      return `~ ${grams}g each`;
  }
}

/**
 * The size-clarification question text. For COUNT, includes the count to
 * make the multiplication explicit ("How big were each of your 4 rotis?").
 */
export function localizeSizeQuestion(
  rawName: string,
  count: number | null,
  kind: PortionKind,
  locale: Locale,
): string {
  const trimmedName = rawName.trim() || 'this';
  const countLabel = count != null ? formatCount(count) : '';
  switch (normalizeLocale(locale)) {
    case 'hi':
      return kind === PortionKind.COUNT
        ? `आपकी ${countLabel} ${trimmedName} कितनी बड़ी थीं?`
        : `कितना ${trimmedName}?`;
    default:
      return kind === PortionKind.COUNT
        ? `How big were each of your ${countLabel} ${trimmedName}?`
        : `How much ${trimmedName}?`;
  }
}

/**
 * Question text used when the LLM did not extract a count from user input.
 */
export function localizeCountQuestion(rawName: string, locale: Locale): string {
  const trimmedName = rawName.trim() || 'this';
  switch (normalizeLocale(locale)) {
    case 'hi':
      return `कितने ${trimmedName}?`;
    default:
      return `How many ${trimmedName}?`;
  }
}

/**
 * Localized label for the "6 or more" count option.
 */
export function localizeCountOptionLabel(rawId: string, locale: Locale): string {
  if (rawId === '6plus') {
    switch (normalizeLocale(locale)) {
      case 'hi':
        return '6 या अधिक';
      default:
        return '6 or more';
    }
  }
  return rawId;
}

function formatCount(count: number): string {
  // Preserve halves and other small fractions; otherwise integer.
  if (Number.isInteger(count)) return String(count);
  return count.toFixed(1).replace(/\.0$/, '');
}

function normalizeLocale(locale: Locale): Locale {
  if (!locale) return 'en';
  const lower = locale.toLowerCase();
  // Accept both "en" and "en-US", "hi-IN", etc.
  return lower.split(/[-_]/)[0] ?? 'en';
}
