import { createWriteStream, existsSync } from 'node:fs';
import { cp, mkdir, mkdtemp, readdir, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { Readable } from 'node:stream';
import { pipeline } from 'node:stream/promises';
import { promisify } from 'node:util';
import { execFile } from 'node:child_process';
import { usdaQuery } from '../infrastructure/database.js';
import { runUsdaImport } from './import.js';

const execFileAsync = promisify(execFile);
const REQUIRED_FILES = ['food.csv', 'nutrient.csv', 'food_nutrient.csv'] as const;

export interface UsdaBootstrapOptions {
  zipUrl: string;
  localZipPath?: string;
  datasetVersion: string;
  sourceReleaseDate?: string;
  dataDir: string;
}

export interface UsdaBootstrapDependencies {
  extractArchive?: (zipPath: string, extractDir: string) => Promise<void>;
  importDataset?: (
    options: Parameters<typeof runUsdaImport>[0]
  ) => ReturnType<typeof runUsdaImport>;
}

async function hasActiveDataset(datasetVersion: string): Promise<boolean> {
  const result = await usdaQuery<{ count: string }>(
    `SELECT COUNT(*) AS count
       FROM usda_dataset_version
      WHERE dataset_version = $1
        AND is_active = TRUE
        AND is_materialized = TRUE`,
    [datasetVersion]
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

async function unzipArchive(zipPath: string, extractDir: string): Promise<void> {
  await execFileAsync('unzip', ['-o', zipPath, '-d', extractDir]);
}

async function extractAndStage(
  zipPath: string,
  dataDir: string,
  extractArchive: (zipPath: string, extractDir: string) => Promise<void>
): Promise<void> {
  if (!existsSync(zipPath)) throw new Error(`ZIP not found: ${zipPath}`);
  const extractDir = await mkdtemp(join(tmpdir(), 'calorify-usda-extract-'));
  try {
    await extractArchive(zipPath, extractDir);
    const files = await findRequiredCsvs(extractDir);
    await mkdir(dataDir, { recursive: true });
    await Promise.all(REQUIRED_FILES.map((name) => cp(files[name], join(dataDir, name))));
  } finally {
    await rm(extractDir, { recursive: true, force: true });
  }
}

export async function bootstrapUsdaIfNeeded(
  options: UsdaBootstrapOptions,
  dependencies: UsdaBootstrapDependencies = {}
): Promise<void> {
  if (await hasActiveDataset(options.datasetVersion)) {
    console.log('[usda:bootstrap] requested dataset already active, skipping');
    return;
  }

  await mkdir(options.dataDir, { recursive: true });
  const workspace = await mkdtemp(join(options.dataDir, '.bootstrap-'));
  const stagedDataDir = join(workspace, 'csv');
  const downloadedZip = join(workspace, 'dataset.zip');
  const zipPath = options.localZipPath ?? downloadedZip;
  const extractArchive = dependencies.extractArchive ?? unzipArchive;
  const importDataset = dependencies.importDataset ?? runUsdaImport;

  try {
    if (options.localZipPath) {
      console.log('[usda:bootstrap] using configured local ZIP');
    } else {
      console.log('[usda:bootstrap] no active dataset found, downloading configured archive');
      await downloadZip(options.zipUrl, downloadedZip);
    }

    console.log('[usda:bootstrap] staging CSVs in an isolated workspace');
    await extractAndStage(zipPath, stagedDataDir, extractArchive);

    const result = await importDataset({
      datasetVersion: options.datasetVersion,
      sourceReleaseDate: options.sourceReleaseDate,
      dataDir: stagedDataDir,
      importSource: 'startup_bootstrap',
      makeActive: true,
    });

    console.log(
      `[usda:bootstrap] ${result.imported ? 'imported' : 'skipped'} rows=${result.rowCount} checksum=${result.checksum}${result.skippedReason ? ` reason=${result.skippedReason}` : ''}`
    );
  } finally {
    await rm(workspace, { recursive: true, force: true });
  }
}
