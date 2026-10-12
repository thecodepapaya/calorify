import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'app_icons.dart';

/// The shared favourite-state icon used by the phone and watch apps.
///
/// The Lucide Flutter font only contains stroked glyphs, so it cannot fill the
/// centre of [AppIcons.star]. For the selected state, this widget paints the
/// official Lucide star path underneath the font glyph. Keeping that detail
/// here prevents feature widgets from duplicating fragile SVG markup while
/// preserving the exact same Lucide silhouette in both states.
class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    super.key,
    this.isFavorite = false,
    this.size,
    this.color,
  });

  final bool isFavorite;

  /// Overrides the ambient [IconTheme] size.
  final double? size;

  /// Overrides both the fill and outline color.
  ///
  /// Selected icons default to amber. Unselected icons inherit [IconTheme].
  final Color? color;

  @override
  Widget build(BuildContext context) {
    final iconTheme = IconTheme.of(context);
    final effectiveSize = size ?? iconTheme.size ?? 24;
    final effectiveColor =
        color ??
        (isFavorite
            ? Colors.amber
            : iconTheme.color ??
                Theme.of(context).colorScheme.onSurfaceVariant);

    return SizedBox.square(
      dimension: effectiveSize,
      child: Stack(
        fit: StackFit.expand,
        children: [
          if (isFavorite)
            SvgPicture.string(
              _filledLucideStarSvg,
              excludeFromSemantics: true,
              colorFilter: ColorFilter.mode(effectiveColor, BlendMode.srcIn),
            ),
          Icon(AppIcons.star, size: effectiveSize, color: effectiveColor),
        ],
      ),
    );
  }
}

// This is the closed path shipped for `AppIcons.star`. Lucide's icon font
// converts its stroke to an outline-only glyph, while the original closed path
// lets flutter_svg add the selected-state fill without changing icon geometry.
const _filledLucideStarSvg = '''
<svg viewBox="0 0 24 24" fill="black" stroke="black" stroke-width="2"
  stroke-linecap="round" stroke-linejoin="round">
  <path d="M11.525 2.295a.53.53 0 0 1 .95 0l2.31 4.679a2.123 2.123 0 0 0
    1.595 1.16l5.166.756a.53.53 0 0 1 .294.904l-3.736 3.638a2.123
    2.123 0 0 0-.611 1.878l.882 5.14a.53.53 0 0 1-.771.56l-4.618-2.428a2.122
    2.122 0 0 0-1.973 0L6.396 21.01a.53.53 0 0 1-.77-.56l.881-5.139a2.122
    2.122 0 0 0-.611-1.879L2.16 9.795a.53.53 0 0 1 .294-.906l5.165-.755a2.122
    2.122 0 0 0 1.597-1.16z" />
</svg>
''';
