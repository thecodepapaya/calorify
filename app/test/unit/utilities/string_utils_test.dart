import 'package:flutter_test/flutter_test.dart';
import 'package:utils/utils.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('StringX capitalized', () {
    test('capitalizes first letter', () {
      expect('apple'.capitalized, 'Apple');
    });

    test('handles empty string', () {
      expect(''.capitalized, '');
    });

    test('handles already capitalized string', () {
      expect('Apple'.capitalized, 'Apple');
    });

    test('handles single character', () {
      expect('a'.capitalized, 'A');
    });
  });
}
