import 'dart:developer' as developer;
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

const imageCompressionTargetDimension = 1536;
const maxMealImageUploadBytes = 1024 * 1024;

class ImageCompressionException implements Exception {
  const ImageCompressionException(this.message);

  final String message;

  @override
  String toString() => 'ImageCompressionException: $message';
}

class MealImageTooLargeException extends ImageCompressionException {
  const MealImageTooLargeException()
    : super('Compressed meal image exceeds 1 MiB');
}

bool hasWebpSignature(Uint8List bytes) {
  return bytes.length >= 12 &&
      bytes[0] == 0x52 &&
      bytes[1] == 0x49 &&
      bytes[2] == 0x46 &&
      bytes[3] == 0x46 &&
      bytes[8] == 0x57 &&
      bytes[9] == 0x45 &&
      bytes[10] == 0x42 &&
      bytes[11] == 0x50;
}

Uint8List requireWebpCompressionOutput(Uint8List? bytes) {
  if (bytes == null || bytes.isEmpty) {
    throw const ImageCompressionException(
      'WebP encoder returned no image data',
    );
  }
  if (!hasWebpSignature(bytes)) {
    throw const ImageCompressionException(
      'WebP encoder returned data in an unexpected format',
    );
  }
  validateMealImageUploadSize(bytes);
  return bytes;
}

void validateMealImageUploadSize(Uint8List bytes) {
  if (bytes.length > maxMealImageUploadBytes) {
    throw const MealImageTooLargeException();
  }
}

/// Service for compressing images
class ImageCompressionService {
  ImageCompressionService._();
  static final ImageCompressionService instance = ImageCompressionService._();

  /// Internal method to perform compression with common validation
  Future<Uint8List> _compressWithValidation(
    String filePath,
    Uint8List original,
    int quality,
  ) async {
    try {
      // Compress directly (not in isolate) as flutter_image_compress
      // doesn't work in isolates on some platforms
      // Use WebP format for better compression (25-35% smaller than JPEG)
      final compressed = await FlutterImageCompress.compressWithFile(
        filePath,
        quality: quality,
        format: CompressFormat.webp,
        minWidth: imageCompressionTargetDimension,
        minHeight: imageCompressionTargetDimension,
      );

      final webp = requireWebpCompressionOutput(compressed);

      if (webp.length >= original.length) {
        developer.log(
          'WebP is not smaller (${webp.length} >= ${original.length}); keeping WebP to preserve the upload contract',
        );
      }

      // Log compression statistics with appropriate units
      final percentage =
          ((original.length - webp.length) / original.length * 100).floor();

      String formatSize(int bytes) {
        const kib = 1024;
        const mib = 1024 * 1024;

        if (bytes >= mib) {
          return '${(bytes / mib).toStringAsFixed(2)}MiB';
        } else if (bytes >= kib) {
          return '${(bytes / kib).toStringAsFixed(2)}KiB';
        } else {
          return '${bytes}B';
        }
      }

      final originalSize = formatSize(original.length);
      final compSize = formatSize(webp.length);

      developer.log('Compression: $percentage% [$originalSize -> $compSize]');

      return webp;
    } on ImageCompressionException catch (e, stackTrace) {
      developer.log(
        'Image compression failed: $e',
        error: e,
        stackTrace: stackTrace,
      );
      rethrow;
    } catch (e, stackTrace) {
      developer.log(
        'Image compression failed: $e',
        error: e,
        stackTrace: stackTrace,
      );
      throw ImageCompressionException(e.toString());
    }
  }

  /// Compress an image file
  ///
  /// [image] - The image file to compress
  /// [quality] - Compression quality (0-100), default is 85
  ///
  /// Returns WebP bytes; throws [ImageCompressionException] on failure.
  /// Note: Compression runs on main isolate as flutter_image_compress
  /// doesn't support isolates on all platforms
  Future<Uint8List> compressImage(File image, {int quality = 85}) async {
    final original = await image.readAsBytes();
    return _compressWithValidation(image.path, original, quality);
  }

  /// Compress image bytes directly
  ///
  /// [imageBytes] - The image bytes to compress
  /// [quality] - Compression quality (0-100), default is 85
  ///
  /// Returns WebP bytes; throws [ImageCompressionException] on failure.
  /// Note: Compression runs on main isolate as flutter_image_compress
  /// doesn't support isolates on all platforms
  Future<Uint8List> compressImageBytes(
    Uint8List imageBytes, {
    int quality = 85,
  }) async {
    // Write bytes to temporary file for compression
    final tempFile = File(
      '${Directory.systemTemp.path}/compress_${DateTime.now().millisecondsSinceEpoch}.tmp',
    );
    try {
      await tempFile.writeAsBytes(imageBytes);
      return await _compressWithValidation(tempFile.path, imageBytes, quality);
    } finally {
      // Clean up temp file
      try {
        await tempFile.delete();
      } catch (e) {
        // Ignore cleanup errors
      }
    }
  }
}
