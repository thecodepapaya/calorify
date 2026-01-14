import 'package:specs/specs.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final _appRouter = AppRouter();

class CalorifyWatchApp extends StatelessWidget {
  const CalorifyWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Calorify Watch',
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: LocaleSettings.currentLocale.flutterLocale,
    );
  }
}
