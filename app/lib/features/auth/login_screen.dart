import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:calorify/core/constants/styles.dart';
import 'package:calorify/core/router/app_router.dart';
import 'package:calorify/core/services/auth_service.dart';
import 'package:calorify/features/home/utils/helper_methods.dart';
import 'package:calorify/shared_widgets/app_filled_button.dart';
import 'package:i18n/i18n.dart';
import 'package:flutter/material.dart';
// import 'package:provider/provider.dart'; // If using Provider

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isSigningIn = false;

  Future<void> _signIn() async {
    if (_isSigningIn) return;
    setState(() => _isSigningIn = true);

    final userCredential = await AuthService.instance.signInWithGoogle();
    if (!mounted) return;

    if (userCredential != null) {
      log('Signed in: ${userCredential.user?.displayName}');
      await context.router.replace(const HomeRoute());
      return;
    }

    setState(() => _isSigningIn = false);
    showFlushbar(t.login.signInFailed, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(t.login.title)),
      body: Center(
        child: Padding(
          padding: globalMargin,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 420),
            child: AppFilledButton(
              icon: Icons.login,
              text: t.login.signInWithGoogle,
              isLoading: _isSigningIn,
              onPressed: _signIn,
            ),
          ),
        ),
      ),
    );
  }
}
