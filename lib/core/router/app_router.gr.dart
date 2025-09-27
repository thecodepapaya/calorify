// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [EditMealScreen]
class EditMealRoute extends PageRouteInfo<EditMealRouteArgs> {
  EditMealRoute({
    Key? key,
    MealInfo? mealInfo,
    Uint8List? imageData,
    List<PageRouteInfo>? children,
  }) : super(
         EditMealRoute.name,
         args: EditMealRouteArgs(
           key: key,
           mealInfo: mealInfo,
           imageData: imageData,
         ),
         initialChildren: children,
       );

  static const String name = 'EditMealRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditMealRouteArgs>(
        orElse: () => const EditMealRouteArgs(),
      );
      return EditMealScreen(
        key: args.key,
        mealInfo: args.mealInfo,
        imageData: args.imageData,
      );
    },
  );
}

class EditMealRouteArgs {
  const EditMealRouteArgs({this.key, this.mealInfo, this.imageData});

  final Key? key;

  final MealInfo? mealInfo;

  final Uint8List? imageData;

  @override
  String toString() {
    return 'EditMealRouteArgs{key: $key, mealInfo: $mealInfo, imageData: $imageData}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditMealRouteArgs) return false;
    return key == other.key &&
        mealInfo == other.mealInfo &&
        imageData == other.imageData;
  }

  @override
  int get hashCode => key.hashCode ^ mealInfo.hashCode ^ imageData.hashCode;
}

/// generated route for
/// [FavoritesScreen]
class FavoritesRoute extends PageRouteInfo<void> {
  const FavoritesRoute({List<PageRouteInfo>? children})
    : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const FavoritesScreen();
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
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginScreen();
    },
  );
}

/// generated route for
/// [MealHistoryScreen]
class MealHistoryRoute extends PageRouteInfo<void> {
  const MealHistoryRoute({List<PageRouteInfo>? children})
    : super(MealHistoryRoute.name, initialChildren: children);

  static const String name = 'MealHistoryRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MealHistoryScreen();
    },
  );
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
