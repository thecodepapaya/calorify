/**
 * Maps ISO 3166-1 alpha-2 country codes to their primary UTC offset (in hours).
 * Covers the most populous countries. Unlisted codes default to UTC (0).
 *
 * For countries spanning multiple timezones, the most-populated timezone is used
 * (e.g. US → Eastern -5, CN → CST +8, RU → Moscow +3).
 */
const COUNTRY_UTC_OFFSET: Record<string, number> = {
  // UTC-12 to UTC-1
  US: -5, CA: -5, MX: -6, BR: -3, AR: -3, CL: -3, CO: -5, PE: -5, VE: -4,
  // UTC+0
  GB: 0, IE: 0, PT: 0, IS: 0, GH: 0, NG: 1, SN: 0, CI: 0, ML: 0,
  // UTC+1
  FR: 1, DE: 1, IT: 1, ES: 1, PL: 1, NL: 1, BE: 1, AT: 1, CH: 1, SE: 1,
  NO: 1, DK: 1, CZ: 1, HU: 1, SK: 1, HR: 1, RS: 1, RO: 2, BG: 2,
  // UTC+2
  ZA: 2, EG: 2, KE: 3, ET: 3, TZ: 3, UG: 3, DZ: 1, MA: 1, TN: 1, LY: 2,
  UA: 2, FI: 2, GR: 2, TR: 3, IL: 2, LB: 2, JO: 2, PS: 2,
  // UTC+3
  SA: 3, IQ: 3, SY: 3, YE: 3, OM: 4, QA: 3, KW: 3, BH: 3, AE: 4,
  RU: 3,
  // UTC+4
  AM: 4, AZ: 4, GE: 4,
  // UTC+4:30
  AF: 4.5,
  // UTC+5
  PK: 5, UZ: 5, KZ: 6, TM: 5,
  // UTC+5:30
  IN: 5.5, LK: 5.5,
  // UTC+5:45
  NP: 5.75,
  // UTC+6
  BD: 6, MM: 6.5,
  // UTC+7
  TH: 7, VN: 7, ID: 7, KH: 7, LA: 7,
  // UTC+8
  CN: 8, MY: 8, SG: 8, PH: 8, TW: 8, HK: 8, MO: 8,
  // UTC+9
  JP: 9, KR: 9, KP: 9,
  // UTC+9:30
  AU: 10, // Most Australians are on AEST (+10) or AEDT (+11); use +10 as default
  NZ: 12,
};

/**
 * Returns the UTC offset (hours) for a given country code.
 * Defaults to 0 (UTC) for unknown codes.
 */
export function getUtcOffsetForCountry(countryCode: string): number {
  return COUNTRY_UTC_OFFSET[countryCode.toUpperCase()] ?? 0;
}

/**
 * Returns all country codes whose local time falls in the 3am hour
 * (i.e. local time >= 03:00 and < 04:00) at the given UTC time.
 */
export function getCountriesAt3am(nowUtc: Date): string[] {
  const utcHour = nowUtc.getUTCHours() + nowUtc.getUTCMinutes() / 60;

  return Object.entries(COUNTRY_UTC_OFFSET)
    .filter(([, offset]) => {
      const localHour = (utcHour + offset + 24) % 24;
      return localHour >= 3 && localHour < 4;
    })
    .map(([code]) => code);
}
