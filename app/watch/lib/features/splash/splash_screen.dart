import 'package:auto_route/auto_route.dart';
import 'package:calorify_watch/core/router/app_router.dart';
import 'package:calorify_watch/core/services/sync_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class WatchStartupIcon extends StatelessWidget {
  const WatchStartupIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'android/app/src/main/res/mipmap-xxxhdpi/ic_launcher.webp',
          width: 48,
          height: 48,
        ),
      ),
    );
  }
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

      // Initialize Wear OS sync service so the watch can reuse the phone's
      // authenticated session instead of creating its own backend identity.
      try {
        await SyncService.instance.initialize();
      } catch (e) {
        if (kDebugMode) debugPrint('Wear OS initialization failed: $e');
      }

      // Small delay to show splash screen
      await Future.delayed(const Duration(milliseconds: 500));

      if (!mounted) return;
      await context.router.replace(const HomeRoute());
    } catch (e) {
      if (kDebugMode) debugPrint('Splash initialization error: $e');
      if (!mounted) return;
      await context.router.replace(const HomeRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    // Keep the Flutter startup frame consistent with the Android 12 splash:
    // the exact launcher icon, 48dp wide, centered on black.
    return const WatchStartupIcon();
  }
}
