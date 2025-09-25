enum Flavor { staging, prod }

class AppConfig {
  static const _flavorString = String.fromEnvironment('flavor');
  static final Flavor flavor =
      _flavorString == 'prod' ? Flavor.prod : Flavor.staging;

  static bool get isProd => flavor == Flavor.prod;
  static bool get isStaging => flavor == Flavor.staging;

  static String get title {
    switch (flavor) {
      case Flavor.staging:
        return 'Calorify (Staging)';
      case Flavor.prod:
        return 'Calorify';
    }
  }
}
