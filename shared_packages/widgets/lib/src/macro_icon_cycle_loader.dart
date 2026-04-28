import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:specs/specs.dart';

/// Cycling loader using the same macro Lucide icons as carbs / protein / fat / fiber:
/// ease-out zoom in → ease-in shrink to dot → repeat with the next icon.
///
/// [progress] is typically [AnimationController.value] over `[0, 1)` repeating.
class MacroIconCycleLoader extends StatelessWidget {
  const MacroIconCycleLoader({
    super.key,
    required this.progress,
    required this.haloBaseColor,
    this.iconSize = 42,
    this.haloDiameter = 76,
  });

  /// Loop driver (one full rotation cycles through every macro icon once).
  final double progress;

  /// Tint for the soft circular halo (commonly [ColorScheme.primary]).
  final Color haloBaseColor;

  final double iconSize;
  final double haloDiameter;

  static const List<IconData> _icons = [
    LucideIcons.wheat,
    LucideIcons.drumstick,
    LucideIcons.egg,
    LucideIcons.leaf,
  ];

  static final List<Color> _macroColors = [
    carbsIconColor,
    proteinIconColor,
    fatIconColor,
    fiberIconColor,
  ];

  static const int _n = 4;

  static const double _zoomEnd = 0.42;
  static const double _shrinkEnd = 0.9;
  static const double _dotScale = 0.07;

  static double _scaleInSlot(double u) {
    if (u < _zoomEnd) {
      final t = (u / _zoomEnd).clamp(0.0, 1.0);
      return Curves.easeOutCubic.transform(t);
    }
    if (u < _shrinkEnd) {
      final t =
          ((u - _zoomEnd) / (_shrinkEnd - _zoomEnd)).clamp(0.0, 1.0);
      final k = Curves.easeInCubic.transform(t);
      return 1.0 + (_dotScale - 1.0) * k;
    }
    return _dotScale;
  }

  @override
  Widget build(BuildContext context) {
    final phase = progress * _n;
    final idx = phase.floor() % _n;
    final u = phase - phase.floor();
    final iconScale = _scaleInSlot(u);
    final haloPulse = 0.985 + 0.015 * math.sin(progress * 2 * math.pi);

    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.scale(
          scale: haloPulse,
          child: Container(
            height: haloDiameter,
            width: haloDiameter,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: haloBaseColor.withValues(alpha: 0.08),
            ),
          ),
        ),
        Transform.scale(
          scale: iconScale,
          alignment: Alignment.center,
          filterQuality: FilterQuality.medium,
          child: Icon(
            _icons[idx],
            key: ValueKey<int>(idx),
            size: iconSize,
            color: _macroColors[idx],
          ),
        ),
      ],
    );
  }
}
