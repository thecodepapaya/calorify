/// Configuration constants for image handling
class ImageConfig {
  ImageConfig._();

  /// Oracle Object Storage pre-authenticated upload URL supplied at build time.
  /// This removes the credential from source control, but client-side bearer URLs
  /// are still extractable from a built app and should be narrowly scoped/rotated.
  static const String oracleBucketUploadUrl = String.fromEnvironment(
    'ORACLE_BUCKET_UPLOAD_URL',
  );

  /// Allowed image file extensions
  static const List<String> allowedImageExtensions = [
    'jpg',
    'jpeg',
    'png',
    'webp',
  ];

  /// Check if a file extension is allowed
  static bool isAllowedImageExtension(String extension) {
    return allowedImageExtensions.contains(extension.toLowerCase());
  }

  /// Map file extension to proper MIME type
  static String getMimeType(String extension) {
    final ext = extension.toLowerCase();
    final mimeTypeMap = {
      'jpg': 'image/jpeg',
      'jpeg': 'image/jpeg',
      'png': 'image/png',
      'webp': 'image/webp',
    };
    return mimeTypeMap[ext] ?? 'image/jpeg';
  }
}
