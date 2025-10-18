import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/analytics.dart';
import 'package:calorify/core/services/app_initialization.dart';
import 'package:calorify/core/services/food_analysis.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/shared_widgets/animated_leaf.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
    try {
      // Initialize Firebase Auth with guest user for AI services
      await _initializeFirebaseAuth();

      // Initialize core services
      await HealthService.instance.init();
      await AppInitialization.initialize();
      Analytics.instance.initialize();

      // Initialize AI services after authentication
      await FoodAnalysisService.instance.initialize();

      log('App initialization completed successfully');
    } on Exception catch (e, st) {
      log('Error initializing app:', error: e, stackTrace: st);
      // Continue to home even if some services fail to initialize
    }

    if (mounted) {
      // Navigate to home - the OnboardingGuard will handle redirecting to onboarding if needed
      context.router.replace(const HomeRoute());
    }
  }

  /// Initialize Firebase Auth with guest user for AI services
  Future<void> _initializeFirebaseAuth() async {
    try {
      final auth = FirebaseAuth.instance;

      // Check if user is already signed in
      if (auth.currentUser != null) {
        log('User already authenticated: ${auth.currentUser!.uid}');
        return;
      }

      // Sign in anonymously for AI services
      final userCredential = await auth.signInAnonymously();
      log('Guest user signed in: ${userCredential.user?.uid}');
    } catch (e) {
      log('Failed to sign in guest user: $e');
      // Don't throw - app can still work without AI features
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: AnimatedLeaf(size: 150)));
  }
}
