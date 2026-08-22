import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:cryptography/cryptography.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:models/models.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

typedef LocalNutritionDirectoryProvider = Future<Directory> Function();
typedef LocalNutritionDownloader = Future<Uint8List> Function(Uri uri);

class LocalNutritionPackException implements Exception {
  const LocalNutritionPackException(this.code, this.message);

  final String code;
  final String message;

  @override
  String toString() => message;
}

class LocalNutritionPackService {
  LocalNutritionPackService({
    required Dio dio,
    Map<String, List<int>>? trustedPublicKeys,
    LocalNutritionDirectoryProvider? directoryProvider,
    LocalNutritionDownloader? downloader,
  }) : _dio = dio,
       _trustedPublicKeys = trustedPublicKeys ?? _keysFromEnvironment(),
       _directoryProvider =
           directoryProvider ?? _defaultLocalNutritionDirectory,
       _downloader = downloader;

  static const int _maxManifestBytes = 64 * 1024;
  static const int _maxPackBytes = 25 * 1024 * 1024;
  static const String _activePointer = 'active.json';
  static const String _previousPointer = 'previous.json';

  final Dio _dio;
  final Map<String, List<int>> _trustedPublicKeys;
  final LocalNutritionDirectoryProvider _directoryProvider;
  final LocalNutritionDownloader? _downloader;

  bool get hasConfiguredSigningKey => _trustedPublicKeys.isNotEmpty;

  Future<InstalledLocalNutritionPack> install(Uri manifestUri) async {
    if (_trustedPublicKeys.isEmpty) {
      throw const LocalNutritionPackException(
        'signing_key_unavailable',
        'No trusted local nutrition signing key is configured.',
      );
    }
    final manifestBytes = await _download(manifestUri);
    if (manifestBytes.length > _maxManifestBytes) {
      throw const LocalNutritionPackException(
        'manifest_too_large',
        'The local nutrition manifest is too large.',
      );
    }
    final manifest = _parseManifest(manifestBytes);
    final packUri = _objectUri(manifestUri, manifest.objectName);
    final packBytes = await _download(packUri);
    final verified = await verifyAndParse(manifest, packBytes);

    final current = await loadActive();
    if (current != null &&
        manifest.createdAtEpochMs < current.manifest.createdAtEpochMs) {
      throw const LocalNutritionPackException(
        'superseded_pack',
        'An older local nutrition pack cannot replace the active pack.',
      );
    }

    final root = await _root();
    final generation = _generationName(manifest);
    final generationDirectory = Directory(
      p.join(root.path, 'generations', generation),
    );
    await generationDirectory.create(recursive: true);
    await File(
      p.join(generationDirectory.path, 'manifest.json'),
    ).writeAsBytes(manifestBytes, flush: true);
    await File(
      p.join(generationDirectory.path, 'pack.json'),
    ).writeAsBytes(packBytes, flush: true);

    // Read the completed generation back before changing the active pointer.
    // A partial/interrupted write therefore remains unreachable.
    final installed = await _readGeneration(root, generation);
    if (current != null) {
      await _writePointer(
        File(p.join(root.path, _previousPointer)),
        utf8.encode(jsonEncode({'generation': current.generation})),
      );
    }
    await _writePointer(
      File(p.join(root.path, _activePointer)),
      utf8.encode(jsonEncode({'generation': generation})),
    );
    await _pruneGenerations(root);
    return installed.copyWith(byteSize: verified.byteSize);
  }

  Future<InstalledLocalNutritionPack?> loadActive() async {
    final root = await _root();
    for (final pointerName in [_activePointer, _previousPointer]) {
      try {
        final pointer = File(p.join(root.path, pointerName));
        if (!await pointer.exists()) continue;
        final decoded = jsonDecode(await pointer.readAsString());
        if (decoded is! Map || decoded['generation'] is! String) continue;
        return await _readGeneration(root, decoded['generation'] as String);
      } on Object {
        // The previous pointer is the known-good rollback generation.
      }
    }
    return null;
  }

  Future<InstalledLocalNutritionPack> verifyAndParse(
    LocalNutritionPackManifest manifest,
    List<int> packBytes,
  ) async {
    _validateManifest(manifest, packBytes.length);
    final publicKeyBytes = _trustedPublicKeys[manifest.signingKeyId];
    if (publicKeyBytes == null || publicKeyBytes.length != 32) {
      throw const LocalNutritionPackException(
        'unknown_signing_key',
        'The local nutrition pack uses an untrusted signing key.',
      );
    }
    late final List<int> signatureBytes;
    try {
      signatureBytes = base64Decode(manifest.signature);
    } on FormatException {
      throw const LocalNutritionPackException(
        'invalid_signature',
        'The local nutrition pack signature is malformed.',
      );
    }
    if (signatureBytes.length != 64) {
      throw const LocalNutritionPackException(
        'invalid_signature',
        'The local nutrition pack signature is malformed.',
      );
    }
    final verified = await Ed25519().verify(
      <int>[
        ...utf8.encode('${manifestMetadata(manifest)}\n--PACK--\n'),
        ...packBytes,
      ],
      signature: Signature(
        signatureBytes,
        publicKey: SimplePublicKey(publicKeyBytes, type: KeyPairType.ed25519),
      ),
    );
    if (!verified) {
      throw const LocalNutritionPackException(
        'invalid_signature',
        'The local nutrition pack signature is invalid.',
      );
    }

    late final LocalNutritionPack pack;
    try {
      pack = LocalNutritionPack.fromBytes(packBytes);
    } on Object catch (error) {
      throw LocalNutritionPackException(
        'invalid_pack',
        'The local nutrition pack is invalid: $error',
      );
    }
    if (pack.schemaVersion != manifest.schemaVersion ||
        pack.packVersion != manifest.packVersion ||
        pack.datasetVersion != manifest.datasetVersion ||
        pack.calculationVersion != manifest.calculationVersion ||
        pack.records.length != manifest.recordCount) {
      throw const LocalNutritionPackException(
        'incompatible_pack',
        'The local nutrition pack does not match its manifest.',
      );
    }
    return InstalledLocalNutritionPack(
      manifest: manifest,
      pack: pack,
      byteSize: packBytes.length,
      generation: _generationName(manifest),
    );
  }

  Future<void> clear() async {
    final root = await _root();
    if (await root.exists()) {
      await root.delete(recursive: true);
    }
  }

  static String manifestMetadata(LocalNutritionPackManifest manifest) => [
    'local-nutrition-manifest-v${manifest.schemaVersion}',
    manifest.packVersion,
    manifest.datasetVersion,
    manifest.objectName,
    manifest.sizeBytes.toString(),
    manifest.signingKeyId,
    manifest.createdAtEpochMs.toString(),
    manifest.recordCount.toString(),
    manifest.calculationVersion,
  ].join('\n');

  void _validateManifest(LocalNutritionPackManifest manifest, int byteLength) {
    if (manifest.schemaVersion != localNutritionPackSchemaVersion ||
        manifest.calculationVersion != localNutritionCalculationVersion) {
      throw const LocalNutritionPackException(
        'incompatible_manifest',
        'This app cannot use the local nutrition pack version.',
      );
    }
    if (manifest.packVersion.trim().isEmpty ||
        manifest.datasetVersion.trim().isEmpty ||
        manifest.objectName.trim().isEmpty ||
        manifest.signature.trim().isEmpty ||
        manifest.signingKeyId.trim().isEmpty ||
        manifest.recordCount <= 0 ||
        manifest.createdAtEpochMs <= Int64.ZERO ||
        manifest.sizeBytes <= Int64.ZERO ||
        manifest.sizeBytes.toInt() != byteLength ||
        byteLength > _maxPackBytes) {
      throw const LocalNutritionPackException(
        'invalid_manifest',
        'The local nutrition manifest is invalid.',
      );
    }
  }

  LocalNutritionPackManifest _parseManifest(List<int> bytes) {
    try {
      final value = jsonDecode(utf8.decode(bytes));
      if (value is! Map) {
        throw const FormatException('manifest is not an object');
      }
      return LocalNutritionPackManifest()
        ..mergeFromProto3Json(value.cast<String, dynamic>());
    } on Object catch (error) {
      throw LocalNutritionPackException(
        'invalid_manifest',
        'The local nutrition manifest is invalid: $error',
      );
    }
  }

  Future<Uint8List> _download(Uri uri) async {
    if (uri.scheme != 'https' || !uri.hasAuthority) {
      throw const LocalNutritionPackException(
        'invalid_url',
        'The local nutrition download URL is invalid.',
      );
    }
    try {
      if (_downloader != null) return await _downloader(uri);
      final response = await _dio.get<List<int>>(
        uri.toString(),
        options: Options(responseType: ResponseType.bytes),
      );
      final bytes = response.data;
      if (bytes == null) {
        throw const LocalNutritionPackException(
          'empty_download',
          'The local nutrition download was empty.',
        );
      }
      return Uint8List.fromList(bytes);
    } on LocalNutritionPackException {
      rethrow;
    } on Object {
      throw const LocalNutritionPackException(
        'download_failed',
        'Could not download local nutrition data.',
      );
    }
  }

  Uri _objectUri(Uri manifestUri, String objectName) {
    final objectSegments =
        objectName.split('/').where((segment) => segment.isNotEmpty).toList();
    if (objectSegments.length < 2 ||
        objectSegments.any(
          (segment) =>
              segment == '.' ||
              segment == '..' ||
              segment.contains('\\') ||
              segment.contains('\u0000'),
        )) {
      throw const LocalNutritionPackException(
        'invalid_object_name',
        'The local nutrition object name is invalid.',
      );
    }
    final marker = manifestUri.pathSegments.lastIndexOf('o');
    if (marker < 0) {
      throw const LocalNutritionPackException(
        'invalid_url',
        'The local nutrition object-storage URL is invalid.',
      );
    }
    return manifestUri.replace(
      pathSegments: [
        ...manifestUri.pathSegments.take(marker + 1),
        ...objectSegments,
      ],
    );
  }

  Future<Directory> _root() async {
    final root = await _directoryProvider();
    await root.create(recursive: true);
    return root;
  }

  Future<InstalledLocalNutritionPack> _readGeneration(
    Directory root,
    String generation,
  ) async {
    if (generation.isEmpty ||
        generation.contains('/') ||
        generation.contains('\\')) {
      throw const LocalNutritionPackException(
        'invalid_generation',
        'The local nutrition generation pointer is invalid.',
      );
    }
    final directory = Directory(p.join(root.path, 'generations', generation));
    final manifest = _parseManifest(
      await File(p.join(directory.path, 'manifest.json')).readAsBytes(),
    );
    final packBytes =
        await File(p.join(directory.path, 'pack.json')).readAsBytes();
    final verified = await verifyAndParse(manifest, packBytes);
    return InstalledLocalNutritionPack(
      manifest: verified.manifest,
      pack: verified.pack,
      byteSize: verified.byteSize,
      generation: generation,
    );
  }

  Future<void> _writePointer(File destination, List<int> bytes) async {
    final temporary = File('${destination.path}.tmp');
    await temporary.writeAsBytes(bytes, flush: true);
    await temporary.rename(destination.path);
  }

  Future<void> _pruneGenerations(Directory root) async {
    final retained = <String>{};
    for (final pointerName in [_activePointer, _previousPointer]) {
      try {
        final value = jsonDecode(
          await File(p.join(root.path, pointerName)).readAsString(),
        );
        if (value is Map && value['generation'] is String) {
          retained.add(value['generation'] as String);
        }
      } on Object {
        // Invalid pointers are ignored; loadActive still fails closed.
      }
    }
    final generations = Directory(p.join(root.path, 'generations'));
    if (!await generations.exists()) return;
    await for (final entity in generations.list()) {
      if (entity is Directory && !retained.contains(p.basename(entity.path))) {
        await entity.delete(recursive: true);
      }
    }
  }

  static Future<Directory> _defaultLocalNutritionDirectory() async {
    final support = await getApplicationSupportDirectory();
    return Directory(p.join(support.path, 'local_nutrition'));
  }

  static String _generationName(LocalNutritionPackManifest manifest) {
    final version = manifest.packVersion.replaceAll(
      RegExp(r'[^a-zA-Z0-9._-]'),
      '_',
    );
    return '${manifest.createdAtEpochMs}-$version';
  }

  static Map<String, List<int>> _keysFromEnvironment() {
    const keyId = String.fromEnvironment('LOCAL_NUTRITION_SIGNING_KEY_ID');
    const encoded = String.fromEnvironment(
      'LOCAL_NUTRITION_SIGNING_PUBLIC_KEY_BASE64',
    );
    if (keyId.isEmpty || encoded.isEmpty) return const {};
    try {
      final bytes = base64Decode(encoded);
      if (bytes.length != 32) return const {};
      return {keyId: bytes};
    } on FormatException {
      return const {};
    }
  }
}

extension on InstalledLocalNutritionPack {
  InstalledLocalNutritionPack copyWith({int? byteSize}) =>
      InstalledLocalNutritionPack(
        manifest: manifest,
        pack: pack,
        byteSize: byteSize ?? this.byteSize,
        generation: generation,
      );
}
