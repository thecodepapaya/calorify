import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:calorify/shared_widgets/meal_analysis_tip_line.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:widgets/widgets.dart';

Future<void> showMealAnalysisV3LoadingSheet({
  required BuildContext context,
  required Future<void> completion,
  required ValueListenable<MealAnalysisV3Progress?> progress,
  Uint8List? imageBytes,
  String? textDescription,
}) {
  return showModalBottomSheet<void>(
    context: context,
    useRootNavigator: true,
    isDismissible: true,
    enableDrag: true,
    showDragHandle: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealAnalysisSheet),
    builder:
        (_) => MealAnalysisV3LoadingSheet(
          completion: completion,
          progress: progress,
          imageBytes: imageBytes,
          textDescription: textDescription,
        ),
  );
}

class MealAnalysisV3LoadingSheet extends StatefulWidget {
  const MealAnalysisV3LoadingSheet({
    super.key,
    required this.completion,
    required this.progress,
    this.imageBytes,
    this.textDescription,
  });

  final Future<void> completion;
  final ValueListenable<MealAnalysisV3Progress?> progress;
  final Uint8List? imageBytes;
  final String? textDescription;

  @override
  State<MealAnalysisV3LoadingSheet> createState() =>
      _MealAnalysisV3LoadingSheetState();
}

class _MealAnalysisV3LoadingSheetState extends State<MealAnalysisV3LoadingSheet>
    with SingleTickerProviderStateMixin {
  late final AnimationController _motionController;
  bool _closing = false;

  @override
  void initState() {
    super.initState();
    _motionController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    )..repeat();
    widget.completion.then<void>((_) => _close(), onError: (_, _) => _close());
  }

  void _close() {
    if (_closing) return;
    _closing = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      Navigator.of(context).pop();
    });
  }

  @override
  void dispose() {
    _motionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return ValueListenableBuilder<MealAnalysisV3Progress?>(
      valueListenable: widget.progress,
      builder: (context, progress, _) {
        final phase = progress?.phase ?? MealAnalysisV3ProgressPhase.understand;
        final phaseIndex = switch (phase) {
          MealAnalysisV3ProgressPhase.understand => 0,
          MealAnalysisV3ProgressPhase.match => 1,
          MealAnalysisV3ProgressPhase.check => 2,
          MealAnalysisV3ProgressPhase.finish => 3,
        };
        final phaseLabel = switch (phase) {
          MealAnalysisV3ProgressPhase.understand =>
            t.meal.analysis.progressUnderstand,
          MealAnalysisV3ProgressPhase.match => t.meal.analysis.progressMatch,
          MealAnalysisV3ProgressPhase.check => t.meal.analysis.progressCheck,
          MealAnalysisV3ProgressPhase.finish => t.meal.analysis.progressFinish,
        };
        final mealName = progress?.mealName?.trim();
        final ingredientNames = progress?.ingredientNames ?? const <String>[];
        return BaseBottomSheet(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 320),
                child: Text(
                  mealName == null || mealName.isEmpty
                      ? t.meal.analysis.title
                      : mealName,
                  key: ValueKey(mealName),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleLarge?.copyWith(
                    color: colorScheme.onSurface,
                    fontWeight: FontWeight.w600,
                    height: 1.2,
                  ),
                ),
              ),
              if (widget.imageBytes case final bytes?
                  when bytes.isNotEmpty) ...[
                const SizedBox(height: 18),
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.memory(
                    bytes,
                    height: 112,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    gaplessPlayback: true,
                  ),
                ),
              ] else if (widget.textDescription?.trim() case final text?
                  when text.isNotEmpty) ...[
                const SizedBox(height: 14),
                DecoratedBox(
                  decoration: BoxDecoration(
                    color: colorScheme.surfaceContainerHighest.withValues(
                      alpha: 0.42,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(14, 12, 14, 12),
                    child: Text(
                      t.meal.analysis.mealPreviewDescription(
                        text: _shortText(text, 110),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurface.withValues(alpha: 0.78),
                        height: 1.4,
                      ),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 20),
              LinearProgressIndicator(
                value: progress?.progress ?? 0.04,
                minHeight: 6,
                borderRadius: BorderRadius.circular(999),
                color: colorScheme.primary,
                backgroundColor: colorScheme.surfaceContainerHighest.withValues(
                  alpha: 0.88,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 320),
                      child: Text(
                        phaseLabel,
                        key: ValueKey(phase),
                        style: textTheme.titleSmall?.copyWith(
                          color: colorScheme.onSurface.withValues(alpha: 0.75),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    '${phaseIndex + 1}/4',
                    style: textTheme.labelLarge?.copyWith(
                      color: colorScheme.onSurfaceVariant,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 112,
                child: AnimatedBuilder(
                  animation: _motionController,
                  builder:
                      (_, _) => MacroIconCycleLoader(
                        progress: _motionController.value,
                        haloBaseColor: colorScheme.primary,
                      ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                height: 112,
                child: AnimatedSwitcher(
                  duration: const Duration(milliseconds: 320),
                  child:
                      ingredientNames.isEmpty
                          ? Center(
                            key: const ValueKey('v3-ingredients-pending'),
                            child: Text(
                              t.meal.analysis.ingredientsPending,
                              textAlign: TextAlign.center,
                              style: textTheme.bodySmall?.copyWith(
                                color: colorScheme.onSurface.withValues(
                                  alpha: 0.52,
                                ),
                                height: 1.4,
                              ),
                            ),
                          )
                          : ListView.separated(
                            key: ValueKey(ingredientNames.join('|')),
                            physics: const BouncingScrollPhysics(),
                            itemCount: ingredientNames.length,
                            separatorBuilder:
                                (_, _) => const SizedBox(height: 7),
                            itemBuilder:
                                (_, index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 24,
                                      child: Text(
                                        '${index + 1}.',
                                        textAlign: TextAlign.right,
                                        style: textTheme.labelSmall?.copyWith(
                                          color: colorScheme.primary.withValues(
                                            alpha: 0.6,
                                          ),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 8),
                                    Expanded(
                                      child: Text(
                                        ingredientNames[index],
                                        style: textTheme.bodySmall?.copyWith(
                                          color: colorScheme.onSurface
                                              .withValues(alpha: 0.72),
                                          height: 1.34,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ),
                ),
              ),
              const SizedBox(height: 18),
              MealAnalysisTipLine(
                textAlign: TextAlign.center,
                textStyle: textTheme.bodySmall?.copyWith(
                  color: colorScheme.onSurface.withValues(alpha: 0.58),
                  height: 1.45,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  String _shortText(String value, int maxChars) {
    final trimmed = value.trim();
    if (trimmed.length <= maxChars) return trimmed;
    return '${trimmed.substring(0, maxChars).trim()}…';
  }
}
