/**
 * Shared text normalization used by the two-pass interpretation pipeline.
 *
 * `normalized` is the production identity form: NFKC + locale-aware
 * lowercase. It preserves non-Latin scripts so that meal item names such as
 * 味噌汁 or 계란 remain distinct and matchable across passes.
 *
 * `matchableText` additionally folds to a Latin-centric skeleton for
 * substring matching against expected aliases: it strips accents
 * (café -> cafe), drops combining marks, and reduces every remaining
 * non-alphanumeric run to a single space. Both sides of a comparison must
 * pass through this function; never compare a raw string against a
 * matchable one.
 */

export function normalized(value: string): string {
  return value.normalize('NFKC').trim().toLocaleLowerCase();
}

export function matchableText(value: string): string {
  return normalized(value)
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .replace(/[^a-z0-9]+/g, ' ')
    .trim();
}
