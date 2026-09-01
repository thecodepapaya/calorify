import 'package:specs/specs.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:i18n/i18n.dart';

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
    // Wear OS requires a scroll indicator while users interact with content.
    // The Material scrollbar handles its own visibility animation, so it stays
    // unobtrusive until a scroll gesture or rotary input occurs.
    return Scrollbar(child: child);
  }
}

@visibleForTesting
ThemeData buildWatchTheme(ThemeData base) {
  const black = Colors.black;
  final colors = base.colorScheme.copyWith(
    surface: black,
    surfaceDim: black,
    surfaceContainerLowest: black,
    surfaceContainerLow: const Color(0xFF070809),
    surfaceContainer: const Color(0xFF0A0C0E),
    surfaceContainerHigh: const Color(0xFF101318),
    surfaceContainerHighest: const Color(0xFF171B21),
    surfaceBright: const Color(0xFF1D2229),
    surfaceTint: Colors.transparent,
  );
  return base.copyWith(
    colorScheme: colors,
    scaffoldBackgroundColor: black,
    canvasColor: black,
    splashFactory: InkSparkle.splashFactory,
    scrollbarTheme: ScrollbarThemeData(
      thumbColor: WidgetStatePropertyAll(
        colors.onSurfaceVariant.withValues(alpha: 0.72),
      ),
      thickness: const WidgetStatePropertyAll(3),
      radius: const Radius.circular(2),
    ),
    snackBarTheme: SnackBarThemeData(
      behavior: SnackBarBehavior.floating,
      backgroundColor: colors.inverseSurface,
      contentTextStyle: base.textTheme.labelSmall?.copyWith(
        color: colors.onInverseSurface,
        fontSize: watchLabelFontSize,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(18)),
      insetPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
    ),
    dialogTheme: base.dialogTheme.copyWith(
      shape: RoundedSuperellipseBorder(borderRadius: BorderRadius.circular(24)),
    ),
  );
}

class CalorifyWatchApp extends StatelessWidget {
  const CalorifyWatchApp({super.key});

  @override
  Widget build(BuildContext context) {
    final translations = Translations.of(context);
    return MaterialApp.router(
      title: translations.watch.appTitle,
      debugShowCheckedModeBanner: false,
      theme: buildWatchTheme(AppThemes.darkTheme),
      darkTheme: buildWatchTheme(AppThemes.darkTheme),
      themeMode: ThemeMode.dark,
      locale: TranslationProvider.of(context).locale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      scrollBehavior: const WatchScrollBehavior(),
      routerConfig: _appRouter.config(),
    );
  }
}
