import 'dart:typed_data';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';

class EditMealScreen extends StatefulWidget {
  final MealInfo? mealInfo;
  final Uint8List? imageData;

  const EditMealScreen({
    super.key,
    this.mealInfo,
    this.imageData,
  });

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
    } else {
      _nameController = TextEditingController();
      _selectedTime = TimeOfDay.now();
      _calories = 0;
      _carbs = 0;
      _protein = 0;
      _fat = 0;
    }
    _timeController = TextEditingController(
      text: _selectedTime.format(context),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? 'Edit Meal' : 'Add Meal'),
        actions: [
          IconButton(icon: const Icon(Icons.check), onPressed: _saveMeal),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.imageData != null) ...[
              Image.memory(widget.imageData!),
              const SizedBox(height: 20),
            ],
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: 'Meal Name',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _timeController,
              readOnly: true,
              decoration: const InputDecoration(
                labelText: 'Time of Meal',
                border: OutlineInputBorder(),
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
          ],
        ),
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
      fiber: isEditing ? widget.mealInfo!.fiber : 0,
      mealType: isEditing ? widget.mealInfo!.mealType : 'Unknown',
      mealQuantity: isEditing ? widget.mealInfo!.mealQuantity : 'Unknown',
      timestamp: newTimestamp,
    );

    try {
      final companion = MealInfoTableCompanion(
        mealName: drift.Value(_nameController.text),
        calories: drift.Value(_calories),
        carbs: drift.Value(_carbs),
        protein: drift.Value(_protein),
        fat: drift.Value(_fat),
        timestamp: drift.Value(newTimestamp),
      );
      if (isEditing) {
        await (appDb.update(appDb.mealInfoTable)
              ..where((tbl) => tbl.id.equals(widget.mealInfo!.id!)))
            .write(companion);
      } else {
        await appDb.into(appDb.mealInfoTable).insert(companion);
      }
      await HealthService.instance.writeMealData(mealInfo);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Meal ${isEditing ? 'updated' : 'added'} successfully!'),
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
