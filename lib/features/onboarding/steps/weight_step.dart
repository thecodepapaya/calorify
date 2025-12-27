import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:flutter/material.dart';

class WeightStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  final bool isTargetWeight;
  const WeightStepScreen({super.key, required this.onContinue, this.isTargetWeight = false});

  @override
  State<WeightStepScreen> createState() => _WeightStepScreenState();
}

class _WeightStepScreenState extends State<WeightStepScreen> {
  double _weight = 70;
  late bool _isMetric;
  late ScrollController _scrollController;
  final TextEditingController _textController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

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
        if (_isMetric) {
          _weight = val.clamp(30, 300);
        } else {
          _weight = LocaleUtils.convertWeightToMetric(val.clamp(66, 660));
        }
        _syncRulerToValue();
      });
    }
  }

  void _syncRulerToValue() {
    if (!_scrollController.hasClients) return;
    final double offset;
    if (_isMetric) {
      offset = (_weight - 30) * 20.0;
    } else {
      final imperial = LocaleUtils.convertWeightToImperial(_weight);
      offset = (imperial - 66) * 20.0;
    }
    _scrollController.jumpTo(offset.clamp(0, 10000));
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _isMetric = LocaleUtils.isMetricSystem(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _syncRulerToValue();
    });
  }

  Future<void> _loadData() async {
    final profile = await OnboardingService.instance.getProfileData();
    if (profile != null) {
      final weight = widget.isTargetWeight ? profile.targetWeight : profile.weight;
      if (weight != null && mounted) {
        setState(() {
          _weight = weight;
          _updateTextField();
        });
      }
    }
  }

  void _updateTextField() {
    _textController.text = _isMetric 
        ? _weight.toStringAsFixed(1) 
        : LocaleUtils.convertWeightToImperial(_weight).toStringAsFixed(1);
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
            widget.isTargetWeight ? 'What is your target weight?' : 'What is your current weight?',
            style: theme.textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          Text(
            widget.isTargetWeight 
              ? 'Setting a goal weight helps us determine your long-term plan.' 
              : 'Your current weight is essential for personalizing your daily goals.',
            style: theme.textTheme.bodyLarge?.copyWith(color: colorScheme.onSurfaceVariant),
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
                            keyboardType: const TextInputType.numberWithOptions(decimal: true),
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
                            _isMetric 
                              ? _weight.toStringAsFixed(1) 
                              : LocaleUtils.convertWeightToImperial(_weight).toStringAsFixed(1),
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _isMetric ? 'kg' : 'lbs',
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
                      // Center Indicator
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildUnitButton('Metric', _isMetric, () {
                setState(() {
                  _isMetric = true;
                  _updateTextField();
                  _syncRulerToValue();
                });
              }),
              const SizedBox(width: 16),
              _buildUnitButton('Imperial', !_isMetric, () {
                setState(() {
                  _isMetric = false;
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
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              ),
              child: const Text('Next', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
          color: isSelected ? colorScheme.primary : colorScheme.surfaceVariant.withOpacity(0.5),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: isSelected ? colorScheme.onPrimary : colorScheme.onSurfaceVariant,
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
            if (_isMetric) {
              _weight = (30 + (offset / 20.0)).clamp(30.0, 300.0);
            } else {
              final imperial = (66 + (offset / 20.0)).clamp(66.0, 660.0);
              _weight = LocaleUtils.convertWeightToMetric(imperial);
            }
            _updateTextField();
          });
        }
        return true;
      },
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 1000, 
        itemBuilder: (context, index) {
          final value = _isMetric ? (30 + index) : (66 + index);
          final isMajor = index % 5 == 0;
          
          return Container(
            width: 20,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (isMajor)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      value.toInt().toString(),
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                Container(
                  width: isMajor ? 2 : 1,
                  height: isMajor ? 40 : 20,
                  color: Theme.of(context).colorScheme.onSurfaceVariant.withOpacity(isMajor ? 0.8 : 0.3),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _saveAndContinue() async {
    final profile = await OnboardingService.instance.getProfileData() ?? const UserProfile();
    final updatedProfile = widget.isTargetWeight 
        ? profile.copyWith(targetWeight: _weight)
        : profile.copyWith(weight: _weight);
    await OnboardingService.instance.saveProfileData(updatedProfile);
    widget.onContinue();
  }
}
