// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [DebugScreen]
class DebugRoute extends PageRouteInfo<void> {
  const DebugRoute({List<PageRouteInfo>? children})
    : super(DebugRoute.name, initialChildren: children);

  static const String name = 'DebugRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DebugScreen();
    },
  );
}

/// generated route for
/// [HistoryScreen]
class HistoryRoute extends PageRouteInfo<void> {
  const HistoryRoute({List<PageRouteInfo>? children})
    : super(HistoryRoute.name, initialChildren: children);

  static const String name = 'HistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HistoryScreen();
    },
  );
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [LogMealScreen]
class LogMealRoute extends PageRouteInfo<void> {
  const LogMealRoute({List<PageRouteInfo>? children})
    : super(LogMealRoute.name, initialChildren: children);

  static const String name = 'LogMealRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LogMealScreen();
    },
  );
}

/// generated route for
/// [MealResultScreen]
class MealResultRoute extends PageRouteInfo<MealResultRouteArgs> {
  MealResultRoute({
    Key? key,
    required MealDetectionResult result,
    List<PageRouteInfo>? children,
  }) : super(
         MealResultRoute.name,
         args: MealResultRouteArgs(key: key, result: result),
         initialChildren: children,
       );

  static const String name = 'MealResultRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MealResultRouteArgs>();
      return MealResultScreen(key: args.key, result: args.result);
    },
  );
}

class MealResultRouteArgs {
  const MealResultRouteArgs({this.key, required this.result});

  final Key? key;

  final MealDetectionResult result;

  @override
  String toString() {
    return 'MealResultRouteArgs{key: $key, result: $result}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! MealResultRouteArgs) return false;
    return key == other.key && result == other.result;
  }

  @override
  int get hashCode => key.hashCode ^ result.hashCode;
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
