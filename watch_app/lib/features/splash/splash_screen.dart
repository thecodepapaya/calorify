import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:services/services.dart';
import 'package:widgets/widgets.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    try {
      // Small delay to ensure Flutter engine is fully ready
      await Future.delayed(const Duration(milliseconds: 300));

      // Initialize Firebase Auth with guest user for AI services
      try {
        final auth = FirebaseAuth.instance;
        if (auth.currentUser == null) {
          await auth.signInAnonymously();
          debugPrint('Guest user signed in for AI services');
        } else {
          debugPrint('User already authenticated: ${auth.currentUser!.uid}');
        }
      } catch (e) {
        debugPrint('Firebase Auth initialization failed: $e');
        // Continue - app can still work without AI features
      }

      // Initialize Food Analysis Service (required for meal logging)
      try {
        await FoodAnalysisService.instance.initialize();
        debugPrint('FoodAnalysisService initialized successfully');
      } catch (e) {
        debugPrint('FoodAnalysisService initialization failed: $e');
        // Continue - user will see error when trying to log meal
      }

      // Initialize Wear OS sync service with error handling
      try {
        await SyncService.instance.initialize();
      } catch (e) {
        // Log error but continue - app can work without watch connection
        debugPrint('Wear OS initialization failed: $e');
      }

      // Small delay to show splash screen
      await Future.delayed(const Duration(milliseconds: 500));

      if (!mounted) return;

      // Navigate to home screen
      await context.router.replace(const HomeRoute());
    } catch (e) {
      // If initialization fails, still navigate to home
      // The app can handle connection errors gracefully
      debugPrint('Splash initialization error: $e');
      if (!mounted) return;
      await context.router.replace(const HomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: AnimatedLeaf(size: 50)));
  }
}
