import 'package:calorify/core/models/profile_models.dart';
import 'package:flutter/material.dart';

/// A reusable horizontal scale widget for selecting numeric values.
/// Supports both metric and imperial units.
class ScaleWidget extends StatefulWidget {
  final double value;
  final UnitSystem unitSystem;
  final ValueChanged<double> onValueChanged;
  final double? minValue;
  final double? maxValue;

  // Configuration
  final double tickWidth;
  final int Function(UnitSystem) ticksPerMajor;
  final double Function(UnitSystem) getMinValue;
  final double Function(UnitSystem) getMaxValue;
  final double Function(UnitSystem) getStep;
  final String Function(double, UnitSystem, BuildContext) formatValue;
  final bool Function(double, int, UnitSystem, int)? shouldShowMajorLabel;
  final bool Function(double, int, UnitSystem, int)? shouldShowMediumLabel;

  const ScaleWidget({
    super.key,
    required this.value,
    required this.unitSystem,
    required this.onValueChanged,
    this.minValue,
    this.maxValue,
    required this.tickWidth,
    required this.ticksPerMajor,
    required this.getMinValue,
    required this.getMaxValue,
    required this.getStep,
    required this.formatValue,
    this.shouldShowMajorLabel,
    this.shouldShowMediumLabel,
  });

  @override
  State<ScaleWidget> createState() => _ScaleWidgetState();
}

class _ScaleWidgetState extends State<ScaleWidget> {
  late PageController _pageController;
  bool _isUserScrolling = false;
  bool _isUpdatingFromUnitChange = false;

  int get _ticksPerMajor => widget.ticksPerMajor(widget.unitSystem);
  int get _ticksPerMedium => (_ticksPerMajor / 2).floor();

  double get _minValue =>
      widget.minValue ?? widget.getMinValue(widget.unitSystem);
  double get _maxValue =>
      widget.maxValue ?? widget.getMaxValue(widget.unitSystem);
  double get _step => widget.getStep(widget.unitSystem);

  int get _totalTicks {
    final range = _maxValue - _minValue;
    return (range / _step).round() + 1;
  }

  /// Converts a value to its corresponding page index
  int _valueToIndex(double value) {
    final clampedValue = value.clamp(_minValue, _maxValue);
    final exactIndex = (clampedValue - _minValue) / _step;
    return exactIndex.round().clamp(0, _totalTicks - 1);
  }

  /// Converts a page index to its corresponding value
  double _indexToValue(int index) {
    final clampedIndex = index.clamp(0, _totalTicks - 1);
    return _minValue + (clampedIndex * _step);
  }

  @override
  void initState() {
    super.initState();
    final initialIndex = _valueToIndex(widget.value);
    _pageController = PageController(
      initialPage: initialIndex,
      viewportFraction: widget.tickWidth / 400.0, // Default for ~400px screen
    );
  }

  @override
  void didUpdateWidget(ScaleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.unitSystem != widget.unitSystem) {
      // Unit system changed, need to recreate controller
      _isUpdatingFromUnitChange = true;
      // First, snap the value to the nearest valid step on the new scale
      final snappedValue = _snapToNearestStep(widget.value);
      final newIndex = _valueToIndex(snappedValue);
      final screenWidth = MediaQuery.of(context).size.width;
      final viewportFraction = widget.tickWidth / screenWidth;
      _pageController.dispose();
      _pageController = PageController(
        initialPage: newIndex,
        viewportFraction: viewportFraction,
      );
      // Ensure we jump to the correct page after the controller is ready
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (_pageController.hasClients) {
          final currentPage =
              _pageController.page?.round() ?? _pageController.initialPage;
          if (currentPage != newIndex) {
            _pageController.jumpToPage(newIndex);
          }
        }
        // Update the value to the snapped value if it differs
        if ((snappedValue - widget.value).abs() > 0.001) {
          widget.onValueChanged(snappedValue);
        }
        _isUpdatingFromUnitChange = false;
      });
    } else if (oldWidget.value != widget.value &&
        !_isUserScrolling &&
        !_isUpdatingFromUnitChange) {
      // Value changed externally (not from user scroll), sync page
      final newIndex = _valueToIndex(widget.value);
      if (_pageController.hasClients &&
          _pageController.page?.round() != newIndex) {
        _pageController.animateToPage(
          newIndex,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    }
  }

  /// Snaps a value to the nearest valid step on the current scale
  double _snapToNearestStep(double value) {
    final clampedValue = value.clamp(_minValue, _maxValue);
    final steps = (clampedValue - _minValue) / _step;
    final roundedSteps = steps.round();
    return _minValue + (roundedSteps * _step);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    if (!_isUserScrolling) return;
    final newValue = _indexToValue(index);
    if ((newValue - widget.value).abs() > 0.001) {
      widget.onValueChanged(newValue);
    }
  }

  bool _shouldShowMajorLabel(double value, int index) {
    if (widget.shouldShowMajorLabel != null) {
      return widget.shouldShowMajorLabel!(
        value,
        index,
        widget.unitSystem,
        _ticksPerMajor,
      );
    }
    // Default: show label at major tick intervals
    return index % _ticksPerMajor == 0;
  }

  bool _shouldShowMediumLabel(double value, int index) {
    if (widget.shouldShowMediumLabel != null) {
      return widget.shouldShowMediumLabel!(
        value,
        index,
        widget.unitSystem,
        _ticksPerMedium,
      );
    }
    // Default: show medium tick at half intervals (but not at major ticks)
    return index % _ticksPerMedium == 0 && index % _ticksPerMajor != 0;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              if (notification is ScrollStartNotification) {
                _isUserScrolling = true;
              } else if (notification is ScrollEndNotification) {
                _isUserScrolling = false;
              }
              return false;
            },
            child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: _totalTicks,
              clipBehavior: Clip.none,
              onPageChanged: _onPageChanged,
              physics: const PageScrollPhysics(),
              scrollBehavior: ScrollBehavior().copyWith(overscroll: false),
              itemBuilder: (context, index) {
                final value = _indexToValue(index);
                final isMajor = _shouldShowMajorLabel(value, index);
                final isMedium = _shouldShowMediumLabel(value, index);

                return Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    if (isMajor)
                      Positioned(
                        bottom: 45,
                        left: 0,
                        right: 0,
                        child: Text(
                          widget.formatValue(value, widget.unitSystem, context),
                          style: TextStyle(
                            fontSize: 12,
                            color:
                                Theme.of(context).colorScheme.onSurfaceVariant,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          overflow: TextOverflow.visible,
                          softWrap: false,
                        ),
                      ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: isMajor ? 2.0 : 1.0,
                        height: isMajor ? 40.0 : (isMedium ? 25.0 : 15.0),
                        color: Theme.of(context).colorScheme.onSurfaceVariant
                            .withValues(alpha: isMajor ? 0.8 : 0.3),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          // Center indicator line
          Container(
            width: 2,
            height: 60,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ],
      ),
    );
  }
}
