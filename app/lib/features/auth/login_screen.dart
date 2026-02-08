import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart'; // If using Provider

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // static const routeName = '/login';

  @override
  Widget build(BuildContext context) {
    // If using Provider:
    // final authService = Provider.of<AuthService>(context, listen: false);
    // If not:
    final authService = AuthService.instance;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text(t.login.title)),
      body: Column(
        children: [
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.login), // Or a Google logo
              label: Text(t.login.signInWithGoogle),
              onPressed: () async {
                final userCredential = await authService.signInWithGoogle();
                if (userCredential != null) {
                  log('Signed in: ${userCredential.user?.displayName}');
                  // Navigation to HomeScreen is handled by StreamBuilder in app.dart
                } else {
                  log('Sign in failed or cancelled.');
                  // Show a flushbar
                  if (!context.mounted) return;
                  showFlushbar(t.login.signInFailed, context: context);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 12,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
