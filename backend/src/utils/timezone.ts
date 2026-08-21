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

/** Representative IANA zone used only for legacy sessions without a device zone. */
const COUNTRY_PRIMARY_TIME_ZONE: Record<string, string> = {
  US: 'America/New_York', CA: 'America/Toronto', MX: 'America/Mexico_City',
  BR: 'America/Sao_Paulo', AR: 'America/Argentina/Buenos_Aires', CL: 'America/Santiago',
  CO: 'America/Bogota', PE: 'America/Lima', VE: 'America/Caracas',
  GB: 'Europe/London', IE: 'Europe/Dublin', PT: 'Europe/Lisbon', IS: 'Atlantic/Reykjavik',
  GH: 'Africa/Accra', NG: 'Africa/Lagos', SN: 'Africa/Dakar', CI: 'Africa/Abidjan', ML: 'Africa/Bamako',
  FR: 'Europe/Paris', DE: 'Europe/Berlin', IT: 'Europe/Rome', ES: 'Europe/Madrid',
  PL: 'Europe/Warsaw', NL: 'Europe/Amsterdam', BE: 'Europe/Brussels', AT: 'Europe/Vienna',
  CH: 'Europe/Zurich', SE: 'Europe/Stockholm', NO: 'Europe/Oslo', DK: 'Europe/Copenhagen',
  CZ: 'Europe/Prague', HU: 'Europe/Budapest', SK: 'Europe/Bratislava', HR: 'Europe/Zagreb',
  RS: 'Europe/Belgrade', RO: 'Europe/Bucharest', BG: 'Europe/Sofia',
  ZA: 'Africa/Johannesburg', EG: 'Africa/Cairo', KE: 'Africa/Nairobi', ET: 'Africa/Addis_Ababa',
  TZ: 'Africa/Dar_es_Salaam', UG: 'Africa/Kampala', DZ: 'Africa/Algiers', MA: 'Africa/Casablanca',
  TN: 'Africa/Tunis', LY: 'Africa/Tripoli', UA: 'Europe/Kyiv', FI: 'Europe/Helsinki',
  GR: 'Europe/Athens', TR: 'Europe/Istanbul', IL: 'Asia/Jerusalem', LB: 'Asia/Beirut',
  JO: 'Asia/Amman', PS: 'Asia/Gaza', SA: 'Asia/Riyadh', IQ: 'Asia/Baghdad', SY: 'Asia/Damascus',
  YE: 'Asia/Aden', OM: 'Asia/Muscat', QA: 'Asia/Qatar', KW: 'Asia/Kuwait', BH: 'Asia/Bahrain',
  AE: 'Asia/Dubai', RU: 'Europe/Moscow', AM: 'Asia/Yerevan', AZ: 'Asia/Baku', GE: 'Asia/Tbilisi',
  AF: 'Asia/Kabul', PK: 'Asia/Karachi', UZ: 'Asia/Tashkent', KZ: 'Asia/Almaty', TM: 'Asia/Ashgabat',
  IN: 'Asia/Kolkata', LK: 'Asia/Colombo', NP: 'Asia/Kathmandu', BD: 'Asia/Dhaka', MM: 'Asia/Yangon',
  TH: 'Asia/Bangkok', VN: 'Asia/Ho_Chi_Minh', ID: 'Asia/Jakarta', KH: 'Asia/Phnom_Penh',
  LA: 'Asia/Vientiane', CN: 'Asia/Shanghai', MY: 'Asia/Kuala_Lumpur', SG: 'Asia/Singapore',
  PH: 'Asia/Manila', TW: 'Asia/Taipei', HK: 'Asia/Hong_Kong', MO: 'Asia/Macau',
  JP: 'Asia/Tokyo', KR: 'Asia/Seoul', KP: 'Asia/Pyongyang', AU: 'Australia/Sydney',
  NZ: 'Pacific/Auckland',
};

export function isValidTimeZone(timeZone: string | undefined): timeZone is string {
  if (!timeZone) return false;
  try {
    new Intl.DateTimeFormat('en', { timeZone }).format();
    return true;
  } catch {
    return false;
  }
}

export function resolveTimeZone(timeZone?: string, countryCode?: string): string {
  if (isValidTimeZone(timeZone)) return timeZone;
  return COUNTRY_PRIMARY_TIME_ZONE[countryCode?.toUpperCase() ?? ''] ?? 'UTC';
}

function localMinuteOfDay(now: Date, timeZone: string): number {
  const parts = new Intl.DateTimeFormat('en-GB', {
    timeZone,
    hour: '2-digit',
    minute: '2-digit',
    hourCycle: 'h23',
  }).formatToParts(now);
  const hour = Number(parts.find((part) => part.type === 'hour')?.value ?? 0);
  const minute = Number(parts.find((part) => part.type === 'minute')?.value ?? 0);
  return hour * 60 + minute;
}

export function calendarDateInTimeZone(date: Date, timeZone: string): string {
  const parts = new Intl.DateTimeFormat('en-CA', {
    timeZone: resolveTimeZone(timeZone),
    year: 'numeric',
    month: '2-digit',
    day: '2-digit',
  }).formatToParts(date);
  const value = (type: string) =>
    parts.find((part) => part.type === type)?.value ?? '';
  return `${value('year')}-${value('month')}-${value('day')}`;
}

export function isTimeZoneNear3am(
  now: Date,
  timeZone: string,
  plusMinusMinutes: number = DEFAULT_THREE_AM_PLUS_MINUS_MINUTES
): boolean {
  const localMinute = localMinuteOfDay(now, resolveTimeZone(timeZone));
  return localMinute >= 180 - plusMinusMinutes && localMinute < 180 + plusMinusMinutes;
}

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
  return Object.entries(COUNTRY_PRIMARY_TIME_ZONE)
    .filter(([, timeZone]) => {
      const minute = localMinuteOfDay(nowUtc, timeZone);
      return minute >= 180 && minute < 240;
    })
    .map(([code]) => code);
}

/** Default margin around local 03:00 for summaries (see {@link getCountriesNear3am}). */
export const DEFAULT_THREE_AM_PLUS_MINUS_MINUTES = 30;

/**
 * Countries whose representative IANA zone has a local civil time in
 * **[03:00 − m, 03:00 + m)** (half-open interval). For example, `m = 30`
 * means **02:30 inclusive through 03:30 exclusive**.
 *
 * With hourly cron ticks and a one-hour window, each zone matches at most one
 * tick per local night. IANA rules account for daylight-saving transitions.
 */
export function getCountriesNear3am(
  nowUtc: Date,
  plusMinusMinutes: number = DEFAULT_THREE_AM_PLUS_MINUS_MINUTES
): string[] {
  return Object.entries(COUNTRY_PRIMARY_TIME_ZONE)
    .filter(([, timeZone]) => isTimeZoneNear3am(nowUtc, timeZone, plusMinusMinutes))
    .map(([code]) => code);
}
