import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:flutter/material.dart';

class WeightStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  final bool isTargetWeight;
  const WeightStepScreen({
    super.key,
    required this.onContinue,
    this.isTargetWeight = false,
  });

  @override
  State<WeightStepScreen> createState() => _WeightStepScreenState();
}

class _WeightStepScreenState extends State<WeightStepScreen> {
  double _weight = 70;
  UnitSystem _unitSystem = UnitSystem.metric;
  late ScrollController _scrollController;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  // Ruler constants
  static const double _metricStart = 30.0;
  static const double _metricEnd = 300.0;
  static const double _imperialStart = 66.0;
  static const double _imperialEnd = 660.0;

  // Visual constants
  static const double _itemWidth = 20.0; // Width of each tick container
  static const int _ticksPerMajor = 5; // Number of ticks between labels

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _loadData();
    _textController.addListener(_onTextChanged);
  }

  void _onTextChanged() {
    if (!_focusNode.hasFocus) return;
    final val = double.tryParse(_textController.text);
    if (val != null) {
      setState(() {
        if (_unitSystem.isMetric) {
          _weight = val.clamp(_metricStart, _metricEnd);
        } else {
          _weight = val.clamp(_imperialStart, _imperialEnd);
        }
        _syncRulerToValue();
      });
    }
  }

  /// Syncs the horizontal ruler scroll position to the current numeric weight value.
  ///
  /// The ruler works by mapping physical pixels to weight units:
  /// - In both systems: 1 unit (kg or lb) = [_itemWidth] pixels.
  /// - The scale starts at [_metricStart] kg or [_imperialStart] lbs.
  void _syncRulerToValue() {
    if (!_scrollController.hasClients) return;
    final double offset;
    if (_unitSystem.isMetric) {
      offset = (_weight - _metricStart) * _itemWidth;
    } else {
      offset = (_weight - _imperialStart) * _itemWidth;
    }
    _scrollController.jumpTo(offset);
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null) {
      setState(() {
        _unitSystem = profile.weightUnit;
        final weight =
            widget.isTargetWeight ? profile.targetWeight : profile.weight;

        if (weight != null) {
          _weight = weight;
        } else {
          // Calculate ideal weight as default if no value saved
          final ideal = OnboardingService.instance.calculateIdealWeight(
            profile,
          );
          if (ideal != null) {
            _weight = ideal;
          } else {
            _weight = _unitSystem.isMetric ? 70.0 : 154.0;
          }
        }

        _updateTextField();
        WidgetsBinding.instance.addPostFrameCallback(
          (_) => _syncRulerToValue(),
        );
      });
    }
  }

  void _updateTextField() {
    _textController.text = _weight.toStringAsFixed(1);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _textController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Text(
            widget.isTargetWeight
                ? 'What is your target weight?'
                : 'What is your current weight?',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            widget.isTargetWeight
                ? 'Setting a goal weight helps us determine your long-term plan.'
                : 'Your current weight is essential for personalizing your daily goals.',
            style: theme.textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          const Spacer(),
          Center(
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => _focusNode.requestFocus(),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Hidden text field
                      Opacity(
                        opacity: 0,
                        child: SizedBox(
                          width: 1,
                          height: 1,
                          child: TextField(
                            controller: _textController,
                            focusNode: _focusNode,
                            keyboardType: const TextInputType.numberWithOptions(
                              decimal: true,
                            ),
                            onSubmitted: (_) => _focusNode.unfocus(),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            _weight.toStringAsFixed(1),
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _unitSystem.isMetric ? 'kg' : 'lbs',
                            style: theme.textTheme.titleLarge?.copyWith(
                              color: colorScheme.onSurfaceVariant,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 48),
                SizedBox(
                  height: 100,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      _buildHorizontalRuler(),
                      Container(
                        width: 2,
                        height: 60,
                        decoration: BoxDecoration(
                          color: colorScheme.primary,
                          borderRadius: BorderRadius.circular(1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          if (!widget.isTargetWeight)
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildUnitButton('Metric', _unitSystem.isMetric, () {
                  if (_unitSystem.isMetric) return;
                  setState(() {
                    _weight = LocaleUtils.convertWeightToMetric(
                      _weight,
                    ).clamp(_metricStart, _metricEnd);
                    _unitSystem = UnitSystem.metric;
                    _updateTextField();
                    _syncRulerToValue();
                  });
                }),
                const SizedBox(width: 16),
                _buildUnitButton('Imperial', _unitSystem.isImperial, () {
                  if (_unitSystem.isImperial) return;
                  setState(() {
                    _weight = LocaleUtils.convertWeightToImperial(
                      _weight,
                    ).clamp(_imperialStart, _imperialEnd);
                    _unitSystem = UnitSystem.imperial;
                    _updateTextField();
                    _syncRulerToValue();
                  });
                }),
              ],
            ),
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: _saveAndContinue,
              style: FilledButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text(
                'Next',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUnitButton(String label, bool isSelected, VoidCallback onTap) {
    final colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          color:
              isSelected
                  ? colorScheme.primary
                  : colorScheme.surfaceVariant.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color:
                isSelected
                    ? colorScheme.onPrimary
                    : colorScheme.onSurfaceVariant,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildHorizontalRuler() {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollUpdateNotification && !_focusNode.hasFocus) {
          final offset = notification.metrics.pixels;
          setState(() {
            if (_unitSystem.isMetric) {
              _weight = (_metricStart + (offset / _itemWidth)).clamp(
                _metricStart,
                _metricEnd,
              );
            } else {
              _weight = (_imperialStart + (offset / _itemWidth)).clamp(
                _imperialStart,
                _imperialEnd,
              );
            }
            _updateTextField();
          });
        }
        return true;
      },
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount:
            _unitSystem.isMetric
                ? ((_metricEnd - _metricStart).toInt() + 1)
                : ((_imperialEnd - _imperialStart).toInt() + 1),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 2 - (_itemWidth / 2),
        ),
        itemBuilder: (context, index) {
          final value =
              _unitSystem.isMetric
                  ? (_metricStart + index)
                  : (_imperialStart + index);
          final isMajor = index % _ticksPerMajor == 0;

          return SizedBox(
            width: _itemWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (isMajor)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: OverflowBox(
                      maxWidth: 100,
                      child: Text(
                        value.toInt().toString(),
                        style: TextStyle(
                          fontSize: 12,
                          color: Theme.of(context).colorScheme.onSurface,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                Container(
                  width: isMajor ? 2 : 1,
                  height: isMajor ? 40 : 20,
                  color: Theme.of(context).colorScheme.onSurfaceVariant
                      .withOpacity(isMajor ? 0.8 : 0.3),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _saveAndContinue() async {
    final profile =
        await OnboardingService.instance.getProfileData() ??
        const UserProfile();
    final updatedProfile =
        widget.isTargetWeight
            ? profile.copyWith(targetWeight: _weight, weightUnit: _unitSystem)
            : profile.copyWith(weight: _weight, weightUnit: _unitSystem);
    await OnboardingService.instance.saveProfileData(updatedProfile);
    widget.onContinue();
  }
}
