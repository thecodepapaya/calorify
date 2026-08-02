import 'package:calorify/features/debug/widgets/debug_user_id_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows the user ID and copies it', (tester) async {
    String? copied;
    var copiedCallbackCount = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DebugUserIdField(
            userId: 'firebase-user-123',
            copyText: (value) async => copied = value,
            onCopied: () => copiedCallbackCount++,
          ),
        ),
      ),
    );

    expect(find.text('User ID'), findsOneWidget);
    expect(find.text('firebase-user-123'), findsOneWidget);
    expect(find.byTooltip('Copy user ID'), findsOneWidget);

    await tester.tap(find.byTooltip('Copy user ID'));
    await tester.pump();
    expect(copied, 'firebase-user-123');
    expect(copiedCallbackCount, 1);
  });

  testWidgets('shows a safe signed-out state', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(home: Scaffold(body: DebugUserIdField(userId: null))),
    );

    expect(find.text('Not authenticated'), findsOneWidget);
    final copyButton = tester.widget<IconButton>(
      find.descendant(
        of: find.byKey(const ValueKey('debug-user-id-field')),
        matching: find.byType(IconButton),
      ),
    );
    expect(copyButton.onPressed, isNull);
  });

  testWidgets('updates when the authenticated user changes', (tester) async {
    Widget app(String? userId) =>
        MaterialApp(home: Scaffold(body: DebugUserIdField(userId: userId)));

    await tester.pumpWidget(app(null));
    expect(find.text('Not authenticated'), findsOneWidget);

    await tester.pumpWidget(app('new-firebase-user'));
    expect(find.text('Not authenticated'), findsNothing);
    expect(find.text('new-firebase-user'), findsOneWidget);
  });
}
