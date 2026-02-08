import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:calorify/core/constants/theme.dart';
import 'package:i18n/i18n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'test_helpers.dart';

Future<void> loadFonts() async {
  await loadAppFonts();
}

/// All supported locales used for golden tests.
const goldenTestLocales = AppLocale.values;

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

    Widget content = child;
    if (router != null) {
      content = RouterScope(
        controller: mockRouter,
        inheritableObserversBuilder: () => [],
        stateHash: 0,
        child: RouteDataScope(
          routeData: mockRouteData,
          child: content,
        ),
      );
    }

    return TranslationProvider(
      child: ProviderScope(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme?.copyWith(platform: TargetPlatform.android) ??
              AppThemes.lightTheme.copyWith(platform: TargetPlatform.android),
          locale: appLocale.flutterLocale,
          supportedLocales: AppLocaleUtils.supportedLocales,
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
          home: Material(child: content),
        ),
      ),
    );
  };
}

final testDevices = [
  Device.phone,
  Device.iphone11,
];
