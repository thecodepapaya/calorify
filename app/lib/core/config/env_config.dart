enum Flavor { dev, staging, prod }

class EnvConfig {
  EnvConfig._();

  static final _instance = EnvConfig._();
  static EnvConfig get instance => _instance;

  Flavor flavor = Flavor.staging;

  bool get isProd => flavor == Flavor.prod;
  bool get isStaging => flavor == Flavor.staging;
  bool get isDev => flavor == Flavor.dev;

  /// Firebase / non-prod tooling: reuse staging identity while on the **dev** flavor.
  bool get usesStagingIdentity => isStaging || isDev;

  void init() {
    const raw = String.fromEnvironment('FLUTTER_APP_FLAVOR', defaultValue: '');
    flavor = switch (raw) {
      'prod' => Flavor.prod,
      'dev' => Flavor.dev,
      'staging' => Flavor.staging,
      _ => Flavor.staging,
    };
  }

  /// Returns the environment suffix for app label
  String get envSuffix {
    switch (flavor) {
      case Flavor.dev:
        return ' dev';
      case Flavor.staging:
        return ' staging';
      case Flavor.prod:
        return '';
    }
  }

  String get apiBaseUrl {
    const useLocalBackend = bool.fromEnvironment('USE_LOCAL_BACKEND');
    // dev & USE_LOCAL_BACKEND on staging: Android emulator localhost via host gateway
    return switch (flavor) {
      Flavor.dev => 'http://10.0.2.2:8000',
      Flavor.staging when useLocalBackend => 'http://10.0.2.2:8000',
      Flavor.staging =>
        'https://staging-api-calorify.thecodepapaya.dev',
      Flavor.prod => 'https://api-calorify.thecodepapaya.dev',
    };
  }
}
