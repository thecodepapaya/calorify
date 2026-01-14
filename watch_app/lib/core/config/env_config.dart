class EnvConfig {
  EnvConfig._();

  static final EnvConfig instance = EnvConfig._();

  bool _isProd = false;

  void init() {
    // In a real app, you'd check environment variables or build config
    _isProd = const bool.fromEnvironment(
      'dart.vm.product',
      defaultValue: false,
    );
  }

  bool get isProd => _isProd;
}
