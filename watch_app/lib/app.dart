import 'package:specs/specs.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final _appRouter = AppRouter();

ThemeData _watchTheme(ThemeData base) => base.copyWith(
  scaffoldBackgroundColor: base.colorScheme.surface,
  splashFactory: InkSparkle.splashFactory,
  snackBarTheme: SnackBarThemeData(
    behavior: SnackBarBehavior.floating,
    backgroundColor: base.colorScheme.inverseSurface,
    contentTextStyle: base.textTheme.labelSmall?.copyWith(
      color: base.colorScheme.onInverseSurface,
      fontSize: 10,
      fontWeight: FontWeight.w600,
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
    insetPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
  ),
  dialogTheme: base.dialogTheme.copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
  ),
);

class CalorifyWatchApp extends StatelessWidget {
  const CalorifyWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Calorify Watch',
      debugShowCheckedModeBanner: false,
      theme: _watchTheme(AppThemes.lightTheme),
      darkTheme: _watchTheme(AppThemes.darkTheme),
      themeMode: ThemeMode.system,
      routerConfig: _appRouter.config(),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: LocaleSettings.currentLocale.flutterLocale,
    );
  }
}
