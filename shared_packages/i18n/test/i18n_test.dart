import 'package:flutter_test/flutter_test.dart';
import 'package:i18n/i18n.dart';

void main() {
  test('every configured locale can build a translation catalog', () {
    for (final locale in AppLocale.values) {
      expect(locale.buildSync(), isA<Translations>());
    }
  });
}
