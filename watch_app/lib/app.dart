import 'package:specs/specs.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final _appRouter = AppRouter();

@visibleForTesting
class WatchScrollBehavior extends MaterialScrollBehavior {
  const WatchScrollBehavior();

  @override
  Widget buildScrollbar(
    BuildContext context,
    Widget child,
    ScrollableDetails details,
  ) {
    return Scrollbar(
      controller: details.controller,
      interactive: false,
      child: child,
    );
  }
}

@visibleForTesting
ThemeData buildWatchTheme(ThemeData base) {
  final colors = base.colorScheme.copyWith(surface: Colors.black);
  return base.copyWith(
    colorScheme: colors,
    scaffoldBackgroundColor: Colors.black,
    canvasColor: Colors.black,
    splashFactory: InkSparkle.splashFactory,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colors.onSurfaceVariant.withValues(alpha: 0.85),
      ),
      thickness: const WidgetStatePropertyAll(3),
      radius: const Radius.circular(3),
      crossAxisMargin: 4,
      mainAxisMargin: 24,
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colors.inverseSurface,
      contentTextStyle: base.textTheme.labelSmall?.copyWith(
        color: colors.onInverseSurface,
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
}

class CalorifyWatchApp extends StatelessWidget {
  const CalorifyWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Calorify Watch',
      debugShowCheckedModeBanner: false,
      theme: buildWatchTheme(AppThemes.darkTheme),
      darkTheme: buildWatchTheme(AppThemes.darkTheme),
      themeMode: ThemeMode.dark,
      scrollBehavior: const WatchScrollBehavior(),
      routerConfig: _appRouter.config(),
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: LocaleSettings.currentLocale.flutterLocale,
    );
  }
}
