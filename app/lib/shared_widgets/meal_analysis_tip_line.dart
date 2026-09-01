import 'package:calorify/core/providers/home_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

/// Bundled meal-analysis tips from i18n (`meal.analysis.offlineTip*`).
///
/// Used when the tips API fails or returns nothing usable—same pool [MealAnalysisTipLine]
/// picks from at random for fallback copy.
List<String> _bundledMealAnalysisTips() {
  final m = t.meal.analysis;
  final raw = <String>[
    m.offlineTip0,
    m.offlineTip1,
    m.offlineTip2,
    m.offlineTip3,
    m.offlineTip4,
    m.offlineTip5,
  ];
  return raw.map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
}

/// One bundled tip at random, or `meal.analysis.stepDefault` when none listed.
String _fallbackBundledMealAnalysisTip() {
  final bundled = _bundledMealAnalysisTips();
  if (bundled.isEmpty) return t.meal.analysis.stepDefault.trim();
  return bundled.first;
}

/// Loads **one** meal-analysis tip via [FoodRepository.getMealAnalysisTips] (`count=1`),
/// falling back to bundled tips when the API returns nothing or fails.
///
/// Reserves vertical space for [maxLines] while loading so layout does not jump (replaces the
/// previous pattern of showing `'\n'` with invisible color).
class MealAnalysisTipLine extends ConsumerStatefulWidget {
  const MealAnalysisTipLine({
    super.key,
    this.textAlign = TextAlign.start,
    this.maxLines = 3,
    this.textStyle,
    this.loadRemote = true,
  });

  final TextAlign textAlign;
  final int maxLines;

  /// Defaults to `bodySmall` with [ColorScheme.onSurfaceVariant] at line height **1.35**.
  final TextStyle? textStyle;

  /// Whether to replace the bundled tip with a remotely managed tip.
  ///
  /// Input forms should normally keep this false so opening them never waits
  /// on an unrelated network request. Analysis progress screens can opt in.
  final bool loadRemote;

  @override
  ConsumerState<MealAnalysisTipLine> createState() =>
      _MealAnalysisTipLineState();
}

class _MealAnalysisTipLineState extends ConsumerState<MealAnalysisTipLine> {
  String? _resolvedTip;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    if (widget.loadRemote) {
      WidgetsBinding.instance.addPostFrameCallback((_) => _loadTip());
    } else {
      _resolvedTip = _fallbackBundledMealAnalysisTip();
      _loading = false;
    }
  }

  Future<void> _loadTip() async {
    final repo = ref.read(foodRepositoryProvider);
    List<String> remote = const [];
    try {
      remote = await repo.getMealAnalysisTips(count: 1);
    } on Exception {
      remote = const [];
    }
    if (!mounted) return;
    final trimmed =
        remote.map((s) => s.trim()).where((s) => s.isNotEmpty).toList();
    setState(() {
      _resolvedTip =
          trimmed.isNotEmpty
              ? trimmed.first
              : _fallbackBundledMealAnalysisTip();
      _loading = false;
    });
  }

  double _reservedHeight(TextStyle style) {
    final fontSize = style.fontSize ?? 14.0;
    final height = style.height ?? 1.2;
    return fontSize * height * widget.maxLines;
  }

  AlignmentGeometry _alignmentFor(TextAlign align) {
    switch (align) {
      case TextAlign.center:
        return Alignment.topCenter;
      case TextAlign.end:
      case TextAlign.right:
        return Alignment.topRight;
      case TextAlign.start:
      case TextAlign.left:
      case TextAlign.justify:
        return Alignment.topLeft;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final resolvedStyle =
        widget.textStyle ??
        theme.textTheme.bodySmall!.copyWith(
          color: colorScheme.onSurfaceVariant,
          height: 1.35,
        );

    final h = _reservedHeight(resolvedStyle);

    return SizedBox(
      width: double.infinity,
      height: h,
      child: Align(
        alignment: _alignmentFor(widget.textAlign),
        child: AnimatedSwitcher(
          duration:
              MediaQuery.disableAnimationsOf(context)
                  ? Duration.zero
                  : const Duration(milliseconds: 400),
          switchInCurve: Curves.easeOutCubic,
          switchOutCurve: Curves.easeInCubic,
          transitionBuilder:
              (child, animation) =>
                  FadeTransition(opacity: animation, child: child),
          child:
              _loading
                  ? SizedBox(
                    key: const ValueKey('meal-analysis-tip-loading'),
                    width: double.infinity,
                    height: h,
                  )
                  : Text(
                    key: const ValueKey('meal-analysis-tip-resolved'),
                    _resolvedTip ?? '',
                    textAlign: widget.textAlign,
                    maxLines: widget.maxLines,
                    overflow: TextOverflow.ellipsis,
                    style: resolvedStyle,
                  ),
        ),
      ),
    );
  }
}
