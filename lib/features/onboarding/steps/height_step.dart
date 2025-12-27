import 'package:calorify/core/models/profile_models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:flutter/material.dart';

class HeightStepScreen extends StatefulWidget {
  final VoidCallback onContinue;
  const HeightStepScreen({super.key, required this.onContinue});

  @override
  State<HeightStepScreen> createState() => _HeightStepScreenState();
}

class _HeightStepScreenState extends State<HeightStepScreen> {
  double _height = 170;
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
          _height = val.clamp(100, 250);
        } else {
          _height = LocaleUtils.convertHeightToMetric(val.clamp(3.3, 8.2));
        }
        _syncRulerToValue();
      });
    }
  }

  void _syncRulerToValue() {
    if (!_scrollController.hasClients) return;
    final double offset;
    if (_isMetric) {
      offset = (_height - 100) * 10.0;
    } else {
      final imperial = LocaleUtils.convertHeightToImperial(_height);
      offset = (imperial * 10.0 - 33) * 10.0;
    }
    _scrollController.jumpTo(offset.clamp(0, 1500));
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
    if (profile != null && profile.height != null && mounted) {
      setState(() {
        _height = profile.height!;
        _updateTextField();
      });
    }
  }

  void _updateTextField() {
    _textController.text =
        _isMetric
            ? _height.toStringAsFixed(0)
            : LocaleUtils.convertHeightToImperial(_height).toStringAsFixed(1);
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
            'How tall are you?',
            style: theme.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            'Your height helps us calculate your BMI and energy needs accurately.',
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
                            autofocus: false,
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
                                ? _height.toStringAsFixed(0)
                                : LocaleUtils.convertHeightToImperial(
                                  _height,
                                ).toStringAsFixed(1),
                            style: theme.textTheme.displayLarge?.copyWith(
                              fontWeight: FontWeight.w900,
                              color: colorScheme.primary,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            _isMetric ? 'cm' : 'ft',
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
            if (_isMetric) {
              _height = (100 + (offset / 10.0)).clamp(100, 250);
            } else {
              final imperial = (3.3 + (offset / 10.0)).clamp(3.3, 8.2);
              _height = LocaleUtils.convertHeightToMetric(imperial);
            }
            _updateTextField();
          });
        }
        return true;
      },
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: 1501,
        itemBuilder: (context, index) {
          final isMajor = index % 10 == 0;
          final isMedium = index % 5 == 0;

          return Container(
            width: 10,
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (isMajor)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      _isMetric
                          ? (100 + (index / 10)).toInt().toString()
                          : (3.3 + (index / 10)).toStringAsFixed(1),
                      style: TextStyle(
                        fontSize: 10,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                Container(
                  width: isMajor ? 2 : 1,
                  height: isMajor ? 40 : (isMedium ? 25 : 15),
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
    await OnboardingService.instance.saveProfileData(
      profile.copyWith(height: _height),
    );
    widget.onContinue();
  }
}
