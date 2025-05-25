import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/db/app_database.dart';
import 'package:calorify/core/db/mappers/meal_info_mapper.dart';
import 'package:calorify/core/models/meal_detection_result.dart';
import 'package:calorify/core/models/meal_model.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/snap_disclaimer_sheet.dart';
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
                  child: AppLoader(color: colorScheme.surface),
                ),
              if (!_isLoading) ...[SizedBox(height: 10), _buttonRow],
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: IconButton(
            icon: Icon(LucideIcons.helpCircle),
            onPressed: () => showSnapDisclaimer(context),
          ),
        ),
      ],
    );
  }

  Widget get _buttonRow {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    final TextTheme textTheme = theme.textTheme;

    return Row(
      children: [
        Expanded(
          flex: 4,
          child: ElevatedButton(
            onPressed: () async {
              final image = await ImagePickerService().pickImageFromCamera();
              if (image == null) return;
              _onSelectImage(image);
            },
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
              backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
              foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: globalRadius),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(LucideIcons.camera),
                SizedBox(width: 6),
                Text(
                  'Open Camera',
                  style: textTheme.bodyLarge?.copyWith(
                    color: colorScheme.onPrimary,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          flex: 1,
          child: ElevatedButton(
            onPressed: () async {
              final image = await ImagePickerService().pickImageFromGallery();
              if (image == null) return;
              _onSelectImage(image);
            },
            style: ButtonStyle(
              minimumSize: WidgetStatePropertyAll(Size(double.infinity, 50)),
              backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
              foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(borderRadius: globalRadius),
              ),
            ),
            child: Icon(LucideIcons.imagePlus),
          ),
        ),
      ],
    );
  }

  Future<void> _onSelectImage(File image) async {
    final compressedImageByte = await _compressImage(image);
    if (compressedImageByte == null) return;

    setState(() {
      _file = image;
      _isLoading = true;
    });

    late final MealDetectionResult mealDetectionResult;
    try {
      mealDetectionResult = await _processImage(compressedImageByte);
    } on Exception catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Failed to process image: $e'));
      return;
    } finally {
      _reset();
    }

    if (!mounted) return;
    await showMealTip(context, compressedImageByte, mealDetectionResult);
    if (!mealDetectionResult.mealIdentified) return;

    try {
      await appDb
          .into(appDb.mealInfoTable)
          .insert(mealDetectionResult.mealInfo.toCompanion());
    } on Exception catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Could not save Meal: $e'));
    }

    await _writeDataToHealthConnect(mealDetectionResult.mealInfo);
  }

  Future<bool> _writeDataToHealthConnect(MealInfo mealInfo) async {
    try {
      final isSuccess = await HealthService.instance.writeMealData(mealInfo);
      if (!isSuccess) throw Exception('Could not sync to Health Connect');

      if (!mounted) return false;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(_snack('Meal synced with Health Connect'));

      return isSuccess;
    } on Exception catch (e) {
      if (!mounted) return false;
      ScaffoldMessenger.of(context).showSnackBar(_snack('$e'));
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

      final percentage =
          (original.length - compressed.length) / original.length * 100;
      final originalSize = (original.length / (1024 * 1024)).toStringAsFixed(2);
      final compSize = (compressed.length / (1024 * 1024)).toStringAsFixed(2);

      log(
        'Compression: ${percentage.floor()}% [${originalSize}MB -> ${compSize}MB]',
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

  Future<MealDetectionResult> _processImage(Uint8List imageBytes) async {
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
