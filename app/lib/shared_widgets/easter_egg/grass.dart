import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Grass extends StatefulWidget {
  const Grass({super.key, this.height = 100, this.onTap});

  final double height;
  final VoidCallback? onTap;

  @override
  State<Grass> createState() => _GrassState();
}

class _GrassState extends State<Grass> {
  void _handleTap() {
    Analytics.instance.logEvent(AnalyticsEvent.easterEggDiscovered);
    debugPrint(
      '🌱 Grass tapped! Showing cute cat easter egg (global overlay)...',
    );
    // Use global overlay to show a random cat from the bottom (grass)
    CatOverlay.of(context)?.showCat(
      asset: null,
      edgeHint: Edge.bottom,
      // grassHeight: widget.height,
    );
    widget.onTap?.call();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: _handleTap,
      child: SizedBox(
        height: widget.height,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            // Cats handled by global overlay (CatOverlay); grass remains visual only.
            // SVG grass (on top)
            Positioned(
              left: -16, // Overflow 16px on left
              right: -16, // Overflow 16px on right
              bottom: -8, // Overflow 8px on bottom
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  colorScheme.primary,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  'assets/vectors/grass.svg',
                  width: double.infinity,
                  height: widget.height + 8, // Add bottom overflow to height
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
