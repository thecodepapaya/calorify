import 'package:flutter/material.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_peek_easter_egg.dart';

class CatOverlay extends StatefulWidget {
  const CatOverlay({required this.child, super.key});

  final Widget child;

  static CatOverlayState? of(BuildContext context) =>
      context.findAncestorStateOfType<CatOverlayState>();

  @override
  CatOverlayState createState() => CatOverlayState();
}

class CatOverlayState extends State<CatOverlay> {
  final GlobalKey<OverlayState> _overlayKey = GlobalKey<OverlayState>();

  OverlayState? get _overlay => _overlayKey.currentState;

  void showCat({
    CatAsset? asset,
    Offset? globalPosition,
    CatAnimationType? preferredAnimation,
    Edge? edgeHint,
    CatAnimParams? overrides,
    double grassHeight = 120,
  }) {
    final chosenAsset =
        asset ?? (catAnimationEligibility.keys.toList()..shuffle()).first;
    final params =
        overrides ?? catAnimParams[chosenAsset] ?? const CatAnimParams();

    final eligible = catAnimationEligibility[chosenAsset];
    if (eligible == null) {
      debugPrint('🐱 No eligible animations for cat asset: $chosenAsset');
      return;
    }
    final animationType =
        preferredAnimation ??
        (List<CatAnimationType>.from(eligible)..shuffle()).first;

    OverlayEntry? entryRef;
    entryRef = OverlayEntry(
      builder: (ctx) {
        void removeEntry() {
          entryRef?.remove();
        }

        final isEdgeAnimation =
            animationType == CatAnimationType.sidePeek ||
            animationType == CatAnimationType.topPeek;
        final content = CatAnimationWidget(
          asset: chosenAsset,
          animationType: animationType,
          params: params,
          onComplete: removeEntry,
          grassHeight: grassHeight,
        );

        return Positioned.fill(
          child: IgnorePointer(
            child:
                isEdgeAnimation
                    ? content
                    : Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                        height: grassHeight + 220,
                        width: double.infinity,
                        child: content,
                      ),
                    ),
          ),
        );
      },
    );

    _overlay?.insert(entryRef);
  }

  @override
  Widget build(BuildContext context) {
    return Overlay(
      key: _overlayKey,
      initialEntries: [OverlayEntry(builder: (context) => widget.child)],
    );
  }
}
