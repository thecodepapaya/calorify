import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/services/local_nutrition_pack.dart';
import 'package:calorify/core/services/local_nutrition_pack_service.dart';
import 'package:cryptography/cryptography.dart';
import 'package:dio/dio.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:path/path.dart' as p;

class _SignedPack {
  const _SignedPack({required this.manifestBytes, required this.packBytes});

  final Uint8List manifestBytes;
  final Uint8List packBytes;
}

Future<_SignedPack> _signedPack({
  required Ed25519 algorithm,
  required KeyPair keyPair,
  required String version,
  required int createdAt,
}) async {
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
    signingKeyId: 'test-key',
    createdAtEpochMs: Int64(createdAt),
    recordCount: 1,
    calculationVersion: localNutritionCalculationVersion,
  );
  final signature = await algorithm.sign([
    ...utf8.encode(
      '${LocalNutritionPackService.manifestMetadata(manifest)}\n--PACK--\n',
    ),
    ...packBytes,
  ], keyPair: keyPair);
  manifest.signature = base64Encode(signature.bytes);
  return _SignedPack(
    manifestBytes: Uint8List.fromList(
      utf8.encode(jsonEncode(manifest.toProto3Json())),
    ),
    packBytes: packBytes,
  );
}

void main() {
  late Directory directory;
  late Ed25519 algorithm;
  late KeyPair keyPair;
  late SimplePublicKey publicKey;
  late Map<Uri, Uint8List> downloads;
  late LocalNutritionPackService service;
  final manifestUri = Uri.parse(
    'https://object.test/n/ns/b/bucket/o/local-nutrition/manifest.json',
  );

  setUp(() async {
    directory = await Directory.systemTemp.createTemp('nutrition-pack-test-');
    algorithm = Ed25519();
    keyPair = await algorithm.newKeyPair();
    publicKey = await keyPair.extractPublicKey() as SimplePublicKey;
    downloads = {};
    service = LocalNutritionPackService(
      dio: Dio(),
      trustedPublicKeys: {'test-key': publicKey.bytes},
      directoryProvider: () async => directory,
      downloader: (uri) async => downloads[uri]!,
    );
  });

  tearDown(() async {
    if (await directory.exists()) await directory.delete(recursive: true);
  });

  void stage(_SignedPack fixture, String version) {
    downloads[manifestUri] = fixture.manifestBytes;
    downloads[Uri.parse(
          'https://object.test/n/ns/b/bucket/o/local-nutrition/$version.json',
        )] =
        fixture.packBytes;
  }

  test('installs and reloads a signature-verified generation', () async {
    final fixture = await _signedPack(
      algorithm: algorithm,
      keyPair: keyPair,
      version: 'starter-v1',
      createdAt: 1000,
    );
    stage(fixture, 'starter-v1');

    final installed = await service.install(manifestUri);
    final reloaded = await service.loadActive();

    expect(installed.pack.packVersion, 'starter-v1');
    expect(reloaded?.pack.records.single.fdcId, '169910');
    expect(reloaded?.byteSize, fixture.packBytes.length);
  });

  test('rejects modified pack bytes with the detached signature', () async {
    final fixture = await _signedPack(
      algorithm: algorithm,
      keyPair: keyPair,
      version: 'starter-v1',
      createdAt: 1000,
    );
    final manifest =
        LocalNutritionPackManifest()..mergeFromProto3Json(
          jsonDecode(utf8.decode(fixture.manifestBytes))
              as Map<String, dynamic>,
        );
    final corrupted = Uint8List.fromList(fixture.packBytes);
    corrupted[corrupted.length - 1] ^= 1;

    expect(
      () => service.verifyAndParse(manifest, corrupted),
      throwsA(
        isA<LocalNutritionPackException>().having(
          (error) => error.code,
          'code',
          'invalid_signature',
        ),
      ),
    );
  });

  test('rejects malformed detached signatures before verification', () async {
    final fixture = await _signedPack(
      algorithm: algorithm,
      keyPair: keyPair,
      version: 'starter-v1',
      createdAt: 1000,
    );
    final manifest =
        LocalNutritionPackManifest()..mergeFromProto3Json(
          jsonDecode(utf8.decode(fixture.manifestBytes))
              as Map<String, dynamic>,
        );
    manifest.signature = base64Encode([1, 2, 3]);

    await expectLater(
      service.verifyAndParse(manifest, fixture.packBytes),
      throwsA(
        isA<LocalNutritionPackException>().having(
          (error) => error.code,
          'code',
          'invalid_signature',
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
      trustedPublicKeys: {'test-key': publicKey.bytes},
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

  test(
    'falls back to the prior generation when active files are corrupt',
    () async {
      final first = await _signedPack(
        algorithm: algorithm,
        keyPair: keyPair,
        version: 'starter-v1',
        createdAt: 1000,
      );
      stage(first, 'starter-v1');
      await service.install(manifestUri);
      final second = await _signedPack(
        algorithm: algorithm,
        keyPair: keyPair,
        version: 'starter-v2',
        createdAt: 2000,
      );
      stage(second, 'starter-v2');
      final active = await service.install(manifestUri);
      await File(
        p.join(directory.path, 'generations', active.generation, 'pack.json'),
      ).writeAsString('partial', flush: true);

      final recovered = await service.loadActive();

      expect(recovered?.pack.packVersion, 'starter-v1');
    },
  );

  test('does not activate an older superseded generation', () async {
    final current = await _signedPack(
      algorithm: algorithm,
      keyPair: keyPair,
      version: 'starter-v2',
      createdAt: 2000,
    );
    stage(current, 'starter-v2');
    await service.install(manifestUri);
    final older = await _signedPack(
      algorithm: algorithm,
      keyPair: keyPair,
      version: 'starter-v1',
      createdAt: 1000,
    );
    stage(older, 'starter-v1');

    expect(
      () => service.install(manifestUri),
      throwsA(
        isA<LocalNutritionPackException>().having(
          (error) => error.code,
          'code',
          'superseded_pack',
        ),
      ),
    );
    expect((await service.loadActive())?.pack.packVersion, 'starter-v2');
  });
}
