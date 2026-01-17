import 'package:flutter_test/flutter_test.dart';
import 'package:calorify/shared_widgets/error_view.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('ErrorView Widget', () {
    testWidgets('renders error icon and message', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        const ErrorView(error: 'Some error'),
      ));

      expect(find.byIcon(LucideIcons.info), findsOneWidget);
      // t.errors.somethingWentWrong might be 'Something went wrong' in English
      expect(find.textContaining('went wrong'), findsOneWidget);
    });
  });
}
