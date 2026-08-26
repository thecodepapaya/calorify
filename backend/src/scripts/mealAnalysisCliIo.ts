import { createHash } from 'node:crypto';
import { readFile, stat } from 'node:fs/promises';
import type {
  StageObservation,
  StageObserver,
} from '../services/meal-analysis-v3/observability.js';

export const MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES = 10 * 1024 * 1024;

export type MealAnalysisCliImageMediaType =
  | 'image/jpeg'
  | 'image/png'
  | 'image/webp';

export interface MealAnalysisCliImageDescriptor {
  mediaType: MealAnalysisCliImageMediaType;
  byteLength: number;
  sha256: string;
}

export interface LoadedMealAnalysisCliImage {
  bytes: Buffer;
  mediaType: MealAnalysisCliImageMediaType;
  descriptor: MealAnalysisCliImageDescriptor;
}

export interface MealAnalysisCliTextOutput {
  write(chunk: string): unknown;
}

export class MealAnalysisCliInputError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'MealAnalysisCliInputError';
  }
}

function ascii(bytes: Buffer, offset: number, length: number): string {
  return bytes.toString('ascii', offset, offset + length);
}

function isJpeg(bytes: Buffer): boolean {
  return (
    bytes.length >= 4 &&
    bytes[0] === 0xff &&
    bytes[1] === 0xd8 &&
    bytes[2] === 0xff &&
    bytes[bytes.length - 2] === 0xff &&
    bytes[bytes.length - 1] === 0xd9
  );
}

function isPng(bytes: Buffer): boolean {
  const signature = Buffer.from([0x89, 0x50, 0x4e, 0x47, 0x0d, 0x0a, 0x1a, 0x0a]);
  return (
    bytes.length >= 24 &&
    bytes.subarray(0, signature.length).equals(signature) &&
    bytes.readUInt32BE(8) === 13 &&
    ascii(bytes, 12, 4) === 'IHDR' &&
    bytes.readUInt32BE(16) > 0 &&
    bytes.readUInt32BE(20) > 0
  );
}

function isWebp(bytes: Buffer): boolean {
  if (
    bytes.length < 20 ||
    ascii(bytes, 0, 4) !== 'RIFF' ||
    ascii(bytes, 8, 4) !== 'WEBP' ||
    bytes.readUInt32LE(4) !== bytes.length - 8
  ) {
    return false;
  }

  const chunkType = ascii(bytes, 12, 4);
  if (!['VP8 ', 'VP8L', 'VP8X'].includes(chunkType)) return false;
  const chunkLength = bytes.readUInt32LE(16);
  return chunkLength > 0 && 20 + chunkLength + (chunkLength & 1) <= bytes.length;
}

function detectImageMediaType(bytes: Buffer): MealAnalysisCliImageMediaType {
  if (isJpeg(bytes)) return 'image/jpeg';
  if (isPng(bytes)) return 'image/png';
  if (isWebp(bytes)) return 'image/webp';
  throw new MealAnalysisCliInputError(
    'Image must be a valid JPEG, PNG, or WebP file'
  );
}

function imageLengthError(): MealAnalysisCliInputError {
  return new MealAnalysisCliInputError(
    `Image must be between 1 byte and ${MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES} bytes`
  );
}

export async function loadMealAnalysisCliImage(
  imagePath: string
): Promise<LoadedMealAnalysisCliImage> {
  let metadata;
  try {
    metadata = await stat(imagePath);
  } catch {
    throw new MealAnalysisCliInputError(`Unable to read image file: ${imagePath}`);
  }
  if (!metadata.isFile()) {
    throw new MealAnalysisCliInputError(`Image path is not a file: ${imagePath}`);
  }
  if (metadata.size <= 0 || metadata.size > MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES) {
    throw imageLengthError();
  }

  let bytes: Buffer;
  try {
    bytes = await readFile(imagePath);
  } catch {
    throw new MealAnalysisCliInputError(`Unable to read image file: ${imagePath}`);
  }
  if (bytes.length <= 0 || bytes.length > MAX_MEAL_ANALYSIS_CLI_IMAGE_BYTES) {
    throw imageLengthError();
  }

  const mediaType = detectImageMediaType(bytes);
  const descriptor = {
    mediaType,
    byteLength: bytes.length,
    sha256: createHash('sha256').update(bytes).digest('hex'),
  } satisfies MealAnalysisCliImageDescriptor;
  return { bytes, mediaType, descriptor };
}

export function parseMealAnalysisCliAnswers(
  rawAnswers: string | undefined
): unknown[] | undefined {
  if (rawAnswers === undefined) return undefined;

  let parsed: unknown;
  try {
    parsed = JSON.parse(rawAnswers);
  } catch {
    throw new MealAnalysisCliInputError('--answers must be valid JSON');
  }
  if (!Array.isArray(parsed)) {
    throw new MealAnalysisCliInputError('--answers must be a JSON array');
  }
  return parsed;
}

function sha256(bytes: Uint8Array): string {
  return createHash('sha256').update(bytes).digest('hex');
}

function safeObservationValue(
  value: unknown,
  key: string | undefined,
  seen: WeakSet<object>
): unknown {
  if (
    typeof value === 'string' &&
    (key?.toLowerCase().includes('base64') === true ||
      /^data:image\/[^;,]+;base64,/i.test(value))
  ) {
    return '[redacted image data]';
  }
  if (Buffer.isBuffer(value) || value instanceof Uint8Array) {
    return { byteLength: value.byteLength, sha256: sha256(value) };
  }
  if (value instanceof Date) return value.toISOString();
  if (value === null || typeof value !== 'object') return value;
  if (seen.has(value)) return '[circular]';
  seen.add(value);

  if (Array.isArray(value)) {
    const result = value.map((item) => safeObservationValue(item, undefined, seen));
    seen.delete(value);
    return result;
  }

  const result: Record<string, unknown> = {};
  for (const [entryKey, entryValue] of Object.entries(value)) {
    result[entryKey] = safeObservationValue(entryValue, entryKey, seen);
  }
  seen.delete(value);
  return result;
}

function observableObservation(observation: StageObservation): unknown {
  return safeObservationValue(observation, undefined, new WeakSet<object>());
}

function pretty(value: unknown): string {
  const encoded = JSON.stringify(
    safeObservationValue(value, undefined, new WeakSet<object>()),
    null,
    2
  );
  return encoded ?? String(value);
}

export function createHumanStageObserver(
  output: MealAnalysisCliTextOutput
): StageObserver {
  return (observation) => {
    const sequence = String(observation.sequence).padStart(2, '0');
    output.write(
      `[${sequence}] ${observation.stage} · ${Math.round(observation.durationMs)} ms\n` +
      `input:\n${pretty(observation.input)}\n` +
      `output:\n${pretty(observation.output)}\n`
    );
  };
}

export function createNdjsonStageObserver(
  output: MealAnalysisCliTextOutput
): StageObserver {
  return (observation) => {
    output.write(`${JSON.stringify(observableObservation(observation))}\n`);
  };
}
