import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
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
    LocalNutritionDirectoryProvider? directoryProvider,
    LocalNutritionDownloader? downloader,
  }) : _dio = dio,
       _directoryProvider =
           directoryProvider ?? _defaultLocalNutritionDirectory,
       _downloader = downloader;

  static const int _maxManifestBytes = 64 * 1024;
  static const int _maxPackBytes = 25 * 1024 * 1024;
  static const String _manifestFile = 'manifest.json';
  static const String _packFile = 'pack.json';

  final Dio _dio;
  final LocalNutritionDirectoryProvider _directoryProvider;
  final LocalNutritionDownloader? _downloader;

  Future<InstalledLocalNutritionPack> install(Uri manifestUri) async {
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
    final parsed = await validateAndParse(manifest, packBytes);

    final root = await _root();
    await _replaceFile(File(p.join(root.path, _packFile)), packBytes);
    await _replaceFile(File(p.join(root.path, _manifestFile)), manifestBytes);
    return parsed;
  }

  Future<InstalledLocalNutritionPack?> loadActive() async {
    final root = await _root();
    final manifestFile = File(p.join(root.path, _manifestFile));
    final packFile = File(p.join(root.path, _packFile));
    if (!await manifestFile.exists() || !await packFile.exists()) return null;
    try {
      return await validateAndParse(
        _parseManifest(await manifestFile.readAsBytes()),
        await packFile.readAsBytes(),
      );
    } on Object {
      return null;
    }
  }

  Future<InstalledLocalNutritionPack> validateAndParse(
    LocalNutritionPackManifest manifest,
    List<int> packBytes,
  ) async {
    _validateManifest(manifest, packBytes.length);
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
    );
  }

  Future<void> clear() async {
    final root = await _root();
    if (await root.exists()) {
      await root.delete(recursive: true);
    }
  }

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
        manifest.recordCount <= 0 ||
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

  Future<void> _replaceFile(File destination, List<int> bytes) async {
    final temporary = File('${destination.path}.tmp');
    await temporary.writeAsBytes(bytes, flush: true);
    await temporary.rename(destination.path);
  }

  static Future<Directory> _defaultLocalNutritionDirectory() async {
    final support = await getApplicationSupportDirectory();
    return Directory(p.join(support.path, 'local_nutrition'));
  }
}
