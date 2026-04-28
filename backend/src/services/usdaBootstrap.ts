import { createWriteStream, existsSync } from 'node:fs';
import { cp, mkdir, readdir, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { Readable } from 'node:stream';
import { pipeline } from 'node:stream/promises';
import { promisify } from 'node:util';
import { execFile } from 'node:child_process';
import { query } from './database.js';
import { runUsdaImport } from './usdaImport.js';

const execFileAsync = promisify(execFile);
const REQUIRED_FILES = ['food.csv', 'nutrient.csv', 'food_nutrient.csv'] as const;

export interface UsdaBootstrapOptions {
  zipUrl: string;
  localZipPath?: string;
  datasetVersion: string;
  sourceReleaseDate?: string;
  dataDir: string;
}

async function hasActiveDataset(): Promise<boolean> {
  const result = await query<{ count: string }>(
    'SELECT COUNT(*) AS count FROM usda_dataset_version WHERE is_active = TRUE'
  );
  return Number(result.rows[0]?.count ?? 0) > 0;
}

async function downloadZip(url: string, destination: string): Promise<void> {
  const response = await fetch(url);
  if (!response.ok || !response.body) {
    throw new Error(`Failed to download USDA ZIP: ${response.status} ${response.statusText}`);
  }
  await pipeline(Readable.fromWeb(response.body as any), createWriteStream(destination));
}

async function collectFilesRecursive(root: string): Promise<string[]> {
  const output: string[] = [];
  const entries = await readdir(root, { withFileTypes: true });
  for (const entry of entries) {
    const full = join(root, entry.name);
    if (entry.isDirectory()) {
      output.push(...(await collectFilesRecursive(full)));
    } else {
      output.push(full);
    }
  }
  return output;
}

async function findRequiredCsvs(extractDir: string): Promise<Record<string, string>> {
  const allFiles = await collectFilesRecursive(extractDir);
  const map: Record<string, string> = {};
  for (const file of allFiles) {
    const matched = REQUIRED_FILES.find(
      (name) => file.endsWith(`/${name}`) || file.endsWith(`\\${name}`)
    );
    if (matched) map[matched] = file;
  }
  for (const required of REQUIRED_FILES) {
    if (!map[required]) throw new Error(`Required CSV not found in ZIP: ${required}`);
  }
  return map;
}

async function extractAndStage(zipPath: string, dataDir: string): Promise<void> {
  if (!existsSync(zipPath)) throw new Error(`ZIP not found: ${zipPath}`);
  const extractDir = join(tmpdir(), `usda_extract_${Date.now()}`);
  try {
    await execFileAsync('unzip', ['-o', zipPath, '-d', extractDir]);
    const files = await findRequiredCsvs(extractDir);
    await mkdir(dataDir, { recursive: true });
    await Promise.all(REQUIRED_FILES.map((name) => cp(files[name], join(dataDir, name))));
  } finally {
    await rm(extractDir, { recursive: true, force: true });
  }
}

export async function bootstrapUsdaIfNeeded(options: UsdaBootstrapOptions): Promise<void> {
  if (await hasActiveDataset()) {
    console.log('[usda:bootstrap] active dataset already present, skipping');
    return;
  }

  const runId = Date.now().toString();
  const downloadedZip = join(tmpdir(), `usda_${runId}.zip`);
  const zipPath = options.localZipPath ?? downloadedZip;
  const ownedZip = !options.localZipPath;

  try {
    if (options.localZipPath) {
      console.log(`[usda:bootstrap] using local ZIP at ${options.localZipPath}`);
    } else {
      console.log(`[usda:bootstrap] no active dataset found, downloading from ${options.zipUrl}`);
      await downloadZip(options.zipUrl, downloadedZip);
    }

    console.log(`[usda:bootstrap] staging CSVs to ${options.dataDir}`);
    await extractAndStage(zipPath, options.dataDir);

    const result = await runUsdaImport({
      datasetVersion: options.datasetVersion,
      sourceReleaseDate: options.sourceReleaseDate,
      dataDir: options.dataDir,
      importSource: 'startup_bootstrap',
      makeActive: true,
    });

    console.log(
      `[usda:bootstrap] ${result.imported ? 'imported' : 'skipped'} rows=${result.rowCount} checksum=${result.checksum}${result.skippedReason ? ` reason=${result.skippedReason}` : ''}`
    );
  } finally {
    if (ownedZip) {
      await rm(downloadedZip, { force: true });
    }
  }
}
