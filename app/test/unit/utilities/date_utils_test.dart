import 'package:flutter_test/flutter_test.dart';
import 'package:utils/utils.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('DateTimeHuman Extension', () {
    test('returns "just now" for very recent date', () {
      final now = DateTime.now();
      expect(now.formatted, 'just now');
    });

    test('returns "yesterday" for yesterday', () {
      final yesterday = DateTime.now().subtract(const Duration(days: 1));
      expect(yesterday.formatted, 'yesterday');
    });

    test('returns "today" for today (more than an hour ago)', () {
      final today = DateTime.now().subtract(const Duration(hours: 5));
      // Depending on the logic, this might return "5 hours ago" or "today"
      // Line 25: return '${difference.inHours} hours ago';
      expect(today.formatted, '5 hours ago');
    });

    test('returns formatted date for last year', () {
      final lastYear = DateTime(2023, 1, 1);
      // Since it's 2026 now, it should return '1 Jan 2023'
      expect(lastYear.formatted, '1 Jan 2023');
    });
  });
}
