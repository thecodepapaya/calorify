import 'package:auto_route/auto_route.dart';
import 'package:models/models.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:utils/utils.dart';
import 'package:calorify/core/utilities/profile_localization.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/profile_enum_extensions.dart';
import 'package:calorify/shared_widgets/selection_card.dart';
import 'package:calorify/shared_widgets/value_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:widgets/widgets.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

@RoutePage()
class EditProfileScreen extends ConsumerStatefulWidget {
  final HealthData userProfile;

  const EditProfileScreen({super.key, required this.userProfile});

  @override
  ConsumerState<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<EditProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _didApplySavedGoal = false;
  late final ProviderSubscription<AsyncValue<int?>> _savedGoalSubscription;

  // Initialize with safe defaults
  late double _height;
  late double _weight;
  double? _targetWeight;
  late DateTime _dateOfBirth;

  late Gender _selectedGender;
  late WeightGoal _selectedWeightGoal;
  late ActivityLevel _selectedActivityLevel;
  late HeightUnit _heightUnit;
  late WeightUnit _weightUnit;
  late int _dailyCalorieGoal;
  late TextEditingController _calorieGoalController;

  // Store original values to detect changes
  late double _originalHeight;
  late double _originalWeight;
  double? _originalTargetWeight;
  late DateTime _originalDateOfBirth;
  late Gender _originalGender;
  late WeightGoal _originalWeightGoal;
  late ActivityLevel _originalActivityLevel;
  late HeightUnit _originalHeightUnit;
  late WeightUnit _originalWeightUnit;
  late int _originalDailyCalorieGoal;

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

    _selectedGender =
        widget.userProfile.hasGender()
            ? widget.userProfile.gender
            : Gender.MALE;
    _selectedWeightGoal =
        widget.userProfile.hasWeightGoal()
            ? widget.userProfile.weightGoal
            : WeightGoal.MAINTAIN_WEIGHT;
    _selectedActivityLevel =
        widget.userProfile.hasActivityLevel()
            ? widget.userProfile.activityLevel
            : ActivityLevel.SEDENTARY;
    _heightUnit =
        widget.userProfile.hasHeight()
            ? widget.userProfile.height.unit
            : HeightUnit.CM;
    _weightUnit =
        widget.userProfile.hasWeight()
            ? widget.userProfile.weight.unit
            : WeightUnit.KG;

    // Initialize height with default based on unit system
    final defaultHeight =
        _heightUnit.isMetric ? _defaultHeightMetric : _defaultHeightImperial;
    _height = (widget.userProfile.hasHeight()
            ? widget.userProfile.height.value
            : defaultHeight)
        .clamp(_heightUnit.min, _heightUnit.max);

    // Initialize weight with default based on unit system
    final defaultWeight =
        _weightUnit.isMetric ? _defaultWeightMetric : _defaultWeightImperial;
    _weight = (widget.userProfile.hasWeight()
            ? widget.userProfile.weight.value
            : defaultWeight)
        .clamp(_weightUnit.min, _weightUnit.max);
    _targetWeight =
        widget.userProfile.hasTargetWeight()
            ? widget.userProfile.targetWeight.value
            : null;

    // Initialize other fields with safe defaults
    _dailyCalorieGoal = 0;
    _calorieGoalController = TextEditingController(text: '');
    _dateOfBirth =
        iso8601DateToDateTime(widget.userProfile.dateOfBirth) ??
        DateTime.now().subtract(
          const Duration(days: _daysInYear * _defaultAgeYears),
        );

    // Initialize original values
    _originalHeight = _height;
    _originalWeight = _weight;
    _originalTargetWeight = _targetWeight;
    _originalDateOfBirth = _dateOfBirth;
    _originalGender = _selectedGender;
    _originalWeightGoal = _selectedWeightGoal;
    _originalActivityLevel = _selectedActivityLevel;
    _originalHeightUnit = _heightUnit;
    _originalWeightUnit = _weightUnit;
    _originalDailyCalorieGoal = _dailyCalorieGoal;
    _savedGoalSubscription = ref.listenManual<AsyncValue<int?>>(
      dailyCalorieGoalProvider,
      (_, next) => next.whenData(_applySavedGoal),
      fireImmediately: true,
    );
  }

  bool _hasChanges() {
    return _height != _originalHeight ||
        _weight != _originalWeight ||
        _targetWeight != _originalTargetWeight ||
        _dateOfBirth != _originalDateOfBirth ||
        _selectedGender != _originalGender ||
        _selectedWeightGoal != _originalWeightGoal ||
        _selectedActivityLevel != _originalActivityLevel ||
        _heightUnit != _originalHeightUnit ||
        _weightUnit != _originalWeightUnit ||
        _dailyCalorieGoal != _originalDailyCalorieGoal;
  }

  @override
  void dispose() {
    _savedGoalSubscription.close();
    _calorieGoalController.dispose();
    super.dispose();
  }

  void _applySavedGoal(int? savedGoalValue) {
    if (_didApplySavedGoal) return;

    final savedGoal = savedGoalValue ?? 0;
    _didApplySavedGoal = true;
    _dailyCalorieGoal = savedGoal;
    _originalDailyCalorieGoal = savedGoal;
    _calorieGoalController.text = savedGoal > 0 ? savedGoal.toString() : '';

    if (mounted) {
      setState(() {});
    }
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
              AppIcons.check,
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
        child: ResponsiveContent(
          maxWidth: 760,
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
                _buildDailyCalorieGoalTile(),
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
                        t.editProfile.weightGoal,
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: _itemSpacing),
                      ...weightGoalValues.map((goal) {
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
                      ...activityLevelValues.map((level) {
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
          shape: RoundedSuperellipseBorder(
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
          AppIcons.user,
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
              genderValues.map((gender) {
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
      case Gender.MALE:
        return AppIcons.mars;
      case Gender.FEMALE:
        return AppIcons.venus;
      case Gender.OTHER:
        return AppIcons.transgender;
    }
    return AppIcons.transgender; // Fallback
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
          AppIcons.calendar,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Text(
        t.editProfile.dateOfBirth,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Text(DateFormat.yMMMMd().format(_dateOfBirth)),
      trailing: const Icon(AppIcons.chevronRight, size: _chevronIconSize),
      onTap: () => _selectDate(context),
    );
  }

  Widget _buildHeightTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final heightUnitString = _heightUnit.display;

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
          AppIcons.ruler,
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
          _buildHeightUnitSelector(
            context,
            currentUnit: _heightUnit,
            onChanged: (newUnit) {
              if (newUnit == _heightUnit) return;
              setState(() {
                if (newUnit.isMetric) {
                  _height = LocaleUtils.convertHeightToMetric(
                    _height,
                  ).clamp(newUnit.min, newUnit.max);
                } else {
                  _height = LocaleUtils.convertHeightToImperial(
                    _height,
                  ).clamp(newUnit.min, newUnit.max);
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
          min: _heightUnit.min,
          max: _heightUnit.max,
          value: _height,
          precision: _heightUnit.precision,
          step: _heightUnit.step,
          valueFormatter:
              (value) => LocaleUtils.formatHeightValue(value, _heightUnit),
          onChanged: (value) {
            setState(() {
              _height = value.clamp(
                _heightUnit.min,
                _heightUnit.max,
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
    final weightUnitString = _weightUnit.display;

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
          AppIcons.scale,
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
          _buildWeightUnitSelector(
            context,
            currentUnit: _weightUnit,
            onChanged: (newUnit) {
              if (newUnit.isMetric == _weightUnit.isMetric) return;
              setState(() {
                if (newUnit.isMetric) {
                  _weight = LocaleUtils.convertWeightToMetric(
                    _weight,
                  ).clamp(newUnit.min, newUnit.max);
                  if (_targetWeight != null) {
                    _targetWeight = LocaleUtils.convertWeightToMetric(
                      _targetWeight!,
                    ).clamp(newUnit.min, newUnit.max);
                  }
                } else {
                  _weight = LocaleUtils.convertWeightToImperial(
                    _weight,
                  ).clamp(newUnit.min, newUnit.max);
                  if (_targetWeight != null) {
                    _targetWeight = LocaleUtils.convertWeightToImperial(
                      _targetWeight!,
                    ).clamp(newUnit.min, newUnit.max);
                  }
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
          min: _weightUnit.min,
          max: _weightUnit.max,
          value: _weight,
          precision: _weightUnit.precision,
          step: _weightUnit.step,
          onChanged: (value) {
            setState(() {
              // Floor the value for imperial (lbs) to ensure whole number increments
              final adjustedValue =
                  _weightUnit.isMetric ? value : value.floorToDouble();
              _weight = adjustedValue.clamp(
                _weightUnit.min,
                _weightUnit.max,
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

  Widget _buildHeightUnitSelector(
    BuildContext context, {
    required HeightUnit currentUnit,
    required ValueChanged<HeightUnit> onChanged,
  }) {
    return SegmentedButton<HeightUnit>(
      segments: [
        ButtonSegment(
          value: HeightUnit.CM,
          label: Text(t.editProfile.unitCm),
        ),
        ButtonSegment(
          value: HeightUnit.FT,
          label: Text(t.editProfile.unitFt),
        ),
      ],
      selected: {currentUnit},
      onSelectionChanged: (Set<HeightUnit> selection) {
        onChanged(selection.first);
      },
      showSelectedIcon: false,
      style: const ButtonStyle(
        visualDensity: VisualDensity.compact,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
    );
  }

  Widget _buildWeightUnitSelector(
    BuildContext context, {
    required WeightUnit currentUnit,
    required ValueChanged<WeightUnit> onChanged,
  }) {
    return SegmentedButton<WeightUnit>(
      segments: [
        ButtonSegment(
          value: WeightUnit.KG,
          label: Text(t.editProfile.unitKg),
        ),
        ButtonSegment(
          value: WeightUnit.LB,
          label: Text(t.editProfile.unitLbs),
        ),
      ],
      selected: {currentUnit},
      onSelectionChanged: (Set<WeightUnit> selection) {
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

  Widget _buildDailyCalorieGoalTile() {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    ref.watch(dailyCalorieGoalProvider);

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
          AppIcons.flame,
          color: colorScheme.primary,
          size: _iconSize,
        ),
      ),
      title: Text(
        t.home.dailyGoal.dailyCalories,
        style: TextStyle(fontWeight: FontWeight.w600),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: _subtitleTopPadding),
        child: TextFormField(
          controller: _calorieGoalController,
          keyboardType: TextInputType.number,
          inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          decoration: InputDecoration(
            hintText: '0',
            suffixText: t.home.dailyGoal.kcal,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
          ),
          onChanged: (value) {
            final goal = int.tryParse(value) ?? 0;
            setState(() {
              _dailyCalorieGoal = goal;
            });
          },
        ),
      ),
      isThreeLine: true,
    );
  }

  Future<void> _saveProfile() async {
    if (!_hasChanges()) return;

    if (_formKey.currentState!.validate()) {
      final updatedData = widget.userProfile.deepCopy();
      updatedData.height = Height(value: _height, unit: _heightUnit);
      updatedData.weight = Weight(value: _weight, unit: _weightUnit);
      if (_targetWeight != null) {
        updatedData.targetWeight =
            Weight(value: _targetWeight!, unit: _weightUnit);
      } else {
        updatedData.clearTargetWeight();
      }
      updatedData.gender = _selectedGender;
      updatedData.dateOfBirth = dateTimeToIso8601Date(_dateOfBirth);
      updatedData.weightGoal = _selectedWeightGoal;
      updatedData.activityLevel = _selectedActivityLevel;
      if (_dailyCalorieGoal > 0) {
        updatedData.dailyMacroGoal = Macros(
          calorie: Measurement(value: _dailyCalorieGoal),
        );
      } else {
        updatedData.clearDailyMacroGoal();
      }

      await ref
          .read(profileRepositoryProvider)
          .saveHealthData(updatedData);
      ref.invalidate(healthDataProvider);
      ref.invalidate(dailyCalorieGoalProvider);

      if (!mounted) return;

      // Update original values to reflect saved state
      setState(() {
        _originalHeight = _height;
        _originalWeight = _weight;
        _originalTargetWeight = _targetWeight;
        _originalDateOfBirth = _dateOfBirth;
        _originalGender = _selectedGender;
        _originalWeightGoal = _selectedWeightGoal;
        _originalActivityLevel = _selectedActivityLevel;
        _originalHeightUnit = _heightUnit;
        _originalWeightUnit = _weightUnit;
        _originalDailyCalorieGoal = _dailyCalorieGoal;
      });

      // Show success message
      showFlushbar(t.profile.updatedSuccessfully, context: context);

      // Navigate back
      await context.router.maybePop();
    }
  }
}
