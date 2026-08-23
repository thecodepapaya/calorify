import 'package:calorify/app.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';
import 'package:measure_flutter/measure_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize with device locale immediately (no DB access yet)
  LocaleSettings.useDeviceLocaleSync();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  EnvConfig.instance.init();
  DataSourceConfig.configureForEnvironment(flavor: EnvConfig.instance.flavor);
  DatabaseService.initialize();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  const measureApiKey = String.fromEnvironment('MEASURE_API_KEY');
  if (measureApiKey.isEmpty) {
    _runApp();
    return;
  }

  await Measure.instance.init(
    _runApp,
    config: const MeasureConfig(
      traceSamplingRate: 1,
      samplingRateForErrorFreeSessions: 1,
      trackHttpHeaders: true,
      trackHttpBody: true,
      journeySamplingRate: 1,
      hotLaunchSamplingRate: 1,
      coldLaunchSamplingRate: 1,
      warmLaunchSamplingRate: 1,
      trackScreenshotOnCrash: true,
      maxDiskUsageInMb: 30,
    ),
    clientInfo: ClientInfo(
      apiKey: measureApiKey,
      apiUrl: 'https://ingest.measure.sh',
    ),
  );
}

void _runApp() {
  runApp(TranslationProvider(child: const ProviderScope(child: CalorifyApp())));
}
