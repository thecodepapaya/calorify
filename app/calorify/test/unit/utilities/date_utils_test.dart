import 'package:flutter_test/flutter_test.dart';
import 'package:utils/utils.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('timestamp conversion', () {
    test('treats an offset-less timestamp as UTC without shifting it', () {
      final parsed = iso8601StringToDateTime('2026-08-21T09:30:00');

      expect(parsed, DateTime.utc(2026, 8, 21, 9, 30));
      expect(parsed!.isUtc, isTrue);
    });

    test('normalizes an explicit offset to the same UTC instant', () {
      final parsed = iso8601StringToDateTime('2026-08-21T15:00:00+05:30');

      expect(parsed, DateTime.utc(2026, 8, 21, 9, 30));
    });
  });

  group('civil date conversion', () {
    test('round-trips a birthday without timezone conversion', () {
      final value = dateTimeToIso8601Date(DateTime(2001, 8, 2));
      final parsed = iso8601DateToDateTime(value);

      expect(value, '2001-08-02');
      expect(parsed, DateTime(2001, 8, 2));
    });

    test('rejects an invalid calendar date', () {
      expect(iso8601DateToDateTime('2001-02-30'), isNull);
    });
  });
}
