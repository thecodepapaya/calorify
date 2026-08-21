import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:specs/specs.dart';

void main() {
  test('shared themes preserve their intended brightness', () {
    expect(AppThemes.lightTheme.brightness, Brightness.light);
    expect(AppThemes.darkTheme.brightness, Brightness.dark);
    expect(AppThemes.lightTheme.useMaterial3, isTrue);
  });
}
