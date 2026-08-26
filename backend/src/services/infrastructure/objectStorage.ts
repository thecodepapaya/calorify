import config from '../../config.js';

export interface OwnedImageObject {
  objectKey: string;
  downloadUrl: string;
}

export interface UploadedImageObject extends OwnedImageObject {
  etag?: string;
}

type OracleObjectPath = {
  namespace: string;
  bucket: string;
  objectSegments: string[];
  objectMarkerIndex: number;
};

function invalidObjectUrl(): Error {
  return new Error('Invalid or unowned image object URL');
}

function decodePathSegment(segment: string): string {
  let decoded: string;
  try {
    decoded = decodeURIComponent(segment);
  } catch {
    throw invalidObjectUrl();
  }
  if (
    !decoded ||
    decoded === '.' ||
    decoded === '..' ||
    decoded.includes('/') ||
    decoded.includes('\\') ||
    decoded.includes('\0')
  ) {
    throw invalidObjectUrl();
  }
  return decoded;
}

function parseOracleObjectPath(url: URL): OracleObjectPath {
  const segments = url.pathname.split('/').filter(Boolean).map(decodePathSegment);
  for (let index = 0; index <= segments.length - 5; index += 1) {
    if (
      segments[index] === 'n' &&
      segments[index + 2] === 'b' &&
      segments[index + 4] === 'o'
    ) {
      return {
        namespace: segments[index + 1]!,
        bucket: segments[index + 3]!,
        objectSegments: segments.slice(index + 5),
        objectMarkerIndex: index + 4,
      };
    }
  }
  throw invalidObjectUrl();
}

function configuredDownloadBase(): URL {
  let url: URL;
  try {
    url = new URL(config.ORACLE_BUCKET_DOWNLOAD_URL);
  } catch {
    throw new Error('Oracle image download URL is not configured');
  }
  if (url.protocol !== 'https:') {
    throw new Error('Oracle image download URL must use HTTPS');
  }
  parseOracleObjectPath(url);
  return url;
}

function configuredUploadBase(): URL {
  let url: URL;
  try {
    url = new URL(config.ORACLE_BUCKET_UPLOAD_URL);
  } catch {
    throw new Error('Oracle image upload URL is not configured');
  }
  if (url.protocol !== 'https:') {
    throw new Error('Oracle image upload URL must use HTTPS');
  }
  const uploadPath = parseOracleObjectPath(url);
  const downloadBase = configuredDownloadBase();
  const downloadPath = parseOracleObjectPath(downloadBase);
  if (
    url.origin !== downloadBase.origin ||
    uploadPath.namespace !== downloadPath.namespace ||
    uploadPath.bucket !== downloadPath.bucket
  ) {
    throw new Error('Oracle image upload and download URLs must target the same bucket');
  }
  return url;
}

function buildOracleObjectUrl(base: URL, objectKey: string): string {
  const basePath = parseOracleObjectPath(base);
  const objectSegments = objectKey.split('/').map(decodePathSegment);
  if (objectSegments.length < 2) throw invalidObjectUrl();

  const encodedKey = objectSegments.map(encodeURIComponent).join('/');
  const baseSegments = base.pathname.split('/').filter(Boolean);
  base.pathname = `/${baseSegments
    .slice(0, basePath.objectMarkerIndex + 1)
    .join('/')}/${encodedKey}`;
  return base.toString();
}

export function buildOracleDownloadUrl(objectKey: string): string {
  return buildOracleObjectUrl(configuredDownloadBase(), objectKey);
}

function imageTimestamp(now: Date): string {
  return now.toISOString().replace(/[-:.]/g, '');
}

function validateFirebaseUidSegment(userId: string): string {
  if (userId.length > 128) {
    throw new Error('Authenticated user ID cannot be used as an image path segment');
  }
  try {
    decodePathSegment(userId);
  } catch {
    throw new Error('Authenticated user ID cannot be used as an image path segment');
  }
  return userId;
}

export function buildMealImageObjectKey(userId: string, now: Date = new Date()): string {
  return `${validateFirebaseUidSegment(userId)}/${imageTimestamp(now)}.webp`;
}

export async function uploadMealImageToOracle(
  image: Buffer,
  userId: string,
  now: Date = new Date()
): Promise<UploadedImageObject> {
  const objectKey = buildMealImageObjectKey(userId, now);
  const uploadUrl = buildOracleObjectUrl(configuredUploadBase(), objectKey);
  const response = await fetch(uploadUrl, {
    method: 'PUT',
    headers: {
      'Content-Type': 'image/webp',
      'Content-Length': String(image.length),
      'Cache-Control': 'public, max-age=31536000, immutable',
    },
    body: Uint8Array.from(image),
    signal: AbortSignal.timeout(30_000),
  });
  if (!response.ok) {
    throw new Error(`Oracle image upload failed with status ${response.status}`);
  }
  return {
    objectKey,
    downloadUrl: buildOracleDownloadUrl(objectKey),
    etag: response.headers.get('etag') ?? undefined,
  };
}

export function resolveOwnedImageObject(imageUrl: string, userId: string): OwnedImageObject {
  let upload: URL;
  try {
    upload = new URL(imageUrl);
  } catch {
    throw invalidObjectUrl();
  }
  const downloadBase = configuredDownloadBase();
  if (
    upload.protocol !== 'https:' ||
    upload.username ||
    upload.password ||
    upload.origin !== downloadBase.origin
  ) {
    throw invalidObjectUrl();
  }

  const uploadPath = parseOracleObjectPath(upload);
  const downloadPath = parseOracleObjectPath(downloadBase);
  if (
    uploadPath.namespace !== downloadPath.namespace ||
    uploadPath.bucket !== downloadPath.bucket ||
    uploadPath.objectSegments.length < 2 ||
    uploadPath.objectSegments[0] !== userId
  ) {
    throw invalidObjectUrl();
  }

  const objectKey = uploadPath.objectSegments.join('/');
  return { objectKey, downloadUrl: buildOracleDownloadUrl(objectKey) };
}
