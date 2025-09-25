import 'dart:typed_data';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';

class EditMealScreen extends StatefulWidget {
  final MealInfo mealInfo;
  final Uint8List imageData;

  const EditMealScreen({
    super.key,
    required this.mealInfo,
    required this.imageData,
  });

  @override
  _EditMealScreenState createState() => _EditMealScreenState();
}

class _EditMealScreenState extends State<EditMealScreen> {
  late TextEditingController _nameController;
  late TextEditingController _timeController;
  late TimeOfDay _selectedTime;
  late double _calories;
  late double _carbs;
  late double _protein;
  late double _fat;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.mealInfo.mealName);
    _selectedTime = TimeOfDay.fromDateTime(widget.mealInfo.timestamp);
    _timeController = TextEditingController(text: _selectedTime.format(context));
    _calories = widget.mealInfo.calories;
    _carbs = widget.mealInfo.carbs.toDouble();
    _protein = widget.mealInfo.protein.toDouble();
    _fat = widget.mealInfo.fat.toDouble();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Meal'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: _saveMeal,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.memory(widget.imageData),
            const SizedBox(height: 20),
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
    final newTimestamp = DateTime(now.year, now.month, now.day, _selectedTime.hour, _selectedTime.minute);

    final updatedMealInfo = MealInfo(
      id: widget.mealInfo.id,
      mealName: _nameController.text,
      calories: _calories,
      carbs: _carbs,
      protein: _protein,
      fat: _fat,
      fiber: widget.mealInfo.fiber,
      mealType: widget.mealInfo.mealType,
      mealQuantity: widget.mealInfo.mealQuantity,
      timestamp: newTimestamp,
    );

    try {
      final companion = MealInfoCompanion(
        mealName: drift.Value(_nameController.text),
        calories: drift.Value(_calories),
        carbs: drift.Value(_carbs),
        protein: drift.Value(_protein),
        fat: drift.Value(_fat),
        timestamp: drift.Value(newTimestamp),
      );
      await (appDb.update(appDb.mealInfoTable)..where((tbl) => tbl.id.equals(widget.mealInfo.id))).write(companion);
      await HealthService.instance.writeMealData(updatedMealInfo);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Meal updated successfully!')),
      );
      Navigator.of(context).pop();
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error saving meal: $e')),
      );
    }
  }

  Widget _buildSlider(String label, double value, double min, double max, ValueChanged<double> onChanged) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: ${value.toStringAsFixed(1)}'),
        Slider(
          value: value,
          min: min,
          max: max,
          divisions: (max - min).toInt(),
          label: value.toStringAsFixed(1),
          onChanged: onChanged,
        ),
      ],
    );
  }
}