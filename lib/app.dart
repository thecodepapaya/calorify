import 'package:calorify/core/constants/theme.dart';
import 'package:calorify/features/home/home_screen.dart';
import 'package:flutter/material.dart';

class CalorifyApp extends StatelessWidget {
  const CalorifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: HomeScreen(),
      // home: LoginScreen(),
    );
  }
}
