import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Debug sub-screen to test cat easter egg: each [catAnimParams] entry
/// is shown as a button that triggers that cat with its params.
class CatEasterEggTestScreen extends StatelessWidget {
  const CatEasterEggTestScreen({super.key});

  static String _assetLabel(CatAsset asset) {
    final name = asset.name;
    return name
        .split(RegExp(r'(?=[A-Z])'))
        .map((s) => s.isEmpty ? s : '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}')
        .join(' ');
  }

  static String _paramsSummary(CatAnimParams p) {
    final parts = <String>[];
    if (p.peekPopDuration != const Duration(milliseconds: 2000)) {
      parts.add('peekPop ${p.peekPopDuration.inMilliseconds}ms');
    }
    if (p.leapDuration != const Duration(milliseconds: 1800)) {
      parts.add('leap ${p.leapDuration.inMilliseconds}ms');
    }
    if (p.sidePeekDuration != const Duration(milliseconds: 2000)) {
      parts.add('sidePeek ${p.sidePeekDuration.inMilliseconds}ms');
    }
    if (p.leapHeight != 80.0) parts.add('leapH ${p.leapHeight}');
    if (p.horizontalTravel != 140.0) parts.add('travel ${p.horizontalTravel}');
    if (p.xRange != 100.0) parts.add('xRange ${p.xRange}');
    if (p.yRange != 60.0) parts.add('yRange ${p.yRange}');
    if (p.peekYOffset != -40.0) parts.add('peekY ${p.peekYOffset}');
    if (p.sidePeekYOffsetFactor != 0.3) parts.add('sideY ${p.sidePeekYOffsetFactor}');
    if (p.allowedCropFraction != 0.4) parts.add('crop ${p.allowedCropFraction}');
    return parts.isEmpty ? 'defaults' : parts.join(', ');
  }

  @override
  Widget build(BuildContext context) {
    final entries = catAnimParams.entries.toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Cat Easter Egg Testing')),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: entries.length,
        itemBuilder: (context, index) {
          final asset = entries[index].key;
          final params = entries[index].value;
          final eligible = catAnimationEligibility[asset];
          final eligibleStr = eligible
              ?.map((e) => e.name)
              .join(', ') ?? '—';

          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Card(
              child: ListTile(
                leading: const Icon(LucideIcons.cat, color: Colors.orange),
                title: Text(_assetLabel(asset)),
                subtitle: Text(
                  '${_paramsSummary(params)}\nEligible: $eligibleStr',
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                isThreeLine: true,
                onTap: () {
                  CatOverlay.of(context)?.showCat(
                    asset: asset,
                    grassHeight: 120,
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
