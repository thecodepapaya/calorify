import 'dart:developer';
import 'dart:typed_data';

import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/features/home/widgets/meal_image.dart';
import 'package:calorify/shared_widgets/base_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';
import 'package:models/models.dart';
import 'package:utils/utils.dart';

Future<void> showEditMealSheet(
  BuildContext context, {
  Meal? meal,
  LoggedMeal? loggedMeal,
  Uint8List? imageBytes,
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
        ),
  );
}

class EditMealScreen extends StatefulWidget {
  final Meal? meal;
  final LoggedMeal? loggedMeal;
  final Uint8List? imageBytes;

  const EditMealScreen({
    super.key,
    this.meal,
    this.loggedMeal,
    this.imageBytes,
  });

  @override
  EditMealScreenState createState() => EditMealScreenState();
}

class EditMealScreenState extends State<EditMealScreen> {
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
  int? _clientId;

  bool get isEditing => widget.meal != null || widget.loggedMeal != null;

  @override
  void initState() {
    super.initState();
    if (widget.loggedMeal != null) {
      // Editing a logged meal
      final loggedMeal = widget.loggedMeal!;
      _nameController = TextEditingController(text: loggedMeal.meal.name);
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
      _nameController = TextEditingController(text: meal.name);
      _selectedTime = TimeOfDay.now();
      _calories = meal.macros.calories;
      _carbs = meal.macros.carbs.round();
      _protein = meal.macros.protein.round();
      _fat = meal.macros.fat.round();
      _fiber = meal.macros.fiber.round();
      _mealType = meal.type;
      _mealQuantityController = TextEditingController(text: meal.quantity);
    } else {
      // Creating a new meal
      _nameController = TextEditingController();
      _selectedTime = TimeOfDay.now();
      _calories = 0;
      _carbs = 0;
      _protein = 0;
      _fat = 0;
      _fiber = 0;
      _mealType = MealType.UNKNOWN;
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

    return BaseBottomSheet(
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
          if (_hasImage()) ...[
            MealImage(imageBytes: widget.imageBytes, imageUrl: _getImageUrl()),
            const SizedBox(height: 20),
          ],
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: t.meal.mealName,
              hintText: t.meal.mealNameHint,
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

  bool _hasImage() {
    return (widget.imageBytes != null && widget.imageBytes!.isNotEmpty) ||
        _getImageUrl() != null;
  }

  String? _getImageUrl() {
    final url = widget.loggedMeal?.metadata.imageUrl;
    return url?.isNotEmpty ?? false ? url : null;
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
      await DatabaseService.databaseInterface.upsertMeal(mealInfo);

      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        snack(
          isEditing ? t.meal.updatedSuccessfully : t.meal.savedSuccessfully,
        ),
      );
      Navigator.of(context).pop();
    } on Exception catch (e, st) {
      log('Error saving meal:', error: e, stackTrace: st);
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(snack(t.meal.errorSaving(error: e)));
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
