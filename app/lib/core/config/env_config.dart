import 'package:flutter/services.dart';

enum Flavor { staging, prod }

class EnvConfig {
  EnvConfig._();

  static final _instance = EnvConfig._();
  static EnvConfig get instance => _instance;

  Flavor flavor = Flavor.staging;

  bool get isProd => flavor == Flavor.prod;
  bool get isStaging => flavor == Flavor.staging;

  void init() {
    flavor = appFlavor == 'prod' ? Flavor.prod : Flavor.staging;
  }

  /// Returns the environment suffix for app label
  String get envSuffix {
    switch (flavor) {
      case Flavor.staging:
        return ' staging';
      case Flavor.prod:
        return '';
    }
  }

  String get apiBaseUrl {
    const useLocalBackend = bool.fromEnvironment('USE_LOCAL_BACKEND');
    if (useLocalBackend) {
      // 10.0.2.2 routes to host localhost from an Android emulator
      return 'http://10.0.2.2:8000';
    }
    switch (flavor) {
      case Flavor.staging:
        return 'https://staging-api-calorify.thecodepapaya.dev';
      case Flavor.prod:
        return 'https://api-calorify.thecodepapaya.dev';
    }
  }
}
