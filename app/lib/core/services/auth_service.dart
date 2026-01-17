import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  @visibleForTesting
  AuthService.test({FirebaseAuth? auth, GoogleSignIn? googleSignIn})
      : _firebaseAuth = auth ?? FirebaseAuth.instance,
        _googleSignIn = googleSignIn ?? GoogleSignIn.instance;

  AuthService._()
      : _firebaseAuth = FirebaseAuth.instance,
        _googleSignIn = GoogleSignIn.instance;

  static AuthService _instance = AuthService._();
  static AuthService get instance => _instance;

  @visibleForTesting
  static void setMockInstance(AuthService mock) {
    _instance = mock;
  }

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  Future<UserCredential?> signInWithGoogle() async {
    //
    return null;
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Sign out from Google
      await _firebaseAuth.signOut(); // Sign out from Firebase
    } catch (e) {
      log('Error signing out: $e');
    }
  }
}
