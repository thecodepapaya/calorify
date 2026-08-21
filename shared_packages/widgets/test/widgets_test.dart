import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:widgets/widgets.dart';

void main() {
  test('the shared icon facade exposes Material icon data', () {
    expect(AppIcons.info, isA<IconData>());
  });
}
