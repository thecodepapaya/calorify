export const MAX_MEAL_IMAGE_BYTES = 1024 * 1024;
export const MAX_MEAL_IMAGE_DIMENSION = 4096;
export const MAX_MEAL_IMAGE_PIXELS = 16_777_216;

export interface WebpDimensions {
  width: number;
  height: number;
}

export class InvalidWebpError extends Error {
  constructor(message: string) {
    super(message);
    this.name = 'InvalidWebpError';
  }
}

function ascii(buffer: Buffer, offset: number, length: number): string {
  return buffer.toString('ascii', offset, offset + length);
}

function uint24Le(buffer: Buffer, offset: number): number {
  return buffer[offset]! | (buffer[offset + 1]! << 8) | (buffer[offset + 2]! << 16);
}

function validateDimensions(width: number, height: number): WebpDimensions {
  if (
    !Number.isInteger(width) ||
    !Number.isInteger(height) ||
    width <= 0 ||
    height <= 0 ||
    width > MAX_MEAL_IMAGE_DIMENSION ||
    height > MAX_MEAL_IMAGE_DIMENSION ||
    width * height > MAX_MEAL_IMAGE_PIXELS
  ) {
    throw new InvalidWebpError('WebP dimensions exceed the allowed limit');
  }
  return { width, height };
}

function parseVp8Dimensions(buffer: Buffer, offset: number, size: number): WebpDimensions {
  if (
    size < 10 ||
    buffer[offset + 3] !== 0x9d ||
    buffer[offset + 4] !== 0x01 ||
    buffer[offset + 5] !== 0x2a
  ) {
    throw new InvalidWebpError('Invalid lossy WebP frame');
  }
  const width = buffer.readUInt16LE(offset + 6) & 0x3fff;
  const height = buffer.readUInt16LE(offset + 8) & 0x3fff;
  return validateDimensions(width, height);
}

function parseVp8lDimensions(buffer: Buffer, offset: number, size: number): WebpDimensions {
  if (size < 5 || buffer[offset] !== 0x2f) {
    throw new InvalidWebpError('Invalid lossless WebP frame');
  }
  const bits = buffer.readUInt32LE(offset + 1);
  const width = (bits & 0x3fff) + 1;
  const height = ((bits >>> 14) & 0x3fff) + 1;
  return validateDimensions(width, height);
}

export function validateStaticWebp(buffer: Buffer): WebpDimensions {
  if (buffer.length === 0 || buffer.length > MAX_MEAL_IMAGE_BYTES) {
    throw new InvalidWebpError('WebP byte length is outside the allowed range');
  }
  if (
    buffer.length < 20 ||
    ascii(buffer, 0, 4) !== 'RIFF' ||
    ascii(buffer, 8, 4) !== 'WEBP' ||
    buffer.readUInt32LE(4) !== buffer.length - 8
  ) {
    throw new InvalidWebpError('Invalid WebP container');
  }

  let offset = 12;
  let dimensions: WebpDimensions | undefined;
  let canvasDimensions: WebpDimensions | undefined;
  let primaryFrames = 0;

  while (offset < buffer.length) {
    if (offset + 8 > buffer.length) {
      throw new InvalidWebpError('Truncated WebP chunk header');
    }
    const type = ascii(buffer, offset, 4);
    const size = buffer.readUInt32LE(offset + 4);
    const dataOffset = offset + 8;
    const paddedSize = size + (size & 1);
    const nextOffset = dataOffset + paddedSize;
    if (nextOffset > buffer.length || nextOffset <= offset) {
      throw new InvalidWebpError('Invalid WebP chunk length');
    }

    switch (type) {
      case 'VP8X': {
        if (size !== 10 || canvasDimensions !== undefined) {
          throw new InvalidWebpError('Invalid extended WebP header');
        }
        const flags = buffer[dataOffset]!;
        if ((flags & 0xc3) !== 0) {
          throw new InvalidWebpError('Animated or invalid extended WebP is not allowed');
        }
        canvasDimensions = validateDimensions(
          uint24Le(buffer, dataOffset + 4) + 1,
          uint24Le(buffer, dataOffset + 7) + 1
        );
        break;
      }
      case 'VP8 ':
        primaryFrames += 1;
        dimensions = parseVp8Dimensions(buffer, dataOffset, size);
        break;
      case 'VP8L':
        primaryFrames += 1;
        dimensions = parseVp8lDimensions(buffer, dataOffset, size);
        break;
      case 'ALPH':
        break;
      case 'ANIM':
      case 'ANMF':
        throw new InvalidWebpError('Animated WebP is not allowed');
      case 'EXIF':
      case 'XMP ':
      case 'ICCP':
        break;
      default:
        throw new InvalidWebpError(`Unsupported WebP chunk: ${type}`);
    }
    offset = nextOffset;
  }

  if (offset !== buffer.length || primaryFrames !== 1 || dimensions === undefined) {
    throw new InvalidWebpError('WebP must contain exactly one image frame');
  }
  if (
    canvasDimensions &&
    (canvasDimensions.width !== dimensions.width || canvasDimensions.height !== dimensions.height)
  ) {
    throw new InvalidWebpError('WebP canvas and frame dimensions do not match');
  }
  return canvasDimensions ?? dimensions;
}
