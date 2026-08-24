/// Configuration constants for image handling
class ImageConfig {
  ImageConfig._();

  /// Paste a local Oracle Object Storage pre-authenticated upload URL here.
  /// A build-time value still overrides this placeholder for CI releases.
  static const String oracleBucketUploadUrl = String.fromEnvironment(
    'ORACLE_BUCKET_UPLOAD_URL',
    defaultValue:
        'https://objectstorage.ap-mumbai-1.oraclecloud.com/p/JuuGhjzfYa32bsU6HJXgSpQYZQ7TlxIZY9e8uWPbg9tMkn9EhY2UEmCMtgHcUO3I/n/bmm3s6m8sdi5/b/calorify-images/o/',
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
