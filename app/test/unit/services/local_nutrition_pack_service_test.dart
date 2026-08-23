import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';

class _PackFixture {
  const _PackFixture({required this.manifestBytes, required this.packBytes});

  final Uint8List manifestBytes;
  final Uint8List packBytes;
}

_PackFixture _packFixture(String version) {
  final packBytes = Uint8List.fromList(
    utf8.encode(
      jsonEncode({
        'schemaVersion': 1,
        'packVersion': version,
        'datasetVersion': 'fdc-v1',
        'calculationVersion': localNutritionCalculationVersion,
        'records': [
          {
            'fdcId': '169910',
            'description': 'Bananas, raw',
            'normalizedName': 'bananas raw',
            'aliases': ['banana'],
            'dataType': 'sr_legacy_food',
            'nutrientsPer100g': {
              'calories': 89,
              'protein': 1.09,
              'carbs': 22.84,
              'fat': 0.33,
              'fiber': 2.6,
            },
            'datasetVersion': 'fdc-v1',
          },
        ],
      }),
    ),
  );
  final manifest = LocalNutritionPackManifest(
    schemaVersion: 1,
    packVersion: version,
    datasetVersion: 'fdc-v1',
    objectName: 'local-nutrition/$version.json',
    sizeBytes: Int64(packBytes.length),
    recordCount: 1,
    calculationVersion: localNutritionCalculationVersion,
  );
  return _PackFixture(
    manifestBytes: Uint8List.fromList(
      utf8.encode(jsonEncode(manifest.toProto3Json())),
    ),
    packBytes: packBytes,
  );
}

void main() {
  late Directory directory;
  late Map<Uri, Uint8List> downloads;
  late LocalNutritionPackService service;
  final manifestUri = Uri.parse(
    'https://object.test/n/ns/b/bucket/o/local-nutrition/manifest.json',
  );

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('nutrition-pack-test-');
    downloads = {};
    service = LocalNutritionPackService(
      dio: Dio(),
      directoryProvider: () async => directory,
      downloader: (uri) async => downloads[uri]!,
    );
  });

  tearDown(() async {
    if (await directory.exists()) await directory.delete(recursive: true);
  });

  void stage(_PackFixture fixture, String version) {
    downloads[manifestUri] = fixture.manifestBytes;
    downloads[Uri.parse(
          'https://object.test/n/ns/b/bucket/o/local-nutrition/$version.json',
        )] =
        fixture.packBytes;
  }

  test('installs, replaces, and reloads a valid pack', () async {
    final first = _packFixture('starter-v1');
    stage(first, 'starter-v1');
    await service.install(manifestUri);

    final replacement = _packFixture('starter-v2');
    stage(replacement, 'starter-v2');
    final installed = await service.install(manifestUri);
    final reloaded = await service.loadActive();

    expect(installed.pack.packVersion, 'starter-v2');
    expect(reloaded?.pack.records.single.fdcId, '169910');
    expect(reloaded?.byteSize, replacement.packBytes.length);
  });

  test('rejects a pack that does not match its manifest', () async {
    final fixture = _packFixture('starter-v1');
    final manifest =
        LocalNutritionPackManifest()..mergeFromProto3Json(
          jsonDecode(utf8.decode(fixture.manifestBytes))
              as Map<String, dynamic>,
        );
    manifest.packVersion = 'different-version';

    await expectLater(
      service.validateAndParse(manifest, fixture.packBytes),
      throwsA(
        isA<LocalNutritionPackException>().having(
          (error) => error.code,
          'code',
          'incompatible_pack',
        ),
      ),
    );
  });

  test('requires HTTPS and sanitizes downloader failures', () async {
    await expectLater(
      service.install(Uri.parse('http://object.test/manifest.json')),
      throwsA(
        isA<LocalNutritionPackException>().having(
          (error) => error.code,
          'code',
          'invalid_url',
        ),
      ),
    );

    service = LocalNutritionPackService(
      dio: Dio(),
      directoryProvider: () async => directory,
      downloader: (_) async => throw StateError('secret-object-token'),
    );
    await expectLater(
      service.install(manifestUri),
      throwsA(
        isA<LocalNutritionPackException>()
            .having((error) => error.code, 'code', 'download_failed')
            .having(
              (error) => error.message,
              'message',
              isNot(contains('secret-object-token')),
            ),
      ),
    );
  });
}
