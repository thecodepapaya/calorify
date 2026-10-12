import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_trigger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Grass extends StatelessWidget {
  const Grass({super.key, this.height = 100, this.onTap});

  final double height;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return CatTrigger(
      triggerProbability: 1.0,
      edgeHint: Edge.bottom,
      onTrigger: () {
        Analytics.instance.logEvent(AnalyticsEvent.easterEggDiscovered);
        debugPrint(
          '🌱 Grass tapped! Showing cute cat easter egg (global overlay)...',
        );
        onTap?.call();
      },
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: -16,
              right: -16,
              bottom: -8,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  colorScheme.primary,
                  BlendMode.srcIn,
                ),
                child: SvgPicture.asset(
                  'assets/vectors/grass.svg',
                  width: double.infinity,
                  height: height + 8,
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
