import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:flutter/material.dart';

const _log = 'ROUTE';

class RouteLogger extends AutoRouteObserver {
  RouteLogger() : super();

  @override
  void didPush(Route route, Route? previousRoute) {
    log('New route pushed: ${route.settings.name}', name: _log);
    _logScreen(route.settings.name);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    log('Route popped: ${route.settings.name}', name: _log);
    _logScreen(previousRoute?.settings.name);
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    log('Route removed: ${route.settings.name}', name: _log);
    _logScreen(previousRoute?.settings.name);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    log(
      'Route replaced: ${oldRoute?.settings.name} -> ${newRoute?.settings.name}',
      name: _log,
    );
    _logScreen(newRoute?.settings.name);
  }

  void _logScreen(String? screenName) {
    log('setCurrentScreen: ${screenName ?? 'unknown'}', name: _log);
    Analytics.instance.setCurrentScreen(screenName ?? 'unknown');
  }
}
