import 'package:flutter_test/flutter_test.dart';
import 'package:calorify/core/services/app_initialization.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/core/constants/analytics_events.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/notification_service.dart';
import 'package:calorify/core/services/performance_service.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:i18n/i18n.dart';
import 'package:widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mocktail/mocktail.dart';
import 'package:models/models.dart';
import 'package:measure_flutter/measure_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import '../helpers/mock_factory.dart';

void setupAllTests() {
  TestWidgetsFlutterBinding.ensureInitialized();

  // Initialize date formatting
  initializeDateFormatting('en');

  // Disable real initialization logic immediately
  AppInitialization.isTesting = true;

  // Register fallbacks before anything else
  _registerFallbacks();

  // Initialize config with test values
  EnvConfig.instance.init();

  // Ensure mock data is enabled for tests
  DataSourceConfig.enableMockData();
  DatabaseService.initialize();

  // Disable infinite animations
  AnimatedLeaf.disableAnimation = true;
  AppLoader.disableAnimation = true;

  // Initialize locale
  LocaleSettings.useDeviceLocaleSync();

  // Register mocks for singletons
  Analytics.setMockInstance(MockAnalytics());
  final mockAuth = MockAuthService();
  when(() => mockAuth.resolveAuthToken()).thenAnswer((_) async => null);
  AuthService.setMockInstance(mockAuth);

  final mockNotifications = MockNotificationService();
  when(
    () => mockNotifications.areNotificationsEnabled(),
  ).thenAnswer((_) async => false);
  when(() => mockNotifications.initialize()).thenAnswer((_) async {});
  NotificationService.setMockInstance(mockNotifications);

  final mockPerformance = MockPerformance();
  final mockSpan = MockSpan();
  when(
    () =>
        mockPerformance.startTrace(any(), parentSpan: any(named: 'parentSpan')),
  ).thenReturn(mockSpan);
  when(() => mockSpan.setStatus(any())).thenReturn(mockSpan);
  Performance.setMockInstance(mockPerformance);

  registerTestMocks();
}

class MockAnalytics extends Mock implements Analytics {}

class MockAuthService extends Mock implements AuthService {}

class MockNotificationService extends Mock implements NotificationService {}

class MockPerformance extends Mock implements Performance {}

class MockSpan extends Mock implements Span {}

void _registerFallbacks() {
  registerFallbackValue(const PageRouteInfo('test'));
  registerFallbackValue(const PageRouteInfo<Object?>('test'));
  registerFallbackValue(const PageRouteInfo<dynamic>('test'));
  registerFallbackValue(const PageRouteInfo<void>('test'));
  registerFallbackValue(TraceType.splashScreenLoad);
  registerFallbackValue(SpanStatus.ok);
  registerFallbackValue(AnalyticsEvent.homeView);
  registerFallbackValue(AnalyticsEvent.onboardingStart);
  registerFallbackValue(MealType.SNACK);
  registerFallbackValue(HealthScore.HEALTHY);
}
