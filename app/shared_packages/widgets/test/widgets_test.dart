import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/widgets.dart';

void main() {
  test('the shared icon facade exposes Material icon data', () {
    expect(AppIcons.info, isA<IconData>());
  });

  testWidgets('FavoriteIcon keeps the Lucide outline when unselected', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: FavoriteIcon(color: Colors.grey)),
    );

    expect(find.byIcon(AppIcons.star), findsOneWidget);
    expect(find.byType(SvgPicture), findsNothing);
  });

  testWidgets('FavoriteIcon fills the same Lucide star when selected', (
    tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(home: FavoriteIcon(isFavorite: true)),
    );

    final outline = tester.widget<Icon>(find.byIcon(AppIcons.star));
    expect(outline.color, Colors.amber);
    expect(find.byType(SvgPicture), findsOneWidget);
    expect(find.byIcon(Icons.star), findsNothing);
  });

  testWidgets('FavoriteIcon inherits its size from IconTheme', (tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: IconTheme(data: IconThemeData(size: 18), child: FavoriteIcon()),
      ),
    );

    final outline = tester.widget<Icon>(find.byIcon(AppIcons.star));
    expect(outline.size, 18);
  });
}
