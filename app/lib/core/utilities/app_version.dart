import 'package:flutter/foundation.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

/// Result of [getAppVersionInfo] for display and debug.
class AppVersionInfo {
  const AppVersionInfo({
    required this.versionDisplay,
    required this.buildNumber,
    this.patchNumber,
  });

  /// Version string for display: "x.y.z#a" when patch is present, else "x.y.z".
  final String versionDisplay;

  /// Build number from PackageInfo (e.g. "30").
  final String buildNumber;

  /// Current Shorebird patch number, or null if none / not available.
  final int? patchNumber;
}

/// Test-only override. When set, [getAppVersionInfo] returns this without
/// calling Shorebird (avoids "Shorebird Updater unavailable" in tests).
@visibleForTesting
Future<AppVersionInfo>? getAppVersionInfoTestOverride;

/// Loads app version and optional Shorebird patch number for display.
/// On web or when Shorebird is unavailable, [patchNumber] is null and
/// [versionDisplay] is just the semantic version (x.y.z).
Future<AppVersionInfo> getAppVersionInfo() async {
  final override = getAppVersionInfoTestOverride;
  if (override != null) return override;

  final info = await PackageInfo.fromPlatform();
  int? patchNumber;
  try {
    final patch = await ShorebirdUpdater().readCurrentPatch();
    patchNumber = patch?.number;
  } catch (_) {
    // Shorebird not available (e.g. web, test, or non-Shorebird build).
  }
  final versionDisplay =
      patchNumber != null ? '${info.version}#$patchNumber' : info.version;

  return AppVersionInfo(
    versionDisplay: versionDisplay,
    buildNumber: info.buildNumber,
    patchNumber: patchNumber,
  );
}
