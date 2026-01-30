import 'dart:developer' as developer;
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_image_compress/flutter_image_compress.dart';

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
        minWidth: 512,
        minHeight: 512,
      );

      if (compressed == null || compressed.isEmpty) {
        developer.log('Compression failed, returning original');
        return original;
      }

      // Verify compression actually reduced size
      if (compressed.length >= original.length) {
        developer.log(
          'Compression did not reduce size (${compressed.length} >= ${original.length}), using original',
        );
        return original;
      }

      // Log compression statistics with appropriate units
      final percentage =
          ((original.length - compressed.length) / original.length * 100)
              .floor();

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
      final compSize = formatSize(compressed.length);

      developer.log('Compression: $percentage% [$originalSize -> $compSize]');

      return compressed;
    } catch (e, stackTrace) {
      developer.log(
        'Error during compression: $e',
        error: e,
        stackTrace: stackTrace,
      );
      return original; // Return original on error
    }
  }

  /// Compress an image file
  ///
  /// [image] - The image file to compress
  /// [quality] - Compression quality (0-100), default is 60
  ///
  /// Returns compressed image bytes, or original if compression fails
  /// Note: Compression runs on main isolate as flutter_image_compress
  /// doesn't support isolates on all platforms
  Future<Uint8List> compressImage(File image, {int quality = 60}) async {
    final original = await image.readAsBytes();
    return _compressWithValidation(image.path, original, quality);
  }

  /// Compress image bytes directly
  ///
  /// [imageBytes] - The image bytes to compress
  /// [quality] - Compression quality (0-100), default is 60
  ///
  /// Returns compressed image bytes, or original if compression fails
  /// Note: Compression runs on main isolate as flutter_image_compress
  /// doesn't support isolates on all platforms
  Future<Uint8List> compressImageBytes(
    Uint8List imageBytes, {
    int quality = 60,
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
