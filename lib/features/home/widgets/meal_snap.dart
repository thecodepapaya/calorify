import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:calorify/features/home/widgets/food_tip_sheet.dart';
import 'package:calorify/shared_widgets/loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:lucide_icons/lucide_icons.dart';

class MealSnap extends StatefulWidget {
  const MealSnap({super.key});

  @override
  State<MealSnap> createState() => _MealSnapState();
}

class _MealSnapState extends State<MealSnap> {
  bool _isLoading = false;
  File? _file;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Stack(
      children: [
        Container(
          margin: globalMargin,
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: globalRadius,
            border: Border.all(color: colorScheme.outline),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(LucideIcons.camera, color: colorScheme.primary),
                  SizedBox(width: 8),
                  Text(
                    'Snap & Track Your Meal',
                    style: textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                'Use your camera to take a picture of your food for AI analysis.',
                style: textTheme.bodyMedium?.copyWith(
                  color: colorScheme.onSecondary.withValues(alpha: 0.7),
                ),
              ),
              SizedBox(height: 10),
              if (_isLoading && _file != null)
                Container(
                  decoration: BoxDecoration(
                    borderRadius: globalRadius,
                    image: DecorationImage(
                      image: MemoryImage(_file!.readAsBytesSync()),
                      fit: BoxFit.cover,
                    ),
                  ),
                  foregroundDecoration: BoxDecoration(
                    color: Colors.black.withValues(alpha: 0.6),
                    borderRadius: globalRadius,
                  ),
                  width: double.infinity,
                  height: 200,
                  child: AppLoader(),
                ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: _isLoading ? null : _onSelectImage,
                style: ButtonStyle(
                  minimumSize: WidgetStatePropertyAll(
                    Size(double.infinity, 50),
                  ),
                  backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
                  foregroundColor: WidgetStatePropertyAll(
                    colorScheme.onPrimary,
                  ),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(borderRadius: globalRadius),
                  ),
                ),
                child: Text(
                  'Open Camera & Scan',
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onPrimary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: IconButton(
            icon: Icon(LucideIcons.helpCircle),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Future<bool> _onSelectImage() async {
    final image = await ImagePickerService().pickImageFromGallery();
    if (image == null) return false;

    final compressedImageByte = await _compressImage(image);
    if (compressedImageByte == null) return false;

    setState(() {
      _file = image;
      _isLoading = true;
    });

    late final MealInfo mealInfo;
    try {
      mealInfo = (await _processImage(compressedImageByte))!;
    } on Exception catch (e) {
      _reset();
      if (!mounted) return false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Failed to process image: $e'));
      return false;
    }

    if (!mounted) return false;
    await showMealTip(context, mealInfo);

    if (!mealInfo.mealIdentified) {
      _reset();
      return false;
    }

    if (!mounted) return false;
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(_snack('Meal identified, syncing ...'));

    try {
      final isSuccess = await HealthService.instance.writeMealData(mealInfo);
      _reset();
      if (!isSuccess) throw Exception('Could not write to Health Connect');
      if (!mounted) return false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Meal synced with Health connect'));
      return true;
    } on Exception catch (e) {
      _reset();
      if (!mounted) return false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Could not sync to Health Connect: $e'));
      return false;
    }
  }

  Future<Uint8List?> _compressImage(File image) async {
    final original = await image.readAsBytes();
    try {
      final compressed = await FlutterImageCompress.compressWithList(
        original,
        quality: 90,
        format: CompressFormat.jpeg,
      );

      log(
        'Compression: ${(original.length - compressed.length) / original.length * 100}%',
      );

      return compressed;
    } on Exception catch (e) {
      if (!mounted) return null;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Error compressing image: $e'));
      return null;
    }
  }

  Future<MealInfo?> _processImage(Uint8List imageBytes) async {
    final meal = await FoodAnalysisService().analyzeFoodImage(
      imageBytes: imageBytes,
    );

    return meal;
  }

  void _reset() {
    setState(() {
      _isLoading = false;
      _file = null;
    });
  }

  SnackBar _snack(String message) => SnackBar(content: Text(message));
}
