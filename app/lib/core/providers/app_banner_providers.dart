import 'package:calorify/core/services/app_banner_firestore.dart';
import 'package:calorify/core/services/banner_selection.dart';
import 'package:calorify/core/utilities/app_version.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Best matching [BannerSelection] from Firestore (build range + priority), or null.
final bannerSelectionProvider = StreamProvider<BannerSelection?>((ref) async* {
  final buildNumber = await ref.watch(appBuildNumberProvider.future);
  yield* bannerSelectionStream(buildNumber);
});

/// Cached native build number (`PackageInfo.buildNumber`, version code).
final appBuildNumberProvider = FutureProvider<String>((ref) async {
  final info = await getAppVersionInfo();
  return info.buildNumber;
});

/// Session dismiss: stores [bannerSignature] when user closes the strip.
class BannerDismissSignature extends Notifier<String?> {
  @override
  String? build() => null;

  void setDismissed(String signature) {
    state = signature;
  }
}

final bannerDismissSignatureProvider =
    NotifierProvider<BannerDismissSignature, String?>(
  BannerDismissSignature.new,
);
