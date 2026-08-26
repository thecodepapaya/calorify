import config from '../../config.js';
import { buildOracleDownloadUrl } from '../infrastructure/objectStorage.js';

const MAX_PACK_BYTES = 25 * 1024 * 1024;

export type LocalNutritionPackDownload =
  | { status: 304; lastModified: string }
  | { status: 200; lastModified: string; body: Buffer };

function validLastModified(value: string | null): string {
  if (!value || Number.isNaN(Date.parse(value))) {
    throw new Error('Local nutrition pack has no valid Last-Modified header');
  }
  return value;
}

export async function downloadLocalNutritionPack(
  ifModifiedSince?: string
): Promise<LocalNutritionPackDownload> {
  const objectName = config.LOCAL_INFERENCE.localNutritionPackObject;
  if (!objectName) throw new Error('Local nutrition pack is disabled');

  const headers: Record<string, string> = { accept: 'application/json' };
  if (ifModifiedSince && !Number.isNaN(Date.parse(ifModifiedSince))) {
    headers['if-modified-since'] = ifModifiedSince;
  }
  const response = await fetch(buildOracleDownloadUrl(objectName), { headers });
  const lastModified = validLastModified(response.headers.get('last-modified'));
  if (response.status === 304) return { status: 304, lastModified };
  if (!response.ok) {
    throw new Error(`Object storage returned ${response.status}`);
  }

  const declaredLength = Number(response.headers.get('content-length'));
  if (Number.isFinite(declaredLength) && declaredLength > MAX_PACK_BYTES) {
    throw new Error('Local nutrition pack exceeds the size limit');
  }
  const body = Buffer.from(await response.arrayBuffer());
  if (body.length === 0 || body.length > MAX_PACK_BYTES) {
    throw new Error('Local nutrition pack has an invalid size');
  }
  return { status: 200, lastModified, body };
}
