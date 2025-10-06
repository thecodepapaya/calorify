import 'package:firebase_analytics/firebase_analytics.dart';

class Analytics {
  Analytics._();

  static final Analytics _instance = Analytics._();
  static Analytics get instance => _instance;

  void initialize() {
    FirebaseAnalytics.instance.logAppOpen();
  }

  void logEvent(String name, Map<String, Object> parameters) {
    FirebaseAnalytics.instance.logEvent(name: name, parameters: parameters);
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
