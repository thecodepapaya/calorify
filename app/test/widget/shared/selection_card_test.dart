import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:widgets/widgets.dart';
import '../../helpers/test_helpers.dart';
import '../../setup/all_tests.dart';

void main() {
  setUpAll(() {
    setupAllTests();
  });

  group('SelectionCard Widget', () {
    testWidgets('renders title and description', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        SelectionCard(
          title: 'Test Title',
          description: 'Test Description',
          icon: AppIcons.apple,
          color: Colors.red,
          isSelected: false,
          onTap: () {},
        ),
      ));

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Description'), findsOneWidget);
      expect(find.byIcon(AppIcons.apple), findsOneWidget);
    });

    testWidgets('calls onTap when tapped', (WidgetTester tester) async {
      bool tapped = false;
      await tester.pumpWidget(wrapWithProviders(
        SelectionCard(
          title: 'Test Title',
          description: 'Test Description',
          icon: AppIcons.apple,
          color: Colors.red,
          isSelected: false,
          onTap: () => tapped = true,
        ),
      ));

      await tester.tap(find.byType(SelectionCard));
      await tester.pump();

      expect(tapped, isTrue);
    });

    testWidgets('shows check icon when selected', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        SelectionCard(
          title: 'Test Title',
          description: 'Test Description',
          icon: AppIcons.apple,
          color: Colors.red,
          isSelected: true,
          onTap: () {},
        ),
      ));

      expect(find.byIcon(AppIcons.check), findsOneWidget);
    });

    testWidgets('does not show check icon when not selected', (WidgetTester tester) async {
      await tester.pumpWidget(wrapWithProviders(
        SelectionCard(
          title: 'Test Title',
          description: 'Test Description',
          icon: AppIcons.apple,
          color: Colors.red,
          isSelected: false,
          onTap: () {},
        ),
      ));

      expect(find.byIcon(AppIcons.check), findsNothing);
    });
  });
}
