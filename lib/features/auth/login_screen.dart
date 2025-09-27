import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/services/auth_service.dart';
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

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Column(
        children: [
          Row(children: [Text('Kal')]),
          Center(
            child: ElevatedButton.icon(
              icon: const Icon(Icons.login), // Or a Google logo
              label: const Text('Sign in with Google'),
              onPressed: () async {
                final userCredential = await authService.signInWithGoogle();
                if (userCredential != null) {
                  log("Signed in: ${userCredential.user?.displayName}");
                  // Navigation to HomeScreen is handled by StreamBuilder in app.dart
                } else {
                  log("Sign in failed or cancelled.");
                  // Show a snackbar or message
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Google Sign-In failed or was cancelled.'),
                    ),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
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
