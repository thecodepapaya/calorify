/// Configuration constants for image handling
class ImageConfig {
  ImageConfig._();

  /// Oracle Object Storage pre-authenticated link for uploading
  /// calorify-upload-auth-bucket-link
  static const String oracleBucketUploadUrl =
      'https://objectstorage.ap-mumbai-1.oraclecloud.com/p/oOdWDrhqvtFsQ4CLSt3kRn9nACEuk9wfqQBygsb3mVtxYkRmagTHS23ZDTzAE3LM/n/bmm3s6m8sdi5/b/calorify-images/o/';

  /// Backup upload link for when the above expires:
  /// https://bmm3s6m8sdi5.objectstorage.ap-mumbai-1.oci.customer-oci.com/p/oOdWDrhqvtFsQ4CLSt3kRn9nACEuk9wfqQBygsb3mVtxYkRmagTHS23ZDTzAE3LM/n/bmm3s6m8sdi5/b/calorify-images/o/

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
