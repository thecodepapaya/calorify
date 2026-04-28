import 'package:calorify/core/constants/styles.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

/// Tappable option control used by [MealQuestionFlowSheet] for the unified
/// meal question flow (same UI for detection [Variation]s and pipeline steps).
class MealQuestionOptionTile extends StatefulWidget {
  const MealQuestionOptionTile({
    super.key,
    required this.label,
    this.detail,
    required this.isSelected,
    required this.onTap,
  });

  final String label;
  final String? detail;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<MealQuestionOptionTile> createState() => _MealQuestionOptionTileState();
}

class _MealQuestionOptionTileState extends State<MealQuestionOptionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _scaleController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _scaleController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
    );
    _scaleAnimation = CurvedAnimation(
      parent: _scaleController,
      curve: Curves.easeInOut,
    );
    if (widget.isSelected) {
      _scaleController.value = 1.0;
    }
  }

  @override
  void didUpdateWidget(MealQuestionOptionTile oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.isSelected != oldWidget.isSelected) {
      if (widget.isSelected) {
        _scaleController.forward();
      } else {
        _scaleController.reverse();
      }
    }
  }

  @override
  void dispose() {
    _scaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final detail = widget.detail?.trim();
    final hasDetail = detail != null && detail.isNotEmpty;
    final foregroundColor =
        widget.isSelected
            ? colorScheme.onPrimaryContainer
            : colorScheme.onSurface;

    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
        decoration: BoxDecoration(
          color:
              widget.isSelected
                  ? colorScheme.primaryContainer
                  : colorScheme.surface,
          borderRadius: globalRadius,
          border: Border.all(
            color:
                widget.isSelected ? colorScheme.primary : colorScheme.outline,
            width: widget.isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.label,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.bodyMedium?.copyWith(
                      color: foregroundColor,
                      fontWeight:
                          widget.isSelected
                              ? FontWeight.w600
                              : FontWeight.normal,
                      height: 1.22,
                    ),
                  ),
                  if (hasDetail) ...[
                    const SizedBox(height: 3),
                    Text(
                      detail,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.labelSmall?.copyWith(
                        color: foregroundColor.withValues(alpha: 0.72),
                        fontWeight: FontWeight.w400,
                        height: 1.2,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (widget.isSelected) ...[
              const SizedBox(width: 6),
              ScaleTransition(
                scale: _scaleAnimation,
                child: Icon(
                  LucideIcons.check,
                  color: colorScheme.primary,
                  size: 20,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
