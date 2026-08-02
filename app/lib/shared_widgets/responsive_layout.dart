import 'package:flutter/material.dart';

/// Shared responsive breakpoints for the phone, foldable and tablet layouts.
abstract final class AppBreakpoints {
  static const double compact = 600;
  static const double expanded = 900;
  static const double extraExpanded = 1200;
}

/// Centers content at a readable width without changing compact-phone layouts.
///
/// Use this inside scaffold bodies and scroll views. The widget expands to the
/// available height when its parent provides one, so it is also safe around
/// list views and page views.
class ResponsiveContent extends StatelessWidget {
  const ResponsiveContent({
    super.key,
    required this.child,
    this.maxWidth = 840,
    this.wideHorizontalPadding = 24,
    this.alignment = Alignment.topCenter,
  });

  final Widget child;
  final double maxWidth;
  final double wideHorizontalPadding;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isWide = constraints.maxWidth >= AppBreakpoints.compact;
        final horizontalPadding = isWide ? wideHorizontalPadding : 0.0;
        final availableWidth =
            (constraints.maxWidth - horizontalPadding * 2)
                .clamp(0.0, maxWidth)
                .toDouble();

        return Align(
          alignment: alignment,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
            child: SizedBox(
              key: const Key('responsive_content_pane'),
              width: availableWidth,
              height:
                  constraints.hasBoundedHeight ? constraints.maxHeight : null,
              child: child,
            ),
          ),
        );
      },
    );
  }
}

/// Keeps the complete app inside one unobstructed pane on foldables.
///
/// Flutter updates the nested MediaQuery to the selected sub-screen, so all
/// routes, dialogs, sheets and responsive breakpoints see the usable pane size
/// instead of laying controls underneath a hinge.
class FoldAwareAppViewport extends StatelessWidget {
  const FoldAwareAppViewport({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DisplayFeatureSubScreen(child: child);
  }
}
