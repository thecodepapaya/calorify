import { createWriteStream, existsSync } from 'node:fs';
import { cp, mkdir, readdir } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { Readable } from 'node:stream';
import { pipeline } from 'node:stream/promises';
import { promisify } from 'node:util';
import { execFile } from 'node:child_process';
import config from '../config.js';
import { closeDatabase, initializeDatabase } from '../services/database.js';
import { runMigrations } from '../services/migrate.js';
import { runUsdaImport } from '../services/usdaImport.js';

const execFileAsync = promisify(execFile);

const USDA_ZIP_URL =
  'https://fdc.nal.usda.gov/fdc-datasets/FoodData_Central_csv_2025-12-18.zip';
const REQUIRED_FILES = ['food.csv', 'nutrient.csv', 'food_nutrient.csv'] as const;
const DEFAULT_TARGET_DIR = join(process.cwd(), 'data', 'usda');

async function downloadZip(destination: string): Promise<void> {
  const response = await fetch(USDA_ZIP_URL);
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
    const matched = REQUIRED_FILES.find((name) => file.endsWith(`/${name}`) || file.endsWith(`\\${name}`));
    if (matched) map[matched] = file;
  }
  for (const required of REQUIRED_FILES) {
    if (!map[required]) throw new Error(`Required CSV not found in ZIP: ${required}`);
  }
  return map;
}

async function extractZip(zipPath: string, extractDir: string): Promise<void> {
  if (!existsSync(zipPath)) throw new Error(`ZIP not found: ${zipPath}`);
  await execFileAsync('unzip', ['-o', zipPath, '-d', extractDir]);
}

async function stageCsvs(extractDir: string, targetDir: string): Promise<void> {
  const files = await findRequiredCsvs(extractDir);
  await mkdir(targetDir, { recursive: true });
  await Promise.all(REQUIRED_FILES.map((name) => cp(files[name], join(targetDir, name))));
}

async function main(): Promise<void> {
  if (!config.DATABASE_URL) {
    throw new Error('DATABASE_URL is not set');
  }

  const runId = Date.now().toString();
  const zipPath = join(tmpdir(), `usda_${runId}.zip`);
  const extractDir = join(tmpdir(), `usda_extract_${runId}`);
  const targetDir = process.env.USDA_DATA_DIR ?? DEFAULT_TARGET_DIR;

  console.log(`[usda:bootstrap] downloading ZIP from ${USDA_ZIP_URL}`);
  await downloadZip(zipPath);

  console.log('[usda:bootstrap] extracting ZIP');
  await extractZip(zipPath, extractDir);

  console.log(`[usda:bootstrap] staging required CSV files to ${targetDir}`);
  await stageCsvs(extractDir, targetDir);

  initializeDatabase();
  await runMigrations();

  const result = await runUsdaImport({
    datasetVersion: process.env.USDA_DATASET_VERSION ?? 'usda-2025-12-18',
    sourceReleaseDate: process.env.USDA_SOURCE_RELEASE_DATE ?? '2025-12-18',
    dataDir: targetDir,
    importSource: 'bootstrap_zip',
    makeActive: true,
  });

  console.log(
    `[usda:bootstrap] ${result.imported ? 'imported' : 'skipped'} rows=${result.rowCount} checksum=${result.checksum}${result.skippedReason ? ` reason=${result.skippedReason}` : ''}`
  );

  await closeDatabase();
}

main().catch((error) => {
  console.error(error);
  process.exit(1);
});

