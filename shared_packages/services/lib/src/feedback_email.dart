import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:i18n/i18n.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:url_launcher/url_launcher.dart';

/// Encodes query parameters for use in URIs
String? encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
      )
      .join('&');
}

/// Creates and launches a feedback email with device and app information
///
/// The email includes:
/// - App version and build number
/// - Device model and OS version
/// - User UID (if available)
///
/// Returns true if the email was launched successfully, false otherwise
Future<bool> sendFeedbackEmail({
  required String appLabel,
  required String emailAddress,
}) async {
  try {
    final packageInfo = await PackageInfo.fromPlatform();
    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    final deviceInfo = DeviceInfoPlugin();
    final androidInfo = await deviceInfo.androidInfo;
    final deviceModel = androidInfo.model;
    final deviceVersion = androidInfo.version.release;

    final uid = FirebaseAuth.instance.currentUser?.uid;

    final body = '''
${t.settings.sendFeedback.emailBodyPrefix}
--------------------


--------------------
${t.settings.sendFeedback.appVersion}: $version+$buildNumber
${t.settings.sendFeedback.device}: $deviceModel
${t.settings.sendFeedback.osVersion}: $deviceVersion
${t.settings.sendFeedback.uid}: $uid''';

    // Construct mailto URI using Uri constructor with path and query
    final subject = Uri.encodeComponent(
      t.settings.sendFeedback.emailSubject(appLabel: appLabel),
    );
    final encodedBody = Uri.encodeComponent(body);
    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: emailAddress,
      query: 'subject=$subject&body=$encodedBody',
    );

    final launched = await launchUrl(emailLaunchUri);
    return launched;
  } catch (e) {
    // Consider logging: debugPrint('Failed to launch feedback email: $e');
    return false;
  }
}
