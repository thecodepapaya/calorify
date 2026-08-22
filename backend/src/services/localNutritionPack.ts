import { sign } from 'node:crypto';

import type { LocalNutritionPackManifest } from '../protos/calorify/http_api.js';

export const LOCAL_NUTRITION_PACK_SCHEMA_VERSION = 1;
export const LOCAL_NUTRITION_CALCULATION_VERSION = 'local-macro-v1';

export function localNutritionManifestMetadata(
  manifest: Omit<LocalNutritionPackManifest, 'signature'>
): string {
  return [
    `local-nutrition-manifest-v${manifest.schemaVersion}`,
    manifest.packVersion,
    manifest.datasetVersion,
    manifest.objectName,
    String(manifest.sizeBytes),
    manifest.signingKeyId,
    String(manifest.createdAtEpochMs),
    String(manifest.recordCount),
    manifest.calculationVersion,
  ].join('\n');
}

export function signLocalNutritionManifest(
  manifest: Omit<LocalNutritionPackManifest, 'signature'>,
  packBytes: Buffer,
  privateKeyPem: string
): LocalNutritionPackManifest {
  const signedBytes = Buffer.concat([
    Buffer.from(`${localNutritionManifestMetadata(manifest)}\n--PACK--\n`, 'utf8'),
    packBytes,
  ]);
  const signature = sign(
    null,
    signedBytes,
    privateKeyPem
  ).toString('base64');
  return { ...manifest, signature };
}
