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
import 'package:calorify/features/debug/database_inspector_screen.dart';
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
  bool? _isFeedbackEligible;

  bool _matchesQuery(String a, [String? b, String? c]) {
    if (_searchQuery.trim().isEmpty) return true;
    final q = _searchQuery.trim().toLowerCase();
    return a.toLowerCase().contains(q) ||
        (b != null && b.toLowerCase().contains(q)) ||
        (c != null && c.toLowerCase().contains(q));
  }

  @override
  void initState() {
    super.initState();
    _loadFeedbackEligibility();
  }

  Future<void> _loadFeedbackEligibility() async {
    try {
      final db = DatabaseService.databaseInterface;
      final hasSeen = await db.hasSeenFeedbackSheet();
      if (hasSeen) {
        if (!mounted) return;
        setState(() => _isFeedbackEligible = false);
        return;
      }

      final meals = await db.getLatestMealsForFeedbackEligibility(limit: 5);
      final distinctDays = meals
          .map(
            (m) => DateTime(
              m.dateTime.year,
              m.dateTime.month,
              m.dateTime.day,
            ),
          )
          .toSet()
          .length;

      final eligible =
          meals.length >= 5 || (meals.length >= 3 && distinctDays >= 2);

      if (!mounted) return;
      setState(() => _isFeedbackEligible = eligible);
    } catch (_) {
      // In debug screen, failures here should not break the UI.
      if (!mounted) return;
      setState(() => _isFeedbackEligible = null);
    }
  }

  @override
  Widget build(BuildContext context) {
    final notificationOptions = _buildNotificationOptions(context);
    final healthConnectOptions = _buildHealthConnectOptions(context);
    final wearOsOptions = _buildWearOsOptions(context);
    final foodApiOptions = _buildFoodApiOptions(context);
    final profileApiOptions = _buildProfileApiOptions(context);
    final feedbackOptions = _buildFeedbackOptions(context);
    final dataResetOptions = _buildDataResetOptions(context);
    final databaseOptions = _buildDatabaseOptions(context);
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
                  hintText: t.debug.searchHint,
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
              _buildSectionTitle(context, t.debug.sections.wearOs),
              wearOsOptions,
              const SizedBox(height: 24),
            ],
            if (foodApiOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.foodApiTests),
              foodApiOptions,
              const SizedBox(height: 24),
            ],
            if (profileApiOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.profileApiTests),
              profileApiOptions,
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
            if (databaseOptions != null) ...[
              _buildSectionTitle(
                context,
                t['debug.sections.database'],
              ),
              databaseOptions,
              const SizedBox(height: 24),
            ],
            if (appInfoOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.appInfo),
              appInfoOptions,
              const SizedBox(height: 24),
            ],
            if (shorebirdOptions != null) ...[
              _buildSectionTitle(context, t.debug.sections.shorebird),
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
    showFlushbar(message, duration: const Duration(seconds: 2), context: context);
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
    final section = t.debug.sections.wearOs;
    final titleSubtitle = [
      (t.debug.checkWatchConnection, null),
      (t.debug.sendTestMessage, t.debug.sendTestMessageSubtitle),
      (t.debug.sendTestMealData, t.debug.sendTestMealDataSubtitle),
      (t.debug.sendTestCalorieGoal, t.debug.sendTestCalorieGoalSubtitle),
      (t.debug.viewReceivedMessages, t.debug.viewReceivedMessagesSubtitle),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.watch),
        title: Text(t.debug.checkWatchConnection),
        onTap: _checkWatchConnection,
      ),
      ListTile(
        leading: const Icon(LucideIcons.send),
        title: Text(t.debug.sendTestMessage),
        subtitle: Text(t.debug.sendTestMessageSubtitle),
        onTap: _sendTestMessage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.database),
        title: Text(t.debug.sendTestMealData),
        subtitle: Text(t.debug.sendTestMealDataSubtitle),
        onTap: _sendTestMealData,
      ),
      ListTile(
        leading: const Icon(LucideIcons.activity),
        title: Text(t.debug.sendTestCalorieGoal),
        subtitle: Text(t.debug.sendTestCalorieGoalSubtitle),
        onTap: _sendTestCalorieGoal,
      ),
      ListTile(
        leading: const Icon(LucideIcons.inbox),
        title: Text(t.debug.viewReceivedMessages),
        subtitle: Text(t.debug.viewReceivedMessagesSubtitle),
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
          final deviceName = watchInfo['name'] as String? ?? t.debug.unknownDevice;
          final isNearby = watchInfo['isNearby'] as bool? ?? false;
          final count = watchInfo['count'] as int? ?? 1;

          message = '${t.debug.watchConnected}\n\n';
          message += '${t.debug.device}: $deviceName\n';
          message += '${t.debug.nearby}: ${isNearby ? t.debug.yes : t.debug.no}\n';
          if (count > 1) {
            message += '${t.debug.connectedDevices}: $count';
          }
        } else {
          message = '${t.debug.watchConnected}\n\n${t.debug.deviceInfoUnavailable}';
        }
      } else {
        message = '${t.debug.watchNotConnected}\n\n${t.debug.watchNotConnectedHint}';
      }

      _showDataDialog(t.debug.watchConnection, message);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorCheckingConnection(error: e.toString()));
    }
  }

  Future<void> _sendTestMessage() async {
    try {
      final success = await WearOsPhoneChannel.sendToWatch(
        path: '/test',
        data: {
          'message': t.debug.helloFromPhone,
          'timestamp': DateTime.now().toIso8601String(),
          'type': 'test',
        },
      );
      if (!mounted) return;
      _showSnackbar(
        success
            ? t.debug.testMessageSentSuccess
            : t.debug.testMessageFailed,
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorSendingMessage(error: e.toString()));
    }
  }

  Future<void> _sendTestMealData() async {
    try {
      final testMeal = {
        'id': 'test-${DateTime.now().millisecondsSinceEpoch}',
        'name': t.debug.testMeal,
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
            ? t.debug.testMealDataSentSuccess
            : t.debug.failedToSendMealData,
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorSendingMealData(error: e.toString()));
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
            ? t.debug.testCalorieGoalSentSuccess
            : t.debug.failedToSendCalorieGoal,
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorSendingCalorieGoal(error: e.toString()));
    }
  }

  Widget? _buildFoodApiOptions(BuildContext context) {
    final section = t.debug.sections.foodApiTests;
    final titleSubtitle = [
      (t.debug.testAnalyzeImage, t.debug.testAnalyzeImageSubtitle),
      (t.debug.testDetectImage, t.debug.testDetectImageSubtitle),
      (t.debug.detectImageFromGallery, t.debug.detectImageFromGallerySubtitle),
      (t.debug.testDetectText, t.debug.testDetectTextSubtitle),
      (t.debug.testMealLoggingWithVariations, t.debug.testMealLoggingWithVariationsSubtitle),
      (t.debug.mockMealWithVariations, t.debug.mockMealWithVariationsSubtitle),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.image),
        title: Text(t.debug.testAnalyzeImage),
        subtitle: Text(t.debug.testAnalyzeImageSubtitle),
        onTap: _testAnalyzeImage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.link),
        title: Text(t.debug.testDetectImage),
        subtitle: Text(t.debug.testDetectImageSubtitle),
        onTap: _testDetectImage,
      ),
      ListTile(
        leading: const Icon(LucideIcons.upload),
        title: Text(t.debug.detectImageFromGallery),
        subtitle: Text(t.debug.detectImageFromGallerySubtitle),
        onTap: _testDetectImageFromGallery,
      ),
      ListTile(
        leading: const Icon(LucideIcons.type),
        title: Text(t.debug.testDetectText),
        subtitle: Text(t.debug.testDetectTextSubtitle),
        onTap: _testDetectText,
      ),
      ListTile(
        leading: const Icon(LucideIcons.info),
        title: Text(t.debug.testMealLoggingWithVariations),
        subtitle: Text(t.debug.testMealLoggingWithVariationsSubtitle),
        onTap: _testMealLoggingWithVariations,
      ),
      ListTile(
        leading: const Icon(LucideIcons.beaker),
        title: Text(t.debug.mockMealWithVariations),
        subtitle: Text(t.debug.mockMealWithVariationsSubtitle),
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

  Widget? _buildProfileApiOptions(BuildContext context) {
    final section = t.debug.sections.profileApiTests;
    final titleSubtitle = [
      (t.debug.testUpdateProfile, t.debug.testUpdateProfileSubtitle),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.userCog),
        title: Text(t.debug.testUpdateProfile),
        subtitle: Text(t.debug.testUpdateProfileSubtitle),
        onTap: _testUpdateProfile,
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

  Future<void> _testUpdateProfile() async {
    try {
      _showSnackbar(t.debug.testingProfileApi);

      // Call profile API directly so we can show success/error (repository swallows exceptions)
      final response = await NetworkClient.instance.client.post<Map<String, dynamic>>(
        '/api/v1/user/profile',
        data: <String, dynamic>{
          'height': 175,
          'weight': 70,
          'targetWeight': 68,
          'gender': 'MALE',
          'dailyCalorieGoal': 2000,
          'heightUnit': 'METRIC',
          'weightUnit': 'METRIC',
        },
      );

      if (!mounted) return;
      final message = response.data?['message'] ?? response.data?.toString() ?? '';
      _showDataDialog(
        t.debug.profileUpdateSuccess,
        message.isNotEmpty ? message : t.debug.profileUpdateSuccess,
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.profileUpdateFailed(error: e.toString()));
    }
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
      name: t.debug.mockMealName,
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
      tip: t.debug.mockTip,
      meal: baseMeal,
      metadata: MealMetadata(mealDescription: t.debug.mockMealDescription),
    );
    final variations = [
      Variation(
        question: t.debug.portionSizeQuestion,
        options: [
          Variation_Option(
            option: t.debug.optionSmall,
            macroDiff: MealMacro(
              calories: -80,
              carbs: -15,
              protein: -8,
              fat: -3,
              fiber: -1,
            ),
          ),
          Variation_Option(option: t.debug.optionMedium),
          Variation_Option(
            option: t.debug.optionLarge,
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
        question: t.debug.extraSidesQuestion,
        options: [
          Variation_Option(option: t.debug.optionNone),
          Variation_Option(
            option: t.debug.optionSideSalad,
            macroDiff: MealMacro(
              calories: 50,
              carbs: 6,
              protein: 2,
              fat: 3,
              fiber: 2,
            ),
          ),
          Variation_Option(
            option: t.debug.optionBreadRoll,
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
      _showSnackbar(t.debug.testingAnalyzeImage);

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
${t.debug.mealIdentified}: ${result.mealIdentified}
${t.debug.confidence}: ${result.calorieConfidence.name}
${t.debug.tip}: ${result.tip.isNotEmpty ? result.tip : t.debug.na}
${mealInfo != null ? '''
${t.debug.mealName}: ${mealInfo.name}
${t.debug.calories}: ${mealInfo.macros.calories}
${t.debug.protein}: ${mealInfo.macros.protein}g
${t.debug.carbs}: ${mealInfo.macros.carbs}g
${t.debug.fat}: ${mealInfo.macros.fat}g
''' : t.debug.noMealInfo}
''';

      _showDataDialog(t.debug.analyzeImageResult, resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorGeneric(error: e.toString()));
    }
  }

  Future<void> _testDetectImage() async {
    try {
      _showSnackbar(t.debug.testingDetectImage);

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
${t.debug.mealIdentified}: ${result.mealIdentified}
${t.debug.confidence}: ${result.calorieConfidence.name}
${t.debug.tip}: ${result.tip.isNotEmpty ? result.tip : t.debug.na}
${mealInfo != null ? '''
${t.debug.mealName}: ${mealInfo.name}
${t.debug.calories}: ${mealInfo.macros.calories}
${t.debug.protein}: ${mealInfo.macros.protein}g
${t.debug.carbs}: ${mealInfo.macros.carbs}g
${t.debug.fat}: ${mealInfo.macros.fat}g
''' : t.debug.noMealInfo}
''';

      _showDataDialog(t.debug.detectImageResult, resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorGeneric(error: e.toString()));
    }
  }

  Future<void> _testDetectImageFromGallery() async {
    try {
      _showSnackbar(t.debug.selectingImageFromGallery);

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
        _showSnackbar(t.debug.noImageSelected);
        return;
      }

      if (!mounted) return;
      _showSnackbar(t.debug.compressingImage);

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
      _showSnackbar(t.debug.uploadingImageAndDetecting);

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
${t.debug.mealIdentified}: ${result.mealIdentified}
${t.debug.confidence}: ${result.calorieConfidence.name}
${t.debug.tip}: ${result.tip.isNotEmpty ? result.tip : t.debug.na}
${mealInfo != null ? '''
${t.debug.mealName}: ${mealInfo.name}
${t.debug.calories}: ${mealInfo.macros.calories}
${t.debug.protein}: ${mealInfo.macros.protein}g
${t.debug.carbs}: ${mealInfo.macros.carbs}g
${t.debug.fat}: ${mealInfo.macros.fat}g
''' : t.debug.noMealInfo}
''';

      _showDataDialog(t.debug.detectImageFromGalleryResult, resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorGeneric(error: e.toString()));
    }
  }

  Future<void> _testDetectText() async {
    try {
      _showSnackbar(t.debug.testingDetectText);

      const testText =
          'I had a large grilled chicken breast with roasted vegetables and quinoa for lunch';

      final repository = FoodRepository();
      final response = await repository.detectText(textDescription: testText);

      if (!mounted) return;

      final result = response.result;
      final mealInfo = result.hasMeal() ? result.meal : null;

      final resultText = '''
${t.debug.mealIdentified}: ${result.mealIdentified}
${t.debug.confidence}: ${result.calorieConfidence.name}
${t.debug.tip}: ${result.tip.isNotEmpty ? result.tip : t.debug.na}
${mealInfo != null ? '''
${t.debug.mealName}: ${mealInfo.name}
${t.debug.calories}: ${mealInfo.macros.calories}
${t.debug.protein}: ${mealInfo.macros.protein}g
${t.debug.carbs}: ${mealInfo.macros.carbs}g
${t.debug.fat}: ${mealInfo.macros.fat}g
''' : t.debug.noMealInfo}
${t.debug.variationsCount}: ${response.variations.length}
''';

      _showDataDialog(t.debug.detectTextResult, resultText);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorGeneric(error: e.toString()));
    }
  }

  Future<void> _testMealLoggingWithVariations() async {
    try {
      _showSnackbar(t.debug.testingMealLoggingFlow);

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
          _showSnackbar(t.debug.noMealIdentifiedInResponse);
        }
      }
      } catch (e) {
      if (!mounted) return;
      _showSnackbar(t.debug.errorGeneric(error: e.toString()));
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
            trailing: _buildFeedbackEligibilityIndicator(context),
            onTap: () => showFeedbackRatingSheet(context, persistShown: false),
          ),
        ],
      ),
    );
  }

  Widget? _buildFeedbackEligibilityIndicator(BuildContext context) {
    final eligible = _isFeedbackEligible;
    if (eligible == null) {
      return const SizedBox.shrink();
    }

    final color = eligible
        ? Theme.of(context).colorScheme.primary
        : Theme.of(context).disabledColor;
    final icon =
        eligible ? LucideIcons.badgeCheck : LucideIcons.circleOff;

    return Icon(
      icon,
      size: 18,
      color: color,
    );
  }

  Widget? _buildDatabaseOptions(BuildContext context) {
    final section = t['debug.sections.database'];
    final title = t['debug.inspectDatabaseTables'];
    if (!_matchesQuery(section, title)) return null;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.database),
            title: Text(title),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DatabaseInspectorScreen(),
                  settings: const RouteSettings(name: 'databaseInspector'),
                ),
              );
            },
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
                  _showSnackbar(t.debug.userPreferencesCleared);
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
                  _showSnackbar(t.debug.userProfileCleared);
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
    final section = t.debug.sections.shorebird;
    final titles = [
      t.debug.checkForUpdate,
      t.debug.showPatchNumber,
      t.debug.showUpdateAvailable,
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.download),
        title: Text(t.debug.checkForUpdate),
        onTap: _shorebirdCheckForUpdate,
      ),
      ListTile(
        leading: const Icon(LucideIcons.hash),
        title: Text(t.debug.showPatchNumber),
        onTap: _shorebirdShowPatchNumber,
      ),
      ListTile(
        leading: const Icon(LucideIcons.circleAlert),
        title: Text(t.debug.showUpdateAvailable),
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
          status == UpdateStatus.outdated ? t.debug.updateAvailable : t.debug.upToDate;
      _showDataDialog(t.debug.checkForUpdate, '$message ($status)');
    } catch (_) {
      if (!mounted) return;
      _showDataDialog(
        t.debug.checkForUpdate,
        t.debug.shorebirdUnavailable,
      );
    }
  }

  Future<void> _shorebirdShowPatchNumber() async {
    try {
      final patch = await ShorebirdUpdater().readCurrentPatch();
      if (!mounted) return;
      final message =
          patch != null
              ? '${t.debug.patchNumberLabel}: ${patch.number}'
              : t.debug.noPatchInstalled;
      _showDataDialog(t.debug.showPatchNumber, '$message ${patch ?? "null"}');
    } catch (_) {
      if (!mounted) return;
      _showDataDialog(
        t.debug.showPatchNumber,
        t.debug.shorebirdUnavailable,
      );
    }
  }

  Future<void> _shorebirdShowUpdateAvailable() async {
    await _shorebirdCheckForUpdate();
  }

  void _checkCurrentLocale() {
    final locale = TranslationProvider.of(context).locale.flutterLocale;
    final unitSystem = LocaleUtils.getDefaultUnitSystem(locale);
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
    _showDataDialog(t.debug.todaysSteps, '${t.debug.stepsLabel}: $steps');
  }

  Future<void> _fetchLatestWeight() async {
    final weight = await HealthService.instance.getLatestWeight();
    if (weight == null) {
      _showSnackbar(t.debug.noWeightData);
    } else {
      _showDataDialog(
        t.debug.latestWeight,
        t.debug.weightLabel(value: weight.toStringAsFixed(UnitSystem.METRIC.weightPrecision)),
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
        t.debug.heightLabel(value: (height * 100).toStringAsFixed(UnitSystem.METRIC.heightPrecision)),
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
            title: Text(t.debug.receivedMessagesFromWatch),
            content: SizedBox(
              width: double.maxFinite,
              child:
                  WearOsMessageLog.messages.isEmpty
                      ? Text(
                        t.debug.noMessagesReceivedYet,
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
                    _showSnackbar(t.debug.messagesCleared);
                  },
                  child: Text(t.debug.clear),
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


