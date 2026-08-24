import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/network/network_client.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/repositories/food_repository.dart';
import 'package:calorify/core/router/route_names.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/picker_service.dart';
import 'package:calorify/core/services/wear_os_channel.dart';
import 'package:calorify/core/services/wear_os_message_log.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/feedback_rating_sheet.dart';
import 'package:calorify/features/debug/database_inspector_screen.dart';
import 'package:calorify/features/debug/local_inference_debug_screen.dart';
import 'package:calorify/features/debug/meal_analysis_observability_screen.dart';
import 'package:calorify/features/debug/meal_analysis_sheet_debug_previews.dart';
import 'package:calorify/features/debug/widgets/debug_firebase_token_tile.dart';
import 'package:calorify/features/debug/widgets/debug_user_id_field.dart';
import 'package:calorify/features/home/widgets/bottom_sheet/meal_analysis_sheet.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_assets.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_easter_egg_test_screen.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_trigger.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:models/models.dart';
import 'package:services/services.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';
import 'package:utils/utils.dart';

@RoutePage()
class DebugOptionsScreen extends ConsumerStatefulWidget {
  const DebugOptionsScreen({super.key});

  @override
  ConsumerState<DebugOptionsScreen> createState() => _DebugOptionsScreenState();
}

class _DebugOptionsScreenState extends ConsumerState<DebugOptionsScreen> {
  String _searchQuery = '';
  bool? _isFeedbackEligible;
  bool _isCheckingBackendHealth = false;
  bool? _isBackendHealthy;
  String? _backendHealthDialogTitle;
  String? _backendHealthDetails;

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
    WidgetsBinding.instance.addPostFrameCallback((_) => _checkBackendHealth());
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
      final distinctDays =
          meals
              .map(
                (m) =>
                    DateTime(m.dateTime.year, m.dateTime.month, m.dateTime.day),
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
    final backendOptions = _buildBackendOptions(context);
    final notificationOptions = _buildNotificationOptions(context);
    final userIdentityOptions = _buildUserIdentityOptions(context);
    final healthConnectOptions = _buildHealthConnectOptions(context);
    final wearOsOptions = _buildWearOsOptions(context);
    final foodApiOptions = _buildFoodApiOptions(context);
    final localInferenceOptions =
        kDebugMode ? _buildLocalInferenceOptions(context) : null;
    final mealAnalysisSheetUiOptions = _buildMealAnalysisSheetUiOptions(
      context,
    );
    final mealObsOptions = _buildMealAnalysisObservabilityOptions(context);
    final profileApiOptions = _buildProfileApiOptions(context);
    final feedbackOptions = _buildFeedbackOptions(context);
    final dataResetOptions = _buildDataResetOptions(context);
    final databaseOptions = _buildDatabaseOptions(context);
    final appInfoOptions = _buildAppInfoOptions(context);
    final shorebirdOptions = _buildShorebirdOptions(context);
    final catEasterEggOptions = _buildCatEasterEggOptions(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Debug Options')),
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
            if (backendOptions != null) ...[
              _buildSectionTitle(context, 'Backend'),
              backendOptions,
              const SizedBox(height: 24),
            ],
            if (userIdentityOptions != null) ...[
              _buildSectionTitle(context, 'User identity'),
              userIdentityOptions,
              const SizedBox(height: 24),
            ],
            if (notificationOptions != null) ...[
              _buildSectionTitle(context, 'Notifications'),
              notificationOptions,
              const SizedBox(height: 24),
            ],
            if (healthConnectOptions != null) ...[
              _buildSectionTitle(context, 'Health Connect'),
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
            if (localInferenceOptions != null) ...[
              _buildSectionTitle(context, 'Local inference'),
              localInferenceOptions,
              const SizedBox(height: 24),
            ],
            if (mealAnalysisSheetUiOptions != null) ...[
              _buildSectionTitle(context, 'Meal analysis sheet'),
              mealAnalysisSheetUiOptions,
              const SizedBox(height: 24),
            ],
            if (mealObsOptions != null) ...[
              _buildSectionTitle(context, 'Meal analysis metrics'),
              mealObsOptions,
              const SizedBox(height: 24),
            ],
            if (profileApiOptions != null) ...[
              _buildSectionTitle(context, 'Profile API Tests'),
              profileApiOptions,
              const SizedBox(height: 24),
            ],
            if (feedbackOptions != null) ...[
              _buildSectionTitle(context, 'Feedback'),
              feedbackOptions,
              const SizedBox(height: 24),
            ],
            if (dataResetOptions != null) ...[
              _buildSectionTitle(context, 'Data reset'),
              dataResetOptions,
              const SizedBox(height: 24),
            ],
            if (databaseOptions != null) ...[
              _buildSectionTitle(context, 'Database'),
              databaseOptions,
              const SizedBox(height: 24),
            ],
            if (appInfoOptions != null) ...[
              _buildSectionTitle(context, 'App Info'),
              appInfoOptions,
              const SizedBox(height: 24),
            ],
            if (shorebirdOptions != null) ...[
              _buildSectionTitle(context, 'Shorebird'),
              shorebirdOptions,
              const SizedBox(height: 24),
            ],
            if (catEasterEggOptions != null) ...[
              _buildSectionTitle(context, 'Cat Easter Egg'),
              catEasterEggOptions,
              const SizedBox(height: 24),
            ],
          ],
        ),
      ),
    );
  }

  Widget? _buildBackendOptions(BuildContext context) {
    const section = 'Backend';
    const title = 'Check backend health';
    final subtitle =
        Uri.parse(NetworkClient.instance.client.options.baseUrl).host;
    if (!_matchesQuery(section, title, subtitle)) return null;
    final statusColor = switch (_isBackendHealthy) {
      true => Colors.green,
      false => Theme.of(context).colorScheme.error,
      null => Theme.of(context).colorScheme.outline,
    };

    return Card(
      child: ListTile(
        leading: Icon(LucideIcons.heartPulse, color: statusColor),
        title: const Text(title),
        subtitle: Text(subtitle),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 9,
              height: 9,
              decoration: BoxDecoration(
                color: statusColor,
                shape: BoxShape.circle,
              ),
            ),
            const SizedBox(width: 4),
            IconButton(
              tooltip: 'Refresh backend health',
              onPressed:
                  _isCheckingBackendHealth
                      ? null
                      : () => _checkBackendHealth(showDialog: true),
              icon:
                  _isCheckingBackendHealth
                      ? const SizedBox.square(
                        dimension: 18,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                      : const Icon(LucideIcons.refreshCw, size: 18),
            ),
          ],
        ),
        onTap: _showCurrentBackendHealth,
      ),
    );
  }

  void _showCurrentBackendHealth() {
    _showDataDialog(
      _backendHealthDialogTitle ?? 'Checking backend health',
      _backendHealthDetails ?? 'Waiting for the backend to respond.',
    );
  }

  Future<void> _checkBackendHealth({bool showDialog = false}) async {
    if (_isCheckingBackendHealth || !mounted) return;
    setState(() => _isCheckingBackendHealth = true);
    final stopwatch = Stopwatch()..start();
    final client = NetworkClient.instance.client;
    late final bool isHealthy;
    late final String dialogTitle;
    late final String details;

    try {
      final response = await client.get<Object?>('/');
      stopwatch.stop();
      isHealthy = true;
      dialogTitle = 'Backend is healthy';
      details =
          'URL: ${response.realUri}\n'
          'Status: ${response.statusCode ?? 'Unknown'}\n'
          'Response time: ${stopwatch.elapsedMilliseconds} ms';
    } on DioException catch (error) {
      stopwatch.stop();
      final status = error.response?.statusCode;
      isHealthy = false;
      dialogTitle = 'Backend health check failed';
      details =
          'URL: ${error.requestOptions.uri}\n'
          'Status: ${status?.toString() ?? 'No response'}\n'
          'Response time: ${stopwatch.elapsedMilliseconds} ms\n'
          'Error: ${error.message ?? error.type.name}';
    } catch (error) {
      stopwatch.stop();
      isHealthy = false;
      dialogTitle = 'Backend health check failed';
      details =
          'URL: ${client.options.baseUrl}/\n'
          'Status: No response\n'
          'Response time: ${stopwatch.elapsedMilliseconds} ms\n'
          'Error: $error';
    }

    if (!mounted) return;
    setState(() {
      _isCheckingBackendHealth = false;
      _isBackendHealthy = isHealthy;
      _backendHealthDialogTitle = dialogTitle;
      _backendHealthDetails = details;
    });
    if (showDialog) _showDataDialog(dialogTitle, details);
  }

  Widget? _buildUserIdentityOptions(BuildContext context) {
    const section = 'User identity';
    final userId = AuthService.instance.currentUser?.uid;
    final items = <Widget>[
      if (_matchesQuery(section, 'User ID', userId))
        DebugUserIdField(
          userId: userId,
          onCopied: () => _showSnackbar('User ID copied'),
        ),
      if (_matchesQuery(section, 'Firebase bearer token', 'Firebase ID token'))
        DebugFirebaseTokenTile(
          isAuthenticated: userId != null && userId.isNotEmpty,
          resolveToken: AuthService.instance.resolveAuthToken,
          onCopied: () => _showSnackbar('Firebase bearer token copied'),
          onUnavailable:
              () => _showSnackbar('Firebase bearer token unavailable'),
        ),
    ];
    if (items.isEmpty) return null;
    return Card(child: Column(mainAxisSize: MainAxisSize.min, children: items));
  }

  Widget? _buildCatEasterEggOptions(BuildContext context) {
    final section = 'Cat Easter Egg';
    final titles = [
      'Cat Easter Egg testing (by asset)',
      'Random cat (any animation)',
      'Side peek from left',
      'Side peek from right',
      'Top peek',
      'Grass / bottom (peek)',
      'Double peek cat',
      'CatTrigger demo (tap this row)',
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.list),
        title: const Text('Cat Easter Egg testing (by asset)'),
        subtitle: const Text('Simulate all animations with selectable cat'),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const CatEasterEggTestScreen(),
              settings: const RouteSettings(name: 'catEasterEggTest'),
            ),
          );
        },
      ),
      ListTile(
        leading: const Icon(LucideIcons.cat),
        title: const Text('Random cat (any animation)'),
        onTap: () => CatOverlay.of(context)?.showCat(),
      ),
      ListTile(
        leading: const Icon(LucideIcons.arrowRightFromLine),
        title: const Text('Side peek from left'),
        onTap:
            () => CatOverlay.of(context)?.showCat(
              preferredAnimation: CatAnimationType.sidePeek,
              edgeHint: Edge.left,
            ),
      ),
      ListTile(
        leading: const Icon(LucideIcons.arrowLeftFromLine),
        title: const Text('Side peek from right'),
        onTap:
            () => CatOverlay.of(context)?.showCat(
              preferredAnimation: CatAnimationType.sidePeek,
              edgeHint: Edge.right,
            ),
      ),
      ListTile(
        leading: const Icon(LucideIcons.arrowDownFromLine),
        title: const Text('Top peek'),
        onTap:
            () => CatOverlay.of(context)?.showCat(
              preferredAnimation: CatAnimationType.topPeek,
              edgeHint: Edge.top,
            ),
      ),
      ListTile(
        leading: const Icon(LucideIcons.flower2),
        title: const Text('Grass / bottom (pop peek)'),
        onTap:
            () => CatOverlay.of(context)?.showCat(
              preferredAnimation: CatAnimationType.peek,
              edgeHint: Edge.bottom,
            ),
      ),
      // leaping/pounce/bounce/wiggle removed
      ListTile(
        leading: const Icon(LucideIcons.eye),
        title: const Text('Double peek cat'),
        onTap:
            () => CatOverlay.of(context)?.showCat(
              preferredAnimation: CatAnimationType.doublePeek,
              edgeHint: Edge.bottom,
            ),
      ),
      CatTrigger(
        preferredCat: PartyCat(),
        animationHint: CatAnimationType.sidePeek,
        // edgeHint: Edge.right,
        child: ListTile(
          leading: const Icon(LucideIcons.hand),
          title: const Text('CatTrigger demo (tap this row)'),
          subtitle: const Text('This row is wrapped with CatTrigger'),
        ),
      ),
    ];
    final filtered = <Widget>[];
    for (var i = 0; i < items.length; i++) {
      if (_matchesQuery(section, titles[i])) filtered.add(items[i]);
    }
    if (filtered.isEmpty) return null;
    return Card(child: Column(children: filtered));
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
    const section = 'Notifications';
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.list),
        title: const Text('Show Active Notifications'),
        onTap: _showActiveNotifications,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellPlus),
        title: const Text('Schedule Test Notification (10s)'),
        onTap: _scheduleTestNotification,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellRing),
        title: const Text('Trigger Breakfast Notification'),
        onTap: _triggerBreakfastNotification,
      ),
      ListTile(
        leading: const Icon(LucideIcons.bellOff),
        title: const Text('Cancel All Notifications'),
        onTap: _cancelAllNotifications,
      ),
    ];
    const titles = [
      'Show Active Notifications',
      'Schedule Test Notification (10s)',
      'Trigger Breakfast Notification',
      'Cancel All Notifications',
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
      _showSnackbar('No active notifications.');
      return;
    }

    await showDialog(
      context: context,
      routeSettings: const RouteSettings(
        name: RouteNames.activeNotificationsDialog,
      ),
      builder:
          (context) => AlertDialog(
            title: const Text('Active Notifications'),
            content: SizedBox(
              width: double.maxFinite,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: pendingRequests.length,
                itemBuilder: (context, index) {
                  final request = pendingRequests[index];
                  return ListTile(
                    title: Text(request.title ?? 'No Title'),
                    subtitle: Text(request.body ?? 'No Body'),
                    trailing: Text('ID: ${request.id}'),
                  );
                },
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  Future<void> _scheduleTestNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 99,
      title: 'Test Notification',
      body: 'This is a test notification scheduled for 10 seconds from now.',
      scheduledTime: DateTime.now().add(const Duration(seconds: 10)),
    );
    _showSnackbar('Test notification scheduled for 10 seconds from now.');
  }

  Future<void> _triggerBreakfastNotification() async {
    await NotificationService.instance.scheduleReminder(
      id: 1,
      title: 'Breakfast Time! 🍳',
      body: "Don't forget to log your breakfast",
      scheduledTime: DateTime.now().add(const Duration(seconds: 5)),
      payload: 'meal_reminder_breakfast',
      channel: NotificationService.remindersChannel,
    );
    _showSnackbar('Breakfast notification triggered.');
  }

  Future<void> _cancelAllNotifications() async {
    await NotificationService.instance.cancelAllNotifications();
    _showSnackbar('All notifications cancelled.');
  }

  void _showSnackbar(String message) {
    if (!mounted) return;
    showFlushbar(
      message,
      duration: const Duration(seconds: 2),
      context: context,
    );
  }

  Widget? _buildHealthConnectOptions(BuildContext context) {
    const section = 'Health Connect';
    const titles = ["Fetch Today's Calories", 'Retry pending meal sync'];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.flame),
        title: const Text("Fetch Today's Calories"),
        onTap: _fetchTodaysCalories,
      ),
      ListTile(
        leading: const Icon(LucideIcons.refreshCw),
        title: const Text('Retry pending meal sync'),
        onTap: _retryHealthConnectSync,
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
          message += 'Nearby: ${isNearby ? 'Yes' : 'No'}\n';
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
      (
        'Check image upload URL',
        'Show the build-time Oracle endpoint, PAR token, namespace, and bucket',
      ),
      (
        'Check image compression',
        'Choose a gallery image and report its compressed WebP size',
      ),
      (
        'Test image upload',
        'Choose, compress, and upload a gallery image without starting analysis',
      ),
      (
        'Test Analyze Image (V2)',
        'Upload + POST /api/v2/food/analyze-image (SSE) → sheet → tip / log',
      ),
      (
        'Test meal logging with clarifications',
        'POST /api/v2/food/analyze-text (SSE) → sheet → tip / log',
      ),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.keyRound),
        title: const Text('Check image upload URL'),
        subtitle: const Text(
          'Show the build-time Oracle endpoint, PAR token, namespace, and bucket',
        ),
        onTap: _checkImageUploadUrl,
      ),
      ListTile(
        leading: const Icon(LucideIcons.minimize2),
        title: const Text('Check image compression'),
        subtitle: const Text(
          'Choose a gallery image and report its compressed WebP size',
        ),
        onTap: _checkImageCompression,
      ),
      ListTile(
        leading: const Icon(LucideIcons.upload),
        title: const Text('Test image upload'),
        subtitle: const Text(
          'Choose, compress, and upload a gallery image without starting analysis',
        ),
        onTap: _testImageUpload,
      ),
      ListTile(
        leading: const Icon(LucideIcons.scanSearch),
        title: const Text('Test Analyze Image (V2)'),
        subtitle: const Text(
          'Upload + POST /api/v2/food/analyze-image (SSE) → sheet → tip / log',
        ),
        onTap: _testAnalyzeImageV2,
      ),
      ListTile(
        leading: const Icon(LucideIcons.route),
        title: const Text('Test meal logging with clarifications'),
        subtitle: const Text(
          'POST /api/v2/food/analyze-text (SSE) → sheet → tip / log',
        ),
        onTap: _testMealLoggingWithClarificationsV2,
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

  Future<void> _checkImageUploadUrl() async {
    if (!ImageConfig.oracleBucketUploadUrl.isNotEmpty) {
      _showDataDialog(
        'Image upload URL',
        'Not configured. Set oracle upload url in env.',
      );
      return;
    }
    final uploadUrl = ImageConfig.oracleBucketUploadUrl;

    final uri = Uri.tryParse(uploadUrl);
    if (uri == null || uri.scheme != 'https') {
      _showDataDialog(
        'Image upload URL',
        'Configured, but the URL is not a valid HTTPS URL.',
      );
      return;
    }

    final segments = uri.pathSegments;
    final parIndex = segments.indexOf('p');
    final namespaceIndex = segments.indexOf('n');
    final bucketIndex = segments.indexOf('b');
    final parToken =
        parIndex >= 0 && parIndex + 1 < segments.length
            ? segments[parIndex + 1]
            : 'unavailable';
    final namespace =
        namespaceIndex >= 0 && namespaceIndex + 1 < segments.length
            ? segments[namespaceIndex + 1]
            : 'unavailable';
    final bucket =
        bucketIndex >= 0 && bucketIndex + 1 < segments.length
            ? segments[bucketIndex + 1]
            : 'unavailable';
    _showDataDialog(
      'Image upload URL',
      'Configured at build time.\n'
          'Origin: ${uri.origin}\n'
          'PAR token: $parToken\n'
          'Namespace: $namespace\n'
          'Bucket: $bucket',
    );
  }

  Future<void> _checkImageCompression() async {
    try {
      final image = await ImagePickerService().pickImageFromGallery();
      if (image == null) return;

      final originalBytes = await image.length();
      final compressedBytes = await ImageCompressionService.instance
          .compressImage(image);
      if (!mounted) return;

      final savedBytes = originalBytes - compressedBytes.length;
      final savedPercent =
          originalBytes == 0 ? 0 : (savedBytes / originalBytes * 100).round();
      _showDataDialog(
        'Image compression',
        'Source: ${image.path.split('/').last}\n'
            'Original: ${_formatBytes(originalBytes)}\n'
            'Compressed: ${_formatBytes(compressedBytes.length)}\n'
            'Change: ${savedPercent >= 0 ? '-' : '+'}${savedPercent.abs()}%',
      );
    } catch (error) {
      if (!mounted) return;
      _showSnackbar('Image compression failed: $error');
    }
  }

  Future<void> _testImageUpload() async {
    File? compressedFile;
    try {
      final image = await ImagePickerService().pickImageFromGallery();
      if (image == null) return;

      _showSnackbar('Compressing image...');
      final compressedBytes = await ImageCompressionService.instance
          .compressImage(image);
      compressedFile = File(
        '${Directory.systemTemp.path}/debug_upload_${DateTime.now().millisecondsSinceEpoch}.webp',
      );
      await compressedFile.writeAsBytes(compressedBytes);

      if (!mounted) return;
      _showSnackbar('Uploading compressed image...');
      final uploadUrl = await FoodRepository().uploadMealImage(compressedFile);
      if (!mounted) return;

      final objectKey = Uri.tryParse(
        uploadUrl,
      )?.pathSegments.skipWhile((segment) => segment != 'o').skip(1).join('/');
      _showDataDialog(
        'Image upload succeeded',
        'Uploaded: ${_formatBytes(compressedBytes.length)}\n'
            'Object key: ${objectKey?.isNotEmpty == true ? objectKey : 'unavailable'}\n'
            'Upload URL: redacted',
      );
    } catch (error) {
      if (!mounted) return;
      _showSnackbar('Image upload failed: $error');
    } finally {
      if (compressedFile != null) {
        try {
          await compressedFile.delete();
        } catch (_) {}
      }
    }
  }

  String _formatBytes(int bytes) {
    if (bytes < 1024) return '$bytes B';
    if (bytes < 1024 * 1024) return '${(bytes / 1024).toStringAsFixed(1)} KiB';
    return '${(bytes / (1024 * 1024)).toStringAsFixed(1)} MiB';
  }

  Widget? _buildLocalInferenceOptions(BuildContext context) {
    const section = 'Local inference';
    const title = 'Gemini Nano one-off tests';
    if (!_matchesQuery(section, title, 'capability comparison nutrition')) {
      return null;
    }
    return Card(
      child: ListTile(
        leading: const Icon(LucideIcons.cpu),
        title: const Text(title),
        subtitle: const Text(
          'Capability, warm-up, local/cloud comparison, and nutrition checks',
        ),
        trailing: const Icon(LucideIcons.chevronRight, size: 18),
        onTap:
            () => Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (_) => const LocalInferenceDebugScreen(),
                settings: const RouteSettings(name: 'localInferenceTests'),
              ),
            ),
      ),
    );
  }

  Widget? _buildMealAnalysisSheetUiOptions(BuildContext context) {
    const section = 'Meal analysis sheet';
    const titleSubtitle = [
      (
        'Sheet: early pipeline',
        'Progress only — STARTED step (no preview panel)',
      ),
      ('Sheet: decomposition', 'Meal title + decomposed ingredient signals'),
      (
        'Sheet: ingredients matched',
        'Resolved ingredient list (INGREDIENTS step)',
      ),
      (
        'Sheet: progress step 3 / 4',
        'UNCERTAINTY phase — label progressCheck, bar at 75%',
      ),
      (
        'Sheet: with text banner',
        'Same as decomposition plus logged meal text preview strip',
      ),
      (
        'Sheet: with photo banner',
        'Downloads sample image — hero strip + pipeline UI',
      ),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.circleDot),
        title: const Text('Sheet: early pipeline'),
        subtitle: const Text('Progress only — STARTED step (no preview panel)'),
        onTap: () => previewMealAnalysisSheetStartedOnly(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.layoutList),
        title: const Text('Sheet: decomposition'),
        subtitle: const Text('Meal title + decomposed ingredient signals'),
        onTap: () => previewMealAnalysisSheetDecomposition(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.listChecks),
        title: const Text('Sheet: ingredients matched'),
        subtitle: const Text('Resolved ingredient list (INGREDIENTS step)'),
        onTap: () => previewMealAnalysisSheetIngredients(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.scale),
        title: const Text('Sheet: progress step 3 / 4'),
        subtitle: const Text(
          'UNCERTAINTY phase — label progressCheck, bar at 75%',
        ),
        onTap: () => previewMealAnalysisSheetProgressStep3(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.fileText),
        title: const Text('Sheet: with text banner'),
        subtitle: const Text('Plus logged meal text preview strip'),
        onTap: () => previewMealAnalysisSheetWithTextBanner(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.imagePlus),
        title: const Text('Sheet: with photo banner'),
        subtitle: const Text(
          'Downloads sample image — hero strip + pipeline UI',
        ),
        onTap: _previewMealAnalysisSheetWithPhotoBanner,
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

  Widget? _buildMealAnalysisObservabilityOptions(BuildContext context) {
    const section = 'Meal analysis metrics';
    const title = 'Meal analysis observability';
    const subtitle = 'Prometheus metrics and Firebase timing reference';
    if (!_matchesQuery(section, title, subtitle)) return null;
    return Card(
      child: ListTile(
        leading: const Icon(LucideIcons.chartBar),
        title: const Text(title),
        subtitle: const Text(subtitle),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
              builder: (_) => const MealAnalysisObservabilityScreen(),
              settings: const RouteSettings(name: 'mealAnalysisObservability'),
            ),
          );
        },
      ),
    );
  }

  Widget? _buildProfileApiOptions(BuildContext context) {
    const section = 'Profile API Tests';
    const titleSubtitle = [
      ('Test update profile', 'POST sample profile to backend'),
    ];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.userCog),
        title: const Text('Test update profile'),
        subtitle: const Text('POST sample profile to backend'),
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
      _showSnackbar('Testing profile API...');

      // Call profile API directly so we can show success/error (repository swallows exceptions)
      final response = await NetworkClient.instance.client
          .post<Map<String, dynamic>>(
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
      final message =
          response.data?['message'] ?? response.data?.toString() ?? '';
      _showDataDialog(
        'Profile API responded successfully',
        message.isNotEmpty ? message : 'Profile API responded successfully',
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Profile API error: $e');
    }
  }

  /// Upload sample image, stream [POST /api/v2/food/analyze-image], full V2 sheet → meal tip.
  Future<void> _testAnalyzeImageV2() async {
    try {
      _showSnackbar('Upload + POST /api/v2/food/analyze-image ...');

      final testImageUrl =
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400';
      final tempDir = Directory.systemTemp;
      final testImageFile = File(
        '${tempDir.path}/test_food_image_v2_${DateTime.now().millisecondsSinceEpoch}.jpg',
      );

      final response = await NetworkClient.instance.client.get<List<int>>(
        testImageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      await testImageFile.writeAsBytes(response.data!);

      final repository = FoodRepository();
      final handle = await repository.analyzeImageV2(imageFile: testImageFile);
      final bytes = Uint8List.fromList(await testImageFile.readAsBytes());

      try {
        await testImageFile.delete();
      } catch (_) {}

      if (!mounted) return;

      await showV2MealAnalysisFlow(
        context: context,
        imageBytes: bytes,
        imageUrl: handle.uploadedImageUrl,
        startAnalysis: (_, _) async => handle.events,
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  /// Full V2 text pipeline: streaming [POST /api/v2/food/analyze-text], pipeline sheet,
  /// optional clarify / meal-type steps, then meal tip for logging.
  Future<void> _testMealLoggingWithClarificationsV2() async {
    try {
      _showSnackbar('Streaming POST /api/v2/food/analyze-text ...');
      const testText =
          'I had a bowl with rice, curry, and a white side dish — portion was medium.';
      final repository = FoodRepository();
      await showV2MealAnalysisFlow(
        context: context,
        textDescription: testText,
        startAnalysis:
            (cancellation, analysisId) => repository.analyzeTextV2(
              analysisId: analysisId,
              textDescription: testText,
              cancellation: cancellation,
            ),
      );
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Future<void> _previewMealAnalysisSheetWithPhotoBanner() async {
    try {
      _showSnackbar('Downloading sample image for sheet preview...');
      const testImageUrl =
          'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?w=400';
      final dio = Dio();
      final response = await dio.get<List<int>>(
        testImageUrl,
        options: Options(responseType: ResponseType.bytes),
      );
      final bytes = Uint8List.fromList(response.data!);
      if (!mounted) return;
      await previewMealAnalysisSheetWithImageBanner(context, bytes);
    } catch (e) {
      if (!mounted) return;
      _showSnackbar('Error: $e');
    }
  }

  Widget? _buildFeedbackOptions(BuildContext context) {
    const section = 'Feedback';
    const title = 'Show feedback / rating sheet';
    if (!_matchesQuery(section, title)) return null;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.star),
            title: const Text('Show feedback / rating sheet'),
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

    final color =
        eligible
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).disabledColor;
    final icon = eligible ? LucideIcons.badgeCheck : LucideIcons.circleOff;

    return Icon(icon, size: 18, color: color);
  }

  Widget? _buildDatabaseOptions(BuildContext context) {
    const section = 'Database';
    const title = 'Inspect database tables';
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
    const section = 'Data reset';
    const titles = ['Clear user preferences', 'Clear user profile'];
    final items = <Widget>[
      ListTile(
        leading: const Icon(LucideIcons.settings),
        title: const Text('Clear user preferences'),
        onTap: () => _showClearPreferencesConfirmation(context),
      ),
      ListTile(
        leading: const Icon(LucideIcons.user),
        title: const Text('Clear user profile'),
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
            title: const Text('Clear user preferences?'),
            content: const Text(
              'Theme, language, and feedback preferences will be reset. Meals and profile are not affected.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('Cancel'),
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
                child: const Text('Clear'),
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
            title: const Text('Clear user profile?'),
            content: const Text(
              'Your profile data (daily goal, height, weight, etc.) will be cleared. Meals and preferences are not affected.',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(dialogContext),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () async {
                  await DatabaseService.databaseInterface.clearUserProfile();
                  if (!dialogContext.mounted) return;
                  Navigator.pop(dialogContext);
                  if (!context.mounted) return;
                  _showSnackbar('User profile cleared');
                },
                child: const Text('Clear'),
              ),
            ],
          ),
    );
  }

  Widget? _buildAppInfoOptions(BuildContext context) {
    const section = 'App Info';
    const title = 'Check Current Locale';
    if (!_matchesQuery(section, title)) return null;
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(LucideIcons.languages),
            title: const Text('Check Current Locale'),
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
      _showDataDialog('Check for update', '$message ($status)');
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
      _showDataDialog('Show patch number', '$message ${patch ?? "null"}');
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
    final locale = Localizations.localeOf(context);
    final unitSystem = LocaleUtils.getDefaultUnitSystem(locale);
    final isMetric = unitSystem == UnitSystem.METRIC;
    final countryCode = locale.countryCode ?? 'N/A';
    final languageCode = locale.languageCode;
    final unitSystemLabel = isMetric ? 'Metric' : 'Imperial';

    _showDataDialog(
      'Current Locale',
      'Language: $languageCode\nCountry: $countryCode\nUnit System: $unitSystemLabel',
    );
  }

  Future<void> _fetchTodaysCalories() async {
    final result =
        await ref.read(healthServiceProvider).getTotalCaloriesBurned();

    if (!mounted) return;

    if (result == null) {
      _showSnackbar('No calorie data found for today.');
      return;
    }

    _showDataDialog(
      "Today's Calories",
      'Total calories burned: ${result.calories.toStringAsFixed(2)}\n'
          'Source: ${result.usedFallback ? 'profile estimate' : 'Health Connect aggregate'}',
    );
  }

  Future<void> _retryHealthConnectSync() async {
    final result =
        await ref.read(healthConnectSyncServiceProvider).syncPending();
    _showDataDialog(
      'Health Connect meal sync',
      'Attempted: ${result.attempted}\n'
          'Succeeded: ${result.succeeded}\n'
          'Failed: ${result.failed}\n'
          'Permission required: ${result.permissionRequired}',
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
                child: const Text('Close'),
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
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }
}
