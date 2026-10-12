import 'package:calorify_watch/app.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocaleSync();
  runApp(TranslationProvider(child: const CalorifyWatchApp()));
}
