import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:dio/dio.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

typedef LocalNutritionDirectoryProvider = Future<Directory> Function();
typedef LocalNutritionDownloader =
    Future<LocalNutritionDownload> Function(Uri uri, DateTime? ifModifiedSince);

class LocalNutritionDownload {
  const LocalNutritionDownload.modified(this.bytes, {this.lastModified})
    : notModified = false;
  const LocalNutritionDownload.notModified({this.lastModified})
    : notModified = true,
      bytes = null;

  final bool notModified;
  final Uint8List? bytes;
  final DateTime? lastModified;
}

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
       _directoryProvider = directoryProvider ?? _defaultDirectory,
       _downloader = downloader;

  static const _maxPackBytes = 25 * 1024 * 1024;
  static const _packFile = 'pack.json';
  final Dio _dio;
  final LocalNutritionDirectoryProvider _directoryProvider;
  final LocalNutritionDownloader? _downloader;

  Future<InstalledLocalNutritionPack> install(Uri packUri) async {
    final root = await _root();
    final file = File(p.join(root.path, _packFile));
    final installedAt =
        await file.exists() ? (await file.lastModified()).toUtc() : null;
    var download = await _download(packUri, installedAt);
    if (download.notModified) {
      final active = await loadActive();
      if (active != null) return active;
      download = await _download(packUri, null);
    }
    final bytes = download.bytes;
    if (bytes == null) {
      throw const LocalNutritionPackException(
        'empty_download',
        'The local nutrition download was empty.',
      );
    }
    final parsed = validateAndParse(bytes);
    await _replaceFile(file, bytes);
    if (download.lastModified != null) {
      await file.setLastModified(download.lastModified!.toUtc());
    }
    return parsed;
  }

  Future<InstalledLocalNutritionPack?> loadActive() async {
    final file = File(p.join((await _root()).path, _packFile));
    if (!await file.exists()) return null;
    try {
      return validateAndParse(await file.readAsBytes());
    } on Object {
      return null;
    }
  }

  InstalledLocalNutritionPack validateAndParse(List<int> bytes) {
    if (bytes.isEmpty || bytes.length > _maxPackBytes) {
      throw const LocalNutritionPackException(
        'invalid_pack',
        'The local nutrition pack has an invalid size.',
      );
    }
    late final LocalNutritionPack pack;
    try {
      pack = LocalNutritionPack.fromBytes(bytes);
    } on Object catch (error) {
      throw LocalNutritionPackException(
        'invalid_pack',
        'The local nutrition pack is invalid: $error',
      );
    }
    if (pack.schemaVersion != localNutritionPackSchemaVersion ||
        pack.calculationVersion != localNutritionCalculationVersion ||
        pack.records.isEmpty) {
      throw const LocalNutritionPackException(
        'incompatible_pack',
        'This app cannot use the local nutrition pack version.',
      );
    }
    return InstalledLocalNutritionPack(pack: pack, byteSize: bytes.length);
  }

  Future<void> clear() async {
    final root = await _root();
    if (await root.exists()) await root.delete(recursive: true);
  }

  Future<LocalNutritionDownload> _download(
    Uri uri,
    DateTime? ifModifiedSince,
  ) async {
    final backendPath =
        !uri.hasScheme && !uri.hasAuthority && uri.path.startsWith('/api/');
    if (!backendPath && (uri.scheme != 'https' || !uri.hasAuthority)) {
      throw const LocalNutritionPackException(
        'invalid_url',
        'The local nutrition download URL is invalid.',
      );
    }
    try {
      if (_downloader != null) return await _downloader(uri, ifModifiedSince);
      final response = await _dio.get<List<int>>(
        uri.toString(),
        options: Options(
          responseType: ResponseType.bytes,
          headers:
              ifModifiedSince == null
                  ? null
                  : {
                    'If-Modified-Since': HttpDate.format(
                      ifModifiedSince.toUtc(),
                    ),
                  },
          validateStatus: (status) => status == 200 || status == 304,
        ),
      );
      final lastModified = _httpDate(response.headers.value('last-modified'));
      if (response.statusCode == 304) {
        return LocalNutritionDownload.notModified(lastModified: lastModified);
      }
      final bytes = response.data;
      if (bytes == null) {
        throw const LocalNutritionPackException(
          'empty_download',
          'The local nutrition download was empty.',
        );
      }
      return LocalNutritionDownload.modified(
        Uint8List.fromList(bytes),
        lastModified: lastModified,
      );
    } on LocalNutritionPackException {
      rethrow;
    } on Object {
      throw const LocalNutritionPackException(
        'download_failed',
        'Could not download local nutrition data.',
      );
    }
  }

  DateTime? _httpDate(String? value) {
    if (value == null) return null;
    try {
      return HttpDate.parse(value).toUtc();
    } on Object {
      return null;
    }
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

  static Future<Directory> _defaultDirectory() async {
    final support = await getApplicationSupportDirectory();
    return Directory(p.join(support.path, 'local_nutrition'));
  }
}
