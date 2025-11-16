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

  String get title {
    switch (flavor) {
      case Flavor.staging:
        return 'Calorify (Staging)';
      case Flavor.prod:
        return 'Calorify';
    }
  }
}
