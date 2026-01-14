import 'package:calorify_watch/app.dart';
import 'package:calorify_watch/core/config/env_config.dart';
import 'package:calorify_watch/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize with device locale immediately
  LocaleSettings.useDeviceLocaleSync();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  EnvConfig.instance.init();

  runApp(
    TranslationProvider(child: const ProviderScope(child: CalorifyWatchApp())),
  );
}
