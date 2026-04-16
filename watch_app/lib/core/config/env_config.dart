class EnvConfig {
  EnvConfig._();

  static final EnvConfig instance = EnvConfig._();

  bool _isProd = false;

  void init() {
    _isProd = const bool.fromEnvironment('dart.vm.product', defaultValue: false);
  }

  bool get isProd => _isProd;

  String get apiBaseUrl => _isProd
      ? 'https://api-calorify.thecodepapaya.dev'
      : 'https://staging-api-calorify.thecodepapaya.dev';
}
