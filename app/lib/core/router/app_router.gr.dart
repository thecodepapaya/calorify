// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [AboutScreen]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute({List<PageRouteInfo>? children})
    : super(AboutRoute.name, initialChildren: children);

  static const String name = 'AboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AboutScreen();
    },
  );
}

/// generated route for
/// [DebugOptionsScreen]
class DebugOptionsRoute extends PageRouteInfo<void> {
  const DebugOptionsRoute({List<PageRouteInfo>? children})
    : super(DebugOptionsRoute.name, initialChildren: children);

  static const String name = 'DebugOptionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DebugOptionsScreen();
    },
  );
}

/// generated route for
/// [EditProfileScreen]
class EditProfileRoute extends PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({
    Key? key,
    required UserProfile userProfile,
    List<PageRouteInfo>? children,
  }) : super(
         EditProfileRoute.name,
         args: EditProfileRouteArgs(key: key, userProfile: userProfile),
         initialChildren: children,
       );

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProfileRouteArgs>();
      return EditProfileScreen(key: args.key, userProfile: args.userProfile);
    },
  );
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({this.key, required this.userProfile});

  final Key? key;

  final UserProfile userProfile;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, userProfile: $userProfile}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditProfileRouteArgs) return false;
    return key == other.key && userProfile == other.userProfile;
  }

  @override
  int get hashCode => key.hashCode ^ userProfile.hashCode;
}

/// generated route for
/// [EditReminderScreen]
class EditReminderRoute extends PageRouteInfo<void> {
  const EditReminderRoute({List<PageRouteInfo>? children})
    : super(EditReminderRoute.name, initialChildren: children);

  static const String name = 'EditReminderRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditReminderScreen();
    },
  );
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
/// [HealthConnectPermissionsScreen]
class HealthConnectPermissionsRoute extends PageRouteInfo<void> {
  const HealthConnectPermissionsRoute({List<PageRouteInfo>? children})
    : super(HealthConnectPermissionsRoute.name, initialChildren: children);

  static const String name = 'HealthConnectPermissionsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HealthConnectPermissionsScreen();
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
/// [LogScreen]
class LogRoute extends PageRouteInfo<void> {
  const LogRoute({List<PageRouteInfo>? children})
    : super(LogRoute.name, initialChildren: children);

  static const String name = 'LogRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LogScreen();
    },
  );
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute({List<PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const MainScreen();
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
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
    : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const OnboardingScreen();
    },
  );
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileScreen();
    },
  );
}

/// generated route for
/// [SettingsScreen]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
    : super(SettingsRoute.name, initialChildren: children);

  static const String name = 'SettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SettingsScreen();
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
