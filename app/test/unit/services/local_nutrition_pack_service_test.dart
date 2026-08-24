import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

Uint8List _pack(String version) => Uint8List.fromList(
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
          'aliases': <String>[],
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

void main() {
  late Directory directory;
  late LocalNutritionDownload download;
  late DateTime? requestedSince;
  late LocalNutritionPackService service;
  final packUri = Uri.parse('/api/v2/food/local-nutrition-pack');

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('nutrition-pack-test-');
    download = LocalNutritionDownload.modified(
      _pack('starter-v1'),
      lastModified: DateTime.utc(2026, 8, 24),
    );
    requestedSince = null;
    service = LocalNutritionPackService(
      dio: Dio(),
      directoryProvider: () async => directory,
      downloader: (uri, ifModifiedSince) async {
        expect(uri, packUri);
        requestedSince = ifModifiedSince;
        return download;
      },
    );
  });

  tearDown(() async {
    if (await directory.exists()) await directory.delete(recursive: true);
  });

  test('installs and always replaces a newer valid pack', () async {
    await service.install(packUri);
    download = LocalNutritionDownload.modified(
      _pack('starter-v2'),
      lastModified: DateTime.utc(2026, 8, 25),
    );
    final installed = await service.install(packUri);

    expect(requestedSince, DateTime.utc(2026, 8, 24));
    expect(installed.pack.packVersion, 'starter-v2');
    expect((await service.loadActive())?.pack.packVersion, 'starter-v2');
  });

  test('keeps the valid local JSON when the server returns 304', () async {
    final first = await service.install(packUri);
    download = const LocalNutritionDownload.notModified();
    final unchanged = await service.install(packUri);

    expect(unchanged.pack.packVersion, first.pack.packVersion);
    expect(requestedSince, DateTime.utc(2026, 8, 24));
  });

  test('rejects incompatible pack JSON before replacement', () async {
    final invalid = Uint8List.fromList(
      utf8.encode(jsonEncode({'schemaVersion': 99, 'records': <Object>[]})),
    );
    download = LocalNutritionDownload.modified(invalid);
    await expectLater(
      service.install(packUri),
      throwsA(isA<LocalNutritionPackException>()),
    );
  });

  test('requires HTTPS or a backend API path and sanitizes failures', () async {
    await expectLater(
      service.install(Uri.parse('http://object.test/pack.json')),
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
      downloader: (_, _) async => throw StateError('secret-token'),
    );
    await expectLater(
      service.install(packUri),
      throwsA(
        isA<LocalNutritionPackException>()
            .having((error) => error.code, 'code', 'download_failed')
            .having(
              (error) => error.message,
              'message',
              isNot(contains('secret-token')),
            ),
      ),
    );
  });
}
