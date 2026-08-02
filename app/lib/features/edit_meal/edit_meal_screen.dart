import 'dart:developer';
import 'dart:typed_data';

import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';
import 'package:widgets/widgets.dart';

Future<void> showEditMealSheet(
  BuildContext context, {
  Meal? meal,
  LoggedMeal? loggedMeal,
  Uint8List? imageBytes,
  bool saveAsFavorite = false,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    routeSettings: const RouteSettings(name: RouteNames.editMealSheet),
    builder:
        (context) => EditMealScreen(
          meal: meal,
          loggedMeal: loggedMeal,
          imageBytes: imageBytes,
          saveAsFavorite: saveAsFavorite,
        ),
  );
}

class EditMealScreen extends ConsumerStatefulWidget {
  final Meal? meal;
  final LoggedMeal? loggedMeal;
  final Uint8List? imageBytes;
  final bool saveAsFavorite;
  final DateTime? initialDateTime;

  const EditMealScreen({
    super.key,
    this.meal,
    this.loggedMeal,
    this.imageBytes,
    this.saveAsFavorite = false,
    this.initialDateTime,
  });

  @override
  EditMealScreenState createState() => EditMealScreenState();
}

class EditMealScreenState extends ConsumerState<EditMealScreen> {
  late TextEditingController _nameController;
  late TextEditingController _dateController;
  late TextEditingController _timeController;
  late DateTime _selectedDate;
  late TimeOfDay _selectedTime;
  late int _calories;
  late int _carbs;
  late int _protein;
  late int _fat;
  late int _fiber;
  late MealType _mealType;
  late TextEditingController _mealQuantityController;
  int? _clientId;

  bool get isEditing => widget.meal != null || widget.loggedMeal != null;

  @override
  void initState() {
    super.initState();
    if (widget.loggedMeal != null) {
      // Editing a logged meal
      final loggedMeal = widget.loggedMeal!;
      _nameController = TextEditingController(text: loggedMeal.meal.name);
      _selectedDate = loggedMeal.dateTime;
      _selectedTime = TimeOfDay.fromDateTime(loggedMeal.dateTime);
      _calories = loggedMeal.meal.macros.calories;
      _carbs = loggedMeal.meal.macros.carbs.round();
      _protein = loggedMeal.meal.macros.protein.round();
      _fat = loggedMeal.meal.macros.fat.round();
      _fiber = loggedMeal.meal.macros.fiber.round();
      _mealType = loggedMeal.meal.type;
      _mealQuantityController = TextEditingController(
        text: loggedMeal.meal.quantity,
      );
      _clientId = loggedMeal.hasClientId() ? loggedMeal.clientId : null;
    } else if (widget.meal != null) {
      // Editing a meal (legacy support)
      final meal = widget.meal!;
      final initialDateTime = widget.initialDateTime ?? DateTime.now();
      _nameController = TextEditingController(text: meal.name);
      _selectedDate = initialDateTime;
      _selectedTime = TimeOfDay.fromDateTime(initialDateTime);
      _calories = meal.macros.calories;
      _carbs = meal.macros.carbs.round();
      _protein = meal.macros.protein.round();
      _fat = meal.macros.fat.round();
      _fiber = meal.macros.fiber.round();
      _mealType = meal.type;
      _mealQuantityController = TextEditingController(text: meal.quantity);
    } else {
      // Creating a new meal
      final initialDateTime = widget.initialDateTime ?? DateTime.now();
      _nameController = TextEditingController();
      _selectedDate = initialDateTime;
      _selectedTime = TimeOfDay.fromDateTime(initialDateTime);
      _calories = 0;
      _carbs = 0;
      _protein = 0;
      _fat = 0;
      _fiber = 0;
      _mealType = MealType.UNKNOWN;
      _mealQuantityController = TextEditingController();
    }
    _dateController = TextEditingController();
    _timeController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _dateController.text = MaterialLocalizations.of(
      context,
    ).formatMediumDate(_selectedDate);
    _timeController.text = _selectedTime.format(context);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _mealQuantityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return BaseBottomSheet(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
      headerTitle: Text(
        isEditing ? t.meal.editMeal : t.meal.addMeal,
        style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
      ),
      headerAction: TextButton(onPressed: _saveMeal, child: Text(t.meal.save)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (_hasImage()) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(14),
              child: MealImage(
                imageBytes: widget.imageBytes,
                imageUrl: _getImageUrl(),
              ),
            ),
            const SizedBox(height: 16),
          ],
          TextField(
            controller: _nameController,
            decoration: _inputDecoration(
              context,
              label: t.meal.mealName,
              hint: t.meal.mealNameHint,
              icon: AppIcons.utensils,
            ),
          ),
          const SizedBox(height: 16),
          LayoutBuilder(
            builder: (context, constraints) {
              final dateField = TextField(
                controller: _dateController,
                readOnly: true,
                decoration: _inputDecoration(
                  context,
                  label: MaterialLocalizations.of(context).dateInputLabel,
                  icon: AppIcons.calendar,
                ),
                onTap: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: _selectedDate,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                  );
                  if (mounted && date != null) {
                    setState(() {
                      _selectedDate = date;
                      _dateController.text = MaterialLocalizations.of(
                        context,
                      ).formatMediumDate(date);
                    });
                  }
                },
              );
              final timeField = TextField(
                controller: _timeController,
                readOnly: true,
                decoration: _inputDecoration(
                  context,
                  label: t.meal.timeOfMeal,
                  hint: t.meal.timeOfMealHint,
                  icon: AppIcons.clock,
                ),
                onTap: () async {
                  final time = await showTimePicker(
                    context: context,
                    initialTime: _selectedTime,
                  );
                  if (mounted && time != null) {
                    setState(() {
                      _selectedTime = time;
                      _timeController.text = time.format(context);
                    });
                  }
                },
              );
              final mealTypeField = DropdownButtonFormField<MealType>(
                initialValue: _mealType,
                decoration: _inputDecoration(
                  context,
                  label: t.meal.mealType,
                  icon: AppIcons.utensilsCrossed,
                ),
                items:
                    mealTypeValues
                        .map(
                          (type) => DropdownMenuItem(
                            value: type,
                            child: Text(type.legacyName.capitalized),
                          ),
                        )
                        .toList(),
                onChanged: (value) {
                  if (value != null) {
                    setState(() => _mealType = value);
                  }
                },
              );

              if (constraints.maxWidth < 600) {
                return Column(
                  children: [
                    Row(
                      children: [
                        Expanded(child: dateField),
                        const SizedBox(width: 12),
                        Expanded(child: timeField),
                      ],
                    ),
                    const SizedBox(height: 12),
                    mealTypeField,
                  ],
                );
              }

              return Row(
                children: [
                  Expanded(flex: 3, child: dateField),
                  const SizedBox(width: 12),
                  Expanded(flex: 3, child: timeField),
                  const SizedBox(width: 12),
                  Expanded(flex: 4, child: mealTypeField),
                ],
              );
            },
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _mealQuantityController,
            decoration: _inputDecoration(
              context,
              label: t.meal.mealQuantity,
              hint: t.meal.mealQuantityHint,
              icon: AppIcons.scale,
            ),
          ),
          const SizedBox(height: 14),
          _buildMacroGrid(),
          const SizedBox(height: 8),
        ],
      ),
    );
  }

  Widget _buildMacroGrid() {
    return LayoutBuilder(
      builder: (context, constraints) {
        const spacing = 10.0;
        final tileWidth = (constraints.maxWidth - spacing) / 2;

        return Wrap(
          spacing: spacing,
          runSpacing: spacing,
          children: [
            _buildMacroCard(
              width: tileWidth,
              label: t.meal.nutrition.calories,
              value: _calories,
              min: 0,
              max: 1500,
              onChanged: (value) => setState(() => _calories = value),
            ),
            _buildMacroCard(
              width: tileWidth,
              label: _stripTrailingUnit(t.meal.nutrition.carbs),
              value: _carbs,
              min: 0,
              max: 240,
              unit: 'g',
              onChanged: (value) => setState(() => _carbs = value),
            ),
            _buildMacroCard(
              width: tileWidth,
              label: _stripTrailingUnit(t.meal.nutrition.protein),
              value: _protein,
              min: 0,
              max: 120,
              unit: 'g',
              onChanged: (value) => setState(() => _protein = value),
            ),
            _buildMacroCard(
              width: tileWidth,
              label: _stripTrailingUnit(t.meal.nutrition.fat),
              value: _fat,
              min: 0,
              max: 100,
              unit: 'g',
              onChanged: (value) => setState(() => _fat = value),
            ),
            _buildMacroCard(
              width: tileWidth,
              label: _stripTrailingUnit(t.meal.nutrition.fiber),
              value: _fiber,
              min: 0,
              max: 40,
              unit: 'g',
              onChanged: (value) => setState(() => _fiber = value),
            ),
          ],
        );
      },
    );
  }

  InputDecoration _inputDecoration(
    BuildContext context, {
    required String label,
    String? hint,
    IconData? icon,
  }) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    return InputDecoration(
      labelText: label,
      hintText: hint,
      prefixIcon: icon != null ? Icon(icon, size: 20) : null,
      hintStyle: theme.textTheme.bodyMedium?.copyWith(
        color: colorScheme.onSurface.withValues(alpha: 0.55),
      ),
      filled: true,
      fillColor: colorScheme.surfaceContainerHighest.withValues(alpha: 0.3),
      border: OutlineInputBorder(
        borderRadius: globalRadius,
        borderSide: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: globalRadius,
        borderSide: BorderSide(
          color: colorScheme.outlineVariant.withValues(alpha: 0.6),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: globalRadius,
        borderSide: BorderSide(color: colorScheme.primary, width: 1.4),
      ),
    );
  }

  bool _hasImage() {
    return (widget.imageBytes != null && widget.imageBytes!.isNotEmpty) ||
        _getImageUrl() != null;
  }

  String? _getImageUrl() {
    final url = widget.loggedMeal?.metadata.imageUrl;
    return url?.isNotEmpty ?? false ? url : null;
  }

  Future<void> _saveMeal() async {
    final newTimestamp = DateTime(
      _selectedDate.year,
      _selectedDate.month,
      _selectedDate.day,
      _selectedTime.hour,
      _selectedTime.minute,
    );

    // Generate a new clientId if this is a new meal
    // Use timestamp-based approach for simplicity
    final finalClientId =
        _clientId ??
        (DateTime.now().millisecondsSinceEpoch % 2147483647).toInt();

    final mealInfo = LoggedMeal(
      clientId: finalClientId,
      meal: Meal(
        name: _nameController.text,
        quantity: _mealQuantityController.text,
        type: _mealType,
        macros: MealMacro(
          calories: _calories,
          carbs: _carbs,
          protein: _protein,
          fat: _fat,
          fiber: _fiber,
        ),
      ),
      createdAt: dateTimeToIso8601String(newTimestamp),
      metadata:
          _getImageUrl() != null
              ? MealMetadata(imageUrl: _getImageUrl()!)
              : null,
    );

    try {
      final database = ref.read(databaseInterfaceProvider);
      await database.upsertMeal(mealInfo);
      if (widget.saveAsFavorite) {
        await database.addToFavorites(mealInfo);
      }

      if (!mounted) return;
      showFlushbar(
        widget.saveAsFavorite
            ? t.meal.savedAsFavorite
            : (isEditing
                ? t.meal.updatedSuccessfully
                : t.meal.savedSuccessfully),
        context: context,
      );
      Navigator.of(context).pop();
    } on Exception catch (e, st) {
      log('Error saving meal:', error: e, stackTrace: st);
      if (!mounted) return;
      showFlushbar(t.meal.errorSaving(error: e), context: context);
    }
  }

  Widget _buildMacroCard({
    required double width,
    required String label,
    required int value,
    required int min,
    required int max,
    String? unit,
    required ValueChanged<int> onChanged,
  }) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: width,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 10, 10, 6),
        decoration: BoxDecoration(
          color: colorScheme.surfaceContainerHighest.withValues(alpha: 0.32),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    label,
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface.withValues(alpha: 0.8),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: colorScheme.primary.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(999),
                  ),
                  child: Text(
                    unit == null ? value.toString() : '$value $unit',
                    style: textTheme.labelSmall?.copyWith(
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                trackHeight: 3,
                thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 7),
                overlayShape: SliderComponentShape.noOverlay,
              ),
              child: Slider(
                value: value.toDouble(),
                min: min.toDouble(),
                max: max.toDouble(),
                divisions: max - min,
                label: value.toString(),
                onChanged: (value) => onChanged(value.toInt()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _stripTrailingUnit(String label) {
    return label.replaceFirst(RegExp(r'\s*\([^)]*\)\s*$'), '');
  }
}
