import 'package:calorify/app.dart';
import 'package:calorify/core/config/env_config.dart';
import 'package:calorify/core/db/mock_data/data_source_config.dart';
import 'package:calorify/core/services/database_service.dart';
import 'package:calorify/firebase_options.dart';
import 'package:calorify/i18n/strings.g.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:measure_flutter/measure_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize with device locale immediately (no DB access yet)
  LocaleSettings.useDeviceLocaleSync();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  EnvConfig.instance.init();
  DataSourceConfig.configureForEnvironment(
    isProduction: EnvConfig.instance.isProd,
  );
  DatabaseService.initialize();

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  await Measure.instance.init(
    () => runApp(
      TranslationProvider(child: const ProviderScope(child: CalorifyApp())),
    ),
    config: const MeasureConfig(
      traceSamplingRate: 1,
      samplingRateForErrorFreeSessions: 1,
    ),
    clientInfo: ClientInfo(
      apiKey:
          'msrsh_edcc9ccd38bac9f3cb882b33e474d700925e0d2f88ec6d8b3cc70260c57bbd7d_78c62cda',
      apiUrl: 'https://ingest.measure.sh',
    ),
  );
}
