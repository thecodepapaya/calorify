import 'package:calorify/shared_widgets/app_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('renders a reusable label', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: AppTag(label: 'Beta'))),
    );

    expect(find.text('Beta'), findsOneWidget);
    expect(tester.widget<AppTag>(find.byType(AppTag)).label, 'Beta');
  });
}
