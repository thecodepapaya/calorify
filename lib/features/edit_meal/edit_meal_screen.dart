import 'dart:typed_data';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/models/meal_type.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/utilities/string_utils.dart';
import 'package:drift/drift.dart' as drift;
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
    builder:
        (context) => EditMealScreen(mealInfo: mealInfo, imageData: imageData),
  );
}

class EditMealScreen extends StatefulWidget {
  final MealInfo? mealInfo;
  final Uint8List? imageData;

  const EditMealScreen({super.key, this.mealInfo, this.imageData});

  @override
  _EditMealScreenState createState() => _EditMealScreenState();
}

class _EditMealScreenState extends State<EditMealScreen> {
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
                isEditing ? 'Edit Meal' : 'Add Meal',
                style: textTheme.titleLarge,
              ),
              IconButton(icon: const Icon(Icons.check), onPressed: _saveMeal),
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
              labelText: 'Meal Name',
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
              labelText: 'Time of Meal',
              hintText: 'Select the time you had your meal',
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
            value: _mealType,
            decoration: InputDecoration(
              labelText: 'Meal Type',
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
            items:
                MealType.values
                    .map(
                      (type) => DropdownMenuItem(
                        value: type,
                        child: Text(type.name.capitalizeFirstLetter()),
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
              labelText: 'Meal Quantity',
              hintText: 'e.g., 1 bowl, 2 slices',
              hintStyle: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface.withValues(alpha: 0.6),
              ),
              border: OutlineInputBorder(borderRadius: globalRadius),
            ),
          ),
          const SizedBox(height: 20),
          _buildSlider('Calories', _calories, 0, 1500, (value) {
            setState(() => _calories = value);
          }),
          _buildSlider('Carbs (g)', _carbs, 0, 200, (value) {
            setState(() => _carbs = value);
          }),
          _buildSlider('Protein (g)', _protein, 0, 200, (value) {
            setState(() => _protein = value);
          }),
          _buildSlider('Fat (g)', _fat, 0, 200, (value) {
            setState(() => _fat = value);
          }),
          _buildSlider('Fiber (g)', _fiber, 0, 100, (value) {
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
      id: isEditing ? widget.mealInfo!.id : null,
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
      final companion = MealInfoTableCompanion(
        mealName: drift.Value(_nameController.text),
        calories: drift.Value(_calories),
        carbs: drift.Value(_carbs),
        protein: drift.Value(_protein),
        fat: drift.Value(_fat),
        fiber: drift.Value(_fiber),
        mealType: drift.Value(_mealType.name),
        mealQuantity: drift.Value(_mealQuantityController.text),
        timestamp: drift.Value(newTimestamp),
      );
      if (isEditing) {
        await (appDb.update(appDb.mealInfoTable)..where(
          (tbl) => tbl.id.equals(widget.mealInfo!.id!),
        )).write(companion);
      } else {
        await appDb.logMeal(mealInfo);
      }
      await HealthService.instance.writeMealData(mealInfo);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Meal ${isEditing ? 'updated' : 'added'} successfully!',
          ),
        ),
      );
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error saving meal: $e')));
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
