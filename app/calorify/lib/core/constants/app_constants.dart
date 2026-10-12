/// App-wide constants for support, branding, and store links.
class AppConstants {
  AppConstants._();

  /// Support/feedback email address.
  static const String supportEmail = 'calorify@thecodepapaya.dev';

  /// Developer website URL.
  static const String developerWebsite = 'https://thecodepapaya.dev';

  /// App package name (e.g. for Play Store).
  static const String packageName = 'dev.thecodepapaya.calorify';

  /// Privacy policy page URL.
  static const String privacyPolicyUrl =
      'https://calorify.thecodepapaya.dev/privacy.html';

  /// Play Store listing URL for the app.
  static String get playStoreUrl =>
      'https://play.google.com/store/apps/details?id=$packageName';
}
