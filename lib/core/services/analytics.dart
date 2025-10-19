import 'package:calorify/core/constants/analytics_events.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  Analytics._();

  static final Analytics _instance = Analytics._();
  static Analytics get instance => _instance;

  Future<void> initialize() async {
    await FirebaseAnalytics.instance.logAppOpen();
  }

  void logEvent(AnalyticsEvent event, {Map<String, Object>? parameters}) {
    FirebaseAnalytics.instance.logEvent(
      name: event.name,
      parameters: parameters,
    );
  }

  void setUserProperty(String name, String value) {
    FirebaseAnalytics.instance.setUserProperty(name: name, value: value);
  }

  void setCurrentScreen(String screenName) {
    FirebaseAnalytics.instance.logScreenView(screenName: screenName);
  }

  void resetAnalyticsData() {
    FirebaseAnalytics.instance.resetAnalyticsData();
  }
}
