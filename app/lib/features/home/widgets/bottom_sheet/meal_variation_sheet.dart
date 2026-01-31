import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';

Future<void> showMealVariation({
  required BuildContext context,
  required MealDetectionResponse response,
  Uint8List? imageBytes,
}) {
  return showModalBottomSheet(
    context: context,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    isScrollControlled: true,
    routeSettings: const RouteSettings(name: RouteNames.mealVariationSheet),
    builder:
        (context) =>
            _MealClarification(response: response, imageBytes: imageBytes),
  );
}

class _MealClarification extends StatefulWidget {
  const _MealClarification({required this.response, this.imageBytes});

  final MealDetectionResponse response;
  final Uint8List? imageBytes;

  @override
  State<_MealClarification> createState() => _MealClarificationState();
}

class _MealClarificationState extends State<_MealClarification>
    with TickerProviderStateMixin {
  int _currentQuestionIndex = 0;
  final Map<int, int> _selectedOptions = {}; // questionIndex -> optionIndex

  late AnimationController _fadeController;
  late AnimationController _slideController;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _slideAnimation;

  List<Variation> get _variations => widget.response.variations;

  @override
  void initState() {
    super.initState();
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _slideController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeInOut,
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.1, 0),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _slideController, curve: Curves.easeInOut),
    );

    _fadeController.forward();
    _slideController.forward();
  }

  @override
  void dispose() {
    _fadeController.dispose();
    _slideController.dispose();
    super.dispose();
  }

  void _onOptionSelected(int optionIndex) {
    setState(() {
      _selectedOptions[_currentQuestionIndex] = optionIndex;
    });

    final isLastQuestion = _currentQuestionIndex == _variations.length - 1;

    // Automatically move to next question or complete after a short delay
    Future.delayed(const Duration(milliseconds: 300), () {
      if (mounted) {
        Analytics.instance.logEvent(AnalyticsEvent.mealVariationNext);
        if (isLastQuestion) {
          _onComplete();
        } else {
          _onNext();
        }
      }
    });
  }

  void _onBack() {
    if (_currentQuestionIndex > 0) {
      _fadeController.reverse().then((_) {
        _slideController.reverse().then((_) {
          setState(() {
            _currentQuestionIndex--;
          });
          _fadeController.forward();
          _slideController.forward();
        });
      });
    }
  }

  void _onNext() {
    if (_currentQuestionIndex < _variations.length - 1) {
      _fadeController.reverse().then((_) {
        _slideController.reverse().then((_) {
          setState(() {
            _currentQuestionIndex++;
          });
          _fadeController.forward();
          _slideController.forward();
        });
      });
    } else {
      _onComplete();
    }
  }

  void _onSkip() {
    // Mark current question as skipped (no selection)
    setState(() {
      _selectedOptions.remove(_currentQuestionIndex);
    });
    _onNext();
  }

  void _onComplete() {
    // Calculate final macros
    final baseMeal = widget.response.result.meal;
    if (!baseMeal.hasMacros()) {
      // No base meal, just close
      Navigator.of(context).pop();
      return;
    }

    MealMacro finalMacros = baseMeal.macros;

    // Add macro diffs from selected options
    for (int i = 0; i < _variations.length; i++) {
      if (_selectedOptions.containsKey(i)) {
        final selectedOptionIndex = _selectedOptions[i]!;
        if (selectedOptionIndex < _variations[i].options.length) {
          final option = _variations[i].options[selectedOptionIndex];
          if (option.hasMacroDiff()) {
            finalMacros = finalMacros + option.macroDiff;
          }
        }
      }
    }

    // Create updated meal with final macros
    final updatedMeal = baseMeal.deepCopy();
    updatedMeal.macros = finalMacros;

    // Create updated MealDetectionResult
    final updatedResult = widget.response.result.deepCopy();
    updatedResult.meal = updatedMeal;

    // Close clarification sheet and show meal tip sheet
    Navigator.of(context).pop();
    showMealTip(
      context: context,
      mealDetectionResult: updatedResult,
      imageBytes: widget.imageBytes,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_variations.isEmpty) {
      // Should not happen, but handle gracefully
      return BaseBottomSheet(child: Text('No clarifications available'));
    }

    final currentClarification = _variations[_currentQuestionIndex];

    return BaseBottomSheet(
      child: FadeTransition(
        opacity: _fadeAnimation,
        child: SlideTransition(
          position: _slideAnimation,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProgressIndicator(context),
              const SizedBox(height: 24),
              _buildQuestion(context, currentClarification.question),
              const SizedBox(height: 20),
              _buildOptions(context, currentClarification),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressIndicator(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    final canGoBack = _currentQuestionIndex > 0;

    return Row(
      children: [
        if (canGoBack)
          IconButton(
            onPressed: _onBack,
            icon: Icon(LucideIcons.arrowLeft, size: 20),
            color: colorScheme.onSurface,
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            visualDensity: VisualDensity.compact,
          ),
        if (canGoBack) const SizedBox(width: 8),
        Text(
          'Question ${_currentQuestionIndex + 1} of ${_variations.length}',
          style: textTheme.bodySmall?.copyWith(
            color: colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const Spacer(),
        TextButton.icon(
          onPressed: () {
            Analytics.instance.logEvent(AnalyticsEvent.mealVariationSkip);
            _onSkip();
          },
          icon: Icon(LucideIcons.skipForward, size: 16),
          label: const Text('Skip'),
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            minimumSize: const Size(0, 32),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ],
    );
  }

  Widget _buildQuestion(BuildContext context, String question) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(LucideIcons.info, color: colorScheme.primary, size: 22),
        const SizedBox(width: 12),
        Expanded(
          child: Text(
            question,
            style: textTheme.titleMedium?.copyWith(
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w600,
              height: 1.3,
              letterSpacing: -0.2,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildOptions(BuildContext context, Variation clarification) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.start,
      children: List.generate(
        clarification.options.length,
        (index) => _OptionTile(
          option: clarification.options[index].option,
          isSelected: _selectedOptions[_currentQuestionIndex] == index,
          onTap: () => _onOptionSelected(index),
        ),
      ),
    );
  }
}

class _OptionTile extends StatefulWidget {
  const _OptionTile({
    required this.option,
    required this.isSelected,
    required this.onTap,
  });

  final String option;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  State<_OptionTile> createState() => _OptionTileState();
}

class _OptionTileState extends State<_OptionTile>
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
  void didUpdateWidget(_OptionTile oldWidget) {
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
          children: [
            Text(
              widget.option,
              style: textTheme.bodyMedium?.copyWith(
                color:
                    widget.isSelected
                        ? colorScheme.onPrimaryContainer
                        : colorScheme.onSurface,
                fontWeight:
                    widget.isSelected ? FontWeight.w600 : FontWeight.normal,
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
