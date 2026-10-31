import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:services/services.dart';

void main() {
  group('WebP compression contract', () {
    final webp = Uint8List.fromList(<int>[
      0x52,
      0x49,
      0x46,
      0x46,
      0,
      0,
      0,
      0,
      0x57,
      0x45,
      0x42,
      0x50,
    ]);

    test('accepts WebP output', () {
      expect(requireWebpCompressionOutput(webp), same(webp));
    });

    test('rejects a WebP over 1 MiB without another compression pass', () {
      final oversized = Uint8List(maxMealImageUploadBytes + 1)
        ..setRange(0, webp.length, webp);
      expect(
        () => requireWebpCompressionOutput(oversized),
        throwsA(isA<MealImageTooLargeException>()),
      );
    });

    test(
      'rejects missing and non-WebP output instead of using original bytes',
      () {
        expect(
          () => requireWebpCompressionOutput(null),
          throwsA(isA<ImageCompressionException>()),
        );
        expect(
          () => requireWebpCompressionOutput(
            Uint8List.fromList(<int>[0xff, 0xd8]),
          ),
          throwsA(isA<ImageCompressionException>()),
        );
      },
    );
  });
}
