import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:mocktail/mocktail.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

class MockStackRouter extends Mock implements StackRouter {}

class MockTabsRouter extends Mock implements TabsRouter {}

class MockRouteData extends Mock implements RouteData {}

// A simple dummy root router to avoid Null errors
class DummyRootRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [];
}

const kMockRouteName = 'MainRoute';

/// Wraps a widget with [ProviderScope] and [TranslationProvider] for testing.
Widget wrapWithProviders(
  Widget child, {
  List<Override> overrides = const [],
  dynamic router,
  RouteData? routeData,
}) {
  final mockRouter = router ?? MockStackRouter();
  final mockRouteData = routeData ?? MockRouteData();

  if (mockRouteData is MockRouteData) {
    stubRouteData(mockRouteData);
  }

  if (mockRouter is MockTabsRouter) {
    stubTabsRouter(mockRouter, routeData: mockRouteData);
  } else if (mockRouter is MockStackRouter) {
    stubStackRouter(mockRouter);
  }

  Widget content = child;
  if (router != null) {
    content = RouterScope(
      controller: mockRouter,
      inheritableObserversBuilder: () => [],
      stateHash: 0,
      child: RouteDataScope(routeData: mockRouteData, child: child),
    );
  }

  final widget = ProviderScope(
    overrides: overrides,
    child: MaterialApp(home: Scaffold(body: content)),
  );

  return TranslationProvider(child: widget);
}

void stubRouteData(MockRouteData mock) {
  final homePage = PageInfo('HomeRoute', builder: (data) => Container());
  final logPage = PageInfo('LogRoute', builder: (data) => Container());
  final historyPage = PageInfo(
    'MealHistoryRoute',
    builder: (data) => Container(),
  );

  final dummyConfig = AutoRoute(
    page: PageInfo(kMockRouteName, builder: (data) => Container()),
    children: [
      AutoRoute(page: homePage),
      AutoRoute(page: logPage),
      AutoRoute(page: historyPage),
    ],
  );

  final routeMatch = RouteMatch(
    config: dummyConfig,
    segments: [kMockRouteName],
    stringMatch: kMockRouteName,
    key: const ValueKey(kMockRouteName),
  );

  when(() => mock.key).thenReturn(const ValueKey(kMockRouteName));
  when(() => mock.name).thenReturn(kMockRouteName);
  when(() => mock.path).thenReturn('/$kMockRouteName');
  when(() => mock.match).thenReturn(kMockRouteName);
  when(() => mock.route).thenReturn(routeMatch);

  try {
    final dynamic dynamicMock = mock;
    when(() => dynamicMock.config).thenReturn(dummyConfig);
    final collection = RouteCollection.fromList([dummyConfig]);
    when(() => dynamicMock.routeCollection).thenReturn(collection);
  } catch (_) {}

  when(() => mock.params).thenReturn(const Parameters({}));
  when(() => mock.queryParams).thenReturn(const Parameters({}));
  when(() => mock.fragment).thenReturn('');
  when(() => mock.pendingChildren).thenReturn([]);
  when(() => mock.hasPendingChildren).thenReturn(false);
  try {
    when(() => mock.matchId).thenReturn(const ValueKey('mock_match_id'));
  } catch (_) {}
}

void stubTabsRouter(MockTabsRouter mock, {RouteData? routeData}) {
  final homePage = PageInfo('HomeRoute', builder: (data) => Container());
  final logPage = PageInfo('LogRoute', builder: (data) => Container());
  final historyPage = PageInfo(
    'MealHistoryRoute',
    builder: (data) => Container(),
  );

  final dummyConfig = AutoRoute(
    page: PageInfo(kMockRouteName, builder: (data) => Container()),
    children: [
      AutoRoute(page: homePage),
      AutoRoute(page: logPage),
      AutoRoute(page: historyPage),
    ],
  );

  final collection = RouteCollection.fromList([dummyConfig]);

  when(() => mock.activeIndex).thenReturn(0);
  when(() => mock.routeCollection).thenReturn(collection);
  when(() => mock.pageCount).thenReturn(3);
  when(() => mock.childControllers).thenReturn([]);

  final mockCurrentRoute = MockRouteData();
  stubRouteData(mockCurrentRoute);
  when(() => mock.current).thenReturn(mockCurrentRoute);

  final dummyRoot = DummyRootRouter();
  when(() => mock.root).thenReturn(dummyRoot);
}

void stubStackRouter(MockStackRouter mock) {
  final dummyPage = PageInfo(kMockRouteName, builder: (data) => Container());
  final dummyConfig = AutoRoute(page: dummyPage);
  final collection = RouteCollection.fromList([dummyConfig]);
  when(() => mock.routeCollection).thenReturn(collection);
  when(() => mock.childControllers).thenReturn([]);

  final dummyRoot = DummyRootRouter();
  when(() => mock.root).thenReturn(dummyRoot);
}

/// Common pump and settle for async actions.
Future<void> pumpUntilFound(
  WidgetTester tester,
  Finder finder, {
  Duration timeout = const Duration(seconds: 5),
}) async {
  bool timerFinished = false;
  unawaited(Future.delayed(timeout).then((_) => timerFinished = true));

  while (!timerFinished) {
    await tester.pump();
    final found = tester.any(finder);
    if (found) return;
  }

  throw Exception('Timed out waiting for finder $finder');
}
