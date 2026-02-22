/**
 * Shared system prompt for food analysis (OpenAI and Gemini).
 * Single source of truth for schema and rules.
 */

/**
 * Allowlist of supported locale codes (lowercase). Used to prevent prompt injection via locale.
 * Must match app locales in shared_packages/i18n (AppLocale in strings.g.dart). zh covers zh-CN/zh-TW.
 */
const SUPPORTED_LOCALES = new Set([
  'ar', 'bn', 'cs', 'da', 'de', 'el', 'en', 'es', 'fi', 'fr', 'gu', 'he', 'hi',
  'hu', 'id', 'it', 'ja', 'ko', 'ms', 'nl', 'no', 'pl', 'pt', 'ro', 'ru', 'sv',
  'te', 'th', 'tl', 'tr', 'uk', 'ur', 'vi', 'zh',
]);

const DEFAULT_LOCALE = 'en';

/**
 * Validates and normalizes locale against the allowlist. Prevents prompt injection.
 * @param locale - Raw locale input (e.g., from Accept-Language)
 * @returns Normalized locale from allowlist, or DEFAULT_LOCALE if invalid
 */
function validateLocale(locale: string): string {
  const normalized = (locale ?? '').trim().toLowerCase();
  if (!normalized) return DEFAULT_LOCALE;
  return SUPPORTED_LOCALES.has(normalized) ? normalized : DEFAULT_LOCALE;
}

/**
 * Get system prompt with locale instruction for food analysis.
 * Locale is validated against a strict allowlist before interpolation.
 * @param locale - Language code (e.g., 'en', 'es', 'fr')
 * @returns System prompt string
 */
export function getFoodAnalysisSystemPrompt(locale: string = 'en'): string {
  const safeLocale = validateLocale(locale);
  return `You are an expert food analysis AI. You analyze images or text. 
  Given an image or text description, you identify the food item(s) 
  and provide a detailed analysis of the food item(s). All user-facing text 
  must be in ${safeLocale}. All numbers integers.`;
}
