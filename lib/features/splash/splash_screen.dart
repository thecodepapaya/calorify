import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/app_initialization.dart';
import 'package:calorify/shared_widgets/animated_leaf.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    await AppInitialization.initialize();

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
