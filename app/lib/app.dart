import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/providers/theme_provider.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/utilities/route_logger.dart';
import 'package:flutter/material.dart';
import 'package:services/services.dart' show FlashyFlushbarProvider;
import 'package:specs/specs.dart' show AppThemes;
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:calorify/shared_widgets/app_banner_shell.dart';
import 'package:calorify/shared_widgets/easter_egg/cat_overlay.dart';
import 'package:calorify/shared_widgets/responsive_layout.dart';

final appRouterProvider = Provider<AppRouter>((ref) {
  final router = AppRouter(
    onboardingService: ref.watch(onboardingServiceProvider),
  );
  ref.onDispose(router.dispose);
  return router;
});

class CalorifyApp extends ConsumerWidget {
  const CalorifyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeProvider);
    final appRouter = ref.watch(appRouterProvider);
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
          (context, child) => FoldAwareAppViewport(
            child: CatOverlay(
              child: Builder(
                builder: (ctx) {
                  final stacked = AppBannerShell(
                    child: child ?? const SizedBox.shrink(),
                  );
                  return flushbarBuilder != null
                      ? flushbarBuilder(ctx, stacked)
                      : stacked;
                },
              ),
            ),
          ),
      routerConfig: appRouter.config(navigatorObservers: () => [RouteLogger()]),
    );
  }
}
