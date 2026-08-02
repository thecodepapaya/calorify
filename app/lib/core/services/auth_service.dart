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
  late final Future<void> _googleSignInInitialization =
      _googleSignIn.initialize();

  // Cached auth token for synchronous access
  String? _authToken;

  // Kept for subscription lifecycle
  // ignore: unused_field
  StreamSubscription<User?>? _authStateSubscription;

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();
  User? get currentUser => _firebaseAuth.currentUser;

  /// Get the current auth token (synchronous)
  ///
  /// Can be briefly null during startup until the first async [resolveAuthToken]
  /// completes; API code should prefer [resolveAuthToken] on the request path.
  String? get authToken => _authToken;

  /// Loads or refreshes the Firebase ID token into [authToken].
  ///
  /// Use from HTTP interceptors before sending: [authToken] is populated
  /// asynchronously after sign-in/session restore and can race the first frames.
  Future<String?> resolveAuthToken() async {
    final user = currentUser;
    if (user == null) {
      _authToken = null;
      return null;
    }
    try {
      _authToken = await user.getIdToken();
      return _authToken;
    } catch (e) {
      _authToken = null;
      log('Error updating auth token: $e');
      return null;
    }
  }

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
    await resolveAuthToken();
  }

  Future<UserCredential?> signInWithGoogle() async {
    try {
      await _googleSignInInitialization;
      final googleUser = await _googleSignIn.authenticate();
      final idToken = googleUser.authentication.idToken;
      if (idToken == null || idToken.isEmpty) {
        log('Google sign-in completed without an ID token.');
        return null;
      }

      final credential = GoogleAuthProvider.credential(idToken: idToken);
      final result = await _firebaseAuth.signInWithCredential(credential);
      await resolveAuthToken();
      return result;
    } catch (e, st) {
      log('Google sign-in failed:', error: e, stackTrace: st);
      return null;
    }
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

  @visibleForTesting
  Future<void> dispose() async {
    await _authStateSubscription?.cancel();
    _authStateSubscription = null;
  }
}
