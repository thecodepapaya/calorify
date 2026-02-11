import 'dart:developer';

import 'package:calorify/core/constants/analytics_events.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:measure_flutter/measure_flutter.dart';
import 'package:flutter/foundation.dart';

const _log = 'ANALYTICS';

class Analytics {
  Analytics._();

  static Analytics _instance = Analytics._();
  static Analytics get instance => _instance;

  @visibleForTesting
  static void setMockInstance(Analytics mock) {
    _instance = mock;
  }

  Future<void> initialize() async {
    log('initialize', name: _log);
    await FirebaseAnalytics.instance.logAppOpen();
  }

  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters}) {
    final paramsStr =
        parameters != null && parameters.isNotEmpty
            ? parameters.entries.map((e) => '${e.key}=${e.value}').join(', ')
            : '';
    log(
      '${event.name}${paramsStr.isNotEmpty ? ' | $paramsStr' : ''}',
      name: _log,
    );
    FirebaseAnalytics.instance.logEvent(
      name: event.name,
      parameters: parameters,
    );
    Measure.instance.trackEvent(name: event.name);
  }

  void setUserProperty(String name, String value) {
    log('setUserProperty | $name=$value', name: _log);
    FirebaseAnalytics.instance.setUserProperty(name: name, value: value);
  }

  Future<void> setUserId(String uid) async {
    log('setUserId | uid=$uid', name: _log);
    await FirebaseAnalytics.instance.setUserId(id: uid);
    await Measure.instance.setUserId(uid);
  }

  void setCurrentScreen(String screenName) {
    log('setCurrentScreen | $screenName', name: _log);
    FirebaseAnalytics.instance.logScreenView(screenName: screenName);
    Measure.instance.trackScreenViewEvent(name: screenName);
  }

  void resetAnalyticsData() {
    log('resetAnalyticsData', name: _log);
    FirebaseAnalytics.instance.resetAnalyticsData();
    Measure.instance.clearUserId();
  }
}
