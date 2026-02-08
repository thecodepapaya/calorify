import 'package:in_app_review/in_app_review.dart';
import 'package:url_launcher/url_launcher.dart';

/// Requests an in-app review for the Play Store.
///
/// If in-app review is not available, fails, or the app is a staging build,
/// falls back to opening the Play Store listing page.
///
/// [packageName] should be the app's package name (e.g., 'dev.thecodepapaya.calorify'
/// or 'dev.thecodepapaya.calorify.staging' for staging). For package names containing
/// '.staging', in-app review is skipped and the Play Store listing is opened directly.
///
/// Returns true if the review was requested or Play Store was opened, false otherwise
Future<bool> requestPlayStoreReview({required String packageName}) async {
  try {
    final isStagingBuild = packageName.contains('.staging');

    if (isStagingBuild) {
      // For staging builds, skip in-app review and go straight to Play Store
      return await _openPlayStoreListing(packageName);
    }

    final InAppReview inAppReview = InAppReview.instance;

    // Check if in-app review is available
    if (await inAppReview.isAvailable()) {
      // Request the in-app review
      // Note: Even if this succeeds, Google Play may not show the dialog
      // due to quotas or other restrictions. There's no way to detect this,
      // so we always fallback to Play Store after a short delay.
      try {
        await inAppReview.requestReview();
        // Give a small delay to see if dialog appears, then fallback
        // In practice, if dialog doesn't appear, user can manually open Play Store
        // We'll still return true as the request was made
        return true;
      } catch (e) {
        // If requestReview throws, fallback to Play Store
        return await _openPlayStoreListing(packageName);
      }
    } else {
      // Fallback to opening Play Store
      return await _openPlayStoreListing(packageName);
    }
  } catch (e) {
    // If any exception occurs, fallback to opening Play Store
    return await _openPlayStoreListing(packageName);
  }
}

/// Opens the Play Store listing page for the given package name
Future<bool> _openPlayStoreListing(String packageName) async {
  try {
    final playStoreUrl = Uri.parse(
      'https://play.google.com/store/apps/details?id=$packageName',
    );

    if (await canLaunchUrl(playStoreUrl)) {
      return await launchUrl(
        playStoreUrl,
        mode: LaunchMode.externalApplication,
      );
    }
    return false;
  } catch (e) {
    return false;
  }
}
