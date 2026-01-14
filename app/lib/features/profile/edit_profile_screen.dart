import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/services/onboarding_service.dart';
import 'package:calorify/core/utilities/locale_utils.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:calorify/shared_widgets/value_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

@RoutePage()
class EditProfileScreen extends StatefulWidget {
  final UserProfile userProfile;

  const EditProfileScreen({super.key, required this.userProfile});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late double _height;
  late double _weight;
  late DateTime _dateOfBirth;

  late Gender _selectedGender;
  late WeightGoal _selectedWeightGoal;
  late ActivityLevel _selectedActivityLevel;
  late UnitSystem _heightUnit;
  late UnitSystem _weightUnit;

  // Store original values to detect changes
  late double _originalHeight;
  late double _originalWeight;
  late DateTime _originalDateOfBirth;
  late Gender _originalGender;
  late WeightGoal _originalWeightGoal;
  late ActivityLevel _originalActivityLevel;
  late UnitSystem _originalHeightUnit;
  late UnitSystem _originalWeightUnit;

  // Default values (not in ScaleConstants as they're UI-specific)
  static const double _defaultHeightMetric = 170.0;
  static const double _defaultHeightImperial = 67.0; // 67 inches = 5'7"
  static const double _defaultWeightMetric = 70.0;
  static const double _defaultWeightImperial = 154.0;

  // Date constants
  static const int _defaultAgeYears = 25;
  static const int _daysInYear = 365;
  static const int _earliestYear = 1900;

  // UI Layout constants
  static const double _cardBorderRadius = 20.0;
  static const double _sectionHeaderLetterSpacing = 1.2;
  static const double _iconContainerOpacity = 0.4;
  static const double _borderOpacity = 0.5;
  static const double _iconSize = 20.0;
  static const double _chevronIconSize = 18.0;
  static const double _dividerHeight = 1.0;

  // Padding constants
  static const double _horizontalPadding = 16.0;
  static const double _verticalPadding = 8.0;
  static const double _sectionSpacing = 16.0;
  static const double _extraLargeSpacing = 32.0;
  static const double _cardContentHorizontalPadding = 16.0;
  static const double _cardContentVerticalPadding = 8.0;
  static const double _titleBottomPadding = 8.0;
  static const double _subtitleTopPadding = 8.0;
  static const double _itemSpacing = 12.0;
  static const double _iconContainerPadding = 8.0;
  static const double _sectionHeaderLeftPadding = 8.0;

  @override
  void initState() {
    super.initState();
    _initializeData();
  }

  void _initializeData() {
    _selectedGender = widget.userProfile.gender ?? Gender.male;
    _selectedWeightGoal =
        widget.userProfile.weightGoal ?? WeightGoal.maintainWeight;
    _selectedActivityLevel =
        widget.userProfile.activityLevel ?? ActivityLevel.sedentary;
    _heightUnit = widget.userProfile.heightUnit;
    _weightUnit = widget.userProfile.weightUnit;

    // Initialize height with clamping to ensure it's within bounds
    final defaultHeight =
        _heightUnit.isMetric ? _defaultHeightMetric : _defaultHeightImperial;
    _height = (widget.userProfile.height ?? defaultHeight).clamp(
      _heightUnit.heightMin,
      _heightUnit.heightMax,
    );

    // Initialize weight with clamping to ensure it's within bounds
    final defaultWeight =
        _weightUnit.isMetric ? _defaultWeightMetric : _defaultWeightImperial;
    _weight = (widget.userProfile.weight ?? defaultWeight).clamp(
      _weightUnit.weightMin,
      _weightUnit.weightMax,
    );

    _dateOfBirth =
        widget.userProfile.dateOfBirth ??
        DateTime.now().subtract(
          const Duration(days: _daysInYear * _defaultAgeYears),
        );

    // Store original values for change detection
    _originalHeight = _height;
    _originalWeight = _weight;
    _originalDateOfBirth = _dateOfBirth;
    _originalGender = _selectedGender;
    _originalWeightGoal = _selectedWeightGoal;
    _originalActivityLevel = _selectedActivityLevel;
    _originalHeightUnit = _heightUnit;
    _originalWeightUnit = _weightUnit;
  }

  bool _hasChanges() {
    return _height != _originalHeight ||
        _weight != _originalWeight ||
        _dateOfBirth != _originalDateOfBirth ||
        _selectedGender != _originalGender ||
        _selectedWeightGoal != _originalWeightGoal ||
        _selectedActivityLevel != _originalActivityLevel ||
        _heightUnit != _originalHeightUnit ||
        _weightUnit != _originalWeightUnit;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      appBar: AppBar(
        title: Text(t.editProfile.title),
        centerTitle: true,
        backgroundColor: colorScheme.surface,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: _hasChanges() ? _saveProfile : null,
            icon: Icon(
              LucideIcons.check,
              color:
                  _hasChanges()
                      ? colorScheme.primary
                      : colorScheme.onSurface.withValues(alpha: 0.38),
            ),
          ),
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.symmetric(
            horizontal: _horizontalPadding,
            vertical: _verticalPadding,
          ),
          children: [
            // Personal Information Section
            _buildCardSection(t.editProfile.sections.personalInformation, [
              _buildGenderTile(),
              _buildDateOfBirthTile(),
            ]),
            const SizedBox(height: _sectionSpacing),

            // Physical Measurements Section
            _buildCardSection(t.editProfile.sections.physicalMeasurements, [
              _buildHeightTile(),
              _buildWeightTile(),
            ]),
            const SizedBox(height: _sectionSpacing),

            // Goals & Activity Section
            _buildCardSection(t.editProfile.sections.goalsAndActivity, [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _cardContentHorizontalPadding,
                  vertical: _cardContentVerticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.editProfile.weightGoal,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: _itemSpacing),
                    ...WeightGoal.values.map((goal) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: _itemSpacing),
                        child: _buildGoalCard(context, goal),
                      );
                    }),
                  ],
                ),
              ),
              const Divider(height: _dividerHeight),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: _cardContentHorizontalPadding,
                  vertical: _cardContentVerticalPadding,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      t.editProfile.activityLevel,
                      style: theme.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: _itemSpacing),
                    ...ActivityLevel.values.map((level) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: _itemSpacing),
                        child: _buildActivityCard(context, level),
                      );
                    }),
                  ],
                ),
              ),
            ]),
            const SizedBox(height: _extraLargeSpacing),
          ],
        ),
      ),
    );
  }

  Widget _buildCardSection(String title, List<Widget> children) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: _sectionHeaderLeftPadding,
            bottom: _titleBottomPadding,
          ),
          child: Text(
            title.toUpperCase(),
            style: theme.textTheme.labelMedium?.copyWith(
              color: colorScheme.primary,
              fontWeight: FontWeight.bold,
              letterSpacing: _sectionHeaderLetterSpacing,
            ),
          ),
        ),
        Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(_cardBorderRadius),
            side: BorderSide(
              color: colorScheme.outlineVariant.withValues(
                alpha: _borderOpacity,
              ),
            ),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(children: children),
        ),
      ],
    );
  }

  Widget _buildGenderTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: _cardContentHorizontalPadding,
        vertical: _cardContentVerticalPadding,
      ),
      leading: Container(
        padding: const EdgeInsets.all(_iconContainerPadding),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(
            alpha: _iconContainerOpacity,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.user,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Text(
        t.editProfile.gender,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: _subtitleTopPadding),
        child: SegmentedButton<Gender>(
          segments:
              Gender.values.map((gender) {
                return ButtonSegment<Gender>(
                  value: gender,
                  label: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(_getGenderIcon(gender), size: 14),
                      const SizedBox(width: 4),
                      Text(gender.displayName),
                    ],
                  ),
                );
              }).toList(),
          selected: {_selectedGender},
          onSelectionChanged: (Set<Gender> selection) {
            setState(() {
              _selectedGender = selection.first;
            });
          },
          showSelectedIcon: false,
          style: const ButtonStyle(
            visualDensity: VisualDensity.compact,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
        ),
      ),
      isThreeLine: true,
    );
  }

  IconData _getGenderIcon(Gender gender) {
    switch (gender) {
      case Gender.male:
        return LucideIcons.mars;
      case Gender.female:
        return LucideIcons.venus;
      case Gender.other:
        return LucideIcons.transgender;
    }
  }

  Widget _buildDateOfBirthTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: _cardContentHorizontalPadding,
        vertical: _cardContentVerticalPadding,
      ),
      leading: Container(
        padding: const EdgeInsets.all(_iconContainerPadding),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(
            alpha: _iconContainerOpacity,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.calendar,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Text(
        t.editProfile.dateOfBirth,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(DateFormat.yMMMMd().format(_dateOfBirth)),
      trailing: const Icon(LucideIcons.chevronRight, size: _chevronIconSize),
      onTap: () => _selectDate(context),
    );
  }

  Widget _buildHeightTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final heightUnitString = LocaleUtils.getHeightUnit(_heightUnit);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: _cardContentHorizontalPadding,
        vertical: _cardContentVerticalPadding,
      ),
      leading: Container(
        padding: const EdgeInsets.all(_iconContainerPadding),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(
            alpha: _iconContainerOpacity,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.ruler,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t.editProfile.height,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          _buildUnitSelector(
            context,
            currentUnit: _heightUnit,
            onChanged: (newUnit) {
              setState(() {
                if (newUnit.isMetric) {
                  _height = LocaleUtils.convertHeightToMetric(
                    _height,
                  ).clamp(newUnit.heightMin, newUnit.heightMax);
                } else {
                  _height = LocaleUtils.convertHeightToImperial(
                    _height,
                  ).clamp(newUnit.heightMin, newUnit.heightMax);
                }
                _heightUnit = newUnit;
              });
            },
          ),
        ],
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: _subtitleTopPadding, right: 0),
        child: ValueSlider(
          unit: heightUnitString,
          min: _heightUnit.heightMin,
          max: _heightUnit.heightMax,
          value: _height,
          precision: _heightUnit.heightPrecision,
          step: _heightUnit.heightStep,
          valueFormatter:
              (value) => LocaleUtils.formatHeightValue(value, _heightUnit),
          onChanged: (value) {
            setState(() {
              _height = value.clamp(
                _heightUnit.heightMin,
                _heightUnit.heightMax,
              );
            });
          },
        ),
      ),
      isThreeLine: true,
    );
  }

  Widget _buildWeightTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final weightUnitString = LocaleUtils.getWeightUnit(_weightUnit);

    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: _cardContentHorizontalPadding,
        vertical: _cardContentVerticalPadding,
      ),
      leading: Container(
        padding: const EdgeInsets.all(_iconContainerPadding),
        decoration: BoxDecoration(
          color: colorScheme.primaryContainer.withValues(
            alpha: _iconContainerOpacity,
          ),
          shape: BoxShape.circle,
        ),
        child: Icon(
          LucideIcons.scale,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t.editProfile.weight,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          _buildUnitSelector(
            context,
            currentUnit: _weightUnit,
            onChanged: (newUnit) {
              setState(() {
                if (newUnit.isMetric) {
                  _weight = LocaleUtils.convertWeightToMetric(
                    _weight,
                  ).clamp(newUnit.weightMin, newUnit.weightMax);
                } else {
                  _weight = LocaleUtils.convertWeightToImperial(
                    _weight,
                  ).clamp(newUnit.weightMin, newUnit.weightMax);
                }
                _weightUnit = newUnit;
              });
            },
          ),
        ],
      ),

      subtitle: Padding(
        padding: const EdgeInsets.only(top: _subtitleTopPadding, right: 0),
        child: ValueSlider(
          unit: weightUnitString,
          min: _weightUnit.weightMin,
          max: _weightUnit.weightMax,
          value: _weight,
          precision: _weightUnit.weightPrecision,
          step: _weightUnit.weightStep,
          onChanged: (value) {
            setState(() {
              // Floor the value for imperial (lbs) to ensure whole number increments
              final adjustedValue =
                  _weightUnit.isMetric ? value : value.floorToDouble();
              _weight = adjustedValue.clamp(
                _weightUnit.weightMin,
                _weightUnit.weightMax,
              );
            });
          },
        ),
      ),
      isThreeLine: true,
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateOfBirth,
      firstDate: DateTime(_earliestYear),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _dateOfBirth) {
      setState(() {
        _dateOfBirth = picked;
      });
    }
  }

  Widget _buildUnitSelector(
    BuildContext context, {
    required UnitSystem currentUnit,
    required ValueChanged<UnitSystem> onChanged,
  }) {
    return SegmentedButton<UnitSystem>(
      segments: [
        ButtonSegment(
          value: UnitSystem.metric,
          label: Text(t.editProfile.metric),
        ),
        ButtonSegment(
          value: UnitSystem.imperial,
          label: Text(t.editProfile.imperial),
        ),
      ],
      selected: {currentUnit},
      onSelectionChanged: (Set<UnitSystem> selection) {
        onChanged(selection.first);
      },
      showSelectedIcon: false,
      style: const ButtonStyle(
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Widget _buildGoalCard(BuildContext context, WeightGoal goal) {
    final isSelected = _selectedWeightGoal == goal;
    final icon = goal.icon;
    final color = goal.color(context);

    return SelectionCard(
      title: goal.displayName,
      description: goal.description,
      icon: icon,
      color: color,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          _selectedWeightGoal = goal;
        });
      },
    );
  }

  Widget _buildActivityCard(BuildContext context, ActivityLevel level) {
    final isSelected = _selectedActivityLevel == level;
    final icon = level.icon;
    final color = level.color(context);

    return SelectionCard(
      title: level.displayName,
      description: level.description,
      icon: icon,
      color: color,
      isSelected: isSelected,
      onTap: () {
        setState(() {
          _selectedActivityLevel = level;
        });
      },
    );
  }

  Future<void> _saveProfile() async {
    if (!_hasChanges()) return;

    if (_formKey.currentState!.validate()) {
      final updatedData = widget.userProfile.copyWith(
        height: _height,
        weight: _weight,
        gender: _selectedGender,
        dateOfBirth: _dateOfBirth,
        weightGoal: _selectedWeightGoal,
        activityLevel: _selectedActivityLevel,
        heightUnit: _heightUnit,
        weightUnit: _weightUnit,
      );

      // Save the updated profile data (upsert)
      await OnboardingService.instance.saveProfileData(updatedData);

      if (!mounted) return;

      // Update original values to reflect saved state
      setState(() {
        _originalHeight = _height;
        _originalWeight = _weight;
        _originalDateOfBirth = _dateOfBirth;
        _originalGender = _selectedGender;
        _originalWeightGoal = _selectedWeightGoal;
        _originalActivityLevel = _selectedActivityLevel;
        _originalHeightUnit = _heightUnit;
        _originalWeightUnit = _weightUnit;
      });

      // Show success message
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(snack(t.profile.updatedSuccessfully));

      // Navigate back
      await context.router.maybePop();
    }
  }
}
