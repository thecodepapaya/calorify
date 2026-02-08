import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:calorify/core/services/wear_os_channel.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/feedback_rating_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_tip_sheet.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_variation_sheet.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:health/health.dart' hide MealType;
import 'package:i18n/i18n.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:utils/utils.dart';

@RoutePage()
class DebugOptionsScreen extends StatefulWidget {
  const DebugOptionsScreen({super.key});

  @override
  State<DebugOptionsScreen> createState() => _DebugOptionsScreenState();
}

class _DebugOptionsScreenState extends State<DebugOptionsScreen> {
  String _searchQuery = '';

  bool _matchesQuery(String a, [String? b, String? c]) {
    if (_searchQuery.trim().isEmpty) return true;
    final q = _searchQuery.trim().toLowerCase();
    return a.toLowerCase().contains(q) ||
        (b != null && b.toLowerCase().contains(q)) ||
        (c != null && c.toLowerCase().contains(q));
  }

  @override
  Widget build(BuildContext context) {
    final notificationOptions = _buildNotificationOptions(context);
    final healthConnectOptions = _buildHealthConnectOptions(context);
    final wearOsOptions = _buildWearOsOptions(context);
    final foodApiOptions = _buildFoodApiOptions(context);
    final feedbackOptions = _buildFeedbackOptions(context);
    final dataResetOptions = _buildDataResetOptions(context);
    final appInfoOptions = _buildAppInfoOptions(context);
    final shorebirdOptions = _buildShorebirdOptions(context);

    return Scaffold(
      appBar: AppBar(title: Text(t.debug.title)),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        behavior: HitTestBehavior.translucent,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search options...',
                  prefixIcon: const Icon(LucideIcons.search, size: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                ),
                onChanged: (value) => setState(() => _searchQuery = value),
              ),
            ),
            if (notificationOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.notifications),
              notificationOptions,
              const SizedBox(height: 24),
            ],
            if (healthConnectOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.healthConnect),
              healthConnectOptions,
              const SizedBox(height: 24),
            ],
            if (wearOsOptions != null) ...[
              _buildSectionTitle(context, 'Wear OS'),
              wearOsOptions,
              const SizedBox(height: 24),
            ],
            if (foodApiOptions != null) ...[
              _buildSectionTitle(context, 'Food API Tests'),
              foodApiOptions,
              const SizedBox(height: 24),
            ],
            if (feedbackOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.feedback),
              feedbackOptions,
              const SizedBox(height: 24),
            ],
            if (dataResetOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.dataReset),
              dataResetOptions,
              const SizedBox(height: 24),
            ],
            if (appInfoOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.appInfo),
              appInfoOptions,
              const SizedBox(height: 24),
            ],
            if (shorebirdOptions != null) ...[
              _buildSectionTitle(context, 'Shorebird'),
              shorebirdOptions,
              const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget? _buildNotificationOptions(BuildContext context) {
    final section = t.debug.sections.notifications;
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.list),
        title: Text(t.debug.showActiveNotifications),
        onTap: _showActiveNotifications,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellPlus),
        title: Text(t.debug.scheduleTestNotification),
        onTap: _scheduleTestNotification,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellRing),
        title: Text(t.debug.triggerBreakfastNotification),
        onTap: _triggerBreakfastNotification,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellOff),
        title: Text(t.debug.cancelAllNotifications),
        onTap: _cancelAllNotifications,
      ),
    ];
    final titles = [
      t.debug.showActiveNotifications,
      t.debug.scheduleTestNotification,
      t.debug.triggerBreakfastNotification,
      t.debug.cancelAllNotifications,
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      if (_matchesQuery(section, titles[i])) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  Future<void> _showActiveNotifications() async {
    final pendingRequests =
        await NotificationService.instance.pendingNotificationRequests();
    if (!mounted) return;

    if (pendingRequests.isEmpty) {
      _showSnackbar(t.debug.noNotifications);
      return;
    }

    await showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.activeNotificationsDialog,
      ),
      builder:
          (context) => AlertDialog(
            title: Text(t.debug.activeNotifications),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: pendingRequests.length,
                itemBuilder: (context, index) {
                  final request = pendingRequests[index];
                  return ListTile(
                    title: Text(request.title ?? t.debug.noTitle),
                    subtitle: Text(request.body ?? t.debug.noBody),
                    trailing: Text(t.debug.id(id: request.id)),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }

  Future<void> _scheduleTestNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 99,
      title: t.notifications.test.title,
      body: t.debug.testNotificationBody,
      scheduledTime: DateTime.now().add(const Duration(seconds: 10)),
    );
    _showSnackbar(t.debug.testNotificationScheduled);
  }

  Future<void> _triggerBreakfastNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 1,
      title: t.notifications.breakfast.title,
      body: t.notifications.breakfast.body,
      scheduledTime: DateTime.now().add(const Duration(seconds: 5)),
      payload: 'meal_reminder_breakfast',
      channel: NotificationService.remindersChannel,
    );
    _showSnackbar(t.debug.breakfastNotificationTriggered);
  }

  Future<void> _cancelAllNotifications() async {
    await NotificationService.instance.cancelAllNotifications();
    _showSnackbar(t.debug.allNotificationsCancelled);
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message), duration: const Duration(seconds: 2)),
    );
  }

  Widget? _buildHealthConnectOptions(BuildContext context) {
    final section = t.debug.sections.healthConnect;
    final titles = [
      t.debug.fetchTodaysSteps,
      t.debug.fetchTodaysCalories,
      t.debug.fetchLatestWeight,
      t.debug.fetchLatestHeight,
      t.debug.writeTestWeight,
      t.debug.writeTestHeight,
      t.debug.syncLast7Days,
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.activity),
        title: Text(t.debug.fetchTodaysSteps),
        onTap: _fetchTodaysSteps,
      ),
      ListTile(
        leading: const Icon(LucideIcons.flame),
        title: Text(t.debug.fetchTodaysCalories),
        onTap: _fetchTodaysCalories,
      ),
      ListTile(
        leading: const Icon(LucideIcons.scale),
        title: Text(t.debug.fetchLatestWeight),
        onTap: _fetchLatestWeight,
      ),
      ListTile(
        leading: const Icon(LucideIcons.ruler),
        title: Text(t.debug.fetchLatestHeight),
        onTap: _fetchLatestHeight,
      ),
      ListTile(
        leading: const Icon(LucideIcons.plus),
        title: Text(t.debug.writeTestWeight),
        onTap: _writeTestWeight,
      ),
      ListTile(
        leading: const Icon(LucideIcons.plus),
        title: Text(t.debug.writeTestHeight),
        onTap: _writeTestHeight,
      ),
      ListTile(
        leading: const Icon(LucideIcons.refreshCw),
        title: Text(t.debug.syncLast7Days),
        onTap: _syncLast7Days,
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      if (_matchesQuery(section, titles[i])) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  Widget? _buildWearOsOptions(BuildContext context) {
    const section = 'Wear OS';
    const titleSubtitle = [
      ('Check Watch Connection', null),
      ('Send Test Message', 'Send a simple test message to watch'),
      ('Send Test Meal Data', 'Send sample meal data to watch'),
      ('Send Test Calorie Goal', 'Send sample calorie goal to watch'),
      ('View Received Messages', 'View messages received from watch'),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.watch),
        title: const Text('Check Watch Connection'),
        onTap: _checkWatchConnection,
      ),
      ListTile(
        leading: const Icon(LucideIcons.send),
        title: const Text('Send Test Message'),
        subtitle: const Text('Send a simple test message to watch'),
        onTap: _sendTestMessage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.database),
        title: const Text('Send Test Meal Data'),
        subtitle: const Text('Send sample meal data to watch'),
        onTap: _sendTestMealData,
      ),
      ListTile(
        leading: const Icon(LucideIcons.activity),
        title: const Text('Send Test Calorie Goal'),
        subtitle: const Text('Send sample calorie goal to watch'),
        onTap: _sendTestCalorieGoal,
      ),
      ListTile(
        leading: const Icon(LucideIcons.inbox),
        title: const Text('View Received Messages'),
        subtitle: const Text('View messages received from watch'),
        onTap: _viewReceivedMessages,
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      final (t, s) = titleSubtitle[i];
      if (_matchesQuery(section, t, s)) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  Future<void> _checkWatchConnection() async {
    try {
      final connected = await WearOsPhoneChannel.isWatchConnected();
      if (!mounted) return;

      String message;
      if (connected) {
        final watchInfo = await WearOsPhoneChannel.getConnectedWatchInfo();
        if (watchInfo != null) {
          final deviceName = watchInfo['name'] as String? ?? 'Unknown Device';
          final isNearby = watchInfo['isNearby'] as bool? ?? false;
          final count = watchInfo['count'] as int? ?? 1;

          message = 'Watch is connected ✓\n\n';
          message += 'Device: $deviceName\n';
          message += 'Nearby: ${isNearby ? "Yes" : "No"}\n';
          if (count > 1) {
            message += 'Connected devices: $count';
          }
        } else {
          message = 'Watch is connected ✓\n\n(Device info unavailable)';
        }
      } else {
        message =
            'Watch is not connected ✗\n\nMake sure:\n• Both devices are paired\n• Watch app is running\n• Both apps are in debug/staging mode';
      }

      _showDataDialog('Watch Connection', message);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error checking connection: $e');
    }
  }

  Future<void> _sendTestMessage() async {
    try {
      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/test',
        data: {
          'message': 'Hello from phone!',
          'timestamp': DateTime.now().toIso8601String(),
          'type': 'test',
        },
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test message sent successfully!'
            : 'Failed to send test message. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending message: $e');
    }
  }

  Future<void> _sendTestMealData() async {
    try {
      final testMeal = {
        'id': 'test-${DateTime.now().millisecondsSinceEpoch}',
        'name': 'Test Meal',
        'calories': 500,
        'protein': 30.0,
        'carbs': 60.0,
        'fat': 20.0,
        'timestamp': DateTime.now().toIso8601String(),
        'type': 'meal',
      };

      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/meals/today',
        data: {
          'meals': [testMeal],
          'totalCalories': 500,
        },
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test meal data sent successfully!'
            : 'Failed to send meal data. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending meal data: $e');
    }
  }

  Future<void> _sendTestCalorieGoal() async {
    try {
      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/calorie_goal',
        data: {'goal': 2000, 'timestamp': DateTime.now().toIso8601String()},
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? 'Test calorie goal sent successfully!'
            : 'Failed to send calorie goal. Check watch connection.',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error sending calorie goal: $e');
    }
  }

  Widget? _buildFoodApiOptions(BuildContext context) {
    const section = 'Food API Tests';
    const titleSubtitle = [
      ('Test Analyze Image', 'Upload hardcoded test image'),
      ('Test Detect Image', 'Detect meal from image URL'),
      (
        'Detect Image from Gallery',
        'Select image, upload to bucket & estimate calories',
      ),
      ('Test Detect Text', 'Detect meal from text description'),
      (
        'Test Meal Logging with Variations',
        'Test the full meal logging flow with variations',
      ),
      (
        'Mock meal with variations',
        'Preview variation + tip sheet UI without logging',
      ),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.image),
        title: const Text('Test Analyze Image'),
        subtitle: const Text('Upload hardcoded test image'),
        onTap: _testAnalyzeImage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.link),
        title: const Text('Test Detect Image'),
        subtitle: const Text('Detect meal from image URL'),
        onTap: _testDetectImage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.upload),
        title: const Text('Detect Image from Gallery'),
        subtitle: const Text(
          'Select image, upload to bucket & estimate calories',
        ),
        onTap: _testDetectImageFromGallery,
      ),
      ListTile(
        leading: const Icon(LucideIcons.type),
        title: const Text('Test Detect Text'),
        subtitle: const Text('Detect meal from text description'),
        onTap: _testDetectText,
      ),
      ListTile(
        leading: const Icon(LucideIcons.info),
        title: const Text('Test Meal Logging with Variations'),
        subtitle: const Text('Test the full meal logging flow with variations'),
        onTap: _testMealLoggingWithVariations,
      ),
      ListTile(
        leading: const Icon(LucideIcons.beaker),
        title: const Text('Mock meal with variations'),
        subtitle: const Text(
          'Preview variation + tip sheet UI without logging',
        ),
        onTap: _mockMealWithVariations,
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      final (t, s) = titleSubtitle[i];
      if (_matchesQuery(section, t, s)) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  /// Shows the meal variation sheet with mocked API response for UI preview.
  /// Does not call the API and does not log the meal.
  Future<void> _mockMealWithVariations() async {
    final mockResponse = _createMockMealDetectionResponse();
    if (!mounted) return;
    await showMealVariation(
      context: context,
      response: mockResponse,
      isDebugPreview: true,
    );
  }

  MealDetectionResponse _createMockMealDetectionResponse() {
    final baseMeal = Meal(
      name: 'Grilled chicken with rice and vegetables',
      quantity: '1 serving',
      type: MealType.LUNCH,
      macros: MealMacro(
        calories: 450,
        carbs: 45,
        protein: 35,
        fat: 14,
        fiber: 4,
      ),
    );
    final result = MealDetectionResult(
      mealIdentified: true,
      calorieConfidence: CalorieConfidence.MEDIUM,
      tip: 'This is a mock tip for UI preview. The meal is not logged.',
      meal: baseMeal,
      metadata: MealMetadata(mealDescription: 'Mock meal for debug'),
    );
    final variations = [
      Variation(
        question: 'How was the portion size?',
        options: [
          Variation_Option(
            option: 'Small',
            macroDiff: MealMacro(
              calories: -80,
              carbs: -15,
              protein: -8,
              fat: -3,
              fiber: -1,
            ),
          ),
          Variation_Option(option: 'Medium'),
          Variation_Option(
            option: 'Large',
            macroDiff: MealMacro(
              calories: 100,
              carbs: 12,
              protein: 10,
              fat: 4,
              fiber: 2,
            ),
          ),
        ],
      ),
      Variation(
        question: 'Any extra sides?',
        options: [
          Variation_Option(option: 'None'),
          Variation_Option(
            option: 'Side salad',
            macroDiff: MealMacro(
              calories: 50,
              carbs: 6,
              protein: 2,
              fat: 3,
              fiber: 2,
            ),
          ),
          Variation_Option(
            option: 'Bread roll',
            macroDiff: MealMacro(
              calories: 120,
              carbs: 22,
              protein: 4,
              fat: 2,
              fiber: 1,
            ),
          ),
        ],
      ),
    ];
    return MealDetectionResponse(result: result, variations: variations);
  }

  Future<void> _testAnalyzeImage() async {
    try {
      _showSnackbar('Testing analyzeImage API...');

      final testImageUrl =
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400';
      final tempDir = Directory.systemTemp;
      final testImageFile = File('${tempDir.path}/test_food_image.jpg');

      final response = await NetworkClient.instance.client.get<List<int>>(
        testImageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      await testImageFile.writeAsBytes(response.data!);

      final repository = FoodRepository();
      final apiResponse = await repository.analyzeImage(
        imageFile: testImageFile,
      );

      await testImageFile.delete();

      if (!mounted) return;

      final result = apiResponse.result;
      final mealInfo = result.hasMeal() ? result.meal : null;

      final resultText = '''
Meal Identified: ${result.mealIdentified}
Confidence: ${result.calorieConfidence.name}
Tip: ${result.tip.isNotEmpty ? result.tip : 'N/A'}
${mealInfo != null ? '''
Meal Name: ${mealInfo.name}
Calories: ${mealInfo.macros.calories}
Protein: ${mealInfo.macros.protein}g
Carbs: ${mealInfo.macros.carbs}g
Fat: ${mealInfo.macros.fat}g
''' : 'No meal info'}
''';

      _showDataDialog('Analyze Image Result', resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Future<void> _testDetectImage() async {
    try {
      _showSnackbar('Testing detectImage API...');

      const testImageUrl =
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400';

      // Download image to temporary file
      final dio = Dio();
      final response = await dio.get<List<int>>(
        testImageUrl,
        options: Options(responseType: ResponseType.bytes),
      );

      final tempDir = Directory.systemTemp;
      final tempFile = File(
        '${tempDir.path}/test_image_${DateTime.now().millisecondsSinceEpoch}.jpg',
      );
      await tempFile.writeAsBytes(response.data!);

      final repository = FoodRepository();
      final detectResponse = await repository.detectImage(imageFile: tempFile);

      // Clean up temporary file
      await tempFile.delete();

      if (!mounted) return;

      final result = detectResponse.result;
      final mealInfo = result.hasMeal() ? result.meal : null;

      final resultText = '''
Meal Identified: ${result.mealIdentified}
Confidence: ${result.calorieConfidence.name}
Tip: ${result.tip.isNotEmpty ? result.tip : 'N/A'}
${mealInfo != null ? '''
Meal Name: ${mealInfo.name}
Calories: ${mealInfo.macros.calories}
Protein: ${mealInfo.macros.protein}g
Carbs: ${mealInfo.macros.carbs}g
Fat: ${mealInfo.macros.fat}g
''' : 'No meal info'}
''';

      _showDataDialog('Detect Image Result', resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Future<void> _testDetectImageFromGallery() async {
    try {
      _showSnackbar('Selecting image from gallery...');

      final pickerService = ImagePickerService();
      File? imageFile;
      try {
        imageFile = await pickerService.pickImageFromGallery();
      } on ArgumentError catch (e) {
        if (!mounted) return;
        _showSnackbar(e.message);
        return;
      }

      if (imageFile == null) {
        if (!mounted) return;
        _showSnackbar('No image selected');
        return;
      }

      if (!mounted) return;
      _showSnackbar('Compressing image...');

      // Compress the image before uploading
      final compressedBytes = await ImageCompressionService.instance
          .compressImage(imageFile);

      // Save compressed image to temporary file
      final tempDir = Directory.systemTemp;
      final compressedFile = File(
        '${tempDir.path}/compressed_${DateTime.now().millisecondsSinceEpoch}.webp',
      );
      await compressedFile.writeAsBytes(compressedBytes);

      if (!mounted) return;
      _showSnackbar('Uploading image to bucket and detecting meal...');

      final repository = FoodRepository();
      final detectResponse = await repository.detectImage(
        imageFile: compressedFile,
      );

      // Clean up temporary file
      try {
        await compressedFile.delete();
      } catch (e) {
        // Ignore cleanup errors
      }

      if (!mounted) return;

      final result = detectResponse.result;
      final mealInfo = result.hasMeal() ? result.meal : null;

      final resultText = '''
Meal Identified: ${result.mealIdentified}
Confidence: ${result.calorieConfidence.name}
Tip: ${result.tip.isNotEmpty ? result.tip : 'N/A'}
${mealInfo != null ? '''
Meal Name: ${mealInfo.name}
Calories: ${mealInfo.macros.calories}
Protein: ${mealInfo.macros.protein}g
Carbs: ${mealInfo.macros.carbs}g
Fat: ${mealInfo.macros.fat}g
''' : 'No meal info'}
''';

      _showDataDialog('Detect Image from Gallery Result', resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Future<void> _testDetectText() async {
    try {
      _showSnackbar('Testing detectText API...');

      const testText =
          'I had a large grilled chicken breast with roasted vegetables and quinoa for lunch';

      final repository = FoodRepository();
      final response = await repository.detectText(textDescription: testText);

      if (!mounted) return;

      final result = response.result;
      final mealInfo = result.hasMeal() ? result.meal : null;

      final resultText = '''
Meal Identified: ${result.mealIdentified}
Confidence: ${result.calorieConfidence.name}
Tip: ${result.tip.isNotEmpty ? result.tip : 'N/A'}
${mealInfo != null ? '''
Meal Name: ${mealInfo.name}
Calories: ${mealInfo.macros.calories}
Protein: ${mealInfo.macros.protein}g
Carbs: ${mealInfo.macros.carbs}g
Fat: ${mealInfo.macros.fat}g
''' : 'No meal info'}
Variations: ${response.variations.length}
''';

      _showDataDialog('Detect Text Result', resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Future<void> _testMealLoggingWithVariations() async {
    try {
      _showSnackbar('Testing meal logging flow with variations...');

      // Navigate to Log screen first
      if (!mounted) return;
      await context.router.push(const LogRoute());

      // Wait a bit for navigation to complete
      await Future.delayed(const Duration(milliseconds: 500));

      if (!mounted) return;

      // Trigger meal detection with a test description that should return variations
      const testText = 'I had a bowl with rice, curry, and a white side dish';

      final repository = FoodRepository();
      final response = await repository.detectText(textDescription: testText);

      if (!mounted) return;

      // Check if variations are present and show the variation sheet
      if (response.variations.isNotEmpty) {
        await showMealVariation(context: context, response: response);
      } else {
        // No variations, show meal tip sheet directly
        if (response.result.hasMeal()) {
          await showMealTip(
            context: context,
            mealDetectionResult: response.result,
          );
        } else {
          _showSnackbar('No meal identified in response');
        }
      }
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Widget? _buildFeedbackOptions(BuildContext context) {
    final section = t.debug.sections.feedback;
    final title = t.debug.showFeedbackRatingSheet;
    if (!_matchesQuery(section, title)) return null;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.star),
            title: Text(t.debug.showFeedbackRatingSheet),
            onTap: () => showFeedbackRatingSheet(context, persistShown: false),
          ),
        ],
      ),
    );
  }

  Widget? _buildDataResetOptions(BuildContext context) {
    final section = t.debug.sections.dataReset;
    final titles = [t.debug.clearUserPreferences, t.debug.clearUserProfile];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.settings),
        title: Text(t.debug.clearUserPreferences),
        onTap: () => _showClearPreferencesConfirmation(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.user),
        title: Text(t.debug.clearUserProfile),
        onTap: () => _showClearProfileConfirmation(context),
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      if (_matchesQuery(section, titles[i])) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  void _showClearPreferencesConfirmation(BuildContext context) {
    showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.clearDataConfirmationDialog,
      ),
      builder:
          (dialogContext) => AlertDialog(
            title: Text(t.debug.clearUserPreferencesConfirmationTitle),
            content: Text(t.debug.clearUserPreferencesConfirmationMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: Text(t.debug.cancel),
              ),
              TextButton(
                onPressed: () async {
                  await DatabaseService.databaseInterface
                      .clearUserPreferences();
                  if (!dialogContext.mounted) return;
                  Navigator.pop(dialogContext);
                  if (!context.mounted) return;
                  _showSnackbar('User preferences cleared');
                },
                child: Text(t.debug.clear),
              ),
            ],
          ),
    );
  }

  void _showClearProfileConfirmation(BuildContext context) {
    showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.clearDataConfirmationDialog,
      ),
      builder:
          (dialogContext) => AlertDialog(
            title: Text(t.debug.clearUserProfileConfirmationTitle),
            content: Text(t.debug.clearUserProfileConfirmationMessage),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: Text(t.debug.cancel),
              ),
              TextButton(
                onPressed: () async {
                  await DatabaseService.databaseInterface.clearUserProfile();
                  if (!dialogContext.mounted) return;
                  Navigator.pop(dialogContext);
                  if (!context.mounted) return;
                  _showSnackbar('User profile cleared');
                },
                child: Text(t.debug.clear),
              ),
            ],
          ),
    );
  }

  Widget? _buildAppInfoOptions(BuildContext context) {
    final section = t.debug.sections.appInfo;
    final title = t.debug.checkCurrentLocale;
    if (!_matchesQuery(section, title)) return null;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.languages),
            title: Text(t.debug.checkCurrentLocale),
            onTap: _checkCurrentLocale,
          ),
        ],
      ),
    );
  }

  Widget? _buildShorebirdOptions(BuildContext context) {
    const section = 'Shorebird';
    const titles = [
      'Check for update',
      'Show patch number',
      'Show update available',
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.download),
        title: const Text('Check for update'),
        onTap: _shorebirdCheckForUpdate,
      ),
      ListTile(
        leading: const Icon(LucideIcons.hash),
        title: const Text('Show patch number'),
        onTap: _shorebirdShowPatchNumber,
      ),
      ListTile(
        leading: const Icon(LucideIcons.circleAlert),
        title: const Text('Show update available'),
        onTap: _shorebirdShowUpdateAvailable,
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      if (_matchesQuery(section, titles[i])) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
  }

  Future<void> _shorebirdCheckForUpdate() async {
    try {
      final status = await ShorebirdUpdater().checkForUpdate();
      if (!mounted) return;
      final message =
          status == UpdateStatus.outdated ? 'Update available' : 'Up to date';
      _showDataDialog('Check for update', message);
    } catch (_) {
      if (!mounted) return;
      _showDataDialog(
        'Check for update',
        'Shorebird is unavailable in this environment.',
      );
    }
  }

  Future<void> _shorebirdShowPatchNumber() async {
    try {
      final patch = await ShorebirdUpdater().readCurrentPatch();
      if (!mounted) return;
      final message =
          patch != null
              ? 'Patch number: ${patch.number}'
              : 'No patch installed';
      _showDataDialog('Show patch number', message);
    } catch (_) {
      if (!mounted) return;
      _showDataDialog(
        'Show patch number',
        'Shorebird is unavailable in this environment.',
      );
    }
  }

  Future<void> _shorebirdShowUpdateAvailable() async {
    await _shorebirdCheckForUpdate();
  }

  void _checkCurrentLocale() {
    final locale = LocaleUtils.getCurrentLocale(context);
    final unitSystem = LocaleUtils.getDefaultUnitSystem(context);
    final isMetric = unitSystem == UnitSystem.METRIC;
    final countryCode = locale.countryCode ?? 'N/A';
    final languageCode = locale.languageCode;

    _showDataDialog(
      t.debug.currentLocale,
      t.debug.localeInfo(
        languageCode: languageCode,
        countryCode: countryCode,
        unitSystem: isMetric ? t.editProfile.metric : t.editProfile.imperial,
      ),
    );
  }

  Future<void> _fetchTodaysSteps() async {
    final steps = await HealthService.instance.getTodaySteps();
    _showDataDialog('Today\'s Steps', 'Steps: $steps');
  }

  Future<void> _fetchLatestWeight() async {
    final weight = await HealthService.instance.getLatestWeight();
    if (weight == null) {
      _showSnackbar(t.debug.noWeightData);
    } else {
      _showDataDialog(
        t.debug.latestWeight,
        'Weight: ${weight.toStringAsFixed(UnitSystem.METRIC.weightPrecision)} kg',
      );
    }
  }

  Future<void> _fetchLatestHeight() async {
    final height = await HealthService.instance.getLatestHeight();
    if (height == null) {
      _showSnackbar(t.debug.noHeightData);
    } else {
      // Height is usually in meters from Health Connect
      _showDataDialog(
        t.debug.latestHeight,
        'Height: ${(height * 100).toStringAsFixed(UnitSystem.METRIC.heightPrecision)} cm',
      );
    }
  }

  Future<void> _writeTestWeight() async {
    final success = await HealthService.instance.writeWeight(70.0);
    if (success) {
      _showSnackbar(t.debug.weightWritten);
    } else {
      _showSnackbar(t.debug.weightWriteFailed);
    }
  }

  Future<void> _writeTestHeight() async {
    final success = await HealthService.instance.writeHeight(175.0);
    if (success) {
      _showSnackbar(t.debug.heightWritten);
    } else {
      _showSnackbar(t.debug.heightWriteFailed);
    }
  }

  Future<void> _fetchTodaysCalories() async {
    final now = DateTime.now();
    final startOfDay = DateTime(now.year, now.month, now.day);
    final calories = await HealthService.instance.fetchHealthData(
      startOfDay,
      now,
      HealthDataType.TOTAL_CALORIES_BURNED,
    );

    if (!mounted) return;

    if (calories.isEmpty) {
      _showSnackbar(t.debug.noCalorieData);
      return;
    }

    final totalCalories = calories
        .map((e) => (e.value as NumericHealthValue).numericValue.toDouble())
        .reduce((value, element) => value + element);

    _showDataDialog(
      t.debug.todaysCalories,
      t.debug.totalCaloriesBurned(calories: totalCalories.toStringAsFixed(2)),
    );
  }

  Future<void> _syncLast7Days() async {
    final now = DateTime.now();
    final sevenDaysAgo = now.subtract(const Duration(days: 7));

    _showSnackbar(t.debug.fetchingData);

    final types = [
      HealthDataType.STEPS,
      HealthDataType.TOTAL_CALORIES_BURNED,
      HealthDataType.WEIGHT,
    ];

    int totalPoints = 0;
    for (final type in types) {
      final data = await HealthService.instance.fetchHealthData(
        sevenDaysAgo,
        now,
        type,
      );
      totalPoints += data.length;
    }

    _showDataDialog(
      t.debug.sync7DaysTitle,
      t.debug.syncSuccess(count: totalPoints),
    );
  }

  Future<void> _viewReceivedMessages() async {
    if (!mounted) return;

    await showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.receivedMessagesDialog,
      ),
      builder:
          (context) => AlertDialog(
            title: const Text('Received Messages from Watch'),
            content: SizedBox(
              width: double.maxFinite,
              child:
                  WearOsMessageLog.messages.isEmpty
                      ? const Text(
                        'No messages received yet.\n\nSend test data from watch to see messages here.',
                      )
                      : ListView.builder(
                        shrinkWrap: true,
                        itemCount: WearOsMessageLog.messages.length,
                        itemBuilder: (context, index) {
                          final message = WearOsMessageLog.messages[index];
                          final timestamp = message['timestamp'] as DateTime;
                          final path = message['path'] as String;
                          final data = message['data'] as Map<String, dynamic>;
                          return Card(
                            margin: const EdgeInsets.only(bottom: 8),
                            child: ListTile(
                              title: Text(
                                path,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '${timestamp.hour.toString().padLeft(2, '0')}:${timestamp.minute.toString().padLeft(2, '0')}:${timestamp.second.toString().padLeft(2, '0')}',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color:
                                          Theme.of(
                                            context,
                                          ).colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Text(
                                    _formatData(data),
                                    style: const TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'monospace',
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              isThreeLine: true,
                            ),
                          );
                        },
                      ),
            ),
            actions: [
              if (WearOsMessageLog.messages.isNotEmpty)
                TextButton(
                  onPressed: () {
                    WearOsMessageLog.clear();
                    setState(() {});
                    Navigator.of(context).pop();
                    _showSnackbar('Messages cleared');
                  },
                  child: const Text('Clear'),
                ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }

  String _formatData(Map<String, dynamic> data) {
    return data.entries.map((e) => '${e.key}: ${e.value}').join(', ');
  }

  void _showDataDialog(String title, String content) {
    showDialog(
      context: context,
      routeSettings: RouteSettings(
        name: RouteNames.dataDialog,
        arguments: {'title': title, 'content': content},
      ),
      builder:
          (context) => AlertDialog(
            title: Text(title),
            content: Text(content),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(t.common.close),
              ),
            ],
          ),
    );
  }
}
