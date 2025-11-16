import 'package:calorify/app.dart';
import 'package:calorify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:measure_flutter/measure_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  await Measure.instance.init(
    () => runApp(const CalorifyApp()),
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
