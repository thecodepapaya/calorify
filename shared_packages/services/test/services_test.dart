import 'package:flutter_test/flutter_test.dart';
import 'package:services/services.dart';

void main() {
  test('feedback query parameters are URI encoded', () {
    expect(
      encodeQueryParameters({'subject': 'Meal feedback', 'body': 'A&B'}),
      'subject=Meal%20feedback&body=A%26B',
    );
  });
}
