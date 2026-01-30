import 'dart:async';
import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/foundation.dart';

class AuthService {
  @visibleForTesting
  AuthService.test({FirebaseAuth? auth, GoogleSignIn? googleSignIn})
    : _firebaseAuth = auth ?? FirebaseAuth.instance,
      _googleSignIn = googleSignIn ?? GoogleSignIn.instance {
    _initializeToken();
  }

  AuthService._()
    : _firebaseAuth = FirebaseAuth.instance,
      _googleSignIn = GoogleSignIn.instance {
    _initializeToken();
  }

  static AuthService _instance = AuthService._();
  static AuthService get instance => _instance;

  @visibleForTesting
  static void setMockInstance(AuthService mock) {
    _instance = mock;
  }

  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // Cached auth token for synchronous access
  String? _authToken;

  // Kept for subscription lifecycle
  // ignore: unused_field
  StreamSubscription<User?>? _authStateSubscription;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  /// Get the current auth token (synchronous)
  String? get authToken => _authToken;

  /// Initialize auth token and listen to auth state changes
  void _initializeToken() {
    // Get initial token if user is already logged in
    _updateToken();

    // Listen to auth state changes to update token
    _authStateSubscription = authStateChanges.listen((user) async {
      await _updateToken();
    });
  }

  /// Update the cached auth token
  Future<void> _updateToken() async {
    final user = currentUser;
    if (user != null) {
      try {
        _authToken = await user.getIdToken();
      } catch (e) {
        _authToken = null;
        log('Error updating auth token: $e');
      }
    } else {
      _authToken = null;
    }
  }

  Future<UserCredential?> signInWithGoogle() async {
    //
    return null;
  }

  Future<void> signOut() async {
    try {
      await _googleSignIn.signOut(); // Sign out from Google
      await _firebaseAuth.signOut(); // Sign out from Firebase
      _authToken = null; // Clear cached token
    } catch (e) {
      log('Error signing out: $e');
    }
  }
}
