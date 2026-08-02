import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/core/constants/theme.dart';
import 'package:i18n/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'test_helpers.dart';

Future<void> loadGoldenFonts() async {
  await loadAppFonts();

  // golden_toolkit only bundles Latin Roboto. macOS goldens otherwise render
  // Arabic and CJK as tofu, making localized layout snapshots meaningless.
  // This suite is intentionally macOS-only because rasterization differs on
  // Linux; use the system's broad Unicode font as an explicit fallback.
  const unicodeFontPath =
      '/System/Library/Fonts/Supplemental/Arial Unicode.ttf';
  final unicodeFont = File(unicodeFontPath);
  if (unicodeFont.existsSync()) {
    final bytes = await unicodeFont.readAsBytes();
    final loader = FontLoader('GoldenUnicode')
      ..addFont(Future.value(ByteData.sublistView(Uint8List.fromList(bytes))));
    await loader.load();
  }
}

/// Representative visual-regression locales.
///
/// The translation catalog audit covers every locale. Goldens deliberately
/// cover the source language, a long Latin-script locale, RTL, and CJK so the
/// visual suite stays reviewable instead of producing thousands of near-
/// duplicate images.
const goldenTestLocales = [
  AppLocale.en,
  AppLocale.de,
  AppLocale.ar,
  AppLocale.zhTw,
];

WidgetWrapper goldenWrapper({
  ThemeData? theme,
  dynamic router,
  RouteData? routeData,
  AppLocale? locale,
}) {
  final mockRouteData = routeData ?? MockRouteData();
  final mockRouter = router ?? MockStackRouter();
  final appLocale = locale ?? AppLocale.en;

  if (mockRouteData is MockRouteData) {
    stubRouteData(mockRouteData);
  }

  if (mockRouter is MockTabsRouter) {
    stubTabsRouter(mockRouter, routeData: mockRouteData);
  } else if (mockRouter is MockStackRouter) {
    stubStackRouter(mockRouter);
  }

  return (child) {
    LocaleSettings.setLocaleSync(appLocale);
    final baseTheme = theme ?? AppThemes.lightTheme;
    final testTheme = baseTheme.copyWith(
      platform: TargetPlatform.android,
      textTheme: baseTheme.textTheme.apply(
        fontFamilyFallback: const ['GoldenUnicode'],
      ),
      primaryTextTheme: baseTheme.primaryTextTheme.apply(
        fontFamilyFallback: const ['GoldenUnicode'],
      ),
    );

    Widget content = child;
    if (router != null) {
      content = RouterScope(
        controller: mockRouter,
        inheritableObserversBuilder: () => [],
        stateHash: 0,
        child: RouteDataScope(routeData: mockRouteData, child: content),
      );
    }

    return TranslationProvider(
      child: ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: testTheme,
          locale: appLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: Material(child: content),
        ),
      ),
    );
  };
}

final testDevices = [Device.phone, Device.iphone11];
