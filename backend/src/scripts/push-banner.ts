/**
 * Push Banner documents to Firestore (`app_config/banners/{docId}`).
 *
 * Usage (from backend/): npm run push-banner | npm run push-banner -- --dry-run
 */

import { getApps, initializeApp } from 'firebase-admin/app';
import { getFirestore } from 'firebase-admin/firestore';
import { readdir } from 'node:fs/promises';
import { basename, join } from 'node:path';
import { createInterface } from 'node:readline/promises';
import { stdin as input, stdout as output } from 'node:process';

const COLLECTION_PATH = 'app_config/banners';

const BANNER_OPEN_LOWER_INCLUSIVE = 0;
const BANNER_OPEN_UPPER_EXCLUSIVE = 2_147_483_647;

export type PriorityWire = 'LOW' | 'MEDIUM' | 'HIGH';

export type BannerWire = {
  enabled: boolean;
  messagesByLocale: Record<string, string>;
  priority: PriorityWire;
  dismissible: boolean;
  linkUrl?: string;
  minimumBuildInclusive: number;
  maximumBuildExclusive: number;
};

function bannerWire(fields: {
  enabled: boolean;
  messagesByLocale: Record<string, string>;
  priority: PriorityWire;
  dismissible: boolean;
  linkUrl?: string;
  minimumBuildInclusive?: number;
  maximumBuildExclusive?: number;
}): BannerWire {
  return {
    enabled: fields.enabled,
    messagesByLocale: fields.messagesByLocale,
    priority: fields.priority,
    dismissible: fields.dismissible,
    minimumBuildInclusive: fields.minimumBuildInclusive ?? BANNER_OPEN_LOWER_INCLUSIVE,
    maximumBuildExclusive: fields.maximumBuildExclusive ?? BANNER_OPEN_UPPER_EXCLUSIVE,
    ...(fields.linkUrl ? { linkUrl: fields.linkUrl } : {}),
  };
}

function repoRoot(): string {
  return join(import.meta.dirname, '../../..');
}

async function discoverLocaleTags(): Promise<string[]> {
  const dir = join(repoRoot(), 'shared_packages/i18n/lib/i18n');
  const entries = await readdir(dir);
  return entries
    .filter((f) => f.endsWith('.i18n.json'))
    .map((f) => basename(f, '.i18n.json'))
    .sort((a, b) => {
      if (a === 'en') return -1;
      if (b === 'en') return 1;
      return a.localeCompare(b);
    });
}

async function askYesNo(
  rl: ReturnType<typeof createInterface>,
  question: string,
  defaultYes = true
): Promise<boolean> {
  const hint = defaultYes ? 'Y/n' : 'y/N';
  const ans = (await rl.question(`${question} (${hint}) `)).trim().toLowerCase();
  if (ans === '') return defaultYes;
  return ans === 'y' || ans === 'yes';
}

async function askLine(
  rl: ReturnType<typeof createInterface>,
  question: string,
  optional: boolean
): Promise<string | undefined> {
  const ans = (await rl.question(question)).trim();
  if (ans === '' && optional) return undefined;
  return ans === '' ? undefined : ans;
}

function parsePriorityInput(s: string): PriorityWire {
  const u = s.trim().toUpperCase().replace(/\s+/g, '_');
  const map: Record<string, PriorityWire> = {
    '': 'LOW',
    '0': 'LOW',
    '1': 'MEDIUM',
    '2': 'HIGH',
    LOW: 'LOW',
    MEDIUM: 'MEDIUM',
    HIGH: 'HIGH',
  };
  const v = map[u];
  if (v) return v;
  throw new Error(`Invalid priority "${s}". Use 0–2 or LOW / MEDIUM / HIGH.`);
}

async function askOptionalInclusiveMin(
  rl: ReturnType<typeof createInterface>
): Promise<number | undefined> {
  const raw = await askLine(
    rl,
    'Minimum build inclusive (empty = no lower bound): ',
    true
  );
  if (raw === undefined || raw.trim() === '') return undefined;
  const n = Number.parseInt(raw.trim(), 10);
  if (!Number.isFinite(n) || n < 0) throw new Error(`Invalid minimum build: "${raw}"`);
  return n;
}

async function askOptionalExclusiveMax(
  rl: ReturnType<typeof createInterface>
): Promise<number | undefined> {
  const raw = await askLine(
    rl,
    'Maximum build exclusive (empty = no upper bound): ',
    true
  );
  if (raw === undefined || raw.trim() === '') return undefined;
  const n = Number.parseInt(raw.trim(), 10);
  if (!Number.isFinite(n) || n < 0) throw new Error(`Invalid maximum build: "${raw}"`);
  return n;
}

export async function buildPayloadInteractive(
  rl: ReturnType<typeof createInterface>
): Promise<{ docId: string; payload: BannerWire }> {
  const locales = await discoverLocaleTags();
  if (!locales.includes('en')) {
    throw new Error('Expected en.i18n.json.');
  }

  const docIdRaw = await askLine(
    rl,
    `Document id under ${COLLECTION_PATH} (default "default"): `,
    true
  );
  const docId = docIdRaw?.trim() || 'default';

  const enabled = await askYesNo(rl, 'Enable banner?', true);
  const priority = parsePriorityInput((await askLine(rl, 'Priority [0=LOW, 1=MEDIUM, 2=HIGH] (default 0): ', true)) ?? '');
  const dismissible = await askYesNo(rl, 'Dismissible?', true);
  const linkUrl = await askLine(rl, 'Optional link URL: ', true);

  const minimumBuildInclusive = await askOptionalInclusiveMin(rl);
  const maximumBuildExclusive = await askOptionalExclusiveMax(rl);
  if (
    minimumBuildInclusive !== undefined &&
    maximumBuildExclusive !== undefined &&
    minimumBuildInclusive >= maximumBuildExclusive
  ) {
    throw new Error(`minimum (${minimumBuildInclusive}) must be < maximum (${maximumBuildExclusive}).`);
  }

  const messagesByLocale: Record<string, string> = {};

  if (!enabled) {
    const skipMessages = await askYesNo(
      rl,
      'Banner disabled — skip message prompts?',
      true
    );
    if (skipMessages) {
      return {
        docId,
        payload: bannerWire({
          enabled: false,
          messagesByLocale,
          priority,
          dismissible,
          minimumBuildInclusive,
          maximumBuildExclusive,
          ...(linkUrl ? { linkUrl } : {}),
        }),
      };
    }
  }

  const enMsg = await rl.question('English (en) banner message: ');
  const trimmedEn = enMsg.trim();
  if (enabled && trimmedEn === '') throw new Error('When enabled, English message is required.');
  if (trimmedEn !== '') messagesByLocale.en = trimmedEn;

  const others = locales.filter((l) => l !== 'en');
  const copyAll =
    others.length > 0
      ? await askYesNo(rl, `Copy English to all ${others.length} other locale(s)?`, true)
      : false;

  if (copyAll && trimmedEn !== '') {
    for (const loc of others) {
      messagesByLocale[loc] = trimmedEn;
    }
  } else if (!copyAll && others.length > 0) {
    for (const loc of others) {
      const line = await askLine(rl, `Message [${loc}] (empty = omit): `, true);
      const t = line?.trim();
      if (t) messagesByLocale[loc] = t;
    }
  }

  return {
    docId,
    payload: bannerWire({
      enabled,
      messagesByLocale,
      priority,
      dismissible,
      minimumBuildInclusive,
      maximumBuildExclusive,
      ...(linkUrl ? { linkUrl } : {}),
    }),
  };
}

async function main(): Promise<void> {
  const dryRun = process.argv.includes('--dry-run');
  const rl = createInterface({ input, output });

  try {
    const { docId, payload } = await buildPayloadInteractive(rl);

    if (dryRun) {
      console.log(JSON.stringify({ ...payload, createdAt: Date.now() }, null, 2));
      return;
    }

    if (!(await askYesNo(rl, '\nWrite to Firestore?', false))) {
      console.log('Aborted.');
      return;
    }

    if (!getApps().length) initializeApp();

    const path = `${COLLECTION_PATH}/${docId}`;
    const written = { ...payload, createdAt: Date.now() };
    await getFirestore().doc(path).set(written);
    console.log(`Written ${path}`);
  } finally {
    rl.close();
  }
}

main().catch((e) => {
  console.error(e);
  process.exit(1);
});
