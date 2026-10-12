import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

void main() {
  test('locale defaults and conversions stay consistent', () {
    expect(
      LocaleUtils.getDefaultUnitSystem(const Locale('en', 'US')),
      UnitSystem.IMPERIAL,
    );
    expect(
      LocaleUtils.getDefaultUnitSystem(const Locale('en', 'IN')),
      UnitSystem.METRIC,
    );
    expect(LocaleUtils.convertWeightToMetric(2.2046226218), closeTo(1, 1e-9));
  });

  test('capitalized handles Unicode grapheme clusters', () {
    expect('élan'.capitalized, 'Élan');
    expect(''.capitalized, '');
  });
}
