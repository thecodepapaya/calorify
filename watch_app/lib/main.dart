import 'package:calorify_watch/app.dart';
import 'package:calorify_watch/core/config/env_config.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EnvConfig.instance.init();
  runApp(const CalorifyWatchApp());
}
