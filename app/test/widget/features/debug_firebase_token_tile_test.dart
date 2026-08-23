import 'dart:async';

import 'package:calorify/features/debug/widgets/debug_firebase_token_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('resolves a fresh token and copies it', (tester) async {
    String? copied;
    var copiedCallbackCount = 0;
    var resolverCallCount = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DebugFirebaseTokenTile(
            isAuthenticated: true,
            resolveToken: () async {
              resolverCallCount++;
              return 'firebase-token-123';
            },
            copyText: (value) async => copied = value,
            onCopied: () => copiedCallbackCount++,
          ),
        ),
      ),
    );

    expect(find.text('Firebase bearer token'), findsOneWidget);
    expect(find.text('firebase-token-123'), findsNothing);

    await tester.tap(find.byTooltip('Copy Firebase bearer token'));
    await tester.pump();

    expect(resolverCallCount, 1);
    expect(copied, 'firebase-token-123');
    expect(copiedCallbackCount, 1);
  });

  testWidgets('disables copying while signed out', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DebugFirebaseTokenTile(
            isAuthenticated: false,
            resolveToken: () async => 'unexpected-token',
          ),
        ),
      ),
    );

    expect(find.text('Not authenticated'), findsOneWidget);
    final copyButton = tester.widget<IconButton>(
      find.descendant(
        of: find.byKey(const ValueKey('debug-firebase-token-tile')),
        matching: find.byType(IconButton),
      ),
    );
    expect(copyButton.onPressed, isNull);
  });

  testWidgets('prevents duplicate copies while resolving', (tester) async {
    final token = Completer<String?>();
    var resolverCallCount = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: DebugFirebaseTokenTile(
            isAuthenticated: true,
            resolveToken: () {
              resolverCallCount++;
              return token.future;
            },
            copyText: (_) async {},
          ),
        ),
      ),
    );

    await tester.tap(find.byTooltip('Copy Firebase bearer token'));
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    expect(resolverCallCount, 1);

    token.complete('firebase-token');
    await tester.pump();
    expect(find.byType(CircularProgressIndicator), findsNothing);
  });
}
