import 'package:calorify/core/config/app_config.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/utilities/route_logger.dart';
import 'package:flutter/material.dart';
import 'package:calorify/core/constants/theme.dart';

final _appRouter = AppRouter();

class CalorifyApp extends StatelessWidget {
  const CalorifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConfig.instance.title,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      routerConfig: _appRouter.config(
        navigatorObservers: () => [RouteLogger()],
      ),
    );
  }
}
