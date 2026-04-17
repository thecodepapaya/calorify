import test from 'node:test';
import assert from 'node:assert/strict';
import { getUtcOffsetForCountry, getCountriesAt3am } from './timezone.js';

// ---------------------------------------------------------------------------
// getUtcOffsetForCountry
// ---------------------------------------------------------------------------

test('getUtcOffsetForCountry returns 0 for unknown country code', () => {
  assert.equal(getUtcOffsetForCountry('XX'), 0);
});

test('getUtcOffsetForCountry returns 0 for empty string', () => {
  assert.equal(getUtcOffsetForCountry(''), 0);
});

test('getUtcOffsetForCountry returns 5.5 for IN (India, UTC+5:30)', () => {
  assert.equal(getUtcOffsetForCountry('IN'), 5.5);
});

test('getUtcOffsetForCountry returns -5 for US (Eastern, UTC-5)', () => {
  assert.equal(getUtcOffsetForCountry('US'), -5);
});

test('getUtcOffsetForCountry returns 0 for GB (UTC+0)', () => {
  assert.equal(getUtcOffsetForCountry('GB'), 0);
});

test('getUtcOffsetForCountry returns 9 for JP (UTC+9)', () => {
  assert.equal(getUtcOffsetForCountry('JP'), 9);
});

test('getUtcOffsetForCountry returns 1 for DE (UTC+1)', () => {
  assert.equal(getUtcOffsetForCountry('DE'), 1);
});

test('getUtcOffsetForCountry returns 10 for AU (UTC+10)', () => {
  assert.equal(getUtcOffsetForCountry('AU'), 10);
});

test('getUtcOffsetForCountry returns 5.75 for NP (Nepal, UTC+5:45)', () => {
  assert.equal(getUtcOffsetForCountry('NP'), 5.75);
});

test('getUtcOffsetForCountry returns 4.5 for AF (Afghanistan, UTC+4:30)', () => {
  assert.equal(getUtcOffsetForCountry('AF'), 4.5);
});

test('getUtcOffsetForCountry is case-insensitive (lowercase)', () => {
  assert.equal(getUtcOffsetForCountry('in'), 5.5);
});

test('getUtcOffsetForCountry is case-insensitive (mixed case)', () => {
  assert.equal(getUtcOffsetForCountry('In'), 5.5);
});

test('getUtcOffsetForCountry returns -3 for BR (UTC-3)', () => {
  assert.equal(getUtcOffsetForCountry('BR'), -3);
});

test('getUtcOffsetForCountry returns 8 for CN (China, UTC+8)', () => {
  assert.equal(getUtcOffsetForCountry('CN'), 8);
});

test('getUtcOffsetForCountry returns 3 for SA (Saudi Arabia, UTC+3)', () => {
  assert.equal(getUtcOffsetForCountry('SA'), 3);
});

// ---------------------------------------------------------------------------
// getCountriesAt3am
// ---------------------------------------------------------------------------

test('getCountriesAt3am returns an array', () => {
  assert.ok(Array.isArray(getCountriesAt3am(new Date())));
});

test('getCountriesAt3am returns countries where local time is between 3:00 and 3:59', () => {
  // At UTC 21:30, IN (UTC+5.5) → 21.5 + 5.5 = 27.0 % 24 = 3.0 → exactly 3am
  const utcDate = new Date('2024-01-01T21:30:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('IN'));
});

test('getCountriesAt3am does not include countries where local time is not 3am', () => {
  // At UTC 21:30, US (UTC-5) → 21.5 - 5 = 16.5 → 4:30pm
  const utcDate = new Date('2024-01-01T21:30:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(!result.includes('US'));
});

test('getCountriesAt3am includes multiple countries in same UTC+1 timezone at 3am', () => {
  // At UTC 02:00, UTC+1 countries (FR, DE, IT, ES) → 03:00
  const utcDate = new Date('2024-01-01T02:00:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('FR'));
  assert.ok(result.includes('DE'));
  assert.ok(result.includes('IT'));
  assert.ok(result.includes('ES'));
});

test('getCountriesAt3am handles UTC midnight wrap-around for UTC+5', () => {
  // At UTC 22:00, PK (UTC+5) → 22 + 5 = 27 % 24 = 3 → 3:00am
  const utcDate = new Date('2024-01-01T22:00:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('PK'));
});

test('getCountriesAt3am handles 3:59 as still inside the 3am window', () => {
  // At UTC 02:59, UTC+1 countries → 03:59 (still ≥3 and <4)
  const utcDate = new Date('2024-01-01T02:59:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('FR'));
});

test('getCountriesAt3am excludes countries at exactly 4:00am', () => {
  // At UTC 03:00, UTC+1 → 04:00 (not in window)
  const utcDate = new Date('2024-01-01T03:00:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(!result.includes('FR'));
});

test('getCountriesAt3am handles negative UTC offsets (Americas at 3am)', () => {
  // At UTC 08:00, US (UTC-5) → 08 - 5 = 3 → 3:00am
  const utcDate = new Date('2024-01-01T08:00:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('US'));
});

test('getCountriesAt3am handles UTC+12 (NZ) at 3am', () => {
  // At UTC 15:00, NZ (UTC+12) → 15 + 12 = 27 % 24 = 3 → 3:00am
  const utcDate = new Date('2024-01-01T15:00:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('NZ'));
});

test('getCountriesAt3am handles fractional UTC offset for IN (UTC+5.5)', () => {
  // At UTC 21:30 (21.5h), IN (UTC+5.5) → 21.5 + 5.5 = 27 % 24 = 3 → 3:00am
  const utcDate = new Date('2024-01-01T21:30:00Z');
  const result = getCountriesAt3am(utcDate);
  assert.ok(result.includes('IN'));
  // LK (Sri Lanka, UTC+5.5) should also be included
  assert.ok(result.includes('LK'));
});
