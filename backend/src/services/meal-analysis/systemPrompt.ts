/**
 * Shared system prompt for food analysis across the configured LLM providers.
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
 * Validates country code. Must be 2 characters, alphabets only.
 * @param country - Raw country code from cf-ipcountry header
 * @returns Sanitized 2-character country code or undefined
 */
function validateCountry(country?: string): string | undefined {
  if (!country || typeof country !== 'string') return undefined;
  const normalized = country.trim().toUpperCase();
  // Must be exactly 2 alphabetic characters
  if (/^[A-Z]{2}$/.test(normalized)) {
    return normalized;
  }
  return undefined;
}

/**
 * Get system prompt with locale instruction for food analysis.
 * Locale is validated against a strict allowlist before interpolation.
 * @param locale - Language code (e.g., 'en', 'es', 'fr')
 * @param countryCode - 2-letter country code (e.g., 'US', 'GB', 'IN')
 * @returns System prompt string
 */
export function getFoodAnalysisSystemPrompt(locale: string = 'en', countryCode?: string): string {
  const safeLocale = validateLocale(locale);
  const safeCountry = validateCountry(countryCode);

  let countryContext = '';
  if (safeCountry) {
    countryContext = `The user is located in ${safeCountry}. Use this for local cuisine context and regional variations. `;
  }

  return `You are an expert food analysis AI. You analyze images or text. 
  Given an image or text description, you identify the food item(s) 
  and provide a detailed analysis of the food item(s). ${countryContext}All user-facing text 
  must be in ${safeLocale}. All numbers integers.`;
}
