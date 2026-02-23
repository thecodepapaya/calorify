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
 * Extract country code from Cloudflare cf-ipcountry header.
 * 
 * @param request - Fastify request object
 * @returns 2-character country code (e.g., 'US', 'GB') or undefined
 */
export function getCountryFromRequest(request: FastifyRequest): string | undefined {
    const country = request.headers['cf-ipcountry'] || 
                   (request.headers as any)['cf-ipcountry'];
    
    if (typeof country === 'string') {
        return country;
    }
    
    return undefined;
}
