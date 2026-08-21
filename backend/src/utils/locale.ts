import { FastifyRequest } from 'fastify';
import config from '../config.js';

/**
 * Extract locale from Accept-Language header
 * Follows RFC 7231 standard for language preferences
 * 
 * @param request - Fastify request object
 * @param defaultLocale - Default locale to use if none is provided (default: 'en')
 * @returns Language code (e.g., 'en', 'es', 'fr')
 * 
 * Examples:
 * - 'en' -> 'en'
 * - 'en-US,en;q=0.9' -> 'en'
 * - 'es-ES,es;q=0.9,en;q=0.8' -> 'es'
 * - 'fr-FR,fr;q=0.9' -> 'fr'
 */
export function getLocaleFromRequest(
    request: FastifyRequest,
    defaultLocale: string = 'en'
): string {
    // Fastify normalizes headers to lowercase, but check both to be safe
    const acceptLanguage = request.headers['accept-language'] ||
        request.headers['Accept-Language'] ||
        (request.headers as any)['accept-language'];

    if (!acceptLanguage || typeof acceptLanguage !== 'string') {
        // Log for debugging (only in development/staging)
        if (config.DEBUG || config.ENVIRONMENT === 'staging') {
            console.log('[Locale] No Accept-Language header found, using default:', defaultLocale);
        }
        return defaultLocale;
    }

    // Parse Accept-Language header
    // Format: "en-US,en;q=0.9,fr;q=0.8"
    // We take the first language tag (highest priority)
    const languages = acceptLanguage
        .split(',')
        .map(lang => {
            // Extract language code (e.g., "en-US" -> "en", "fr" -> "fr")
            const parts = lang.trim().split(';')[0].trim().toLowerCase();
            // Take only the language part, ignore region (e.g., "en-us" -> "en")
            return parts.split('-')[0];
        })
        .filter(lang => lang.length > 0);

    // Return the first valid language code, or default
    return languages.length > 0 ? languages[0] : defaultLocale;
}

/**
 * Normalize a raw country code to 2-letter uppercase (A-Z) or undefined.
 */
function normalizeCountryCode(country?: string): string | undefined {
    if (!country || typeof country !== 'string') return undefined;
    const normalized = country.trim().toUpperCase();
    return /^[A-Z]{2}$/.test(normalized) ? normalized : undefined;
}

/**
 * Extract country code from request headers.
 * Prioritizes geo headers (Cloudflare/Vercel/Fly/etc), then falls back to Accept-Language region if present.
 * 
 * @param request - Fastify request object
 * @returns 2-character country code (e.g., 'US', 'GB') or undefined
 */
export function getCountryFromRequest(request: FastifyRequest): string | undefined {
    const headers = request.headers as Record<string, string | string[] | undefined>;
    const headerCandidates = [
        headers['cf-ipcountry'],
        headers['x-vercel-ip-country'],
        headers['x-fly-country'],
        headers['x-appengine-country'],
        headers['x-geo-country'],
        headers['x-country-code'],
    ];

    for (const value of headerCandidates) {
        const candidate = Array.isArray(value) ? value[0] : value;
        const normalized = normalizeCountryCode(candidate);
        if (normalized) return normalized;
    }

    const acceptLanguage = headers['accept-language'];
    const acceptLanguageStr = Array.isArray(acceptLanguage) ? acceptLanguage[0] : acceptLanguage;
    if (acceptLanguageStr) {
        const first = acceptLanguageStr.split(',')[0]?.trim();
        const region = first?.split('-')[1];
        const normalized = normalizeCountryCode(region);
        if (normalized) return normalized;
    }

    return undefined;
}

/** Extract and validate the app-provided IANA timezone identifier. */
export function getTimeZoneFromRequest(request: FastifyRequest): string | undefined {
    const raw = request.headers['x-time-zone'];
    const value = Array.isArray(raw) ? raw[0] : raw;
    if (!value || typeof value !== 'string' || value.length > 64) return undefined;

    const normalized = value.trim();
    try {
        new Intl.DateTimeFormat('en', { timeZone: normalized }).format();
        return normalized;
    } catch {
        return undefined;
    }
}
