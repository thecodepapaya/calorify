import 'package:calorify/core/constants/analytics_events.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:measure_flutter/measure_flutter.dart';
import 'package:flutter/foundation.dart';

class Analytics {
  Analytics._();

  static Analytics _instance = Analytics._();
  static Analytics get instance => _instance;

  @visibleForTesting
  static void setMockInstance(Analytics mock) {
    _instance = mock;
  }

  Future<void> initialize() async {
    await FirebaseAnalytics.instance.logAppOpen();
  }

  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters}) {
    FirebaseAnalytics.instance.logEvent(
      name: event.name,
      parameters: parameters,
    );
    Measure.instance.trackEvent(name: event.name);
  }

  void setUserProperty(String name, String value) {
    FirebaseAnalytics.instance.setUserProperty(name: name, value: value);
  }

  Future<void> setUserId(String uid) async {
    await FirebaseAnalytics.instance.setUserId(id: uid);
    await Measure.instance.setUserId(uid);
  }

  void setCurrentScreen(String screenName) {
    FirebaseAnalytics.instance.logScreenView(screenName: screenName);
    Measure.instance.trackScreenViewEvent(name: screenName);
  }

  void resetAnalyticsData() {
    FirebaseAnalytics.instance.resetAnalyticsData();
    Measure.instance.clearUserId();
  }
}
