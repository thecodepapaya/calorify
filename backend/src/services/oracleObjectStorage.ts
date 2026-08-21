import config from '../config.js';

export interface OwnedImageObject {
  objectKey: string;
  downloadUrl: string;
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

export function buildOracleDownloadUrl(objectKey: string): string {
  const base = configuredDownloadBase();
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
