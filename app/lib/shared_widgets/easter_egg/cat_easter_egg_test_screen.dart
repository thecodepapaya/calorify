import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Debug screen to simulate all cat animations. Pick a cat and trigger
/// any animation that cat supports.
class CatEasterEggTestScreen extends StatefulWidget {
  const CatEasterEggTestScreen({super.key});

  @override
  State<CatEasterEggTestScreen> createState() => _CatEasterEggTestScreenState();
}

class _CatEasterEggTestScreenState extends State<CatEasterEggTestScreen> {
  late Cat _selectedCat;

  @override
  void initState() {
    super.initState();
    assert(allCats.isNotEmpty, 'allCats must not be empty');
    _selectedCat = allCats.first;
  }

  static String _catLabel(Cat cat) {
    final name = cat.runtimeType.toString();
    return name
        .replaceAll(RegExp(r'Cat$'), '')
        .split(RegExp(r'(?=[A-Z])'))
        .where((s) => s.isNotEmpty)
        .map(
          (s) =>
              '${s[0].toUpperCase()}${s.length > 1 ? s.substring(1).toLowerCase() : ''}',
        )
        .join(' ');
  }

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
      case CatAnimationType.jumpAtYou:
      case CatAnimationType.doublePeek:
        return Edge.bottom;
    }
  }

  @override
  Widget build(BuildContext context) {
    final cats = allCats;
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
                  const SizedBox(height: 8),
                  DropdownButton<Cat>(
                    value: _selectedCat,
                    isExpanded: true,
                    items:
                        cats.map((c) {
                          return DropdownMenuItem<Cat>(
                            value: c,
                            child: Text(_catLabel(c)),
                          );
                        }).toList(),
                    onChanged: (Cat? value) {
                      if (value != null) setState(() => _selectedCat = value);
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text('Animations', style: theme.textTheme.titleMedium),
          const SizedBox(height: 8),
          ...CatAnimationType.values.map((type) {
            final supported = catSupportsAnimation(_selectedCat, type);
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Card(
                child: ListTile(
                  leading: Icon(
                    supported ? LucideIcons.play : LucideIcons.minus,
                    color:
                        supported
                            ? theme.colorScheme.primary
                            : theme.disabledColor,
                  ),
                  title: Text(_animationLabel(type)),
                  subtitle: Text(
                    supported ? 'Tap to play' : 'Not supported for this cat',
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: supported ? null : theme.disabledColor,
                    ),
                  ),
                  trailing:
                      supported
                          ? FilledButton.tonal(
                            onPressed: () {
                              CatOverlay.of(context)?.showCat(
                                preferredCat: _selectedCat,
                                preferredAnimation: type,
                                edgeHint: _edgeForAnimation(type),
                              );
                            },
                            child: const Text('Play'),
                          )
                          : null,
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
