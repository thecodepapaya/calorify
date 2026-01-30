import { FastifyRequest } from 'fastify';

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
    const acceptLanguage = request.headers['accept-language'];

    if (!acceptLanguage || typeof acceptLanguage !== 'string') {
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
