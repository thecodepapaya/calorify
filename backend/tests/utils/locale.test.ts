import test from 'node:test';
import assert from 'node:assert/strict';

const { getLocaleFromRequest, getCountryFromRequest, getTimeZoneFromRequest } =
  await import('../../src/utils/locale.js');
import type { FastifyRequest } from 'fastify';

function makeRequest(headers: Record<string, string | string[] | undefined> = {}): FastifyRequest {
  return { headers } as unknown as FastifyRequest;
}

// ---------------------------------------------------------------------------
// getLocaleFromRequest
// ---------------------------------------------------------------------------

test('getLocaleFromRequest returns default locale when no Accept-Language header', () => {
  assert.equal(getLocaleFromRequest(makeRequest({})), 'en');
});

test('getLocaleFromRequest returns custom default locale when no header present', () => {
  assert.equal(getLocaleFromRequest(makeRequest({}), 'fr'), 'fr');
});

test('getLocaleFromRequest parses simple language code', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': 'fr' })), 'fr');
});

test('getLocaleFromRequest strips region from language-region code', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': 'en-US' })), 'en');
});

test('getLocaleFromRequest parses full header with q-values, returns first', () => {
  assert.equal(
    getLocaleFromRequest(makeRequest({ 'accept-language': 'en-US,en;q=0.9,fr;q=0.8' })),
    'en'
  );
});

test('getLocaleFromRequest returns first language when multiple are listed', () => {
  assert.equal(
    getLocaleFromRequest(makeRequest({ 'accept-language': 'es-ES,es;q=0.9,en;q=0.8' })),
    'es'
  );
});

test('getLocaleFromRequest handles French regional variant', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': 'fr-FR,fr;q=0.9' })), 'fr');
});

test('getLocaleFromRequest handles Hindi locale', () => {
  assert.equal(
    getLocaleFromRequest(makeRequest({ 'accept-language': 'hi-IN,hi;q=0.9,en;q=0.8' })),
    'hi'
  );
});

test('getLocaleFromRequest handles Japanese locale', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': 'ja-JP' })), 'ja');
});

test('getLocaleFromRequest normalizes to lowercase', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': 'EN-US' })), 'en');
});

test('getLocaleFromRequest falls back for wildcard or malformed values', () => {
  assert.equal(getLocaleFromRequest(makeRequest({ 'accept-language': '*' })), 'en');
  assert.equal(
    getLocaleFromRequest(makeRequest({
      'accept-language': 'PRIVATE_MEAL_OR_CREDENTIAL_MARKER',
    })),
    'en'
  );
});

test('getLocaleFromRequest bounds defaults and array-valued headers', () => {
  assert.equal(getLocaleFromRequest(makeRequest({}), 'PRIVATE_DEFAULT'), 'en');
  assert.equal(
    getLocaleFromRequest(makeRequest({ 'accept-language': ['PT-BR', 'en-US'] })),
    'pt'
  );
});

// ---------------------------------------------------------------------------
// getCountryFromRequest
// ---------------------------------------------------------------------------

test('getCountryFromRequest returns undefined when no geo headers', () => {
  assert.equal(getCountryFromRequest(makeRequest({})), undefined);
});

test('getCountryFromRequest reads cf-ipcountry header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': 'US' })), 'US');
});

test('getCountryFromRequest reads x-vercel-ip-country header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'x-vercel-ip-country': 'GB' })), 'GB');
});

test('getCountryFromRequest reads x-fly-country header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'x-fly-country': 'DE' })), 'DE');
});

test('getCountryFromRequest reads x-appengine-country header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'x-appengine-country': 'IN' })), 'IN');
});

test('getCountryFromRequest reads x-geo-country header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'x-geo-country': 'FR' })), 'FR');
});

test('getCountryFromRequest reads x-country-code header', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'x-country-code': 'JP' })), 'JP');
});

test('getCountryFromRequest normalizes lowercase to uppercase', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': 'us' })), 'US');
});

test('getCountryFromRequest prefers geo headers over Accept-Language region', () => {
  assert.equal(
    getCountryFromRequest(makeRequest({ 'cf-ipcountry': 'DE', 'accept-language': 'en-US' })),
    'DE'
  );
});

test('getCountryFromRequest falls back to Accept-Language region when no geo header', () => {
  assert.equal(
    getCountryFromRequest(makeRequest({ 'accept-language': 'en-US,en;q=0.9' })),
    'US'
  );
});

test('getCountryFromRequest returns undefined for Accept-Language without region', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'accept-language': 'en' })), undefined);
});

test('getCountryFromRequest rejects country code with more than 2 chars', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': 'USA' })), undefined);
});

test('getCountryFromRequest rejects numeric country code', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': '12' })), undefined);
});

test('getCountryFromRequest handles array header value by taking first element', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': ['AU', 'US'] })), 'AU');
});

test('getCountryFromRequest returns undefined for empty string country code', () => {
  assert.equal(getCountryFromRequest(makeRequest({ 'cf-ipcountry': '' })), undefined);
});

test('getTimeZoneFromRequest accepts an IANA timezone', () => {
  assert.equal(
    getTimeZoneFromRequest(makeRequest({ 'x-time-zone': 'Asia/Kolkata' })),
    'Asia/Kolkata'
  );
});

test('getTimeZoneFromRequest rejects invalid timezone identifiers', () => {
  assert.equal(
    getTimeZoneFromRequest(makeRequest({ 'x-time-zone': 'Not/A_Zone' })),
    undefined
  );
});
