import 'package:calorify_watch/features/home/home_screen.dart';
import 'package:calorify_watch/features/log_meal/log_meal_screen.dart';
import 'package:calorify_watch/features/history/history_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomeScreen()),
      GoRoute(
        path: '/log-meal',
        builder: (context, state) => const LogMealScreen(),
      ),
      GoRoute(
        path: '/history',
        builder: (context, state) => const HistoryScreen(),
      ),
    ],
  );
}
