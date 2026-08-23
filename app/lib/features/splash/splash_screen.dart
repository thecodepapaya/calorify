import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/providers/app_dependencies.dart';
import 'package:calorify/core/providers/home_providers.dart'
    show mealLogSyncServiceProvider;
import 'package:calorify/core/services/app_initialization.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await AppInitialization.initialize(
      database: ref.read(databaseInterfaceProvider),
      healthService: ref.read(healthServiceProvider),
      healthConnectSyncService: ref.read(healthConnectSyncServiceProvider),
      mealLogSyncService: ref.read(mealLogSyncServiceProvider),
      profileRepository: ref.read(profileRepositoryProvider),
    );

    if (mounted) {
      // Navigate to home - the OnboardingGuard will handle redirecting to onboarding if needed
      await context.router.replace(const HomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: AnimatedLeaf(size: 150)));
  }
}
