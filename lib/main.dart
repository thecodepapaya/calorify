import 'package:calorify/app.dart';
import 'package:calorify/core/services/health_service.dart';
import 'package:calorify/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await HealthService.instance.init();
  runApp(const CalorifyApp());
}
