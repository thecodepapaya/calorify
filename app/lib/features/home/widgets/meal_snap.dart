import 'dart:io';
import 'dart:typed_data';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/providers/home_providers.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/disclaimer_sheet.dart'
    show getSnapDisclaimer;
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:calorify/features/home/widgets/disclaimer_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:services/services.dart';
import 'package:widgets/widgets.dart';

class MealSnap extends StatefulWidget {
  const MealSnap({super.key});

  @override
  State<MealSnap> createState() => _MealSnapState();
}

class _MealSnapState extends State<MealSnap> {
  bool _isLoading = false;
  bool _isUploadingImage = false;
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Large, prominent camera button area
              if (_isLoading && _file != null)
                _buildImagePreview(context, colorScheme, textTheme)
              else
                _buildCameraButton(context, colorScheme, textTheme),
              SizedBox(height: 8),
              // Secondary action buttons
              if (!_isLoading)
                _buildSecondaryActions(context, colorScheme, textTheme),
            ],
          ),
        ),
        Positioned(
          top: 0,
          right: 12,
          child: DisclaimerButton(data: getSnapDisclaimer()),
        ),
      ],
    );
  }

  Widget _buildCameraButton(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return InkWell(
      onTap: () async {
        final image = await ImagePickerService().pickImageFromCamera();
        if (image == null) return;
        await _onSelectImage(image);
      },
      borderRadius: globalRadius,
      child: Container(
        width: double.infinity,
        height: 112,
        decoration: BoxDecoration(
          borderRadius: globalRadius,
          border: Border.all(
            color: colorScheme.primary.withValues(alpha: 0.3),
            width: 2,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              colorScheme.primary.withValues(alpha: 0.1),
              colorScheme.primary.withValues(alpha: 0.05),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorScheme.primary,
                shape: BoxShape.circle,
              ),
              child: Icon(
                LucideIcons.camera,
                size: 22,
                color: colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              t.home.mealSnap.openCamera,
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
                color: colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildImagePreview(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    final status =
        _isUploadingImage
            ? t.home.mealSnap.uploadingPhoto
            : t.home.mealSnap.compressingPhoto;
    return Container(
      width: double.infinity,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: globalRadius,
        image: DecorationImage(image: FileImage(_file!), fit: BoxFit.cover),
      ),
      foregroundDecoration: BoxDecoration(
        color: colorScheme.shadow.withValues(alpha: 0.5),
        borderRadius: globalRadius,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLoader(color: colorScheme.surface),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              status,
              textAlign: TextAlign.center,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.surface,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSecondaryActions(
    BuildContext context,
    ColorScheme colorScheme,
    TextTheme textTheme,
  ) {
    return Row(
      children: [
        Expanded(
          child: _buildActionButton(
            context: context,
            colorScheme: colorScheme,
            textTheme: textTheme,
            icon: LucideIcons.camera,
            label: t.home.mealSnap.openCamera,
            analyticsEvent: AnalyticsEvent.mealSnapFromCamera,
            onPressed: () async {
              final image = await ImagePickerService().pickImageFromCamera();
              if (image == null) return;
              await _onSelectImage(image);
            },
          ),
        ),
        SizedBox(width: 12),
        Expanded(
          child: _buildActionButton(
            context: context,
            colorScheme: colorScheme,
            textTheme: textTheme,
            icon: LucideIcons.imagePlus,
            label: t.home.mealSnap.gallery,
            analyticsEvent: AnalyticsEvent.mealSnapFromGallery,
            onPressed: () async {
              final image = await ImagePickerService().pickImageFromGallery();
              if (image == null) return;
              await _onSelectImage(image);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required BuildContext context,
    required ColorScheme colorScheme,
    required TextTheme textTheme,
    required IconData icon,
    required String label,
    required AnalyticsEvent analyticsEvent,
    required VoidCallback onPressed,
  }) {
    return OutlinedButton(
      onPressed: () {
        Analytics.instance.logEvent(analyticsEvent);
        onPressed();
      },
      style: OutlinedButton.styleFrom(
        padding: appButtonOutlinedPadding,
        side: BorderSide(color: colorScheme.outline),
        shape: RoundedSuperellipseBorder(borderRadius: buttonRadius),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: colorScheme.primary),
          SizedBox(width: 8),
          Flexible(
            child: Text(
              label,
              style: textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurface,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onSelectImage(File image) async {
    final container = ProviderScope.containerOf(context, listen: false);
    // Show loading state immediately for better UX
    setState(() {
      _file = image;
      _isLoading = true;
      _isUploadingImage = false;
    });

    // Compress image using shared service
    Uint8List compressedImageByte;
    try {
      if (!mounted) return;
      compressedImageByte = await ImageCompressionService.instance
          .compressImage(image);
      if (!mounted) return;
    } on MealImageTooLargeException {
      if (!mounted) return;
      showFlushbar(t.meal.imageTooLarge, context: context);
      _reset();
      return;
    } on Exception catch (e) {
      if (!mounted) return;
      showFlushbar(t.meal.errorCompressingImage(error: e), context: context);
      _reset();
      return;
    }

    // Save compressed image to temporary file for API call
    final tempDir = Directory.systemTemp;
    final compressedFile = File(
      '${tempDir.path}/meal_snap_${DateTime.now().millisecondsSinceEpoch}.webp',
    );
    try {
      await compressedFile.writeAsBytes(compressedImageByte);

      try {
        final repository = container.read(foodRepositoryProvider);
        setState(() => _isUploadingImage = true);
        final imageUrl = await repository.uploadMealImage(compressedFile);
        if (!mounted) return;
        await showV2MealAnalysisFlow(
          context: context,
          startAnalysis:
              (cancellation, analysisId) => repository.analyzeImageFromUrlV2(
                analysisId: analysisId,
                imageUrl: imageUrl,
                cancellation: cancellation,
              ),
          imageBytes: compressedImageByte,
          imageUrl: imageUrl,
        );
      } on MealImageTooLargeException {
        Analytics.instance.logEvent(AnalyticsEvent.mealDetectionFailure);
        if (!mounted) return;
        showFlushbar(t.meal.imageTooLarge, context: context);
        return;
      } on Exception catch (e) {
        Analytics.instance.logEvent(AnalyticsEvent.mealDetectionFailure);
        if (!mounted) return;
        showFlushbar(t.meal.failedToProcessImage(error: e), context: context);
        return;
      } finally {
        // Clean up temp file
        try {
          await compressedFile.delete();
        } catch (e) {
          // Ignore cleanup errors
        }
        _reset();
      }

      if (!mounted) return;
    } catch (e) {
      // Clean up temp file on error
      try {
        await compressedFile.delete();
      } catch (deleteError) {
        // Ignore cleanup errors
      }
      if (!mounted) return;
      showFlushbar(t.meal.failedToProcessImage(error: e), context: context);
      _reset();
    }
  }

  void _reset() {
    if (!mounted) return;
    setState(() {
      _isLoading = false;
      _isUploadingImage = false;
      _file = null;
    });
  }
}
