import 'dart:developer';
import 'dart:typed_data';

import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/meal_type.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/utilities/string_utils.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:flutter/material.dart';

Future<void> showEditMealSheet(
  BuildContext context, {
  MealInfo? mealInfo,
  Uint8List? imageData,
}) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    showDragHandle: true,
    enableDrag: true,
    routeSettings: RouteSettings(name: 'edit_meal_sheet'),
    builder:
        (context) => _EditMealScreen(mealInfo: mealInfo, imageData: imageData),
  );
}

class _EditMealScreen extends StatefulWidget {
  final MealInfo? mealInfo;
  final Uint8List? imageData;

  const _EditMealScreen({this.mealInfo, this.imageData});

  @override
  _EditMealScreenState createState() => _EditMealScreenState();
}

class _EditMealScreenState extends State<_EditMealScreen> {
  late TextEditingController _nameController;
  late TextEditingController _timeController;
  late TimeOfDay _selectedTime;
  late int _calories;
  late int _carbs;
  late int _protein;
  late int _fat;
  late int _fiber;
  late MealType _mealType;
  late TextEditingController _mealQuantityController;

  bool get isEditing => widget.mealInfo != null;

  @override
  void initState() {
    super.initState();
    if (isEditing) {
      _nameController = TextEditingController(text: widget.mealInfo!.mealName);
      _selectedTime = TimeOfDay.fromDateTime(widget.mealInfo!.timestamp);
      _calories = widget.mealInfo!.calories;
      _carbs = widget.mealInfo!.carbs;
      _protein = widget.mealInfo!.protein;
      _fat = widget.mealInfo!.fat;
      _fiber = widget.mealInfo!.fiber;
      _mealType = widget.mealInfo!.mealType;
      _mealQuantityController = TextEditingController(
        text: widget.mealInfo!.mealQuantity,
      );
    } else {
      _nameController = TextEditingController();
      _selectedTime = TimeOfDay.now();
      _calories = 0;
      _carbs = 0;
      _protein = 0;
      _fat = 0;
      _fiber = 0;
      _mealType = MealType.unknown;
      _mealQuantityController = TextEditingController();
    }
    _timeController = TextEditingController();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _timeController.text = _selectedTime.format(context);
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                isEditing ? t.meal.editMeal : t.meal.addMeal,
                style: textTheme.titleLarge,
              ),
              TextButton(
                onPressed: _saveMeal,
                child: Text(
                  t.meal.save,
                  style: textTheme.titleMedium?.copyWith(
                    color: colorScheme.primary,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          if (widget.imageData != null) ...[
            Image.memory(widget.imageData!),
            const SizedBox(height: 20),
          ],
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: t.meal.mealName,
              hintText: 'e.g., Scrambled Eggs with toast',
              hintStyle: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _timeController,
            readOnly: true,
            decoration: InputDecoration(
              labelText: t.meal.timeOfMeal,
              hintText: t.meal.timeOfMealHint,
              hintStyle: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
            onTap: () async {
              final time = await showTimePicker(
                context: context,
                initialTime: _selectedTime,
              );
              if (time != null) {
                setState(() {
                  _selectedTime = time;
                  _timeController.text = time.format(context);
                });
              }
            },
          ),
          const SizedBox(height: 20),
          DropdownButtonFormField<MealType>(
            initialValue: _mealType,
            decoration: InputDecoration(
              labelText: t.meal.mealType,
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
            items:
                MealType.values
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.name.capitalized),
                      ),
                    )
                    .toList(),
            onChanged: (value) {
              if (value != null) {
                setState(() => _mealType = value);
              }
            },
          ),
          const SizedBox(height: 20),
          TextField(
            controller: _mealQuantityController,
            decoration: InputDecoration(
              labelText: t.meal.mealQuantity,
              hintText: t.meal.mealQuantityHint,
              hintStyle: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
          ),
          const SizedBox(height: 20),
          _buildSlider(t.meal.nutrition.calories, _calories, 0, 1500, (value) {
            setState(() => _calories = value);
          }),
          _buildSlider(t.meal.nutrition.carbs, _carbs, 0, 200, (value) {
            setState(() => _carbs = value);
          }),
          _buildSlider(t.meal.nutrition.protein, _protein, 0, 200, (value) {
            setState(() => _protein = value);
          }),
          _buildSlider(t.meal.nutrition.fat, _fat, 0, 200, (value) {
            setState(() => _fat = value);
          }),
          _buildSlider(t.meal.nutrition.fiber, _fiber, 0, 100, (value) {
            setState(() => _fiber = value);
          }),
        ],
      ),
    );
  }

  Future<void> _saveMeal() async {
    final now = DateTime.now();
    final newTimestamp = DateTime(
      now.year,
      now.month,
      now.day,
      _selectedTime.hour,
      _selectedTime.minute,
    );

    final mealInfo = MealInfo(
      id: isEditing ? widget.mealInfo?.id : null,
      mealName: _nameController.text,
      calories: _calories,
      carbs: _carbs,
      protein: _protein,
      fat: _fat,
      fiber: _fiber,
      mealType: _mealType,
      mealQuantity: _mealQuantityController.text,
      timestamp: newTimestamp,
    );

    try {
      await DatabaseService.databaseInterface.upsertMeal(mealInfo);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        snack('Meal ${isEditing ? 'updated' : 'added'} successfully!'),
      );
      Navigator.of(context).pop();
    } on Exception catch (e, st) {
      log('Error saving meal:', error: e, stackTrace: st);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(snack('Error saving meal: $e'));
    }
  }

  Widget _buildSlider(
    String label,
    int value,
    int min,
    int max,
    ValueChanged<int> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${value.toStringAsFixed(1)}'),
        Slider(
          value: value.toDouble(),
          min: min.toDouble(),
          max: max.toDouble(),
          divisions: (max - min).toInt(),
          label: value.toStringAsFixed(1),
          onChanged: (value) => onChanged(value.toInt()),
        ),
      ],
    );
  }
}
