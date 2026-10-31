import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

void main() {
  test('locale defaults and conversions stay consistent', () {
    expect(
      LocaleUtils.getDefaultHeightUnit(const Locale('en', 'US')),
      HeightUnit.FT,
    );
    expect(
      LocaleUtils.getDefaultWeightUnit(const Locale('en', 'US')),
      WeightUnit.LB,
    );
    expect(
      LocaleUtils.getDefaultHeightUnit(const Locale('en', 'IN')),
      HeightUnit.CM,
    );
    expect(
      LocaleUtils.getDefaultWeightUnit(const Locale('en', 'IN')),
      WeightUnit.KG,
    );
    expect(LocaleUtils.convertWeightToMetric(2.2046226218), closeTo(1, 1e-9));
  });
}
