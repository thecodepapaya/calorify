import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/constants/theme.dart';
import 'package:calorify/core/providers/theme_provider.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/utilities/route_logger.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart' show FlashyFlushbarProvider;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:measure_flutter/measure_flutter.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';

final _appRouter = AppRouter();

class CalorifyApp extends ConsumerWidget {
  const CalorifyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);
    final t = Translations.of(context);

    final flushbarBuilder = FlashyFlushbarProvider.init();
    return MaterialApp.router(
      title: t.appLabel(env: EnvConfig.instance.envSuffix),
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: themeMode,
      locale: TranslationProvider.of(context).locale.flutterLocale,
      supportedLocales: AppLocaleUtils.supportedLocales,
      localizationsDelegates: GlobalMaterialLocalizations.delegates,
      builder:
          (context, child) => CatOverlay(
            child: Builder(
              builder: (ctx) {
                return flushbarBuilder != null
                    ? flushbarBuilder(ctx, child)
                    : (child ?? const SizedBox.shrink());
              },
            ),
          ),
      routerConfig: _appRouter.config(
        navigatorObservers: () => [RouteLogger(), MsrNavigatorObserver()],
      ),
    );
  }
}
