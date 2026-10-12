import 'dart:math' as math;

import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:flutter/material.dart';
import 'package:widgets/widgets.dart';

/// Debug screen to simulate all cat animations. Pick a cat and trigger
/// any animation that cat supports.
class CatEasterEggTestScreen extends StatefulWidget {
  const CatEasterEggTestScreen({super.key});

  @override
  State<CatEasterEggTestScreen> createState() => _CatEasterEggTestScreenState();
}

class _CatEasterEggTestScreenState extends State<CatEasterEggTestScreen> {
  late final List<Cat> _cats;
  late Cat _selectedCat;

  @override
  void initState() {
    super.initState();
    _cats = allCats;
    assert(_cats.isNotEmpty, 'allCats must not be empty');
    _selectedCat = _cats.first;
  }

  static String _catLabel(Cat cat) => cat.displayName;

  static String _animationLabel(CatAnimationType type) {
    final name = type.name;
    return name
        .split(RegExp(r'(?=[A-Z])'))
        .where((s) => s.isNotEmpty)
        .map(
          (s) =>
              '${s[0].toUpperCase()}${s.length > 1 ? s.substring(1).toLowerCase() : ''}',
        )
        .join(' ');
  }

  /// Edge hint that works for this animation type (so overlay doesn't filter it out).
  static Edge? _edgeForAnimation(CatAnimationType type) {
    switch (type) {
      case CatAnimationType.topPeek:
        return Edge.top;
      case CatAnimationType.sidePeek:
        return Edge.left;
      case CatAnimationType.peek:
      case CatAnimationType.doublePeek:
        return Edge.bottom;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Cat Animation Simulator')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Select cat', style: theme.textTheme.titleSmall),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 6,
                    runSpacing: 3,
                    children:
                        _cats.map((cat) {
                          return ChoiceChip(
                            avatar: _CatThumbnail(cat: cat),
                            label: Text(_catLabel(cat)),
                            labelStyle: theme.textTheme.bodyMedium,
                            labelPadding: const EdgeInsets.symmetric(
                              horizontal: 6,
                            ),
                            showCheckmark: false,
                            selected: identical(cat, _selectedCat),
                            onSelected:
                                (_) => setState(() => _selectedCat = cat),
                          );
                        }).toList(),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'Animations · ${_catLabel(_selectedCat)}',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 4),
          Card(
            child: Column(
              children:
                  CatAnimationType.values.map((type) {
                    final supported = catSupportsAnimation(_selectedCat, type);
                    return ListTile(
                      leading: Icon(
                        supported ? AppIcons.play : AppIcons.minus,
                        size: 22,
                        color:
                            supported
                                ? theme.colorScheme.primary
                                : theme.disabledColor,
                      ),
                      title: Text(_animationLabel(type)),
                      subtitle: Text(
                        supported ? 'Tap to play' : 'Unavailable',
                        maxLines: 1,
                      ),
                      trailing:
                          supported
                              ? const Icon(AppIcons.chevronRight, size: 18)
                              : null,
                      enabled: supported,
                      onTap:
                          supported
                              ? () => CatOverlay.of(context)?.showCat(
                                preferredCat: _selectedCat,
                                preferredAnimation: type,
                                edgeHint: _edgeForAnimation(type),
                              )
                              : null,
                    );
                  }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _CatThumbnail extends StatelessWidget {
  const _CatThumbnail({required this.cat});

  final Cat cat;

  @override
  Widget build(BuildContext context) {
    const extent = 24.0;
    final bounds = cat.visibleBounds;
    final scale = extent * 0.9 / bounds.longestSide;
    final sourceExtent = CatEasterEggConfig.sourceAssetExtent * scale;
    final visibleWidth = bounds.width * scale;
    final visibleHeight = bounds.height * scale;
    final imageLeft = (extent - visibleWidth) / 2 - bounds.left * scale;
    final imageTop = (extent - visibleHeight) / 2 - bounds.top * scale;

    return ClipRect(
      child: Transform.rotate(
        angle: cat.rotationOffsetDegrees * math.pi / 180,
        child: SizedBox.square(
          dimension: extent,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: imageLeft,
                top: imageTop,
                width: sourceExtent,
                height: sourceExtent,
                child: Image.asset(
                  cat.path,
                  fit: BoxFit.contain,
                  gaplessPlayback: true,
                  errorBuilder:
                      (context, error, stackTrace) =>
                          const Icon(AppIcons.cat, size: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
